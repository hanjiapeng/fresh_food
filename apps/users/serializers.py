# --------------------- 引入内置模块 ---------------------
import re
from datetime import datetime,timedelta
from django.contrib.auth import get_user_model
# --------------------- 引入第三方模块 -------------------
from rest_framework import serializers
from rest_framework.validators import UniqueValidator
# --------------------- 引入自定义模块 -------------------
from fresh_food.settings import REGEX_MOBILE
from users.models import VerifyCode
# ----------------------------------------------------------

User = get_user_model()


# 手机号验证
class SmsSerializer(serializers.Serializer):
    mobile = serializers.CharField(max_length=11)

    # 函数名必须：validate + 验证字段名
    def validate_mobile(self,mobile):
        # 是否已经注册
        if User.objects.filter(mobile=mobile).count():
            raise serializers.ValidationError('用户名已经存在，请重新注册！！！')

        # 是否合法
        if not re.match(REGEX_MOBILE,mobile):
            raise serializers.ValidationError('非法输入手机号码！！！')

        # 验证码发送频率
        # 60s内只能发送一次
        one_mintes_ago = datetime.now() - timedelta(hours=0,minutes=1,seconds=0)
        if VerifyCode.objects.filter(add_time__gt=one_mintes_ago,mobile=mobile).count():
            raise serializers.ValidationError('发送验证码频繁，请60s后重新发送！！！')
        return mobile


# 用户注册
class UserRegisterSerializer(serializers.ModelSerializer):
    # Userprofile中没有code字段，这里需要自定义一个code序列化字段
    code = serializers.CharField(required=True,write_only=True,max_length=4,min_length=4,
                                 error_messages={
                                     'blank': '请输入验证码',
                                     'required': '请输入验证码',
                                     'max_length': '验证码格式错误',
                                     'min_length': '验证码格式错误',
                                 },help_text='验证码')
    # 验证用户名是否存在
    username = serializers.CharField(label='用户名',help_text='用户名',required=True,allow_blank=False,
                                     validators=[UniqueValidator(queryset=User.objects.all(), message="用户已经存在")])

    # 输入密码的时候不显示明文
    password = serializers.CharField(style={'input_type': 'password'},label='密码',write_only=True,help_text='密码')

    def create(self, validated_data):
        user = super(UserRegisterSerializer,self).create(validated_data=validated_data)
        user.set_password(validated_data['password'])
        user.save()
        return user

    # 验证code
    def validate_code(self,code):
        # 用户注册，post方式提交注册信息，post的数据都保存在initial_data里面
        # username就是用户注册的手机号，验证码按添加时间倒序排序，为了后面验证过期，错误等
        verify_records = VerifyCode.objects.filter(mobile=self.initial_data['username']).order_by('-add_time')
        if verify_records:
            # 最近的一个验证码
            last_record = verify_records[0]
            # 有效期为五分钟
            five_mintes_ago = datetime.now() - timedelta(hours=0,minutes=5,seconds=0)
            if five_mintes_ago > last_record.add_time:
                raise serializers.ValidationError('验证码过期')
            if last_record.code != code:
                raise serializers.ValidationError('验证码错误')
        else:
            raise serializers.ValidationError('验证码错误')

    # 所有字段，attrs是字段验证合法之后返回的总的dict
    def validate(self, attrs):
        # 前端没有传mobile值到后端，这里添加进来
        attrs['mobile'] = attrs['username']
        # code是自己添加得，数据库中并没有这个字段，验证完就删除掉
        del attrs['code']
        return attrs

    class Meta:
        model = User
        fields = ['username','code','mobile','password']


# 用户详情
class UserDetailSerializer(serializers.ModelSerializer):

    class Meta:
        model = User
        fields = ('name','gender','birthday','email','mobile')








