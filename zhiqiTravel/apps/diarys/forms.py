# @Time    : 18-10-24
# @Author  : Zhiqi Kou
# @Email   : zhiqi1028@gmail.com

from django import forms
from DjangoUeditor.forms import UEditorField


class DjangoueditorForm(forms.Form):
    content = UEditorField(
        "", initial="", width=1000, height=600,
        toolbars='mini',
        # 上传图片存储的路径，不设置的话默认是配置文件中MEDIA_ROOT路径
        imagePath='ueimages/',
)