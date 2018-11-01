from django.shortcuts import render
from django.views.generic import View


from .models import *
from news.views import get_public_box


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

        # 销量前五设为推荐商品
        recommendpros = Product.objects.all().order_by('-buyers')[:5]

        return render(request, 'project.html', {
            'product': product,
            'propic': propic,
            'recommendpros': recommendpros,
            'now_type': 'shop',
        })
