# @Time    : 18-11-1
# @Author  : Zhiqi Kou
# @Email   : zhiqi1028@gmail.com

from django.urls import path, re_path,include
from .views import *

urlpatterns = [
    # 所有商品
    path('all/', AllView.as_view(), name='all'),
    # 商品详情
    path('detail/<int:pro_id>/', ProDetailsView.as_view(), name='pro_detail'),
    # 商品订单详情
    path('order_detail/<slug:order_num>/', OrderDetailsView.as_view(), name='order_detail')

]