from django.db import models

from datetime import datetime


# Create your models here.
class News(models.Model):
    title = models.CharField(max_length=20, verbose_name='标题')
    content = models.TextField(verbose_name='内容')
    image = models.ImageField(upload_to='news/%Y/%m', max_length=100, verbose_name='缩略图')
    checknum = models.IntegerField(verbose_name='查看数', default=0)
    classification = models.CharField(max_length=10, choices=(('hot', '热点'),
                                                                ('active', '活动'),
                                                                ('culture', '文化'),
                                                                ('food', '美食'),
                                                                ('life', '生活'),
                                                                ('specialty', '特产'),
                                                                ),
                                      default='hot', verbose_name='资讯分类')
    add_times = models.DateTimeField(default=datetime.now, verbose_name='添加时间')
