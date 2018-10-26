from django.shortcuts import render
from django.views.generic import View
from django.http import HttpResponseRedirect, HttpResponse,JsonResponse
from django.urls import reverse

from .models import *
from .forms import *


# Create your views here.
class WriteNoteView(View):
    def get(self, request, operation_type):
        if operation_type == 'new':
            forms = DjangoueditorForm()
            return render(request, 'write_note.html', {
                'forms': forms,
                'title': "",
                'image': 'diary/default.jpg',
                'content': "",
            })
        if operation_type == 'editor':
            forms = DjangoueditorForm()

            last_diary = request.user.diary_set.all().order_by('-add_times')[0]
            title = last_diary.title
            image = last_diary.image
            content = last_diary.content

            return render(request, 'write_note.html', {
                'forms': forms,
                'title': title,
                'image': image,
                'content': content,
            })

    def post(self, request, operation_type):
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

        return HttpResponseRedirect(reverse('diarys:write', kwargs={'operation_type': 'editor'}))
