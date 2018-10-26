# @Time    : 18-10-24
# @Author  : Zhiqi Kou
# @Email   : zhiqi1028@gmail.com


from django.urls import path, re_path,include
from .views import *

urlpatterns = [
    path('getdiaray/<int:diary_id>/', GetdiarayView.as_view(), name='getdiaray'),
    path('setdiaray/<slug:operation_type>/<int:diary_id>/', SetdiarayView.as_view(), name='setdiaray'),
]