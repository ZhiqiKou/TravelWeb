# @Time    : 18-10-15
# @Author  : Zhiqi Kou
# @Email   : zhiqi1028@gmail.com

from django.urls import path, re_path,include
from .views import *

urlpatterns = [
    path('all', ScenicListView.as_view(), name='all'),
    # 景点详情
    path('scenic_detail/<int:scenic_id>/', ScenicDetails.as_view(), name='scenic_detail'),
    # 旅游订单详情
    path('order_detail/<slug:order_num>/', OrderDetailsView.as_view(), name='order_detail'),
    # 活动详情
    path('active_detail/<int:active_id>/', ActiveDetails.as_view(), name='active_detail'),
]