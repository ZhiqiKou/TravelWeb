from django.shortcuts import render
from django.views.generic import View
from django.shortcuts import render, redirect, HttpResponseRedirect, reverse
from alipay import AliPay

import time
import random

from operation.models import ShoppingCart
from .models import *
from utils.mixin_utils import LoginRequiredMixin

from zhiqiTravel import settings

def create_alipay():
    """
    创建支付宝对象
    :return: 支付宝对象
    """
    alipay = AliPay(
        appid=settings.ALIPAY_APPID,
        # 回调地址
        app_notify_url=None,
        # 公钥路径
        alipay_public_key_path=settings.ALIPAY_PUBLIC_KEY_PATH,
        # 私钥路径
        app_private_key_path=settings.APP_PRIVATE_KEY_PATH,
        # 加密方式
        sign_type='RSA2',
        debug=True,
    )
    return alipay


def creat_order_num(user_id):
    time_stamp = int(round(time.time() * 1000))
    randomnum = '%04d' % random.randint(0, 100000)
    order_num = str(time_stamp) + str(randomnum) + str(user_id)
    return order_num

# Create your views here.
class AliPayTestView(View):
    """
    支付宝测试
    """
    def get(self, request):
        return render(request, 'PayTest.html', {})

    def post(self, request):
        money = float(request.POST.get('money', ''))
        goods = request.POST.get('goods', '')
        alipay = create_alipay()
        # 生成支付的url
        query_params = alipay.api_alipay_trade_page_pay(
            subject=goods,  # 商品标题
            #  时间+随机数+用户ID（数字）组合生成，因为用户ID是唯一的，生成的订单号也就不会重复了
            out_trade_no=creat_order_num(request.user.id),  # 商户订单号
            total_amount=money,  # 交易金额(单位: 元 保留俩位小数)
            timeout_express='60m',  # 订单关闭时间：60分钟
            return_url='http://127.0.0.1:8000/pay/alipayResultTest',
        )
        # 让用户进行支付的支付宝页面网址
        url = settings.ALIPAY_URL + query_params
        return redirect(url)


class AliPayResultTestView(View):
    def get(self, request):
        out_trade_no = request.GET.get('trade_no', '')
        alipay = create_alipay()

        response = alipay.api_alipay_trade_query(trade_no=out_trade_no)
        code = response.get("code")  # 支付宝接口调用成功或者错误的标志
        print(code)


class SubmitOrderView(LoginRequiredMixin, View):
    def post(self, request):
        # 价格和商品要从后台读取
        # 商品是购物车中选中的商品，价格计算参考确认订单页面
        user = request.user
        consignee = request.POST.get('consignee', '')
        address = request.POST.get('address', '')
        mobile = request.POST.get('mobile', '')
        zip_code = request.POST.get('zip_code', '')
        goodsinfo = ShoppingCart.objects.filter(user=user, is_check=True)

        # 订单描述信息
        if goodsinfo.count() > 1:
            order_describe = goodsinfo.first().product.name + '等多件商品'
        else:
            order_describe = goodsinfo.first().product.name

        # 商户订单号
        out_trade_no = creat_order_num(request.user.id)
        totalprice = 0
        for good in goodsinfo:
            # 总价计算
            totalprice += good.product.price * good.num + good.product.freight

            # 商品信息表存储
            order_items = OrderItems()
            order_items.good_name = good.product.name
            order_items.good_num = good.num
            order_items.order_num = out_trade_no
            order_items.good_price = good.product.price
            order_items.good_image = good.product.mainimg
            order_items.good_id = good.product.id
            order_items.save()

            # 商品减库存
            good.product.num -= good.num
            # 商品购买人数加1
            good.product.buyers += 1
            good.product.save()

        # 从购物车中删除
        # goodsinfo.delete()

        # 订单主表存储
        goods_orders_main_table = GoodsOrdersMainTable()
        goods_orders_main_table.user = user
        goods_orders_main_table.order_num = out_trade_no
        goods_orders_main_table.order_describe = order_describe
        goods_orders_main_table.total_amount = totalprice
        goods_orders_main_table.consignee = consignee
        goods_orders_main_table.address = address
        goods_orders_main_table.mobile = mobile
        goods_orders_main_table.zip_code = zip_code
        goods_orders_main_table.save()

        # 跳转支付宝支付页面
        alipay = create_alipay()
        # 生成支付的url
        query_params = alipay.api_alipay_trade_page_pay(
            subject=order_describe,
            out_trade_no=out_trade_no,
            total_amount=totalprice,
            timeout_express=settings.ALIPAY_CLOSE_TIME,
            return_url='http://127.0.0.1:8000/pay/finish_pay/',
        )
        url = settings.ALIPAY_URL + query_params
        return HttpResponseRedirect(url)


class FinishPayView(View):
    def get(self, request):
        out_trade_no = request.GET.get('out_trade_no', '')
        alipay = create_alipay()
        response = alipay.api_alipay_trade_query(out_trade_no=out_trade_no)
        code = response.get("code")  # 支付宝接口调用成功或者错误的标志
        if code == '10000':
            # 支付成功！
            # 订单变为“已支付”状态
            order = GoodsOrdersMainTable.objects.get(order_num=out_trade_no)
            order.order_state = 'yzf'
            order.pay_time = datetime.now()
            order.save()
        return HttpResponseRedirect(reverse('pay:project_order'))


class ProjectOrderView(View):
    """
    商品订单页面
    """
    def get(self, request):

        user = request.user
        # 得到该用户的所有订单
        all_orders = GoodsOrdersMainTable.objects.all().order_by('-create_time').filter(user=user)

        order_state = request.GET.get('order_state', '')
        # 获取各种订单状态对应的订单号
        if order_state:
            all_orders = all_orders.filter(order_state=order_state)
        # 获取订单号对应的详细信息
        all_orders_list = []
        for orders in all_orders:

            orders_dic = {}
            # 订单号
            orders_dic['order_num'] = orders.order_num
            # 下单日期
            orders_dic['create_time'] = orders.create_time
            # 总价
            orders_dic['totalprice'] = orders.total_amount
            # 订单状态
            orders_dic['order_state'] = orders.order_state

            goods_list = []
            goods = OrderItems.objects.filter(order_num=orders_dic['order_num'])
            for good in goods:
                goods_dic = {}
                # 商品名
                goods_dic['good_name'] = good.good_name
                # 商品数量
                goods_dic['good_num'] = good.good_num
                # 商品单价
                goods_dic['good_price'] = good.good_price
                # 商品图片
                goods_dic['good_image'] = good.good_image
                # 商品id
                goods_dic['good_id'] = good.good_id

                goods_list.append(goods_dic)

            orders_dic['goods_list'] = goods_list

            all_orders_list.append(orders_dic)

        return render(request, 'project_order.html', {
            'order_state': order_state,
            'all_orders_list': all_orders_list,

        })
