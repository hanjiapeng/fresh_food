# ------------------ 引入内置模块 ------------------
from django.views.generic import View
from django.http import HttpResponse,JsonResponse
from django.forms.models import model_to_dict
from django.core import serializers

import json

# ------------------ 引入自定义模块 -----------------
from goods.models import Goods
# ---------------------------------------------------


# class GoodsListView(View):
#     def get(self,request):
#         # 通过django的view实现商品列表页
#         json_list = []
#         # 获取所有商品
#         goods = Goods.objects.all()
#         for good in goods:
#             json_dict = {}
#             # 获取商品的每个字段，键值对形式
#             json_dict['name'] = good.name
#             json_dict['categoty'] = good.category.name
#             json_dict['market_price'] = good.market_price
#             json_list.append(json_dict)
#         # return HttpResponse(json.dumps(json_list),content_type='application/json')
#         return JsonResponse(json_list,content_type='application/json',safe=False)


# class GoodsListView(View):
#     def get(self,request):
#         # 通过django的view实现商品列表页
#         json_list = []
#         # 获取所有商品
#         goods = Goods.objects.all()
#         for good in goods:
#             # 当字段比较多时，一个字段一个字段去会很麻烦，django内置了方法model_to_dict，将model整个转化为dict类型
#             # 如果将整个model都转化成dict类型的话会报错：TypeError: Object of type 'ImageFieldFile' is not JSON serializable
#             # ImageFieldFile和add_time字段不能序列化
#             # 如何才能将所有字段序列化呢？就要用到django的serializers
#             json_dict = model_to_dict(good)
#             json_list.append(json_dict)
#         return JsonResponse(json_list,content_type='application/json',safe=False)


# 使用序列化


class GoodsListView(View):
    def get(self,request):
        # 通过django的view实现商品列表页
        json_list = []
        # 获取所有商品
        goods = Goods.objects.all()
        json_data = serializers.serialize('json',goods)
        json_data = json.loads(json_data)
        return JsonResponse(json_data,content_type='application/json',safe=False)


