from django.db import models

from DjangoUeditor.models import UEditorField

from datetime import datetime


# Create your models here.
class News(models.Model):
    title = models.CharField(max_length=50, verbose_name='标题')
    content = UEditorField(verbose_name='内容',
                           width=600,
                           height=300,
                           imagePath="news/ueditor/",
                           filePath="news/ueditor/", default='')
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

    class Meta:
        verbose_name = '新闻信息'
        verbose_name_plural = verbose_name

    def get_content_text(self):

        self.content

    def __str__(self):
        return self.title
