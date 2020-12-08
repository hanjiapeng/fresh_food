from . import views
from django.urls import path,include
from rest_framework.routers import DefaultRouter


app_name = 'users'


router = DefaultRouter()

router.register(r'code',views.SmsCodeViewset,basename='code')
router.register(r'users',views.UserViewset,basename='users')

urlpatterns = [
    path('',include(router.urls))
]