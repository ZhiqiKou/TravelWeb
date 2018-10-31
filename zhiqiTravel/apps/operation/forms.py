# @Time    : 18-10-31
# @Author  : Zhiqi Kou
# @Email   : zhiqi1028@gmail.com

from django import forms

from .models import *


class CommentsForm(forms.Form):
    comment = forms.CharField(required=True)

