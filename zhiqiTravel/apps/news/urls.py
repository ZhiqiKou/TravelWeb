# @Time    : 18-10-10
# @Author  : Zhiqi Kou
# @Email   : zhiqi1028@gmail.com

from django.urls import path, re_path,include
from .views import *

urlpatterns = [
    path('all/', NewsView.as_view(), name='all'),
    path('detail/<int:news_id>/', NewsDetails.as_view(), name='news_detail')
]