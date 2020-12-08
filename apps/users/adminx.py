# ------------------- 引入内置模块 -------------------
import xadmin
from xadmin import views
# ------------------ 引入自定义模块 ------------------
from .models import UserProfile,VerifyCode
# ----------------------------------------------------


# 开启主题功能
class BaseSetting(object):
    enable_themes = True
    use_bootswatch = True


class GlobalSettings(object):
    # 修改title
    site_title = '生鲜超市管理界面'
    # 修改footer
    site_footer = '1906C'
    # 收起菜单
    menu_style = 'accordion'


# 用户信息注册
class UserProfileAdmin(object):
    list_display = ['name','gender','mobile']
    search_fields = ['name','gender','mobile']
    list_filter = ['name','gender','mobile']


# 短信验证注册
class VerifyCodeAdmin(object):
    list_display = ['code','mobile','add_time']
    search_fields = ['code','mobile']
    list_filter = ['code','mobile']


# --------------- 将管理器与model进行注册关联 ---------------
xadmin.site.unregister(UserProfile)
xadmin.site.register(UserProfile,UserProfileAdmin)
xadmin.site.register(VerifyCode,VerifyCodeAdmin)

# 将基本配置管理与view绑定
xadmin.site.register(views.BaseAdminView,BaseSetting)

# 将title和footer信息进行注册
xadmin.site.register(views.CommAdminView,GlobalSettings)
# ----------------------------------------------------------


