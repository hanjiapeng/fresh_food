from rest_framework import serializers
from datetime import datetime
from .models import Goods,GoodsCategory,GoodsImage


# class GoodsSerializers(serializers.Serializer):
#     name = serializers.CharField(required=True,max_length=100)
#     click_num = serializers.IntegerField(default=0)
#     goods_front_image = serializers.ImageField()
#     add_time = serializers.DateTimeField(default=datetime.now)

class GoodsCategorySerializers(serializers.ModelSerializer):

    class Meta:
        model = GoodsCategory
        fields = '__all__'


class GoodsSerializers(serializers.ModelSerializer):
    category = GoodsCategorySerializers()

    class Meta:
        model = Goods
        fields = '__all__'


# 三级分类
class CategorySerializer3(serializers.ModelSerializer):
    class Meta:
        model = GoodsCategory
        fields = '__all__'


# 二级分类
class CategorySerializer2(serializers.ModelSerializer):
    # 在parent_category字段中定义的related_name='sub_cat'
    sub_cat = CategorySerializer3(many=True)

    class Meta:
        model = GoodsCategory
        fields = '__all__'


# 一级分类
class CategorySerializer1(serializers.ModelSerializer):
    sub_cat = CategorySerializer2(many=True)

    class Meta:
        model = GoodsCategory
        fields= '__all__'


# 轮播图
class GoodsImageSerializer(serializers.ModelSerializer):

    class Meta:
        model = GoodsImage
        fields = ('image',)


# 商品列表页
class GoodSerializer(serializers.ModelSerializer):
    # 覆盖外键字段
    category = CategorySerializer1()
    # images是数据库中设置的related_name='images'，把轮播图嵌套进来
    images = GoodsImageSerializer(many=True)

    class Meta:
        model = Goods
        fields = '__all__'

