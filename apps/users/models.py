__author__ = 'derek'

# --------------- 引入内置模块 ---------------
from django.db import models
from datetime import datetime
from django.db import models
from django.contrib.auth.models import AbstractUser
# --------------------------------------------
# Create your models here.


# 用户信息
class UserProfile(AbstractUser):
    GENDER_CHOICES = (
        ('male','男'),
        ('female','女'),
    )
    # 用户使用手机号注册，所以这里姓名，生日和邮箱可以为空
    name = models.CharField(max_length=30,null=True,blank=True,verbose_name='姓名')
    birthday = models.DateField(null=True,blank=True,verbose_name='出生年月')
    gender = models.CharField(max_length=6,choices=GENDER_CHOICES,default='male',verbose_name='性别')
    mobile = models.CharField(max_length=11,null=True,blank=True,verbose_name='手机号码')
    email = models.EmailField(max_length=100,null=True,blank=True,verbose_name='邮箱')

    class Meta:
        db_table = 'u_userprofile'
        verbose_name = '用户信息'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.username


# 短信验证
class VerifyCode(models.Model):
    code = models.CharField(max_length=10,verbose_name='验证码')
    mobile = models.CharField(max_length=11,verbose_name='手机号码')
    add_time = models.DateTimeField(default=datetime.now,verbose_name='添加时间')

    class Meta:
        db_table = 'u_verifycode'
        verbose_name = '短信验证'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.code


