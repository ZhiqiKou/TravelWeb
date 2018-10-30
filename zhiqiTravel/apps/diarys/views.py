from django.shortcuts import render
from django.views.generic import View
from django.http import HttpResponseRedirect, HttpResponse,JsonResponse
from django.urls import reverse

import json


from .models import *
from .forms import *


# Create your views here.
class GetdiarayView(View):
    """
    游记页面
    """
    def get(self, request, diary_id):

        if diary_id == 0:
            return render(request, 'write_note.html', {
                'image': 'diary/default.jpg',
            })
        else:
            diary = Diary.objects.get(id=diary_id, user=request.user)
            image = diary.image

            return render(request, 'write_note.html', {
                'diary': diary,
                'image': image,
            })


class SetdiarayView(View):
    """
    提交游记
    """
    def post(self, request, operation_type, diary_id):
        if diary_id == 0:
            # 新建游记
            diary = Diary()
            diary.user = request.user
            diary.title = request.POST.get('title', '')
            diary.image = request.FILES.get('image', '')
            diary.content = request.POST.get('content', '')
            if operation_type == 'express':
                diary.is_published = True
            elif operation_type == 'save':
                diary.is_published = False
            else:
                # 错误
                pass
            diary.save()
            # 获得最后一篇游记并返回
            editor_diary = request.user.diary_set.all().order_by('-add_times')[0]
        else:
            # 编辑游记
            diary = Diary.objects.get(id=diary_id, user=request.user)
            diary.title = request.POST.get('title', '')
            diary.image = request.FILES.get('image', '')
            diary.content = request.POST.get('content', '')
            if operation_type == 'express':
                diary.is_published = True
            elif operation_type == 'save':
                diary.is_published = False
            else:
                # 错误
                pass
            diary.save()
            # 获得最后一篇游记并返回
            editor_diary = Diary.objects.get(id=diary_id, user=request.user)
        return HttpResponseRedirect(reverse('diarys:getdiaray', kwargs={'diary_id': editor_diary.id}))


class MyDetailsView(View):
    """
    当前登陆用户已发表游记
    """
    def get(self, request, is_published):
        all_diary = request.user.diary_set.all().order_by('-add_times')
        diarys = []
        if is_published == 'published':
            diarys = all_diary.filter(is_published=True)
        elif is_published == 'draft':
            diarys = all_diary.filter(is_published=False)
        else:
            # 错误
            pass

        return render(request, 'my_note.html', {
            'diarys': diarys,
            'is_published': is_published,
        })


class PublishView(View):
    def get(self, request, diary_id):
        new_diarys = request.user.diary_set.all()
        diary = new_diarys.get(id=diary_id)
        diary.is_published = True
        diary.save()
        return HttpResponseRedirect(reverse('diarys:details', kwargs={'diary_id': diary_id}))


class DetailsView(View):
    """
    游记详情
    """
    def get(self, request, diary_id):
        new_diarys = request.user.diary_set.all().filter(is_published=True).order_by('-add_times')[:6]
        diary = Diary.objects.get(id=diary_id)
        diary.checknum += 1
        diary.save()
        return render(request, 'note.html', {
            'diary': diary,
            'new_diarys': new_diarys,
        })


class DeleteView(View):
    """
    删除游记
    """
    def post(self, request):
        diary_id = request.POST.get('id', '')
        new_diarys = request.user.diary_set.all()
        diary = new_diarys.get(id=diary_id)
        diary.delete()
        result = json.dumps({"status": "success", "msg": "签到成功"}, ensure_ascii=False)
        return HttpResponse(result)
