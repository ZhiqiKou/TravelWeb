# @Time    : 18-10-31
# @Author  : Zhiqi Kou
# @Email   : zhiqi1028@gmail.com

from django.urls import path, re_path,include
from .views import *

urlpatterns = [
    path('fav/', FavView.as_view(), name='fav'),
    path('collect/', CollView.as_view(), name='collect')
]