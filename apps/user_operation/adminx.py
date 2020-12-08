import xadmin
from .models import UserFav, UserLeavingMessage, UserAddress


# 用户收藏操作注册
class UserFavAdmin(object):
    list_display = ['user', 'goods', "add_time"]


# 用户留言注册
class UserLeavingMessageAdmin(object):
    list_display = ['user', 'message_type', "message", "add_time"]


# 用户收货地址注册
class UserAddressAdmin(object):
    list_display = ["signer_name", "signer_mobile", "district", "address"]


xadmin.site.register(UserFav, UserFavAdmin)
xadmin.site.register(UserAddress, UserAddressAdmin)
xadmin.site.register(UserLeavingMessage, UserLeavingMessageAdmin)