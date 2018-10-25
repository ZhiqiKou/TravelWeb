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

        public_box = get_public_box()
        return render(request, 'news_list.html', {
            'all_news': all_news,
            'classification': news_type,
            'culture': public_box.get('culture'),
            'specialty': public_box.get('specialty'),
            'food': public_box.get('food'),
            'life': public_box.get('life'),
            'now_type': 'news',
        })


class NewsDetails(View):

    """
    新闻详情页
    """
    def get(self, request, news_id):

        public_box = get_public_box()
        news = News.objects.get(id=(int(news_id)))
        news.checknum += 1
        news.save()
        return render(request, 'article.html', {
            'news': news,
            'culture': public_box.get('culture'),
            'specialty': public_box.get('specialty'),
            'food': public_box.get('food'),
            'life': public_box.get('life'),
            'now_type': 'news',
        })


def get_public_box():

    all_news = News.objects.all().order_by('-add_times')
    culture = all_news.filter(classification='culture')[:3]
    specialty = all_news.filter(classification='specialty')[:3]
    food = all_news.filter(classification='food')[:3]
    life = all_news.filter(classification='life')[:3]

    public_box = {
        'culture': culture,
        'specialty': specialty,
        'food': food,
        'life': life,
    }

    return public_box
