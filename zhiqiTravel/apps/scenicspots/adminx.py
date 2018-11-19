# @Time    : 18-10-15
# @Author  : Zhiqi Kou
# @Email   : zhiqi1028@gmail.com

import xadmin
from xadmin import views

from .models import *


class SpotsAdmin:
    """
    景点后台管理
    """
    list_display = ['name', 'classification', 'phone', 'businessHours', 'price', 'add_times']
    list_filter = ['price', 'classification', 'add_times']
    search_fields = ['name', 'classification', 'phone', 'businessHours', 'price', 'add_times']
    fields = ['name', 'content', 'image', 'picture', 'classification', 'phone', 'address', 'businessHours', 'price', 'x', 'y', 'add_times']
    model_icon = 'fa fa-bank'
    style_fields = {"content": "ueditor"}


class GalleryAdmin:
    list_display = ['spots', 'title', 'image', 'add_time']
    model_icon = 'fa fa-picture-o'


class ActiveAdmin:
    """
    活动后台管理
    """
    list_display = ['title', 'classification', 'phone', 'all_num', 'price', 'add_time']
    list_filter = ['price', 'classification', 'add_time']
    search_fields = ['title', 'classification', 'phone', 'all_num', 'price', 'add_time']
    fields = ['title', 'introduce', 'image', 'classification', 'phone', 'go_time', 'address', 'price',
              'all_num', 'add_time']
    model_icon = 'fa fa-clipboard'
    style_fields = {"introduce": "ueditor"}


xadmin.site.register(Spots, SpotsAdmin)
xadmin.site.register(Gallery, GalleryAdmin)
xadmin.site.register(Active, ActiveAdmin)