# @Time    : 18-11-2
# @Author  : Zhiqi Kou
# @Email   : zhiqi1028@gmail.com

from django import template

register = template.Library()


@register.simple_tag
def multiplication(multiplier1, multiplier2, figures):

    return round(multiplier1 * multiplier2, figures)