# ------------------ 引入内置模块 ------------------
from django.urls import path,include
# ------------------ 引入第三方模块 ----------------
from rest_framework.routers import DefaultRouter

# ------------------ 引入自定义模块 ----------------
from .base_view import GoodsListView
from . import views
# ---------------------------------------------------
app_name = 'goods'

# 配置goods的url
router = DefaultRouter()

# 配置goods的路由
router.register(r'goods',views.GoodsListViewSet)
router.register(r'categorys',views.CategoryViewset)


urlpatterns = [
    # path('',GoodsListView.as_view(),name='goods_list'),
    # path('',views.GoodsListViewSet.as_view(),name='goods_list'),
    path('',include(router.urls))
]
