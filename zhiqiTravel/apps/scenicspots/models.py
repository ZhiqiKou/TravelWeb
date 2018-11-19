from django.db import models

from DjangoUeditor.models import UEditorField

from datetime import datetime


# Create your models here.
class Spots(models.Model):
    """
    旅游景区
    """
    name = models.CharField(max_length=30, verbose_name='名称')
    content = UEditorField(verbose_name='内容',
                           width=600,
                           height=300,
                           imagePath="Scenic/ueditor/",
                           filePath="Scenic/ueditor/", default='')
    image = models.ImageField(upload_to='spots/thumbnail/%Y/%m', max_length=100, verbose_name='缩略图')
    picture = models.ImageField(upload_to='spots/mainfigure/%Y/%m', max_length=100, verbose_name='主图')
    classification = models.CharField(max_length=10, choices=(('natural', '景区'),
                                                              ('leisure', '休闲')),
                                      default='natural', verbose_name='分类')
    phone = models.CharField(max_length=15, verbose_name='联系电话')
    businessHours = models.CharField(max_length=10, default='全年', verbose_name='开放时间')
    address = models.CharField(max_length=50, verbose_name='地址')
    price = models.FloatField(verbose_name='价格')
    # 小数点后6位，总共9位数,默认位置设为洛阳市政府
    x = models.DecimalField(decimal_places=6, max_digits=9, default=112.460033, verbose_name='经度')
    y = models.DecimalField(decimal_places=6, max_digits=9, default=34.624376, verbose_name='纬度')
    add_times = models.DateTimeField(default=datetime.now, verbose_name='添加时间')

    class Meta:
        verbose_name = '旅游景区'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name


class Gallery(models.Model):
    """
    景区图库
    """
    spots = models.ForeignKey(Spots, verbose_name='景区', on_delete=models.CASCADE)
    title = models.CharField(max_length=100, verbose_name='标题')
    image = models.ImageField(upload_to='spots/banner/%Y/%m', verbose_name='轮播图', max_length=100)
    add_time = models.DateTimeField(default=datetime.now, verbose_name='添加时间')

    class Meta:
        verbose_name = '轮播图'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.title


class Active(models.Model):
    """
    旅游活动
    """
    title = models.CharField(max_length=30, verbose_name='标题')
    introduce = UEditorField(verbose_name='活动介绍',
                             width=600,
                             height=300,
                             imagePath="Active/ueditor/",
                             filePath="Active/ueditor/", default='')
    image = models.ImageField(upload_to='active/%Y/%m', max_length=100, verbose_name='缩略图')
    classification = models.CharField(max_length=10, choices=(('natural', '景区'),
                                                              ('leisure', '休闲')),
                                      default='natural', verbose_name='分类')
    phone = models.CharField(max_length=15, verbose_name='咨询电话')
    go_time = models.DateTimeField(verbose_name='出发时间')
    address = models.CharField(max_length=50, verbose_name='集合地点')
    price = models.FloatField(verbose_name='价格')
    now_num = models.IntegerField(default=0, verbose_name='当前报名人数')
    all_num = models.IntegerField(default=0, verbose_name='总人数')
    add_time = models.DateTimeField(default=datetime.now, verbose_name='添加时间')

    class Meta:
        verbose_name = '旅游活动'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.title
