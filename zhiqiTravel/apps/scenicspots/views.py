from django.shortcuts import render
from django.views.generic import View

from .models import *
from news.views import get_public_box
from shop.models import Product
from pay.models import TicketsOrdersMainTable
from operation.models import SpotsComments


# Create your views here.
class ScenicListView(View):
    """
    旅游景区列表
    """
    def get(self, request):
        all_spots = Spots.objects.all().order_by('-add_times')
        public_box = get_public_box()
        return render(request, 'scenic_list.html', {
            'all_spots': all_spots,
            'culture': public_box.get('culture'),
            'specialty': public_box.get('specialty'),
            'food': public_box.get('food'),
            'life': public_box.get('life'),
            'now_type': 'scenic',
        })


class ScenicDetails(View):
    """
    旅游景区详情
    """
    def get(self,request, scenic_id):
        scenic = Spots.objects.get(id=int(scenic_id))
        gallerys = scenic.gallery_set.all()
        products = Product.objects.all().order_by('-buyers')[:6]
        comments = SpotsComments.objects.filter(spots=scenic)
        return render(request, 'scenic.html', {
            'scenic': scenic,
            'gallerys': gallerys,
            'now_type': 'scenic',
            'products': products,
            'comments': comments,
        })


class OrderDetailsView(View):
    """
    旅游订单详情页
    """
    def get(self, request, order_num):
        order = TicketsOrdersMainTable.objects.get(user=request.user, order_num=order_num)
        return render(request, 'order_details2.html', {
            'order': order,
        })