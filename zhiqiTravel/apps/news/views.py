from django.shortcuts import render
from django.views.generic import View
from .models import *

# Create your views here.
class NewsView(View):
    """
    新闻列表
    """
    def get(self, request):

        all_news = News.objects.all().order_by('-add_times')

        news_type = request.GET.get('classification', '')
        if news_type:
            all_news = all_news.filter(classification=news_type)

        return render(request, 'news_list.html', {
            'all_news': all_news,
            'classification': news_type,
        })


class NewsDetails(View):
    """
    新闻详情页
    """
    def get(self, request, news_id):
        news = News.objects.get(id=(int(news_id)))
        news.checknum += 1
        news.save()

        return render(request, 'article.html', {
            'news': news,
        })
