from django.shortcuts import render
from django.views.generic import View
from django.shortcuts import render, redirect, HttpResponse
from alipay import AliPay


import time
import random

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
            return_url=settings.ALIPAY_RETURN_URL,
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