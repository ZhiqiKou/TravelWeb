from django.shortcuts import render
from django.views.generic.base import View
from django.contrib.auth.hashers import make_password
from django.http import HttpResponseRedirect, HttpResponse,JsonResponse
from django.urls import reverse
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout

import json
from datetime import datetime

from captcha.models import CaptchaStore
from captcha.helpers import captcha_image_url

from .forms import *
from .models import *
from utils.send_email import send_register_email


# Create your views here.
class IndexView(View):
    """
    首页
    """
    def get(self, request):
        return render(request, 'index.html', {'now_type': 'index'})


class RegisterView(View):

    """
    注册
    """
    def get(self, request):
        register_form = RegisterForm()
        hashkey = CaptchaStore.generate_key()
        image_url = captcha_image_url(hashkey)
        return render(request, 'register.html', {
            'register_form': register_form,
            'hashkey': hashkey,
            'image_url': image_url,
        })

    def post(self, request):
        register_form = RegisterForm(request.POST)
        if register_form.is_valid():
            user_name = request.POST.get('email', '')
            if MyUser.objects.filter(email=user_name):
                return render(request, 'register.html',
                              {'register_form': register_form,
                               'msg': '用户已经存在'}
                              )
            password = request.POST.get('password', "")
            user_profile = MyUser()
            user_profile.username = user_name
            user_profile.email = user_name
            user_profile.is_active = False
            user_profile.password = make_password(password)
            user_profile.save()

            send_register_email(user_name)

            #return render(request, 'login.html')
            messages.add_message(request, messages.SUCCESS, '注册成功！请在邮箱中点击激活链接激活账号！')
            return render(request, 'register.html', {})
        else:
            hashkey = CaptchaStore.generate_key()
            image_url = captcha_image_url(hashkey)
            return render(request, 'register.html',{
                'register_form': register_form,
                'hashkey': hashkey,
                'image_url': image_url})


class ActiveView(View):
    """
    激活
    """
    def get(self, request, active_code):
        all_records = EmailVerifyRecord.objects.filter(send_type='register', code=active_code)
        if all_records:
            for record in all_records:
                email = record.email
                user = MyUser.objects.get(email=email)
                user.is_active = True
                user.save()
        return render(request, 'register.html', {})


class LoginView(View):
    """登陆"""
    def get(self, request):
        return render(request, 'login.html', {})

    def post(self, request):
        login_form = LoginForm(request.POST)
        if login_form.is_valid():
            username = request.POST.get('username', '')
            password = request.POST.get('password', '')
            is_keep = request.POST.get('is_keep', '')
            user = authenticate(username=username, password=password)
            # 如果用户存在
            if user is not None and user.is_active:
                login(request, user)
                # 如果保持登陆状态
                if not is_keep:
                    # 关闭浏览器session实效
                    request.session.set_expiry(0)
                return HttpResponseRedirect(reverse('index'))
            else:
                return render(request, 'login.html', {'msg': '用户名或密码错误！'})
        else:
            return render(request, 'login.html', {'login_form': login_form})


class LogoutView(View):
    """
    退出
    """
    def get(self, request):
        logout(request)
        return HttpResponseRedirect(reverse('index'))


class ForgetPwdView(View):
    """
    忘记密码
    """
    def get(self, request):
        forget_form = ForgetForm()
        hashkey = CaptchaStore.generate_key()
        image_url = captcha_image_url(hashkey)
        return render(request, 'forget_pwd.html', {
            'forget_form': forget_form,
            'hashkey': hashkey,
            'image_url': image_url,
        })

    def post(self, request):
        forget_form = ForgetForm(request.POST)
        hashkey = CaptchaStore.generate_key()
        image_url = captcha_image_url(hashkey)
        if forget_form.is_valid():
            email = request.POST.get('email', '')
            send_register_email(email, 'find')
            messages.add_message(request, messages.SUCCESS, '邮件发送成功！请点击邮件中的链接找回密码')
            return render(request, 'forget_pwd.html', {
                'hashkey': hashkey,
                'image_url': image_url,
            })
        else:

            return render(request, 'forget_pwd.html', {
                'forget_form': forget_form,
                'hashkey': hashkey,
                'image_url': image_url,
            })


class ResetView(View):
    """找回密码页面"""
    def get(self, request, find_code):
        all_records = EmailVerifyRecord.objects.filter(send_type='find', code=find_code)
        if all_records:
            for record in all_records:
                email = record.email
                return render(request, 'new_pwd.html', {
                    'email': email,
                })


