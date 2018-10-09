from django.db import models

from datetime import datetime

from users.models import user_directory_path, MyUser

# Create your models here.
class Diary(models.Model):
    """
    游记
    """
    user = models.ForeignKey(MyUser, verbose_name='用户', on_delete=models.CASCADE)
    title = models.CharField(max_length=20, verbose_name='题目', default='我的游记')
    content = models.TextField(verbose_name='内容')
    image = models.ImageField(upload_to=user_directory_path, max_length=100)
    checknum = models.IntegerField(verbose_name='查看数', default=0)
    commentsnum = models.IntegerField(verbose_name='评论数', default=0)
    is_published = models.BooleanField(verbose_name='是否发表', default=False)
    add_times = models.DateTimeField(default=datetime.now, verbose_name='添加时间')

    class Meta:
        verbose_name = '游记信息'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.title
