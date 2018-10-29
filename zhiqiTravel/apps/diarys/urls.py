# @Time    : 18-10-24
# @Author  : Zhiqi Kou
# @Email   : zhiqi1028@gmail.com


from django.urls import path, re_path,include
from .views import *

urlpatterns = [
    # 写游记页面
    path('getdiaray/<int:diary_id>/', GetdiarayView.as_view(), name='getdiaray'),
    # 修改游记
    path('setdiaray/<slug:operation_type>/<int:diary_id>/', SetdiarayView.as_view(), name='setdiaray'),
    # 游记详情
    path('details/<int:diary_id>/', DetailsView.as_view(), name='details'),
    # 已发表游记
    path('published/', PublishedView.as_view(), name='published'),
    #
]