class NewPwdView(View):
    """
    修改用户密码
    """
    def post(self, request):
        newpwd_form = NewPwdForm(request.POST)
        if newpwd_form.is_valid():
            pwd1 = request.POST.get('pwd1', '')
            pwd2 = request.POST.get('pwd2', '')
            email = request.POST.get('email', '')
            if pwd1 != pwd2:
                return render(request, 'new_pwd.html', {
                    'email': email,
                    'msg': '两次输入的密码不一致',
                })
            user = MyUser.objects.get(email=email)
            user.password = make_password(pwd2)
            user.save()
            return HttpResponseRedirect(reverse('login'))
        else:
            email = request.POST.get('email', '')
            return render(request, 'new_pwd.html', {
                'email': email,
                'newpwd_form': newpwd_form,
            })


class CheckView(View):
    """
    签到
    """
    def post(self, request):
        username = request.POST['user']
        user = MyUser.objects.filter(username=username)
        now = datetime.now().strftime('%Y-%m-%d')
        for now_user in user:
            if str(now_user.check_time) != now:
                now_user.integral += 20
                now_user.check_time = now
                now_user.save()
                result = json.dumps({"status":"success", "msg":"签到成功"}, ensure_ascii=False)
            else:
                result = json.dumps({"status": "fail", "msg": "签到失败，今天已经签过了"}, ensure_ascii=False)
            return HttpResponse(result)


class ProvinceView(View):
    """
    获得所有省
    """
    def get(self, requset):
        pros = AreaInfo.objects.filter(Parent=0)
        pro_list = []
        for pro in pros:
            pro_list.append([pro.id, pro.title])
        return JsonResponse({'prov': pro_list})


class CityView(View):
    """
    获得所有市
    """
    def get(self, requset, pid):
        print(pid)
        citys = AreaInfo.objects.filter(Parent=pid)
        city_list = []
        for city in citys:
            city_list.append([city.id, city.title])
        return JsonResponse({'city': city_list})


class CountyView(View):
    """
    获得所有区/县
    """
    def get(self, requset, pid):
        countys = AreaInfo.objects.filter(Parent=pid)
        county_list = []
        for county in countys:
            county_list.append([county.id, county.title])
        return JsonResponse({'coun': county_list})


class UserInfoView(View):
    """
    个人信息页面
    """
    def get(self, request, info_type):
        if info_type == 'info':
            city_id = request.user.city_addr
            coun = AreaInfo.objects.filter(id=int(city_id))
            user_coun = coun.values('title', 'Parent')[0]
            city = AreaInfo.objects.filter(id=user_coun['Parent'])
            user_city = city.values('title', 'Parent')[0]
            prov = AreaInfo.objects.filter(id=user_city['Parent'])
            user_prov = prov.values('title')[0]

            return render(request, 'my_info.html', {
                'user_prov': user_prov['title'],
                'user_city': user_city['title'],
                'user_coun': user_coun['title'],

                'info_type': 'info',
            })

        elif info_type == 'head':
            return render(request, 'my_head.html', {
                'info_type': 'head',
            })

        elif info_type == 'contact':
            user_all_contact = TheContact.objects.filter(user=request.user).order_by('-is_default', '-id')
            alreadycount = user_all_contact.count()
            remainingcount = 10 - user_all_contact.count()

            all_contacts = []
            for contact in user_all_contact:
                cont = {}
                cont['id'] = contact.id
                cont['name'] = contact.name

                city_id = contact.city_addr
                coun = AreaInfo.objects.filter(id=int(city_id))
                coutact_coun = coun.values('title', 'Parent')[0]
                city = AreaInfo.objects.filter(id=coutact_coun['Parent'])
                coutact_city = city.values('title', 'Parent')[0]
                prov = AreaInfo.objects.filter(id=coutact_city['Parent'])
                coutact_prov = prov.values('title')[0]

                cont['city'] = coutact_prov['title'] + ' ' + coutact_city['title'] + ' ' + coutact_coun['title']
                cont['address'] = contact.address
                cont['zip_code'] = contact.zip_code
                cont['mobile'] = contact.mobile
                cont['is_default'] = contact.is_default
                all_contacts.append(cont)

            return render(request, 'my_contact.html', {
                'all_contacts': all_contacts,
                'alreadycount': alreadycount,
                'remainingcount': remainingcount,
                'info_type': 'contact',
            })

        else:
            return render(request, 'security.html', {
                'info_type': 'security',
            })


