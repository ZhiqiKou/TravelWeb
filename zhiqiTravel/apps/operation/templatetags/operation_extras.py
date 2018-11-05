# @Time    : 18-11-2
# @Author  : Zhiqi Kou
# @Email   : zhiqi1028@gmail.com

from django import template

register = template.Library()


@register.simple_tag
def CalculateThePrice(TheUnitPrice, num, freight):
    # 单价*数量+邮费
    price = TheUnitPrice * num + freight
    # 保留两位小数
    return '%.2f' % price