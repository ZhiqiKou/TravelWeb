from django.shortcuts import render
from django.views.generic import View
from .models import *
from .forms import *


# Create your views here.
class WriteNoteView(View):
    def get(self, request):
        forms = DjangoueditorForm()
        return render(request, 'write_note.html', {
            'forms': forms,
        })

    def post(self, request):
        print(request.POST.get('content', ''))
        print(request.POST.get('title', ''))
        print(request.POST.get('image', ''))
        print(request)
        print(request)
        print(request)

        return render(request, 'write_note.html', {})