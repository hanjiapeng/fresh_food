# ------------------ 引入内置模块 ------------------
from django.shortcuts import render

# ------------------ 引入第三方模块 ----------------
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from rest_framework import generics
from rest_framework.pagination import PageNumberPagination  # 分页
from rest_framework import mixins,viewsets
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework import filters

# ------------------ 引入自定义模块 -----------------
from .serializers import GoodsSerializers,CategorySerializer1
from .models import Goods,GoodsCategory
from .filter import GoodsFilter
# ---------------------------------------------------


# 商品列表
# class GoodsListView(APIView):
#     def get(self,request):
#         goods = Goods.objects.all()
#         goods_serializers = GoodsSerializers(instance=goods,many=True)
#         return Response(data=goods_serializers.data,status=status.HTTP_200_OK)


# 商品列表页
# class GoodsListView(generics.ListAPIView):
#     pagination_class = GoodsPagination
#     queryset = Goods.objects.all()
#     serializer_class = GoodsSerializers

# 商品列表自定义分页

# 商品列表自定义分页
class GoodsPagination(PageNumberPagination):
    # 默认每页显示的个数
    page_size = 10
    # 可以动态改变每页显示的个数
    page_size_query_description = 'page_size'
    # 页码参数
    page_query_param = 'page'
    # 最多能显示多少也
    max_page_size = 100


# 商品列表页
class GoodsListViewSet(mixins.ListModelMixin,mixins.RetrieveModelMixin,viewsets.GenericViewSet):
    # 分页
    pagination_class = GoodsPagination
    # 这里必须要定义一个默认的排序，否则会报错
    queryset = Goods.objects.all().order_by('id')
    serializer_class = GoodsSerializers
    filter_backends = (DjangoFilterBackend,filters.SearchFilter,filters.OrderingFilter)  # 显示过滤器的功能

    # 设置filter得类为我们自定义的类
    filter_class = GoodsFilter
    # 搜索，=name是精确搜索，也可以使用各种正则表达式
    search_fields = ['name','goods_brief','goods_desc']
    # 排序
    ordering_fields = ['sold_num','shop_price']


# 商品分类列表数据
class CategoryViewset(mixins.ListModelMixin,mixins.RetrieveModelMixin,viewsets.GenericViewSet):
    """商品分类列表数据"""
    queryset = GoodsCategory.objects.filter(category_type=1)
    serializer_class = CategorySerializer1
