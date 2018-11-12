from django.db import models

from datetime import datetime

from users.models import MyUser
from diarys.models import Diary
from scenicspots.models import Spots, Active
from shop.models import Product


# Create your models here.
class UserCollect(models.Model):
    user = models.ForeignKey(MyUser, verbose_name='用户', on_delete=models.CASCADE)
    diary = models.ForeignKey(Diary, verbose_name='游记', on_delete=models.CASCADE)
    add_time = models.DateTimeField(default=datetime.now, verbose_name='收藏时间')

    class Meta:
        verbose_name = '游记收藏'
        verbose_name_plural = verbose_name


class UserFav(models.Model):
    user = models.ForeignKey(MyUser, verbose_name='用户', on_delete=models.CASCADE)
    diary = models.ForeignKey(Diary, verbose_name='游记', on_delete=models.CASCADE)
    add_time = models.DateTimeField(default=datetime.now, verbose_name='点赞时间')

    class Meta:
        verbose_name = '游记点赞'
        verbose_name_plural = verbose_name


class DiaryComments(models.Model):
    user = models.ForeignKey(MyUser, verbose_name='用户', on_delete=models.CASCADE)
    diary = models.ForeignKey(Diary, verbose_name='游记', on_delete=models.CASCADE)
    comments = models.CharField(max_length=200, verbose_name='评论内容')
    add_time = models.DateTimeField(default=datetime.now, verbose_name='评论时间')

    class Meta:
        verbose_name = '游记评论'
        verbose_name_plural = verbose_name


class SpotsComments(models.Model):
    user = models.ForeignKey(MyUser, verbose_name='用户', on_delete=models.CASCADE)
    spots = models.ForeignKey(Spots, verbose_name='景区', on_delete=models.CASCADE)
    comments = models.CharField(max_length=200, verbose_name='评论内容')
    add_time = models.DateTimeField(default=datetime.now, verbose_name='评论时间')

    class Meta:
        verbose_name = '景区评论'
        verbose_name_plural = verbose_name


class ActiveComments(models.Model):
    user = models.ForeignKey(MyUser, verbose_name='用户', on_delete=models.CASCADE)
    active = models.ForeignKey(Active, verbose_name='活动', on_delete=models.CASCADE)
    comments = models.CharField(max_length=200, verbose_name='评论内容')
    add_time = models.DateTimeField(default=datetime.now, verbose_name='评论时间')

    class Meta:
        verbose_name = '活动评论'
        verbose_name_plural = verbose_name


class ShoppingCart(models.Model):
    user = models.ForeignKey(MyUser, verbose_name='用户', on_delete=models.CASCADE)
    product = models.ForeignKey(Product, verbose_name='商品', on_delete=models.CASCADE)
    num = models.IntegerField(verbose_name='商品数量')
    is_check = models.BooleanField(default=False, verbose_name='是否选中')
    add_time = models.DateTimeField(default=datetime.now, verbose_name='添加时间')

    class Meta:
        verbose_name = '购物车'
        verbose_name_plural = verbose_name


class Shopping(models.Model):
    user = models.ForeignKey(MyUser, verbose_name='用户', on_delete=models.CASCADE)
    product = models.ForeignKey(Product, verbose_name='商品', on_delete=models.CASCADE)
    num = models.IntegerField(verbose_name='商品数量')
    add_time = models.DateTimeField(default=datetime.now, verbose_name='添加时间')

    class Meta:
        verbose_name = '直接购买商品'
        verbose_name_plural = verbose_name


