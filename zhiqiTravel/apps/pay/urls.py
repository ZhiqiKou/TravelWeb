# @Time    : 18-11-6
# @Author  : Zhiqi Kou
# @Email   : zhiqi1028@gmail.com

from django.urls import path
from .views import *

urlpatterns = [
    # 支付宝测试
    path('alipayTest/', AliPayTestView.as_view(), name='alipaytest'),
    path('alipayResultTest', AliPayResultTestView.as_view(), name='alipayresulttest'),

    # 提交订单
    path('submit_order/', SubmitOrderView.as_view(), name='submit_order'),
    # 支付完成后执行的操作
    path('finish_pay/', FinishPayView.as_view(), name='finish_pay'),
    # 商品订单页面
    path('project_order/', ProjectOrderView.as_view(), name='project_order')
]