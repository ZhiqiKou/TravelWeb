# @Time    : 18-10-11
# @Author  : Zhiqi Kou
# @Email   : zhiqi1028@gmail.com

from django import forms
from captcha.fields import CaptchaField

from .models import *


class RegisterForm(forms.Form):
    email = forms.EmailField(required=True)
    password = forms.CharField(required=True, min_length=8)
    captcha = CaptchaField(error_messages={'invalid': '验证码有误'})


class LoginForm(forms.Form):
    username = forms.CharField(required=True)
    password = forms.CharField(required=True, min_length=8)


class ForgetForm(forms.Form):
    email = forms.EmailField(required=True)
    captcha = CaptchaField(error_messages={'invalid': '验证码有误'})


class NewPwdForm(forms.Form):
    pwd1 = forms.CharField(required=True, min_length=8)
    pwd2 = forms.CharField(required=True, min_length=8)


class InfoForm(forms.ModelForm):
    class Meta:
        model = MyUser
        fields = ['nickname', 'gender', 'city_addr', 'birthday', 'signature']


class UploadPortraitForm(forms.ModelForm):
    class Meta:
        model = MyUser
        fields = ['portrait']


class InfoNewPwdForm(forms.Form):
    oldpwd = forms.CharField(required=True, min_length=8)
    newpwd1 = forms.CharField(required=True, min_length=8)
    newpwd2 = forms.CharField(required=True, min_length=8)


class ContactForm(forms.Form):
    name = forms.CharField(required=True, min_length=2, max_length=15)
    address = forms.CharField(required=True, max_length=100)
    mobile = forms.CharField(required=True, min_length=11, max_length=11)
    zip_code = forms.CharField(required=True, min_length=6, max_length=6)