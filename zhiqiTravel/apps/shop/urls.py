# @Time    : 18-11-1
# @Author  : Zhiqi Kou
# @Email   : zhiqi1028@gmail.com

from django.urls import path, re_path,include
from .views import *

urlpatterns = [
    path('all/', AllView.as_view(), name='all'),
    path('detail/<int:pro_id>/', ProDetailsView.as_view(), name='pro_detail')
]