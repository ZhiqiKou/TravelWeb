from django.shortcuts import render
from django.views.generic import View
from django.http import HttpResponseRedirect, HttpResponse,JsonResponse
from django.urls import reverse

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


# class EditorView(View):
#
#     def get(self,request, diary_id):
#             diary = Diary.objects.get(id=diary_id, user=request.user)
#             title = diary.title
#             image = diary.image
#             content = diary.content
#
#             return render(request, 'editor_note.html', {
#                 'id': diary_id,
#                 'title': title,
#                 'image': image,
#                 'content': content,
#             })
#
#     def post(self, request, diary_id):
#         pass