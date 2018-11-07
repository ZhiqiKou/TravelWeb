# @Time    : 18-11-6
# @Author  : Zhiqi Kou
# @Email   : zhiqi1028@gmail.com

from django.urls import path
from .views import *

urlpatterns = [
    # 支付宝测试
    path('alipayTest/', AliPayTestView.as_view(), name='alipaytest'),
    path('alipayResultTest', AliPayResultTestView.as_view(), name='alipayresulttest'),
]