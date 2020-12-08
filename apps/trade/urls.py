from django.urls import path,include
from rest_framework.routers import DefaultRouter
from . import views

app_name = 'trades'

router = DefaultRouter()
router.register(r'shopcarts',views.ShoppingCartViewset,basename='shopcarts'),
router.register(r'orders',views.OrderViewset,basename='orders')


urlpatterns = [
    path('',include(router.urls))
]
