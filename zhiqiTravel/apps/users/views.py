from django.shortcuts import render
from django.views.generic.base import View
from django.contrib.auth.hashers import make_password
from django.http import HttpResponseRedirect
from django.urls import reverse
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout

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
        return render(request, 'index.html', {})


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