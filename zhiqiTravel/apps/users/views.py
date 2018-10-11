from django.shortcuts import render
from django.views.generic.base import View
from django.contrib.auth.hashers import make_password
from captcha.models import CaptchaStore
from captcha.helpers import captcha_image_url
from django.http import HttpResponsePermanentRedirect
from django.urls import reverse

from .forms import *
from .models import *

# Create your views here.
class RegisterView(View):
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
            #return render(request, 'login.html')
            # 重定向,暂时定为全部新闻页面
            return HttpResponsePermanentRedirect(reverse('news:all'))
        else:
            hashkey = CaptchaStore.generate_key()
            image_url = captcha_image_url(hashkey)
            return render(request, 'register.html',{
                'register_form': register_form,
                'hashkey': hashkey,
                'image_url': image_url})
