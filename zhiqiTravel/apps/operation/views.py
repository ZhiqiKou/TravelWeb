from django.shortcuts import render
from django.views.generic import View
from django.http import HttpResponseRedirect, HttpResponse,JsonResponse
from django.urls import reverse

import json

from .models import *
from .forms import *
from operation.models import ShoppingCart


# Create your views here.
class FavView(View):

    """
    游记点赞
    """
    def post(self, request):
        diary_id = request.POST.get('id', '')
        diary = Diary.objects.get(id=diary_id)
        try:
            fav_diary = UserFav.objects.get(diary=diary, user=request.user)
            diary.praisenum -= 1
            fav_diary.delete()
            result = json.dumps({"status": "disfav"}, ensure_ascii=False)
        except:
            diary.praisenum += 1
            fav_diary = UserFav()
            fav_diary.diary = diary
            fav_diary.user = request.user
            fav_diary.save()
            result = json.dumps({"status": "fav"}, ensure_ascii=False)
        diary.save()
        return HttpResponse(result)


class CollView(View):
    """
    游记收藏
    """
    def post(self, request):
        diary_id = request.POST.get('id', '')
        diary = Diary.objects.get(id=diary_id)
        try:
            coll_diary = DiaryComments.objects.get(diary=diary, user=request.user)
            diary.collectnum -= 1
            coll_diary.delete()
            result = json.dumps({"status": "discoll"}, ensure_ascii=False)
        except:
            diary.collectnum += 1
            coll_diary = UserCollect()
            coll_diary.diary = diary
            coll_diary.user = request.user
            coll_diary.save()
            result = json.dumps({"status": "coll"}, ensure_ascii=False)
        diary.save()
        return HttpResponse(result)


class CommentsView(View):
    """
    游记评论
    """
    def post(self, request):
        comments_form = CommentsForm(request.POST)
        if comments_form.is_valid():
            diary_id = request.POST.get('diaryid', '')
            comment = request.POST.get('comment', '')

            diary = Diary.objects.get(id=int(diary_id))
            diary.commentsnum += 1
            diary.save()

            comm_diary = DiaryComments()
            comm_diary.diary = diary
            comm_diary.comments = comment
            comm_diary.user = request.user
            comm_diary.save()
            return HttpResponseRedirect(reverse('diarys:details', kwargs={'diary_id': diary_id}))
        else:
            result = json.dumps({"status": "failed"}, ensure_ascii=False)
            return HttpResponse(result)


class ShopcarView(View):
    """
    购物车
    """
    def post(self, request):
        productid = request.POST.get('product_id', '')
        num = request.POST.get('num', '')
        user = request.user
        # 商品存在：
        try:
            product = Product.objects.get(id=productid)
            try:
                # 购物车里已经有这个商品
                shoppingcart = ShoppingCart.objects.get(product=product, user=user)
                shoppingcart.num += int(num)

                if shoppingcart.num <= product.num:
                    shoppingcart.save()
                    result = json.dumps({"status": "success", "msg": "添加成功！在购物车等你呦～～"}, ensure_ascii=False)
                else:
                    # 超出商品最大数量
                    result = json.dumps({"status": "failed", "msg": "购物车中总数量超过商品总数，请重新添加！"}, ensure_ascii=False)
            except:
                # 购物车里没有这个商品
                shoppingcart = ShoppingCart()
                shoppingcart.user = user
                shoppingcart.product = product
                shoppingcart.num = num
                shoppingcart.save()

                result = json.dumps({"status": "success", "msg": "添加成功！在购物车等你呦～～"}, ensure_ascii=False)
        # 商品不存在：
        except:
            # 报错
            result = json.dumps({"status": "failed", "msg": "添加失败！商品不存在！"}, ensure_ascii=False)
        return HttpResponse(result)

    def get(self, request):
        products = ShoppingCart.objects.filter(user=request.user)

        return render(request,'shop_car.html', {
            'products': products
        })

