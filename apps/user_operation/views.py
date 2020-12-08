# ------------------- 引入内置模块 -----------------
from django.shortcuts import render
# ------------------- 引入第三方模块 ---------------
from rest_framework import viewsets,mixins
from rest_framework.permissions import IsAuthenticated
from rest_framework_jwt.authentication import JSONWebTokenAuthentication
from rest_framework.authentication import SessionAuthentication
# ------------------- 引入自定义模块 ---------------
from .models import UserFav,UserLeavingMessage,UserAddress
from .serializers import UserFavSerializer,UserFavDetailSerializer,LeavingMessageSerializer,AddressSerializer
from utils.permissions import IsOwnerOrReadOnly
# --------------------------------------------------


# 用户收藏
class UserFavViewset(viewsets.GenericViewSet,mixins.ListModelMixin,mixins.CreateModelMixin,mixins.DestroyModelMixin):
    # queryset = UserFav.objects.all()
    serializer_class = UserFavSerializer
    # permission_classes是用来做权限判断的
    # IsAuthenticated：必须登录用户；IsOwnerOrReadOnly：必须是当前登录的用户
    permission_classes = (IsAuthenticated,IsOwnerOrReadOnly)
    # authentication_classes使用来做用户认证的
    authentication_classes = (JSONWebTokenAuthentication,SessionAuthentication)
    # 搜索的字段
    lookup_field = 'goods_id'

    def get_queryset(self):
        # 只能查看当前登录用户的收藏，不会获取所有用户的收藏
        return UserFav.objects.filter(user=self.request.user)

    # 动态设置serialier
    def get_serializer_class(self):
        if self.action == 'list':
            return UserFavDetailSerializer
        elif self.action == 'create':
            return UserFavSerializer
        return UserFavSerializer


# 用户留言
class LeavingMessageViewset(mixins.ListModelMixin, mixins.DestroyModelMixin, mixins.CreateModelMixin,viewsets.GenericViewSet):
    """
        list：获取用户留言
        create：添加留言
        delete：删除留言
    """
    permission_classes = (IsAuthenticated,IsOwnerOrReadOnly)
    authentication_classes = (JSONWebTokenAuthentication,SessionAuthentication)
    serializer_class = LeavingMessageSerializer

    # 只能看到自己的留言
    def get_queryset(self):
        return UserLeavingMessage.objects.filter(user=self.request.user)


# 收货地址管理
class AddressViewset(viewsets.ModelViewSet):
    permission_classes = (IsAuthenticated,IsOwnerOrReadOnly)
    authentication_classes = (JSONWebTokenAuthentication,SessionAuthentication)
    serializer_class = AddressSerializer

    def get_queryset(self):
        return UserAddress.objects.filter(user=self.request.user)



