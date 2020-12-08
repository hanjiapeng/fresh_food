# ------------------ 引入内置模块 ------------------
from django.urls import path,include
from django.views.static import serve
# ------------------ 引入第三方库模块 --------------
import xadmin
from rest_framework.documentation import include_docs_urls  # DRF文档模块
from rest_framework.authtoken import views  # token认证接口模块
from rest_framework_jwt.views import obtain_jwt_token  # jwt的token认证接口模块
# ------------------ 引入自定义模块 ----------------
from fresh_food.settings import MEDIA_ROOT  # media模块
# ---------------------------------------------------


urlpatterns = [
    # ------------------------------ 配置内置路由 ------------------------------
    # ------------------------------ 配置第三方路由 -----------------------------
    path('xadmin/', xadmin.site.urls),  # xadmin路由
    path('ueditor/',include('DjangoUeditor.urls')),  # 富文本编辑器配置路由
    path('docs/',include_docs_urls(title='生鲜超市',description='所有API文档')),  # 配置drf文档路由
    path('api-auth/',include('rest_framework.urls')),  # 配置第三方的登录路由
    path('api-token-auth/',views.obtain_auth_token),  # 配置token路由
    path('login/',obtain_jwt_token),  # 配置jwt的token认证接口路由
    # ------------------------------ 配置自定义路由 ------------------------------
    path('media/<path:path>/', serve, {'document_root': MEDIA_ROOT}),  # 配置上传文件路由
    path('goods/', include('goods.urls', namespace='goods')),
    path('users/',include('users.urls', namespace='users')),
    path('ousers/',include('user_operation.urls',namespace='ousers')),
    path('trades/',include('trade.urls',namespace='trades')),
    # ----------------------------------------------------------------------------
]
