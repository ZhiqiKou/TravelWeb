from django.shortcuts import render
from django.views.generic import View
from django.http import HttpResponseRedirect, HttpResponse,JsonResponse
from django.urls import reverse

import json

from .models import *
from .forms import *
from operation.models import ShoppingCart
from users.models import TheContact
from pay.models import *
from scenicspots.models import Spots

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
        user = request.user
        products = ShoppingCart.objects.filter(user=user).order_by('-add_time')

        # 总价
        totalprice = 0
        # 总运费
        totalfreight = 0
        checkgoods = ShoppingCart.objects.filter(user=user, is_check=True)
        for checkgood in checkgoods:
            # 总价 = 单价*数量+运费
            totalprice += checkgood.product.price * checkgood.num + checkgood.product.freight
            # 总运费 = 所有运费相加
            totalfreight += checkgood.product.freight

        allcheck = True
        if ShoppingCart.objects.filter(user=user, is_check=False):
            allcheck = False
        return render(request, 'shop_car.html', {
            'products': products,
            'allcheck': allcheck,
            # 价格保留两位小数
            'totalprice': '%.2f' % totalprice,
            'totalfreight': '%.2f' % totalfreight,
        })


class ShopcarOperationView(View):
    """
    购物车中的一些操作
    """
    def post(self, request):
        operation = request.POST.get('opera', '')
        proid = request.POST.get('proid', '')
        result = {}

        # 有指定的商品，非全选
        if int(proid) > 0:
            goods = ShoppingCart.objects.get(id=int(proid))
            if operation == 'add':
                if goods.num < goods.product.num:
                    goods.num += 1
                    result = json.dumps({"status": "success", "msg": "数量增加成功！"}, ensure_ascii=False)
                else:
                    result = json.dumps({"status": "failed", "msg": "超出商品最大数量！"}, ensure_ascii=False)
            elif operation == 'reduce':
                if goods.num > 1:
                    goods.num -= 1
                    result = json.dumps({"status": "success", "msg": "数量减少成功！"}, ensure_ascii=False)
                else:
                    result = json.dumps({"status": "failed", "msg": "商品数量最少为1！"}, ensure_ascii=False)
            elif operation == 'true':
                goods.is_check = True
                result = json.dumps({"status": "success", "msg": "商品选中！"}, ensure_ascii=False)

            elif operation == 'false':
                goods.is_check = False
                result = json.dumps({"status": "success", "msg": "取消商品选中！"}, ensure_ascii=False)

            elif operation.isdigit():
                num = int(operation)
                if num > goods.product.num:
                    goods.num = goods.product.num
                    result = json.dumps({"status": "failed", "msg": "超出商品最大数量！"}, ensure_ascii=False)
                elif num < 1:
                    goods.num = 1
                    result = json.dumps({"status": "failed", "msg": "商品数量最少为1！"}, ensure_ascii=False)
                else:
                    goods.num = num
                    result = json.dumps({"status": "success", "msg": "数量修改成功！"}, ensure_ascii=False)
            else:
                result = json.dumps({"status": "failed", "msg": "ERROR！"}, ensure_ascii=False)

            goods.save()

        # 没有指定的商品，全选
        else:
            goods = ShoppingCart.objects.filter(user=request.user)
            if operation == 'true':
                for good in goods:
                    good.is_check = True
                    good.save()
                result = json.dumps({"status": "success", "msg": "全部商品选中！"}, ensure_ascii=False)

            elif operation == 'false':
                for good in goods:
                    good.is_check = False
                    good.save()
                result = json.dumps({"status": "success", "msg": "取消全部商品选中！"}, ensure_ascii=False)
        return HttpResponse(result)


class ShopingView(View):
    """
    直接购买的一些操作
    """
    def post(self, request):
        productid = request.POST.get('product_id', '')
        num = request.POST.get('num', '')
        user = request.user
        # 商品存在：
        try:
            product = Product.objects.get(id=productid)
            shopping = Shopping.objects.filter(product=product, user=user)
            # 如果直接购买表中已经有这个商品了
            if shopping:
                # 就把它删除
                shopping.delete()
            # Shoping表可以记录用户想买的商品
            shopping = Shopping()
            shopping.user = user
            shopping.product = product
            shopping.num = num
            shopping.save()
            result = json.dumps({"status": "success"}, ensure_ascii=False)
        # 商品不存在：
        except:
            # 报错
            result = json.dumps({"status": "failed", "msg": "添加失败！商品不存在！"}, ensure_ascii=False)
        return HttpResponse(result)

