"""zhiqiTravel URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, re_path,include
from django.views.static import serve

import xadmin

from zhiqiTravel.settings import MEDIA_ROOT

urlpatterns = [
    # path('admin/', admin.site.urls),
    re_path(r'^xadmin/', xadmin.site.urls),
    path('news/', include(('news.urls', 'news'))),

    re_path(r'media/(?P<path>.*)$',serve,{"document_root":MEDIA_ROOT}),
]
