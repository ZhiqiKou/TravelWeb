from django.shortcuts import render
from django.views.generic import View
from django.shortcuts import render, redirect, HttpResponseRedirect
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
        # 商户订单号
        out_trade_no = creat_order_num(request.user.id)
        totalprice = 0
        # 商品信息表存储
        for good in goodsinfo:
            totalprice += good.product.price * good.num + good.product.freight

            order_items = OrderItems()
            order_items.user = user
            order_items.good = good
            order_items.order_num = out_trade_no
            order_items.save()

        # 订单主表存储

        if goodsinfo.count() > 1:
            order_describe = goodsinfo.first().product.name + '等多件商品'
        else:
            order_describe = goodsinfo.first().product.name

        goods_orders_main_table = GoodsOrdersMainTable()
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
            order = GoodsOrdersMainTable.objects.get(order_num=out_trade_no)
            order.order_state = 'yzf'
            order.pay_time = datetime.now()
            order.save()
            pass