class SettingInfoView(View):
    """
    个人信息修改
    """
    def post(self, request, setting_type):
        if setting_type == 'info':
            info_form = InfoForm(request.POST, instance=request.user)
            if info_form.is_valid():
                info_form.save()

        elif setting_type == 'head':
            image_form = UploadPortraitForm(request.POST, request.FILES, instance=request.user)
            if image_form.is_valid():
                image_form.save()

        elif setting_type == 'contact':
            contact_form = ContactForm(request.POST)
            if contact_form.is_valid():
                contact = TheContact()
                all_contact = request.user.thecontact_set.all()
                if all_contact.count() <= 10:
                    contact.user = request.user
                    contact.name = request.POST.get('name', '')
                    contact.city_addr = request.POST.get('city_addr', '')
                    contact.address = request.POST.get('address', '')
                    contact.mobile = request.POST.get('mobile', '')
                    contact.zip_code = request.POST.get('zip_code', '')
                    # None or on
                    is_default = request.POST.get('is_default', '')
                    if not is_default:
                        contact.is_default = False
                    else:
                        for con in all_contact:
                            if con != contact:
                                # 别的设为非默认联系人地址
                                con.is_default = False
                                con.save()
                            else:
                                # 给自己设为默认
                                contact.is_default = True
                    contact.save()
                else:
                    # 联系人数量达到最大值
                    pass

        else:
            newpwd_form = InfoNewPwdForm(request.POST)
            if newpwd_form.is_valid():
                oldpwd = request.POST.get('oldpwd', '')
                newpwd1 = request.POST.get('newpwd1', '')
                newpwd2 = request.POST.get('newpwd2', '')
                user = authenticate(username=request.user.username, password=oldpwd)
                if user is not None:
                    if newpwd1 != newpwd2:
                        return render(request, 'security.html', {
                            'msg': '两次输入的密码不一致',
                        })
                    user = MyUser.objects.get(email=request.user.email)
                    user.password = make_password(newpwd1)
                    user.save()
                    return HttpResponseRedirect(reverse('login'))
                else:
                    # 用户密码错误
                    pass

        return HttpResponseRedirect(reverse('userinfo', kwargs={'info_type': setting_type}))


class ModifyContactView(View):
    """
    修改联系人
    """
    def get(self, request, contact_id):
        contact = TheContact.objects.get(id=contact_id)

        city_id = contact.city_addr
        coun = AreaInfo.objects.filter(id=int(city_id))
        coutact_coun = coun.values('title', 'Parent')[0]
        city = AreaInfo.objects.filter(id=coutact_coun['Parent'])
        coutact_city = city.values('title', 'Parent')[0]
        prov = AreaInfo.objects.filter(id=coutact_city['Parent'])
        coutact_prov = prov.values('title')[0]

        return render(request, 'modify_contact.html', {
            'coutact_prov': coutact_prov['title'],
            'coutact_city': coutact_city['title'],
            'coutact_coun': coutact_coun['title'],
            'contact': contact,
        })

    def post(self, request, contact_id):
        contact_form = ContactForm(request.POST)
        if contact_form.is_valid():
            all_contact = request.user.thecontact_set.all()
            contact = all_contact.get(id=contact_id)
            contact.name = request.POST.get('name', '')
            contact.city_addr = request.POST.get('city_addr', '')
            contact.address = request.POST.get('address', '')
            contact.mobile = request.POST.get('mobile', '')
            contact.zip_code = request.POST.get('zip_code', '')

            # None or on
            is_default = request.POST.get('is_default', '')
            if not is_default:
                contact.is_default = False
            else:
                for con in all_contact:
                    if con != contact:
                        # 别的设为非默认联系人地址
                        con.is_default = False
                        con.save()
                    else:
                        # 给自己设为默认
                        contact.is_default = True
            contact.save()

        return HttpResponseRedirect(reverse('userinfo', kwargs={'info_type': 'contact'}))


class DeleteContactView(View):

    """
    删除联系人
    """
    def get(self, request, contact_id):
        contact = TheContact.objects.get(id=contact_id)
        contact.delete()
        return HttpResponseRedirect(reverse('userinfo', kwargs={'info_type': 'contact'}))


class DefaultContactView(View):
    """
    设置默认联系人
    """
    def get(self, request, contact_id):
        contact = TheContact.objects.get(id=contact_id)
        if contact.is_default:
            contact.is_default = False
        else:
            all_contact = request.user.thecontact_set.all()
            for cont in all_contact:
                if cont != contact:
                    cont.is_default = False
                    cont.save()
                else:
                    contact.is_default = True
        contact.save()
        return HttpResponseRedirect(reverse('userinfo', kwargs={'info_type': 'contact'}))