# @Time    : 18-11-2
# @Author  : Zhiqi Kou
# @Email   : zhiqi1028@gmail.com

from django import template
from users.models import AreaInfo

register = template.Library()


@register.simple_tag
def CalculateThePrice(TheUnitPrice, num, freight):
    """
    计算价格
    :param TheUnitPrice: 单价
    :param num: 数量
    :param freight:运费
    :return: 总价
    """
    # 单价*数量+邮费
    price = TheUnitPrice * num + freight
    # 保留两位小数
    return '%.2f' % price

@register.simple_tag
def QueryTheAddress(id):
    """
    通过id查询省市区信息
    :param id: id
    :return: xx(省) xx(市) xx(区/县)
    """
    coun = AreaInfo.objects.filter(id=int(id))
    coutact_coun = coun.values('title', 'Parent')[0]
    city = AreaInfo.objects.filter(id=coutact_coun['Parent'])
    coutact_city = city.values('title', 'Parent')[0]
    prov = AreaInfo.objects.filter(id=coutact_city['Parent'])
    coutact_prov = prov.values('title')[0]

    return coutact_prov['title'] + '  ' + coutact_city['title'] + '  ' + coutact_coun['title']
