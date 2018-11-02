# @Time    : 18-10-31
# @Author  : Zhiqi Kou
# @Email   : zhiqi1028@gmail.com

from django.urls import path, re_path,include
from .views import *

urlpatterns = [
    # 游记点赞
    path('fav/', FavView.as_view(), name='fav'),
    # 游记收藏
    path('collect/', CollView.as_view(), name='collect'),
    # 游记评论
    path('comments/', CommentsView.as_view(), name='comments'),

    # 购物车
    path('shopcar/', ShopcarView.as_view(), name='shopcar'),

]