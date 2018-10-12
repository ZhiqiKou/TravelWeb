# @Time    : 18-10-12
# @Author  : Zhiqi Kou
# @Email   : zhiqi1028@gmail.com
from random import Random
from django.core.mail import send_mail

from users.models import EmailVerifyRecord
from zhiqiTravel.settings import EMAIL_FROM


def random_str(randomlength=10):
    ranstr = ''
    chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz0123456789'
    length = len(chars) - 1
    random = Random()
    for i in range(randomlength):
        ranstr += chars[random.randint(0, length)]
    return ranstr


def send_register_email(email, send_type='register'):
    email_record = EmailVerifyRecord()
    ran_str = random_str(20)
    email_record.email = email
    email_record.code = ran_str
    email_record.send_type = send_type
    email_record.save()

    if send_type == 'register':
        email_title = 'Zhiqi Travel 注册激活'
        email_body = '你好!\n' \
                     '感谢你注册Zhiqi Travel。 \n' \
                     '你的登录邮箱为：{0}。\n' \
                     '请点击下面的链接激活你的账号: \n' \
                     'http://127.0.0.1:8000/active/{1}'.format(email, ran_str)
        send_mail(email_title, email_body, EMAIL_FROM, [email])
