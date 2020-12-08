# --------------------- 引入内置模块 -----------------
from django.contrib.auth import get_user_model
from django.dispatch import receiver
from django.db.models.signals import post_save
# --------------------- 引入第三方模块 ---------------
# --------------------- 引入自定义模块 ---------------
# ----------------------------------------------------


User = get_user_model()


# post_save：接收信号的方式
# sender：接收信号的model
@receiver(post_save,sender=User)
def create_user(sender,instance=None,created=False,**kwargs):
    # 是否新建，因为update的时候也会进行post_save
    if created:
        password = instance.password
        # instance相当于user
        instance.set_password(password)
        instance.save()









