import django_filters
from django.db.models import Q

from .models import Goods


# 商品过滤得类
class GoodsFilter(django_filters.rest_framework.FilterSet):
    # 两个参数，name是要过滤的字段，lookup是执行的行为，'小于等于本店价格'
    pricemin = django_filters.NumberFilter(field_name='shop_price',lookup_expr='gte')
    pricemax = django_filters.NumberFilter(field_name='shop_price',lookup_expr='lte')
    # market_price_min = django_filters.NumberFilter(field_name='market_price',lookup_expr='gte')
    # market_price_max = django_filters.NumberFilter(field_name='market_price',lookup_expr='lte')
    top_category = django_filters.NumberFilter(field_name='category',method='top_category_filter')

    def top_category_filter(self,queryset,name,value):
        # 不管当前点击的是一级分类二级分类还是三级分类，都能找到
        category_filter = queryset.filter(Q(category_id=value) | Q(category__parent_category_id=value) | Q(category__parent_category__parent_category_id=value))
        return category_filter

    class Meta:
        model = Goods
        fields = ['pricemin','pricemax','is_hot']