class ConfirmView(View):
    """
    确认订单
    """
    def get(self, request):
        user = request.user
        contactinfo = TheContact.objects.filter(user=user)
        frompage = request.GET.get('from', '')
        if frompage == 'detail':
            goods = Shopping.objects.filter(user=user).order_by("-add_time").first()
            price = goods.product.price * goods.num + goods.product.freight
            freight = goods.product.freight
            return render(request, 'confirm_order.html', {
                'contactinfo': contactinfo,
                'goods': goods,
                'price': '%.2f' % price,
                'freight': '%.2f' % freight,
                'frompage': frompage,
            })
        else:
            goodsinfo = ShoppingCart.objects.filter(user=user, is_check=True)
            totalprice = 0
            totalfreight = 0
            for good in goodsinfo:
                totalprice += good.product.price * good.num + good.product.freight
                totalfreight += good.product.freight

            return render(request, 'confirm_order.html', {
                'contactinfo': contactinfo,
                'goodsinfo': goodsinfo,
                'totalprice': '%.2f' % totalprice,
                'totalfreight': '%.2f' % totalfreight,
            })


class ConfirmGoodsView(View):
    """
    确认收货
    """
    def get(self, request):
        order_num = request.GET.get('order_num', '')
        order = GoodsOrdersMainTable.objects.get(order_num=order_num)
        order_state = order.order_state
        integral = int(order.total_amount)
        if order_state == 'yzf':
            # 用户积分增加,增加值：订单金额取整
            request.user.integral += integral
            request.user.save()
            # 更改订单状态
            order.order_state = 'ysh'
            order.received_time = datetime.now()
            order.save()
        else:
            pass
        return HttpResponseRedirect(reverse('pay:project_order'))


class CommentsGoodsView(View):
    def get(self, request):
        order_num = request.GET.get('order_num', '')
        products = OrderItems.objects.filter(order_num=order_num)
        return render(request, 'post_comment.html', {
            'products': products
        })

    def post(self, request):
        comments_form = CommentsForm(request.POST)
        if comments_form.is_valid():
            product_id = request.GET.get('product_id', '')
            order_num = request.GET.get('order_num', '')
            product = Product.objects.get(id=int(product_id))
            comment = request.POST.get('comment', '')
            # 检查用户这个订单中是否有这个物品
            if OrderItems.objects.get(good_id=product_id, order_num=order_num):
                # 检查是否确认收货
                order = GoodsOrdersMainTable.objects.get(order_num=order_num)
                if order.order_state == 'ysh':
                    # 增加评论内容
                    pro_com = ProductComments()
                    pro_com.user = request.user
                    pro_com.order_num = order_num
                    pro_com.product = product
                    pro_com.comments = comment
                    pro_com.save()

                    # 修改订单状态
                    order.order_state = 'ywc'
                    order.finish_time = datetime.now()
                    order.save()

                    return HttpResponseRedirect(reverse('pay:project_order'))

                else:
                    result = json.dumps({"status": "failed", "msg": "评论失败！请先确认收货！"}, ensure_ascii=False)
                    return HttpResponse(result)
            else:
                result = json.dumps({"status": "failed", "msg": "评论失败！商品不存在！"}, ensure_ascii=False)
                return HttpResponse(result)
        else:
            result = json.dumps({"status": "failed", "msg": "评论失败！评论为空！"}, ensure_ascii=False)
            return HttpResponse(result)


class BuyTicketsView(View):
    """
    门票购买
    """
    def get(self, request):
        spots_id = request.GET.get('spots_id', '')
        spots = Spots.objects.get(id=int(spots_id))
        contacts = TheContact.objects.filter(user=request.user)
        return render(request, 'submit_orders.html', {
            'spots': spots,
            'contacts': contacts,
        })
