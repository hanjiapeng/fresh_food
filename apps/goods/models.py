# --------------- 引入内置模块 ---------------
from django.db import models
from datetime import datetime
# --------------- 引入第三方模块 ---------------
from DjangoUeditor.models import UEditorField  # 富文本编辑器
# ----------------------------------------------

# Create your models here.


# 商品分类
class GoodsCategory(models.Model):
    GATEGORY_TYPE = (
        (1, '一级类目'),
        (2, '二级类目'),
        (3, '三级类目'),
    )
    name = models.CharField(max_length=100,help_text='类别名',verbose_name='类别名')
    code = models.CharField(max_length=100,help_text='类别code',default='',verbose_name='类别code')
    desc = models.TextField(default='',help_text='类别描述',verbose_name='类别描述')
    # 目录树级别
    category_type = models.IntegerField(choices=GATEGORY_TYPE,help_text='类目级别',verbose_name='类目级别')
    # 设置models有一个指向自己的外键,self表示指向自己
    parent_category = models.ForeignKey('self', on_delete=models.CASCADE, null=True, blank=True, help_text='父目录',
                                        related_name='sub_cat', verbose_name='父类目级别')
    is_tab = models.BooleanField(default=False,help_text='是否导航',verbose_name='是否导航')
    add_time = models.DateTimeField(default=datetime.now,verbose_name='添加时间')

    class Meta:
        db_table = 'g_goodscategory'
        verbose_name = '商品类别'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name


# 商品
class Goods(models.Model):
    category = models.ForeignKey(GoodsCategory,on_delete=models.CASCADE,verbose_name='商品类目')
    goods_sn = models.CharField(max_length=100,default='',verbose_name='商品唯一货号')
    name = models.CharField(max_length=100,verbose_name='商品名')
    click_num = models.IntegerField(default=0,verbose_name='点击数')
    sold_num = models.IntegerField(default=0,verbose_name='商品销售量')
    fav_num = models.IntegerField(default=0,verbose_name='收藏数')
    goods_num = models.IntegerField(default=0,verbose_name='库存数')
    market_price = models.FloatField(default=0,verbose_name='市场价格')
    shop_price = models.FloatField(default=0,verbose_name='本店价格')
    goods_brief = models.TextField(max_length=500,verbose_name='商品简短描述')
    goods_desc = UEditorField(imagePath="goods/images/", width=1000, height=300,
                              filePath="goods/files/", default='',verbose_name=u"内容")
    ship_free = models.BooleanField(default=True,verbose_name='是否承担运费')
    # 首页中展示的商品封面图
    goods_front_image = models.ImageField(upload_to='media/rest/goods',null=True,blank=True,verbose_name='封面图')
    # 首页中新品展示
    is_new = models.BooleanField(default=False,verbose_name='是否新品')
    # 商品详情页的热卖商品，自行设置
    is_hot = models.BooleanField(default=False,verbose_name='是否热销')
    add_time = models.DateTimeField(default=datetime.now,verbose_name='添加时间')

    class Meta:
        db_table = 'g_goods'
        verbose_name = '商品信息'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name


# 某一大类下的宣传商标
class GoodsCategoryBrand(models.Model):
    category = models.ForeignKey(GoodsCategory,on_delete=models.CASCADE,related_name='brands', null=True, blank=True, verbose_name='商品类目')
    name = models.CharField("品牌名",default="", max_length=30,help_text="品牌名")
    desc = models.TextField("品牌描述",default="", max_length=200,help_text="品牌描述")
    image = models.ImageField(max_length=200, upload_to="media/rest/goods")
    add_time = models.DateTimeField("添加时间",default=datetime.now)

    class Meta:
        db_table = 'g_goodscategorybrand'
        verbose_name = '宣传品牌'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name


# 商品轮播图
class GoodsImage(models.Model):
    goods = models.ForeignKey(Goods,on_delete=models.CASCADE,related_name='images',verbose_name='商品')
    image = models.ImageField(upload_to='media/rest/goods',null=True,blank=True,verbose_name='图片')
    add_time = models.DateTimeField(default=datetime.now,verbose_name='添加时间')

    class Meta:
        db_table = 'g_goodsimage'
        verbose_name = '商品轮播'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.goods.name


# 首页轮播的商品
class Banner(models.Model):
    goods = models.ForeignKey(Goods,on_delete=models.CASCADE,verbose_name='商品')
    image = models.ImageField(upload_to='media/rest/goods',verbose_name='轮播图片')
    index = models.IntegerField(default=0,verbose_name='轮播顺序')
    add_time = models.DateTimeField(default=datetime.now,verbose_name='添加时间')

    class Meta:
        db_table = 'g_banner'
        verbose_name = '首页轮播'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.goods.name


# 商品广告
class IndexAd(models.Model):
    category = models.ForeignKey(GoodsCategory, on_delete=models.CASCADE, related_name='category',verbose_name="商品类目")
    goods =models.ForeignKey(Goods, on_delete=models.CASCADE, related_name='goods')

    class Meta:
        verbose_name = '首页广告'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.goods.name


# 搜索栏下方热搜词
class HotSearchWords(models.Model):
    keywords = models.CharField(default='',max_length=20,verbose_name='热搜词')
    index = models.IntegerField(default=0,verbose_name='排序')
    add_time = models.DateTimeField(default=datetime.now,verbose_name='添加时间')

    class Meta:
        db_table = 'g_hotsearchwords'
        verbose_name = '热搜排行'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.keywords





