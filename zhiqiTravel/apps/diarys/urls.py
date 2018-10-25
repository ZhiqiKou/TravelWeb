# @Time    : 18-10-24
# @Author  : Zhiqi Kou
# @Email   : zhiqi1028@gmail.com


from django.urls import path, re_path,include
from .views import *

urlpatterns = [
    path('write/<slug:operation_type>/', WriteNoteView.as_view(), name='write'),
]