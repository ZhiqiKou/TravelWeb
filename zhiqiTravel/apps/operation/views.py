from django.shortcuts import render
from django.views.generic import View
from django.http import HttpResponseRedirect, HttpResponse,JsonResponse
from django.urls import reverse

import json

from .models import *
from .forms import *


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
            coll_diary = DiaryComments.objects.get(diary=diary, user=request.user)
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


class CommentsView(View):
    """
    游记评论
    """
    def post(self, request):
        comments_form = CommentsForm(request.POST)
        if comments_form.is_valid():
            diary_id = request.POST.get('diaryid', '')
            comment = request.POST.get('comment', '')

            diary = Diary.objects.get(id=int(diary_id))
            diary.commentsnum += 1
            diary.save()

            comm_diary = DiaryComments()
            comm_diary.diary = diary
            comm_diary.comments = comment
            comm_diary.user = request.user
            comm_diary.save()
            return HttpResponseRedirect(reverse('diarys:details', kwargs={'diary_id': diary_id}))
        else:
            result = json.dumps({"status": "failed"}, ensure_ascii=False)
            return HttpResponse(result)
