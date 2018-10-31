from django.shortcuts import render
from django.views.generic import View
from django.http import HttpResponseRedirect, HttpResponse,JsonResponse
from django.urls import reverse

import json

from .models import *


# Create your views here.
class FavView(View):
    """
    游记点赞
    """
    def post(self, request):
        diary_id = request.POST.get('id', '')
        diary = Diary.objects.get(id=diary_id)
        try:
            fav_diary = UserFav.objects.get(diary=diary, user=request.user)
            diary.praisenum -= 1
            fav_diary.delete()
            result = json.dumps({"status": "disfav"}, ensure_ascii=False)
        except:
            diary.praisenum += 1
            fav_diary = UserFav()
            fav_diary.diary = diary
            fav_diary.user = request.user
            fav_diary.save()
            result = json.dumps({"status": "fav"}, ensure_ascii=False)
        diary.save()
        return HttpResponse(result)


class CollView(View):
    """
    游记收藏
    """
    def post(self, request):
        diary_id = request.POST.get('id', '')
        diary = Diary.objects.get(id=diary_id)
        try:
            coll_diary = UserCollect.objects.get(diary=diary, user=request.user)
            diary.collectnum -= 1
            coll_diary.delete()
            result = json.dumps({"status": "discoll"}, ensure_ascii=False)
        except:
            diary.collectnum += 1
            coll_diary = UserCollect()
            coll_diary.diary = diary
            coll_diary.user = request.user
            coll_diary.save()
            result = json.dumps({"status": "coll"}, ensure_ascii=False)
        diary.save()
        return HttpResponse(result)
