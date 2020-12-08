import xadmin
from .models import ShoppingCart, OrderInfo, OrderGoods


# 购物车注册
class ShoppingCartAdmin(object):
    list_display = ["user", "goods", "nums", ]


# 订单信息注册
class OrderInfoAdmin(object):
    list_display = ["user", "order_sn",  "trade_no", "pay_status", "post_script", "order_mount",
                    "order_mount", "pay_time", "add_time"]

    # 订单内的商品详情注册
    class OrderGoodsInline(object):
        model = OrderGoods
        exclude = ['add_time', ]
        extra = 1
        style = 'tab'

    inlines = [OrderGoodsInline, ]


xadmin.site.register(ShoppingCart, ShoppingCartAdmin)
xadmin.site.register(OrderInfo, OrderInfoAdmin)
