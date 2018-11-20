# @Time    : 18-11-20
# @Author  : Zhiqi Kou
# @Email   : zhiqi1028@gmail.com

import xadmin
from xadmin import views
from .models import *


class BannerAdmin:
    """
    轮播图后台管理
    """
    list_display = ['title', 'add_time']
    list_filter = ['title', 'add_time']
    search_fields = ['title', 'add_time']
    fields = ['title', 'image', 'url', 'add_time']
    model_icon = 'fa fa-photo'


xadmin.site.register(Banner, BannerAdmin)
