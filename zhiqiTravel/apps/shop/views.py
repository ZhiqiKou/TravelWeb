from django.shortcuts import render
from django.views.generic import View


from .models import *
from news.views import get_public_box
from pay.models import *
from operation.models import ProductComments


# Create your views here.
class AllView(View):
    def get(self, request):
        all_pros = Product.objects.all().order_by('-add_time')

        pro_type = request.GET.get('pro_type', '')
        if pro_type:
            all_pros = all_pros.filter(pro_type=pro_type)


        public_box = get_public_box()
        return render(request, 'mall_list.html', {
            'all_pros': all_pros,
            'pro_type': pro_type,
            'now_type': 'shop',
            'culture': public_box.get('culture'),
            'specialty': public_box.get('specialty'),
            'food': public_box.get('food'),
            'life': public_box.get('life'),
        })


class ProDetailsView(View):
    """
    产品详情页
    """
    def get(self, request, pro_id):
        product = Product.objects.get(id=(int(pro_id)))

        propic = ProPic.objects.filter(product=product)

        comments = ProductComments.objects.filter(product=product).order_by('-add_time')
        # 销量前五设为推荐商品
        recommendpros = Product.objects.all().order_by('-buyers')[:5]

        return render(request, 'project.html', {
            'product': product,
            'propic': propic,
            'recommendpros': recommendpros,
            'now_type': 'shop',
            'comments': comments,
        })


class OrderDetailsView(View):
    """
    订单详情页
    """
    def get(self, request, order_num):
        order = GoodsOrdersMainTable.objects.get(order_num=order_num)
        order_state = order.order_state
        consignee = order.consignee
        mobile = order.mobile
        address = order.address
        zip_code = order.zip_code
        create_time = order.create_time
        price = order.total_amount

        goods = OrderItems.objects.filter(order_num=order_num)

        return render(request,'order_details.html', {
            'order_state': order_state,
            'consignee': consignee,
            'mobile': mobile,
            'address': address,
            'zip_code': zip_code,
            'create_time': create_time,
            'goods': goods,
            'price': price,
            'order_num': order_num,
        })