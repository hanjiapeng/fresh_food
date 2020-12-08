# ------------------ 引入内置模块 ------------------
from django.urls import path,include
# ------------------ 引入第三方库模块 --------------
from rest_framework.routers import DefaultRouter
# ------------------ 引入自定义模块 ----------------
from . import views
# ---------------------------------------------------

app_name = 'ousers'

router = DefaultRouter()
router.register(r'userfavs',views.UserFavViewset,basename='userfavs')
router.register(r'messages',views.LeavingMessageViewset,basename='messages')
router.register(r'address',views.AddressViewset,basename='address')

urlpatterns = [
    path('',include(router.urls)),
]
