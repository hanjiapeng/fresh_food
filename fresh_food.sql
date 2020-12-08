/*
Navicat MySQL Data Transfer

Source Server         : django
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : fresh_food

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2020-12-08 09:45:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for authtoken_token
-- ----------------------------
DROP TABLE IF EXISTS `authtoken_token`;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_u_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `u_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of authtoken_token
-- ----------------------------
INSERT INTO `authtoken_token` VALUES ('47e04bfd0aef99354d62732138c28d36ae5401d5', '2020-12-01 19:51:35.186458', '1');

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can view content type', '4', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('17', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('20', 'Can view session', '5', 'view_session');
INSERT INTO `auth_permission` VALUES ('21', 'Can add Bookmark', '6', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('22', 'Can change Bookmark', '6', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete Bookmark', '6', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('24', 'Can view Bookmark', '6', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('25', 'Can add User Setting', '7', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('26', 'Can change User Setting', '7', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete User Setting', '7', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('28', 'Can view User Setting', '7', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('29', 'Can add User Widget', '8', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('30', 'Can change User Widget', '8', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete User Widget', '8', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('32', 'Can view User Widget', '8', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('33', 'Can add log entry', '9', 'add_log');
INSERT INTO `auth_permission` VALUES ('34', 'Can change log entry', '9', 'change_log');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete log entry', '9', 'delete_log');
INSERT INTO `auth_permission` VALUES ('36', 'Can view log entry', '9', 'view_log');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 短信验证', '10', 'add_verifycode');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 短信验证', '10', 'change_verifycode');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 短信验证', '10', 'delete_verifycode');
INSERT INTO `auth_permission` VALUES ('40', 'Can view 短信验证', '10', 'view_verifycode');
INSERT INTO `auth_permission` VALUES ('41', 'Can add 用户信息', '11', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('42', 'Can change 用户信息', '11', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete 用户信息', '11', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('44', 'Can view 用户信息', '11', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('45', 'Can add 热搜排行', '12', 'add_hotsearchwords');
INSERT INTO `auth_permission` VALUES ('46', 'Can change 热搜排行', '12', 'change_hotsearchwords');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete 热搜排行', '12', 'delete_hotsearchwords');
INSERT INTO `auth_permission` VALUES ('48', 'Can view 热搜排行', '12', 'view_hotsearchwords');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 商品信息', '13', 'add_goods');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 商品信息', '13', 'change_goods');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 商品信息', '13', 'delete_goods');
INSERT INTO `auth_permission` VALUES ('52', 'Can view 商品信息', '13', 'view_goods');
INSERT INTO `auth_permission` VALUES ('53', 'Can add 宣传品牌', '14', 'add_goodscategorybrand');
INSERT INTO `auth_permission` VALUES ('54', 'Can change 宣传品牌', '14', 'change_goodscategorybrand');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete 宣传品牌', '14', 'delete_goodscategorybrand');
INSERT INTO `auth_permission` VALUES ('56', 'Can view 宣传品牌', '14', 'view_goodscategorybrand');
INSERT INTO `auth_permission` VALUES ('57', 'Can add 首页轮播', '15', 'add_banner');
INSERT INTO `auth_permission` VALUES ('58', 'Can change 首页轮播', '15', 'change_banner');
INSERT INTO `auth_permission` VALUES ('59', 'Can delete 首页轮播', '15', 'delete_banner');
INSERT INTO `auth_permission` VALUES ('60', 'Can view 首页轮播', '15', 'view_banner');
INSERT INTO `auth_permission` VALUES ('61', 'Can add 首页广告', '16', 'add_indexad');
INSERT INTO `auth_permission` VALUES ('62', 'Can change 首页广告', '16', 'change_indexad');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete 首页广告', '16', 'delete_indexad');
INSERT INTO `auth_permission` VALUES ('64', 'Can view 首页广告', '16', 'view_indexad');
INSERT INTO `auth_permission` VALUES ('65', 'Can add 商品轮播', '17', 'add_goodsimage');
INSERT INTO `auth_permission` VALUES ('66', 'Can change 商品轮播', '17', 'change_goodsimage');
INSERT INTO `auth_permission` VALUES ('67', 'Can delete 商品轮播', '17', 'delete_goodsimage');
INSERT INTO `auth_permission` VALUES ('68', 'Can view 商品轮播', '17', 'view_goodsimage');
INSERT INTO `auth_permission` VALUES ('69', 'Can add 商品类别', '18', 'add_goodscategory');
INSERT INTO `auth_permission` VALUES ('70', 'Can change 商品类别', '18', 'change_goodscategory');
INSERT INTO `auth_permission` VALUES ('71', 'Can delete 商品类别', '18', 'delete_goodscategory');
INSERT INTO `auth_permission` VALUES ('72', 'Can view 商品类别', '18', 'view_goodscategory');
INSERT INTO `auth_permission` VALUES ('73', 'Can add 订单商品', '19', 'add_ordergoods');
INSERT INTO `auth_permission` VALUES ('74', 'Can change 订单商品', '19', 'change_ordergoods');
INSERT INTO `auth_permission` VALUES ('75', 'Can delete 订单商品', '19', 'delete_ordergoods');
INSERT INTO `auth_permission` VALUES ('76', 'Can view 订单商品', '19', 'view_ordergoods');
INSERT INTO `auth_permission` VALUES ('77', 'Can add 购物车喵', '20', 'add_shoppingcart');
INSERT INTO `auth_permission` VALUES ('78', 'Can change 购物车喵', '20', 'change_shoppingcart');
INSERT INTO `auth_permission` VALUES ('79', 'Can delete 购物车喵', '20', 'delete_shoppingcart');
INSERT INTO `auth_permission` VALUES ('80', 'Can view 购物车喵', '20', 'view_shoppingcart');
INSERT INTO `auth_permission` VALUES ('81', 'Can add 订单信息', '21', 'add_orderinfo');
INSERT INTO `auth_permission` VALUES ('82', 'Can change 订单信息', '21', 'change_orderinfo');
INSERT INTO `auth_permission` VALUES ('83', 'Can delete 订单信息', '21', 'delete_orderinfo');
INSERT INTO `auth_permission` VALUES ('84', 'Can view 订单信息', '21', 'view_orderinfo');
INSERT INTO `auth_permission` VALUES ('85', 'Can add 用户收藏', '22', 'add_userfav');
INSERT INTO `auth_permission` VALUES ('86', 'Can change 用户收藏', '22', 'change_userfav');
INSERT INTO `auth_permission` VALUES ('87', 'Can delete 用户收藏', '22', 'delete_userfav');
INSERT INTO `auth_permission` VALUES ('88', 'Can view 用户收藏', '22', 'view_userfav');
INSERT INTO `auth_permission` VALUES ('89', 'Can add 用户留言', '23', 'add_userleavingmessage');
INSERT INTO `auth_permission` VALUES ('90', 'Can change 用户留言', '23', 'change_userleavingmessage');
INSERT INTO `auth_permission` VALUES ('91', 'Can delete 用户留言', '23', 'delete_userleavingmessage');
INSERT INTO `auth_permission` VALUES ('92', 'Can view 用户留言', '23', 'view_userleavingmessage');
INSERT INTO `auth_permission` VALUES ('93', 'Can add 收货地址', '24', 'add_useraddress');
INSERT INTO `auth_permission` VALUES ('94', 'Can change 收货地址', '24', 'change_useraddress');
INSERT INTO `auth_permission` VALUES ('95', 'Can delete 收货地址', '24', 'delete_useraddress');
INSERT INTO `auth_permission` VALUES ('96', 'Can view 收货地址', '24', 'view_useraddress');
INSERT INTO `auth_permission` VALUES ('97', 'Can add Token', '25', 'add_token');
INSERT INTO `auth_permission` VALUES ('98', 'Can change Token', '25', 'change_token');
INSERT INTO `auth_permission` VALUES ('99', 'Can delete Token', '25', 'delete_token');
INSERT INTO `auth_permission` VALUES ('100', 'Can view Token', '25', 'view_token');
INSERT INTO `auth_permission` VALUES ('101', 'Can add token', '26', 'add_tokenproxy');
INSERT INTO `auth_permission` VALUES ('102', 'Can change token', '26', 'change_tokenproxy');
INSERT INTO `auth_permission` VALUES ('103', 'Can delete token', '26', 'delete_tokenproxy');
INSERT INTO `auth_permission` VALUES ('104', 'Can view token', '26', 'view_tokenproxy');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_u_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_u_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `u_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('25', 'authtoken', 'token');
INSERT INTO `django_content_type` VALUES ('26', 'authtoken', 'tokenproxy');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('15', 'goods', 'banner');
INSERT INTO `django_content_type` VALUES ('13', 'goods', 'goods');
INSERT INTO `django_content_type` VALUES ('18', 'goods', 'goodscategory');
INSERT INTO `django_content_type` VALUES ('14', 'goods', 'goodscategorybrand');
INSERT INTO `django_content_type` VALUES ('17', 'goods', 'goodsimage');
INSERT INTO `django_content_type` VALUES ('12', 'goods', 'hotsearchwords');
INSERT INTO `django_content_type` VALUES ('16', 'goods', 'indexad');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('19', 'trade', 'ordergoods');
INSERT INTO `django_content_type` VALUES ('21', 'trade', 'orderinfo');
INSERT INTO `django_content_type` VALUES ('20', 'trade', 'shoppingcart');
INSERT INTO `django_content_type` VALUES ('11', 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES ('10', 'users', 'verifycode');
INSERT INTO `django_content_type` VALUES ('24', 'user_operation', 'useraddress');
INSERT INTO `django_content_type` VALUES ('22', 'user_operation', 'userfav');
INSERT INTO `django_content_type` VALUES ('23', 'user_operation', 'userleavingmessage');
INSERT INTO `django_content_type` VALUES ('6', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('9', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('7', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('8', 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2020-11-25 12:58:28.204163');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2020-11-25 12:58:28.365671');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2020-11-25 12:58:28.471423');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2020-11-25 12:58:28.882288');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2020-11-25 12:58:28.892295');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2020-11-25 12:58:28.900272');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2020-11-25 12:58:28.909216');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2020-11-25 12:58:28.914204');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2020-11-25 12:58:28.924177');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2020-11-25 12:58:28.933194');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0009_alter_user_last_name_max_length', '2020-11-25 12:58:28.942156');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0010_alter_group_name_max_length', '2020-11-25 12:58:28.966065');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0011_update_proxy_permissions', '2020-11-25 12:58:28.976075');
INSERT INTO `django_migrations` VALUES ('14', 'users', '0001_initial', '2020-11-25 12:58:29.117659');
INSERT INTO `django_migrations` VALUES ('15', 'admin', '0001_initial', '2020-11-25 12:58:29.597375');
INSERT INTO `django_migrations` VALUES ('16', 'admin', '0002_logentry_remove_auto_add', '2020-11-25 12:58:29.767952');
INSERT INTO `django_migrations` VALUES ('17', 'admin', '0003_logentry_add_action_flag_choices', '2020-11-25 12:58:29.779891');
INSERT INTO `django_migrations` VALUES ('18', 'sessions', '0001_initial', '2020-11-25 12:58:29.817789');
INSERT INTO `django_migrations` VALUES ('19', 'xadmin', '0001_initial', '2020-11-25 12:58:29.970379');
INSERT INTO `django_migrations` VALUES ('20', 'xadmin', '0002_log', '2020-11-25 12:58:30.301493');
INSERT INTO `django_migrations` VALUES ('21', 'xadmin', '0003_auto_20160715_0100', '2020-11-25 12:58:30.596703');
INSERT INTO `django_migrations` VALUES ('22', 'goods', '0001_initial', '2020-11-27 00:48:38.403511');
INSERT INTO `django_migrations` VALUES ('23', 'trade', '0001_initial', '2020-11-27 00:48:39.162481');
INSERT INTO `django_migrations` VALUES ('24', 'user_operation', '0001_initial', '2020-11-27 00:48:39.801771');
INSERT INTO `django_migrations` VALUES ('25', 'trade', '0002_auto_20201127_0910', '2020-11-27 01:10:16.807370');
INSERT INTO `django_migrations` VALUES ('26', 'authtoken', '0001_initial', '2020-11-28 11:29:18.282193');
INSERT INTO `django_migrations` VALUES ('27', 'authtoken', '0002_auto_20160226_1747', '2020-11-28 11:29:18.668162');
INSERT INTO `django_migrations` VALUES ('28', 'authtoken', '0003_tokenproxy', '2020-11-28 11:29:18.675144');
INSERT INTO `django_migrations` VALUES ('29', 'goods', '0002_auto_20201128_1129', '2020-11-28 11:29:18.704065');
INSERT INTO `django_migrations` VALUES ('30', 'users', '0002_auto_20201202_2034', '2020-12-02 20:34:56.033711');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('3lg0lrijbpn2q8s14701s2z9kmensn7a', 'OGVlMmE1ODZlMTFmZGYwYzY0NTgwYTViYzU4NzMxNDRhZDc1N2RjNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjhmODBiODM5NmJhMDYwN2I2MDkwNzI5ZGU0ZDcwNTQyYjRlY2MzNjMiLCJMSVNUX1FVRVJZIjpbWyJ1c2VyX29wZXJhdGlvbiIsInVzZXJmYXYiXSwiIl19', '2020-12-17 15:28:50.727617');
INSERT INTO `django_session` VALUES ('3mad2s2rurb5gfbzy065qimpb394z1ux', 'NGJiNmQ0ZTI0NGQxY2NlZjU1ODkzYjQ3YjAxMTk5ZjlhYjMzZGYwMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjhmODBiODM5NmJhMDYwN2I2MDkwNzI5ZGU0ZDcwNTQyYjRlY2MzNjMiLCJMSVNUX1FVRVJZIjpbWyJnb29kcyIsImdvb2RzIl0sIiJdfQ==', '2020-12-16 09:14:49.984380');
INSERT INTO `django_session` VALUES ('3n4slzszd9x74336haep2eh4kmx1ghpg', 'NjUyMDY1N2FlOWJjYTE4ZmI2ZjU5YTg4ZjhhOWI4ZTExNjM4NTBlMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ZjgwYjgzOTZiYTA2MDdiNjA5MDcyOWRlNGQ3MDU0MmI0ZWNjMzYzIiwiTElTVF9RVUVSWSI6W1sidXNlcnMiLCJ1c2VycHJvZmlsZSJdLCIiXX0=', '2020-12-10 01:26:20.015536');
INSERT INTO `django_session` VALUES ('8xlqzp95vqe84llrlo0imqpmtobh0zqm', 'ODY3MDQ4NDEwYWE1OWMxZGUyOGFjMjRiMGExNTJmNWQ0MmQ0MjNkNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ZjgwYjgzOTZiYTA2MDdiNjA5MDcyOWRlNGQ3MDU0MmI0ZWNjMzYzIiwiTElTVF9RVUVSWSI6W1siZ29vZHMiLCJnb29kc2NhdGVnb3J5Il0sIl9wX2NhdGVnb3J5X3R5cGVfX2V4YWN0PTEiXX0=', '2020-12-12 10:57:07.387456');
INSERT INTO `django_session` VALUES ('eneif14u39qpkrhe9oar9w4eolz09r5i', 'MmI0NzAwMTUwNzFjMjNkNDdhMzE2YmE2NGZhZjEzN2U0ZDdmMGI2ZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ZjgwYjgzOTZiYTA2MDdiNjA5MDcyOWRlNGQ3MDU0MmI0ZWNjMzYzIiwiTElTVF9RVUVSWSI6W1siZ29vZHMiLCJnb29kc2NhdGVnb3J5Il0sIiJdfQ==', '2020-12-11 03:28:32.807153');
INSERT INTO `django_session` VALUES ('gjq9pn4z06dgm79bayeae471xfhxx9wp', 'NjdhMmM2ZDhkYTFiZTgyZGNhYWU0MGI3YjI3NzlmNTE5OTEzMmI0Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjhmODBiODM5NmJhMDYwN2I2MDkwNzI5ZGU0ZDcwNTQyYjRlY2MzNjMiLCJMSVNUX1FVRVJZIjpbWyJnb29kcyIsImdvb2RzY2F0ZWdvcnkiXSwiX3BfY2F0ZWdvcnlfdHlwZV9fZXhhY3Q9MSJdfQ==', '2020-12-15 21:07:49.032563');
INSERT INTO `django_session` VALUES ('kxattt1fxgo7h1sig4gjogjibfsl4vx4', 'M2FjOTdkNDE0OWQzMzEzMTRkMzg1NmE2YjcyZDEzNTc4YWY3NWU0NDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjhmODBiODM5NmJhMDYwN2I2MDkwNzI5ZGU0ZDcwNTQyYjRlY2MzNjMiLCJMSVNUX1FVRVJZIjpbWyJ1c2VycyIsInVzZXJwcm9maWxlIl0sIiJdfQ==', '2020-12-15 09:56:11.182229');
INSERT INTO `django_session` VALUES ('zuiy6b31gnakvg9hniwiyezldbdauqro', 'NGJiNmQ0ZTI0NGQxY2NlZjU1ODkzYjQ3YjAxMTk5ZjlhYjMzZGYwMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjhmODBiODM5NmJhMDYwN2I2MDkwNzI5ZGU0ZDcwNTQyYjRlY2MzNjMiLCJMSVNUX1FVRVJZIjpbWyJnb29kcyIsImdvb2RzIl0sIiJdfQ==', '2020-12-18 11:15:50.423671');

-- ----------------------------
-- Table structure for goods_indexad
-- ----------------------------
DROP TABLE IF EXISTS `goods_indexad`;
CREATE TABLE `goods_indexad` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `goods_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_indexad_category_id_cf834e34_fk_g_goodscategory_id` (`category_id`),
  KEY `goods_indexad_goods_id_e1361e4f_fk_g_goods_id` (`goods_id`),
  CONSTRAINT `goods_indexad_category_id_cf834e34_fk_g_goodscategory_id` FOREIGN KEY (`category_id`) REFERENCES `g_goodscategory` (`id`),
  CONSTRAINT `goods_indexad_goods_id_e1361e4f_fk_g_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `g_goods` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of goods_indexad
-- ----------------------------

-- ----------------------------
-- Table structure for g_banner
-- ----------------------------
DROP TABLE IF EXISTS `g_banner`;
CREATE TABLE `g_banner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `index` int NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `g_banner_goods_id_8e29620c_fk_g_goods_id` (`goods_id`),
  CONSTRAINT `g_banner_goods_id_8e29620c_fk_g_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `g_goods` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of g_banner
-- ----------------------------

-- ----------------------------
-- Table structure for g_goods
-- ----------------------------
DROP TABLE IF EXISTS `g_goods`;
CREATE TABLE `g_goods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `goods_sn` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `click_num` int NOT NULL,
  `sold_num` int NOT NULL,
  `fav_num` int NOT NULL,
  `goods_num` int NOT NULL,
  `market_price` double NOT NULL,
  `shop_price` double NOT NULL,
  `goods_brief` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `goods_desc` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `ship_free` tinyint(1) NOT NULL,
  `goods_front_image` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_new` tinyint(1) NOT NULL,
  `is_hot` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `g_goods_category_id_d6c8eb19_fk_g_goodscategory_id` (`category_id`),
  CONSTRAINT `g_goods_category_id_d6c8eb19_fk_g_goodscategory_id` FOREIGN KEY (`category_id`) REFERENCES `g_goodscategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of g_goods
-- ----------------------------
INSERT INTO `g_goods` VALUES ('1', '', '新鲜水果甜蜜香脆单果约800克', '0', '0', '0', '0', '232', '156', '食用百香果可以增加胃部饱腹感，减少余热量的摄入，还可以吸附胆固醇和胆汁之类有机分子，抑制人体对脂肪的吸收。因此，长期食用有利于改善人体营养吸收结构，降低体内脂肪，塑造健康优美体态。', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/1_P_1449024889889.jpg', '0', '0', '2020-11-27 10:25:59.043936', '20');
INSERT INTO `g_goods` VALUES ('2', '', '田然牛肉大黄瓜条生鲜牛肉冷冻真空黄牛', '0', '0', '0', '0', '106', '88', '前腿+后腿+羊排共8斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/2_P_1448945810202.jpg', '0', '0', '2020-11-27 10:25:59.096803', '7');
INSERT INTO `g_goods` VALUES ('3', '', '酣畅家庭菲力牛排10片澳洲生鲜牛肉团购套餐', '0', '0', '0', '0', '286', '238', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/7_P_1448945104883.jpg', '0', '0', '2020-11-27 10:25:59.114748', '15');
INSERT INTO `g_goods` VALUES ('4', '', '日本蒜蓉粉丝扇贝270克6只装', '0', '0', '0', '0', '156', '108', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/47_P_1448946213263.jpg', '0', '0', '2020-11-27 10:25:59.127713', '20');
INSERT INTO `g_goods` VALUES ('5', '', '内蒙新鲜牛肉1斤清真生鲜牛肉火锅食材', '0', '0', '0', '0', '106', '88', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/10_P_1448944572085.jpg', '0', '0', '2020-11-27 10:25:59.138694', '7');
INSERT INTO `g_goods` VALUES ('6', '', '乌拉圭进口牛肉卷特级肥牛卷', '0', '0', '0', '0', '90', '75', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/4_P_1448945381985.jpg', '0', '0', '2020-11-27 10:25:59.155755', '21');
INSERT INTO `g_goods` VALUES ('7', '', '五星眼肉牛排套餐8片装原味原切生鲜牛肉', '0', '0', '0', '0', '150', '125', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/8_P_1448945032810.jpg', '0', '0', '2020-11-27 10:25:59.167616', '23');
INSERT INTO `g_goods` VALUES ('8', '', '澳洲进口120天谷饲牛仔骨4份原味生鲜', '0', '0', '0', '0', '31', '26', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/11_P_1448944388277.jpg', '0', '0', '2020-11-27 10:25:59.179575', '7');
INSERT INTO `g_goods` VALUES ('9', '', '潮香村澳洲进口牛排家庭团购套餐20片', '0', '0', '0', '0', '239', '199', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/6_P_1448945167279.jpg', '0', '0', '2020-11-27 10:25:59.194535', '22');
INSERT INTO `g_goods` VALUES ('10', '', '爱食派内蒙古呼伦贝尔冷冻生鲜牛腱子肉1000g', '0', '0', '0', '0', '202', '168', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/9_P_1448944791617.jpg', '0', '0', '2020-11-27 10:25:59.206513', '20');
INSERT INTO `g_goods` VALUES ('11', '', '澳洲进口牛尾巴300g新鲜肥牛肉', '0', '0', '0', '0', '306', '255', '新鲜羊羔肉整只共15斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/3_P_1448945490837.jpg', '0', '0', '2020-11-27 10:25:59.225463', '2');
INSERT INTO `g_goods` VALUES ('12', '', '新疆巴尔鲁克生鲜牛排眼肉牛扒1200g', '0', '0', '0', '0', '126', '88', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/48_P_1448943988970.jpg', '0', '0', '2020-11-27 10:25:59.241410', '7');
INSERT INTO `g_goods` VALUES ('13', '', '澳洲进口安格斯牛切片上脑牛排1000g', '0', '0', '0', '0', '144', '120', '澳大利亚是国际公认的没有疯牛病和口蹄疫的国家。为了保持澳大利亚产品的高标准，澳大利亚牛肉业和各级政府共同努力简历了严格的标准和体系，以保证生产的整体化和产品的可追溯性', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/5_P_1448945270390.jpg', '0', '0', '2020-11-27 10:25:59.258364', '12');
INSERT INTO `g_goods` VALUES ('14', '', '帐篷出租', '0', '0', '0', '0', '120', '100', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'images/201705/goods_img/53_P_1495068879687.jpg', '0', '0', '2020-11-27 10:25:59.276318', '21');
INSERT INTO `g_goods` VALUES ('15', '', '52度茅台集团国隆双喜酒500mlx6', '0', '0', '0', '0', '23', '19', '贵州茅台酒厂（集团）保健酒业有限公司生产，是以“龙”字打头的酒水。中国龙文化上下8000年，源远而流长，龙的形象是一种符号、一种意绪、一种血肉相联的情感。', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/16_P_1448947194687.jpg', '0', '0', '2020-11-27 10:25:59.284295', '37');
INSERT INTO `g_goods` VALUES ('16', '', '52度水井坊臻酿八號500ml', '0', '0', '0', '0', '43', '36', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/14_P_1448947354031.jpg', '0', '0', '2020-11-27 10:25:59.296297', '36');
INSERT INTO `g_goods` VALUES ('17', '', '53度茅台仁酒500ml', '0', '0', '0', '0', '190', '158', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/12_P_1448947547989.jpg', '0', '0', '2020-11-27 10:25:59.314216', '32');
INSERT INTO `g_goods` VALUES ('18', '', '双响炮洋酒JimBeamwhiskey美国白占边', '0', '0', '0', '0', '38', '28', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/46_P_1448946598711.jpg', '0', '0', '2020-11-27 10:25:59.325186', '29');
INSERT INTO `g_goods` VALUES ('19', '', '西夫拉姆进口洋酒小酒版', '0', '0', '0', '0', '55', '46', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/21_P_1448946793276.jpg', '0', '0', '2020-11-27 10:25:59.341149', '36');
INSERT INTO `g_goods` VALUES ('20', '', '茅台53度飞天茅台500ml', '0', '0', '0', '0', '22', '18', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/15_P_1448947257324.jpg', '0', '0', '2020-11-27 10:25:59.355108', '30');
INSERT INTO `g_goods` VALUES ('21', '', '52度兰陵·紫气东来1600mL山东名酒', '0', '0', '0', '0', '42', '35', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/13_P_1448947460386.jpg', '0', '0', '2020-11-27 10:25:59.368303', '29');
INSERT INTO `g_goods` VALUES ('22', '', 'JohnnieWalker尊尼获加黑牌威士忌', '0', '0', '0', '0', '24', '20', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/50_P_1448946543091.jpg', '0', '0', '2020-11-27 10:25:59.387026', '36');
INSERT INTO `g_goods` VALUES ('23', '', '人头马CLUB特优香槟干邑350ml', '0', '0', '0', '0', '31', '26', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/51_P_1448946466595.jpg', '0', '0', '2020-11-27 10:25:59.400013', '30');
INSERT INTO `g_goods` VALUES ('24', '', '张裕干红葡萄酒750ml*6支', '0', '0', '0', '0', '54', '45', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/17_P_1448947102246.jpg', '0', '0', '2020-11-27 10:25:59.416949', '31');
INSERT INTO `g_goods` VALUES ('25', '', '原瓶原装进口洋酒烈酒法国云鹿XO白兰地', '0', '0', '0', '0', '46', '38', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/20_P_1448946850602.jpg', '0', '0', '2020-11-27 10:25:59.428909', '29');
INSERT INTO `g_goods` VALUES ('26', '', '法国原装进口圣贝克干红葡萄酒750ml', '0', '0', '0', '0', '82', '68', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/19_P_1448946951581.jpg', '0', '0', '2020-11-27 10:25:59.438882', '25');
INSERT INTO `g_goods` VALUES ('27', '', '法国百利威干红葡萄酒AOP级6支装', '0', '0', '0', '0', '67', '56', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/18_P_1448947011435.jpg', '0', '1', '2020-11-27 10:25:59.449851', '25');
INSERT INTO `g_goods` VALUES ('28', '', '芝华士12年苏格兰威士忌700ml', '0', '0', '0', '0', '71', '59', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/22_P_1448946729629.jpg', '0', '0', '2020-11-27 10:25:59.458838', '30');
INSERT INTO `g_goods` VALUES ('29', '', '深蓝伏特加巴维兰利口酒送预调酒', '0', '0', '0', '0', '31', '18', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/45_P_1448946661303.jpg', '0', '0', '2020-11-27 10:25:59.466806', '36');
INSERT INTO `g_goods` VALUES ('30', '', '赣南脐橙特级果10斤装', '0', '0', '0', '0', '43', '36', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/32_P_1448948525620.jpg', '0', '0', '2020-11-27 10:25:59.475784', '62');
INSERT INTO `g_goods` VALUES ('31', '', '泰国菠萝蜜16-18斤1个装', '0', '0', '0', '0', '11', '9', '【懒人吃法】菠萝蜜果肉，冰袋保鲜，收货就吃，冰爽Q脆甜，2斤装，全国顺丰空运包邮，发出后48小时内可达，一线城市基本隔天可达', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/30_P_1448948663450.jpg', '0', '0', '2020-11-27 10:25:59.485757', '66');
INSERT INTO `g_goods` VALUES ('32', '', '四川双流草莓新鲜水果礼盒2盒', '0', '0', '0', '0', '22', '18', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/31_P_1448948598947.jpg', '0', '0', '2020-11-27 10:25:59.502715', '70');
INSERT INTO `g_goods` VALUES ('33', '', '新鲜头茬非洲冰草冰菜', '0', '0', '0', '0', '67', '56', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/35_P_1448948333610.jpg', '0', '0', '2020-11-27 10:25:59.526666', '58');
INSERT INTO `g_goods` VALUES ('34', '', '仿真蔬菜水果果蔬菜模型', '0', '0', '0', '0', '6', '5', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/36_P_1448948234405.jpg', '0', '0', '2020-11-27 10:25:59.558562', '58');
INSERT INTO `g_goods` VALUES ('35', '', '现摘芭乐番石榴台湾珍珠芭乐', '0', '0', '0', '0', '28', '23', '海南产精品释迦果,\n        释迦是水果中的贵族,\n        产量少,\n        味道很甜,\n        奶香十足,\n        非常可口,\n        果裹果园顺丰空运,\n        保证新鲜.果子个大,\n        一斤1-2个左右,\n        大个头的果子更尽兴!\n        ', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/33_P_1448948479966.jpg', '0', '0', '2020-11-27 10:25:59.577745', '62');
INSERT INTO `g_goods` VALUES ('36', '', '潍坊萝卜5斤/箱礼盒', '0', '0', '0', '0', '46', '38', '脐橙规格是65-90MM左右（标准果果径平均70MM左右，精品果果径平均80MM左右），一斤大概有2-4个左右，脐橙产自江西省赣州市信丰县安西镇，全过程都是采用农家有机肥种植，生态天然', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/34_P_1448948399009.jpg', '0', '0', '2020-11-27 10:25:59.596489', '70');
INSERT INTO `g_goods` VALUES ('37', '', '休闲零食膨化食品焦糖/奶油/椒麻味', '0', '0', '0', '0', '154', '99', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/43_P_1448948762645.jpg', '0', '0', '2020-11-27 10:25:59.606435', '74');
INSERT INTO `g_goods` VALUES ('38', '', '蒙牛未来星儿童成长牛奶骨力型190ml*15盒', '0', '0', '0', '0', '84', '70', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/38_P_1448949220255.jpg', '0', '0', '2020-11-27 10:25:59.615419', '105');
INSERT INTO `g_goods` VALUES ('39', '', '蒙牛特仑苏有机奶250ml×12盒', '0', '0', '0', '0', '70', '32', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/44_P_1448948850187.jpg', '0', '0', '2020-11-27 10:25:59.626389', '103');
INSERT INTO `g_goods` VALUES ('40', '', '1元支付测试商品', '0', '0', '0', '0', '1', '1', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'images/201511/goods_img/49_P_1448162819889.jpg', '0', '0', '2020-11-27 10:25:59.635357', '102');
INSERT INTO `g_goods` VALUES ('41', '', '德运全脂新鲜纯牛奶1L*10盒装整箱', '0', '0', '0', '0', '70', '58', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/40_P_1448949038702.jpg', '0', '0', '2020-11-27 10:25:59.645339', '103');
INSERT INTO `g_goods` VALUES ('42', '', '木糖醇红枣早餐奶即食豆奶粉538g', '0', '0', '0', '0', '38', '32', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/39_P_1448949115481.jpg', '0', '0', '2020-11-27 10:25:59.655302', '106');
INSERT INTO `g_goods` VALUES ('43', '', '高钙液体奶200ml*24盒', '0', '0', '0', '0', '26', '22', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/41_P_1448948980358.jpg', '0', '0', '2020-11-27 10:25:59.673256', '107');
INSERT INTO `g_goods` VALUES ('44', '', '新西兰进口全脂奶粉900g', '0', '0', '0', '0', '720', '600', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/37_P_1448949284365.jpg', '0', '0', '2020-11-27 10:25:59.683230', '104');
INSERT INTO `g_goods` VALUES ('45', '', '伊利官方直营全脂营养舒化奶250ml*12盒*2提', '0', '0', '0', '0', '43', '36', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/42_P_1448948895193.jpg', '0', '0', '2020-11-27 10:25:59.694199', '103');
INSERT INTO `g_goods` VALUES ('46', '', '维纳斯橄榄菜籽油5L/桶', '0', '0', '0', '0', '187', '156', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/27_P_1448947771805.jpg', '0', '0', '2020-11-27 10:25:59.704181', '51');
INSERT INTO `g_goods` VALUES ('47', '', '糙米450gx3包粮油米面', '0', '0', '0', '0', '18', '15', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/23_P_1448948070348.jpg', '0', '0', '2020-11-27 10:25:59.714180', '41');
INSERT INTO `g_goods` VALUES ('48', '', '精炼一级大豆油5L色拉油粮油食用油', '0', '0', '0', '0', '54', '45', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/26_P_1448947825754.jpg', '0', '0', '2020-11-27 10:25:59.727145', '56');
INSERT INTO `g_goods` VALUES ('49', '', '橄榄玉米油5L*2桶', '0', '0', '0', '0', '31', '26', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/28_P_1448947699948.jpg', '0', '0', '2020-11-27 10:25:59.737119', '54');
INSERT INTO `g_goods` VALUES ('50', '', '山西黑米农家黑米4斤', '0', '0', '0', '0', '11', '9', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/24_P_1448948023823.jpg', '0', '0', '2020-11-27 10:25:59.749089', '55');
INSERT INTO `g_goods` VALUES ('51', '', '稻园牌稻米油粮油米糠油绿色植物油', '0', '0', '0', '0', '14', '12', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/25_P_1448947875346.jpg', '0', '0', '2020-11-27 10:25:59.762016', '47');
INSERT INTO `g_goods` VALUES ('52', '', '融氏纯玉米胚芽油5l桶', '0', '0', '0', '0', '14', '12', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/29_P_1448947631994.jpg', '0', '0', '2020-11-27 10:25:59.771992', '41');
INSERT INTO `g_goods` VALUES ('53', '', '新鲜水果甜蜜香脆单果约800克', '0', '0', '0', '0', '232', '156', '食用百香果可以增加胃部饱腹感，减少余热量的摄入，还可以吸附胆固醇和胆汁之类有机分子，抑制人体对脂肪的吸收。因此，长期食用有利于改善人体营养吸收结构，降低体内脂肪，塑造健康优美体态。', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/1_P_1449024889889.jpg', '0', '0', '2020-11-27 21:14:13.555042', '20');
INSERT INTO `g_goods` VALUES ('54', '', '田然牛肉大黄瓜条生鲜牛肉冷冻真空黄牛', '0', '0', '0', '0', '106', '88', '前腿+后腿+羊排共8斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/2_P_1448945810202.jpg', '0', '0', '2020-11-27 21:14:13.829274', '7');
INSERT INTO `g_goods` VALUES ('55', '', '酣畅家庭菲力牛排10片澳洲生鲜牛肉团购套餐', '0', '0', '0', '0', '286', '238', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/7_P_1448945104883.jpg', '0', '0', '2020-11-27 21:14:13.864181', '15');
INSERT INTO `g_goods` VALUES ('56', '', '日本蒜蓉粉丝扇贝270克6只装', '0', '0', '0', '0', '156', '108', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/47_P_1448946213263.jpg', '0', '0', '2020-11-27 21:14:13.878144', '20');
INSERT INTO `g_goods` VALUES ('57', '', '内蒙新鲜牛肉1斤清真生鲜牛肉火锅食材', '0', '0', '0', '0', '106', '88', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/10_P_1448944572085.jpg', '0', '0', '2020-11-27 21:14:13.891110', '7');
INSERT INTO `g_goods` VALUES ('58', '', '乌拉圭进口牛肉卷特级肥牛卷', '0', '0', '0', '0', '90', '75', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/4_P_1448945381985.jpg', '0', '0', '2020-11-27 21:14:13.909061', '21');
INSERT INTO `g_goods` VALUES ('59', '', '五星眼肉牛排套餐8片装原味原切生鲜牛肉', '0', '0', '0', '0', '150', '125', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/8_P_1448945032810.jpg', '0', '0', '2020-11-27 21:14:13.924022', '23');
INSERT INTO `g_goods` VALUES ('60', '', '澳洲进口120天谷饲牛仔骨4份原味生鲜', '0', '0', '0', '0', '31', '26', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/11_P_1448944388277.jpg', '0', '0', '2020-11-27 21:14:13.954940', '7');
INSERT INTO `g_goods` VALUES ('61', '', '潮香村澳洲进口牛排家庭团购套餐20片', '0', '0', '0', '0', '239', '199', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/6_P_1448945167279.jpg', '0', '0', '2020-11-27 21:14:13.995829', '22');
INSERT INTO `g_goods` VALUES ('62', '', '爱食派内蒙古呼伦贝尔冷冻生鲜牛腱子肉1000g', '0', '0', '0', '0', '202', '168', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/9_P_1448944791617.jpg', '0', '0', '2020-11-27 21:14:14.011788', '20');
INSERT INTO `g_goods` VALUES ('63', '', '澳洲进口牛尾巴300g新鲜肥牛肉', '0', '0', '0', '0', '306', '255', '新鲜羊羔肉整只共15斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/3_P_1448945490837.jpg', '0', '0', '2020-11-27 21:14:14.039712', '2');
INSERT INTO `g_goods` VALUES ('64', '', '新疆巴尔鲁克生鲜牛排眼肉牛扒1200g', '0', '0', '0', '0', '126', '88', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/48_P_1448943988970.jpg', '0', '0', '2020-11-27 21:14:14.056665', '7');
INSERT INTO `g_goods` VALUES ('65', '', '澳洲进口安格斯牛切片上脑牛排1000g', '0', '0', '0', '0', '144', '120', '澳大利亚是国际公认的没有疯牛病和口蹄疫的国家。为了保持澳大利亚产品的高标准，澳大利亚牛肉业和各级政府共同努力简历了严格的标准和体系，以保证生产的整体化和产品的可追溯性', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/5_P_1448945270390.jpg', '0', '0', '2020-11-27 21:14:14.073620', '12');
INSERT INTO `g_goods` VALUES ('66', '', '帐篷出租', '0', '0', '0', '0', '120', '100', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'images/201705/goods_img/53_P_1495068879687.jpg', '0', '0', '2020-11-27 21:14:14.090576', '21');
INSERT INTO `g_goods` VALUES ('67', '', '52度茅台集团国隆双喜酒500mlx6', '0', '0', '0', '0', '23', '19', '贵州茅台酒厂（集团）保健酒业有限公司生产，是以“龙”字打头的酒水。中国龙文化上下8000年，源远而流长，龙的形象是一种符号、一种意绪、一种血肉相联的情感。', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/16_P_1448947194687.jpg', '0', '0', '2020-11-27 21:14:14.100548', '37');
INSERT INTO `g_goods` VALUES ('68', '', '52度水井坊臻酿八號500ml', '0', '0', '0', '0', '43', '36', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/14_P_1448947354031.jpg', '0', '0', '2020-11-27 21:14:14.108526', '36');
INSERT INTO `g_goods` VALUES ('69', '', '53度茅台仁酒500ml', '0', '0', '0', '0', '190', '158', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/12_P_1448947547989.jpg', '0', '0', '2020-11-27 21:14:14.120494', '32');
INSERT INTO `g_goods` VALUES ('70', '', '双响炮洋酒JimBeamwhiskey美国白占边', '0', '0', '0', '0', '38', '28', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/46_P_1448946598711.jpg', '0', '0', '2020-11-27 21:14:14.127476', '29');
INSERT INTO `g_goods` VALUES ('71', '', '西夫拉姆进口洋酒小酒版', '0', '0', '0', '0', '55', '46', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/21_P_1448946793276.jpg', '0', '0', '2020-11-27 21:14:14.139444', '36');
INSERT INTO `g_goods` VALUES ('72', '', '茅台53度飞天茅台500ml', '0', '0', '0', '0', '22', '18', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/15_P_1448947257324.jpg', '0', '0', '2020-11-27 21:14:14.151413', '30');
INSERT INTO `g_goods` VALUES ('73', '', '52度兰陵·紫气东来1600mL山东名酒', '0', '0', '0', '0', '42', '35', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/13_P_1448947460386.jpg', '0', '0', '2020-11-27 21:14:14.162383', '29');
INSERT INTO `g_goods` VALUES ('74', '', 'JohnnieWalker尊尼获加黑牌威士忌', '0', '0', '0', '0', '24', '20', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/50_P_1448946543091.jpg', '0', '0', '2020-11-27 21:14:14.177343', '36');
INSERT INTO `g_goods` VALUES ('75', '', '人头马CLUB特优香槟干邑350ml', '0', '0', '0', '0', '31', '26', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/51_P_1448946466595.jpg', '0', '0', '2020-11-27 21:14:14.189312', '30');
INSERT INTO `g_goods` VALUES ('76', '', '张裕干红葡萄酒750ml*6支', '0', '0', '0', '0', '54', '45', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/17_P_1448947102246.jpg', '0', '0', '2020-11-27 21:14:14.200283', '31');
INSERT INTO `g_goods` VALUES ('77', '', '原瓶原装进口洋酒烈酒法国云鹿XO白兰地', '0', '0', '0', '0', '46', '38', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/20_P_1448946850602.jpg', '0', '0', '2020-11-27 21:14:14.208261', '29');
INSERT INTO `g_goods` VALUES ('78', '', '法国原装进口圣贝克干红葡萄酒750ml', '0', '0', '0', '0', '82', '68', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/19_P_1448946951581.jpg', '0', '0', '2020-11-27 21:14:14.216241', '25');
INSERT INTO `g_goods` VALUES ('79', '', '法国百利威干红葡萄酒AOP级6支装', '0', '0', '0', '0', '67', '56', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/18_P_1448947011435.jpg', '0', '0', '2020-11-27 21:14:14.228208', '25');
INSERT INTO `g_goods` VALUES ('80', '', '芝华士12年苏格兰威士忌700ml', '0', '0', '0', '0', '71', '59', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/22_P_1448946729629.jpg', '0', '0', '2020-11-27 21:14:14.236187', '30');
INSERT INTO `g_goods` VALUES ('81', '', '深蓝伏特加巴维兰利口酒送预调酒', '0', '0', '0', '0', '31', '18', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/45_P_1448946661303.jpg', '0', '0', '2020-11-27 21:14:14.244166', '36');
INSERT INTO `g_goods` VALUES ('82', '', '赣南脐橙特级果10斤装', '0', '0', '0', '0', '43', '36', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/32_P_1448948525620.jpg', '0', '0', '2020-11-27 21:14:14.253141', '62');
INSERT INTO `g_goods` VALUES ('83', '', '泰国菠萝蜜16-18斤1个装', '0', '0', '0', '0', '11', '9', '【懒人吃法】菠萝蜜果肉，冰袋保鲜，收货就吃，冰爽Q脆甜，2斤装，全国顺丰空运包邮，发出后48小时内可达，一线城市基本隔天可达', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/30_P_1448948663450.jpg', '0', '0', '2020-11-27 21:14:14.261122', '66');
INSERT INTO `g_goods` VALUES ('84', '', '四川双流草莓新鲜水果礼盒2盒', '0', '0', '0', '0', '22', '18', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/31_P_1448948598947.jpg', '0', '0', '2020-11-27 21:14:14.278075', '70');
INSERT INTO `g_goods` VALUES ('85', '', '新鲜头茬非洲冰草冰菜', '0', '0', '0', '0', '67', '56', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/35_P_1448948333610.jpg', '0', '0', '2020-11-27 21:14:14.290042', '58');
INSERT INTO `g_goods` VALUES ('86', '', '仿真蔬菜水果果蔬菜模型', '0', '0', '0', '0', '6', '5', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/36_P_1448948234405.jpg', '0', '0', '2020-11-27 21:14:14.302009', '58');
INSERT INTO `g_goods` VALUES ('87', '', '现摘芭乐番石榴台湾珍珠芭乐', '0', '0', '0', '0', '28', '23', '海南产精品释迦果,\n        释迦是水果中的贵族,\n        产量少,\n        味道很甜,\n        奶香十足,\n        非常可口,\n        果裹果园顺丰空运,\n        保证新鲜.果子个大,\n        一斤1-2个左右,\n        大个头的果子更尽兴!\n        ', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/33_P_1448948479966.jpg', '0', '0', '2020-11-27 21:14:14.314977', '62');
INSERT INTO `g_goods` VALUES ('88', '', '潍坊萝卜5斤/箱礼盒', '0', '0', '0', '0', '46', '38', '脐橙规格是65-90MM左右（标准果果径平均70MM左右，精品果果径平均80MM左右），一斤大概有2-4个左右，脐橙产自江西省赣州市信丰县安西镇，全过程都是采用农家有机肥种植，生态天然', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/34_P_1448948399009.jpg', '0', '0', '2020-11-27 21:14:14.326943', '70');
INSERT INTO `g_goods` VALUES ('89', '', '休闲零食膨化食品焦糖/奶油/椒麻味', '0', '0', '0', '0', '154', '99', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/43_P_1448948762645.jpg', '0', '0', '2020-11-27 21:14:14.336917', '74');
INSERT INTO `g_goods` VALUES ('90', '', '蒙牛未来星儿童成长牛奶骨力型190ml*15盒', '0', '0', '0', '0', '84', '70', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/38_P_1448949220255.jpg', '0', '0', '2020-11-27 21:14:14.345893', '105');
INSERT INTO `g_goods` VALUES ('91', '', '蒙牛特仑苏有机奶250ml×12盒', '0', '0', '0', '0', '70', '32', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/44_P_1448948850187.jpg', '0', '0', '2020-11-27 21:14:14.356865', '103');
INSERT INTO `g_goods` VALUES ('92', '', '1元支付测试商品', '0', '0', '0', '0', '1', '1', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'images/201511/goods_img/49_P_1448162819889.jpg', '0', '0', '2020-11-27 21:14:14.366837', '102');
INSERT INTO `g_goods` VALUES ('93', '', '德运全脂新鲜纯牛奶1L*10盒装整箱', '0', '0', '0', '0', '70', '58', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/40_P_1448949038702.jpg', '0', '0', '2020-11-27 21:14:14.376813', '103');
INSERT INTO `g_goods` VALUES ('94', '', '木糖醇红枣早餐奶即食豆奶粉538g', '0', '0', '0', '0', '38', '32', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/39_P_1448949115481.jpg', '0', '0', '2020-11-27 21:14:14.385787', '106');
INSERT INTO `g_goods` VALUES ('95', '', '高钙液体奶200ml*24盒', '0', '0', '0', '0', '26', '22', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/41_P_1448948980358.jpg', '0', '0', '2020-11-27 21:14:14.395762', '107');
INSERT INTO `g_goods` VALUES ('96', '', '新西兰进口全脂奶粉900g', '0', '0', '0', '0', '720', '600', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/37_P_1448949284365.jpg', '0', '0', '2020-11-27 21:14:14.413714', '104');
INSERT INTO `g_goods` VALUES ('97', '', '伊利官方直营全脂营养舒化奶250ml*12盒*2提', '0', '0', '0', '0', '43', '36', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/42_P_1448948895193.jpg', '0', '0', '2020-11-27 21:14:14.424682', '103');
INSERT INTO `g_goods` VALUES ('98', '', '维纳斯橄榄菜籽油5L/桶', '0', '0', '0', '0', '187', '156', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/27_P_1448947771805.jpg', '0', '0', '2020-11-27 21:14:14.433660', '51');
INSERT INTO `g_goods` VALUES ('99', '', '糙米450gx3包粮油米面', '0', '0', '0', '0', '18', '15', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/23_P_1448948070348.jpg', '0', '0', '2020-11-27 21:14:14.443633', '41');
INSERT INTO `g_goods` VALUES ('100', '', '精炼一级大豆油5L色拉油粮油食用油', '0', '0', '0', '0', '54', '45', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/26_P_1448947825754.jpg', '0', '0', '2020-11-27 21:14:14.452607', '56');
INSERT INTO `g_goods` VALUES ('101', '', '橄榄玉米油5L*2桶', '0', '0', '0', '0', '31', '26', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/28_P_1448947699948.jpg', '0', '0', '2020-11-27 21:14:14.461583', '54');
INSERT INTO `g_goods` VALUES ('102', '', '山西黑米农家黑米4斤', '0', '0', '0', '0', '11', '9', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/24_P_1448948023823.jpg', '0', '0', '2020-11-27 21:14:14.475546', '55');
INSERT INTO `g_goods` VALUES ('103', '', '稻园牌稻米油粮油米糠油绿色植物油', '0', '0', '0', '0', '14', '12', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/25_P_1448947875346.jpg', '0', '0', '2020-11-27 21:14:14.489510', '47');
INSERT INTO `g_goods` VALUES ('104', '', '融氏纯玉米胚芽油5l桶', '0', '0', '0', '0', '14', '12', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/29_P_1448947631994.jpg', '0', '0', '2020-11-27 21:14:14.498485', '41');
INSERT INTO `g_goods` VALUES ('105', '', '新鲜水果甜蜜香脆单果约800克', '0', '0', '0', '0', '232', '156', '食用百香果可以增加胃部饱腹感，减少余热量的摄入，还可以吸附胆固醇和胆汁之类有机分子，抑制人体对脂肪的吸收。因此，长期食用有利于改善人体营养吸收结构，降低体内脂肪，塑造健康优美体态。', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/1_P_1449024889889.jpg', '0', '0', '2020-11-27 21:14:25.336989', '20');
INSERT INTO `g_goods` VALUES ('106', '', '田然牛肉大黄瓜条生鲜牛肉冷冻真空黄牛', '0', '0', '0', '0', '106', '88', '前腿+后腿+羊排共8斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/2_P_1448945810202.jpg', '0', '0', '2020-11-27 21:14:25.387854', '7');
INSERT INTO `g_goods` VALUES ('107', '', '酣畅家庭菲力牛排10片澳洲生鲜牛肉团购套餐', '0', '0', '0', '0', '286', '238', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/7_P_1448945104883.jpg', '0', '0', '2020-11-27 21:14:25.420764', '15');
INSERT INTO `g_goods` VALUES ('108', '', '日本蒜蓉粉丝扇贝270克6只装', '0', '0', '0', '0', '156', '108', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/47_P_1448946213263.jpg', '0', '0', '2020-11-27 21:14:25.433730', '20');
INSERT INTO `g_goods` VALUES ('109', '', '内蒙新鲜牛肉1斤清真生鲜牛肉火锅食材', '0', '0', '0', '0', '106', '88', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/10_P_1448944572085.jpg', '0', '0', '2020-11-27 21:14:25.446694', '7');
INSERT INTO `g_goods` VALUES ('110', '', '乌拉圭进口牛肉卷特级肥牛卷', '0', '0', '0', '0', '90', '75', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/4_P_1448945381985.jpg', '0', '0', '2020-11-27 21:14:25.470630', '21');
INSERT INTO `g_goods` VALUES ('111', '', '五星眼肉牛排套餐8片装原味原切生鲜牛肉', '0', '0', '0', '0', '150', '125', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/8_P_1448945032810.jpg', '0', '0', '2020-11-27 21:14:25.482600', '23');
INSERT INTO `g_goods` VALUES ('112', '', '澳洲进口120天谷饲牛仔骨4份原味生鲜', '0', '0', '0', '0', '31', '26', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/11_P_1448944388277.jpg', '0', '0', '2020-11-27 21:14:25.494603', '7');
INSERT INTO `g_goods` VALUES ('113', '', '潮香村澳洲进口牛排家庭团购套餐20片', '0', '0', '0', '0', '239', '199', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/6_P_1448945167279.jpg', '0', '0', '2020-11-27 21:14:25.508529', '22');
INSERT INTO `g_goods` VALUES ('114', '', '爱食派内蒙古呼伦贝尔冷冻生鲜牛腱子肉1000g', '0', '0', '0', '0', '202', '168', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/9_P_1448944791617.jpg', '0', '0', '2020-11-27 21:14:25.521494', '20');
INSERT INTO `g_goods` VALUES ('115', '', '澳洲进口牛尾巴300g新鲜肥牛肉', '0', '0', '0', '0', '306', '255', '新鲜羊羔肉整只共15斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/3_P_1448945490837.jpg', '0', '0', '2020-11-27 21:14:25.544432', '2');
INSERT INTO `g_goods` VALUES ('116', '', '新疆巴尔鲁克生鲜牛排眼肉牛扒1200g', '0', '0', '0', '0', '126', '88', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/48_P_1448943988970.jpg', '0', '0', '2020-11-27 21:14:25.556403', '7');
INSERT INTO `g_goods` VALUES ('117', '', '澳洲进口安格斯牛切片上脑牛排1000g', '0', '0', '0', '0', '144', '120', '澳大利亚是国际公认的没有疯牛病和口蹄疫的国家。为了保持澳大利亚产品的高标准，澳大利亚牛肉业和各级政府共同努力简历了严格的标准和体系，以保证生产的整体化和产品的可追溯性', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/5_P_1448945270390.jpg', '0', '0', '2020-11-27 21:14:25.575351', '12');
INSERT INTO `g_goods` VALUES ('118', '', '帐篷出租', '0', '0', '0', '0', '120', '100', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'images/201705/goods_img/53_P_1495068879687.jpg', '0', '0', '2020-11-27 21:14:25.591307', '21');
INSERT INTO `g_goods` VALUES ('119', '', '52度茅台集团国隆双喜酒500mlx6', '0', '0', '0', '0', '23', '19', '贵州茅台酒厂（集团）保健酒业有限公司生产，是以“龙”字打头的酒水。中国龙文化上下8000年，源远而流长，龙的形象是一种符号、一种意绪、一种血肉相联的情感。', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/16_P_1448947194687.jpg', '0', '0', '2020-11-27 21:14:25.601318', '37');
INSERT INTO `g_goods` VALUES ('120', '', '52度水井坊臻酿八號500ml', '0', '0', '0', '0', '43', '36', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/14_P_1448947354031.jpg', '0', '0', '2020-11-27 21:14:25.611255', '36');
INSERT INTO `g_goods` VALUES ('121', '', '53度茅台仁酒500ml', '0', '0', '0', '0', '190', '158', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/12_P_1448947547989.jpg', '0', '0', '2020-11-27 21:14:25.626215', '32');
INSERT INTO `g_goods` VALUES ('122', '', '双响炮洋酒JimBeamwhiskey美国白占边', '0', '0', '0', '0', '38', '28', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/46_P_1448946598711.jpg', '0', '0', '2020-11-27 21:14:25.635191', '29');
INSERT INTO `g_goods` VALUES ('123', '', '西夫拉姆进口洋酒小酒版', '0', '0', '0', '0', '55', '46', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/21_P_1448946793276.jpg', '0', '0', '2020-11-27 21:14:25.650151', '36');
INSERT INTO `g_goods` VALUES ('124', '', '茅台53度飞天茅台500ml', '0', '0', '0', '0', '22', '18', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/15_P_1448947257324.jpg', '0', '0', '2020-11-27 21:14:25.662118', '30');
INSERT INTO `g_goods` VALUES ('125', '', '52度兰陵·紫气东来1600mL山东名酒', '0', '0', '0', '0', '42', '35', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/13_P_1448947460386.jpg', '0', '0', '2020-11-27 21:14:25.677080', '29');
INSERT INTO `g_goods` VALUES ('126', '', 'JohnnieWalker尊尼获加黑牌威士忌', '0', '0', '0', '0', '24', '20', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/50_P_1448946543091.jpg', '0', '0', '2020-11-27 21:14:25.694064', '36');
INSERT INTO `g_goods` VALUES ('127', '', '人头马CLUB特优香槟干邑350ml', '0', '0', '0', '0', '31', '26', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/51_P_1448946466595.jpg', '0', '0', '2020-11-27 21:14:25.727941', '30');
INSERT INTO `g_goods` VALUES ('128', '', '张裕干红葡萄酒750ml*6支', '0', '0', '0', '0', '54', '45', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/17_P_1448947102246.jpg', '0', '0', '2020-11-27 21:14:25.741942', '31');
INSERT INTO `g_goods` VALUES ('129', '', '原瓶原装进口洋酒烈酒法国云鹿XO白兰地', '0', '0', '0', '0', '46', '38', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/20_P_1448946850602.jpg', '0', '0', '2020-11-27 21:14:25.751878', '29');
INSERT INTO `g_goods` VALUES ('130', '', '法国原装进口圣贝克干红葡萄酒750ml', '0', '0', '0', '0', '82', '68', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/19_P_1448946951581.jpg', '0', '0', '2020-11-27 21:14:25.759858', '25');
INSERT INTO `g_goods` VALUES ('131', '', '法国百利威干红葡萄酒AOP级6支装', '0', '0', '0', '0', '67', '56', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/18_P_1448947011435.jpg', '0', '0', '2020-11-27 21:14:25.772858', '25');
INSERT INTO `g_goods` VALUES ('132', '', '芝华士12年苏格兰威士忌700ml', '0', '0', '0', '0', '71', '59', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/22_P_1448946729629.jpg', '0', '0', '2020-11-27 21:14:25.782795', '30');
INSERT INTO `g_goods` VALUES ('133', '', '深蓝伏特加巴维兰利口酒送预调酒', '0', '0', '0', '0', '31', '18', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/45_P_1448946661303.jpg', '0', '0', '2020-11-27 21:14:25.791771', '36');
INSERT INTO `g_goods` VALUES ('134', '', '赣南脐橙特级果10斤装', '0', '0', '0', '0', '43', '36', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/32_P_1448948525620.jpg', '0', '0', '2020-11-27 21:14:25.800748', '62');
INSERT INTO `g_goods` VALUES ('135', '', '泰国菠萝蜜16-18斤1个装', '0', '0', '0', '0', '11', '9', '【懒人吃法】菠萝蜜果肉，冰袋保鲜，收货就吃，冰爽Q脆甜，2斤装，全国顺丰空运包邮，发出后48小时内可达，一线城市基本隔天可达', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/30_P_1448948663450.jpg', '0', '0', '2020-11-27 21:14:25.809723', '66');
INSERT INTO `g_goods` VALUES ('136', '', '四川双流草莓新鲜水果礼盒2盒', '0', '0', '0', '0', '22', '18', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/31_P_1448948598947.jpg', '0', '0', '2020-11-27 21:14:25.828673', '70');
INSERT INTO `g_goods` VALUES ('137', '', '新鲜头茬非洲冰草冰菜', '0', '0', '0', '0', '67', '56', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/35_P_1448948333610.jpg', '0', '0', '2020-11-27 21:14:25.840640', '58');
INSERT INTO `g_goods` VALUES ('138', '', '仿真蔬菜水果果蔬菜模型', '0', '0', '0', '0', '6', '5', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/36_P_1448948234405.jpg', '0', '0', '2020-11-27 21:14:25.852608', '58');
INSERT INTO `g_goods` VALUES ('139', '', '现摘芭乐番石榴台湾珍珠芭乐', '0', '0', '0', '0', '28', '23', '海南产精品释迦果,\n        释迦是水果中的贵族,\n        产量少,\n        味道很甜,\n        奶香十足,\n        非常可口,\n        果裹果园顺丰空运,\n        保证新鲜.果子个大,\n        一斤1-2个左右,\n        大个头的果子更尽兴!\n        ', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/33_P_1448948479966.jpg', '0', '0', '2020-11-27 21:14:25.864579', '62');
INSERT INTO `g_goods` VALUES ('140', '', '潍坊萝卜5斤/箱礼盒', '0', '0', '0', '0', '46', '38', '脐橙规格是65-90MM左右（标准果果径平均70MM左右，精品果果径平均80MM左右），一斤大概有2-4个左右，脐橙产自江西省赣州市信丰县安西镇，全过程都是采用农家有机肥种植，生态天然', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/34_P_1448948399009.jpg', '0', '0', '2020-11-27 21:14:25.876545', '70');
INSERT INTO `g_goods` VALUES ('141', '', '休闲零食膨化食品焦糖/奶油/椒麻味', '0', '0', '0', '0', '154', '99', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/43_P_1448948762645.jpg', '0', '0', '2020-11-27 21:14:25.885523', '74');
INSERT INTO `g_goods` VALUES ('142', '', '蒙牛未来星儿童成长牛奶骨力型190ml*15盒', '0', '0', '0', '0', '84', '70', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/38_P_1448949220255.jpg', '0', '0', '2020-11-27 21:14:25.893501', '105');
INSERT INTO `g_goods` VALUES ('143', '', '蒙牛特仑苏有机奶250ml×12盒', '0', '0', '0', '0', '70', '32', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/44_P_1448948850187.jpg', '0', '0', '2020-11-27 21:14:25.901480', '103');
INSERT INTO `g_goods` VALUES ('144', '', '1元支付测试商品', '0', '0', '0', '0', '1', '1', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'images/201511/goods_img/49_P_1448162819889.jpg', '0', '0', '2020-11-27 21:14:25.909457', '102');
INSERT INTO `g_goods` VALUES ('145', '', '德运全脂新鲜纯牛奶1L*10盒装整箱', '0', '0', '0', '0', '70', '58', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/40_P_1448949038702.jpg', '0', '0', '2020-11-27 21:14:25.917436', '103');
INSERT INTO `g_goods` VALUES ('146', '', '木糖醇红枣早餐奶即食豆奶粉538g', '0', '0', '0', '0', '38', '32', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/39_P_1448949115481.jpg', '0', '0', '2020-11-27 21:14:25.925415', '106');
INSERT INTO `g_goods` VALUES ('147', '', '高钙液体奶200ml*24盒', '0', '0', '0', '0', '26', '22', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/41_P_1448948980358.jpg', '0', '0', '2020-11-27 21:14:25.933392', '107');
INSERT INTO `g_goods` VALUES ('148', '', '新西兰进口全脂奶粉900g', '0', '0', '0', '0', '720', '600', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/37_P_1448949284365.jpg', '0', '0', '2020-11-27 21:14:25.942371', '104');
INSERT INTO `g_goods` VALUES ('149', '', '伊利官方直营全脂营养舒化奶250ml*12盒*2提', '0', '0', '0', '0', '43', '36', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/42_P_1448948895193.jpg', '0', '0', '2020-11-27 21:14:25.951346', '103');
INSERT INTO `g_goods` VALUES ('150', '', '维纳斯橄榄菜籽油5L/桶', '0', '0', '0', '0', '187', '156', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/27_P_1448947771805.jpg', '0', '0', '2020-11-27 21:14:25.959325', '51');
INSERT INTO `g_goods` VALUES ('151', '', '糙米450gx3包粮油米面', '0', '0', '0', '0', '18', '15', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/23_P_1448948070348.jpg', '0', '0', '2020-11-27 21:14:25.971292', '41');
INSERT INTO `g_goods` VALUES ('152', '', '精炼一级大豆油5L色拉油粮油食用油', '0', '0', '0', '0', '54', '45', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/26_P_1448947825754.jpg', '0', '0', '2020-11-27 21:14:25.980267', '56');
INSERT INTO `g_goods` VALUES ('153', '', '橄榄玉米油5L*2桶', '0', '0', '0', '0', '31', '26', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/28_P_1448947699948.jpg', '0', '0', '2020-11-27 21:14:25.989243', '54');
INSERT INTO `g_goods` VALUES ('154', '', '山西黑米农家黑米4斤', '0', '0', '0', '0', '11', '9', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/24_P_1448948023823.jpg', '0', '0', '2020-11-27 21:14:26.001444', '55');
INSERT INTO `g_goods` VALUES ('155', '', '稻园牌稻米油粮油米糠油绿色植物油', '0', '0', '0', '0', '14', '12', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/25_P_1448947875346.jpg', '0', '1', '2020-11-27 21:14:26.013179', '47');
INSERT INTO `g_goods` VALUES ('156', '', '融氏纯玉米胚芽油5l桶', '0', '0', '0', '0', '14', '12', 'hh', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/> </p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/> </p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/> </p>', '1', 'goods/images/29_P_1448947631994.jpg', '0', '1', '2020-11-27 21:14:00.000000', '41');

-- ----------------------------
-- Table structure for g_goodscategory
-- ----------------------------
DROP TABLE IF EXISTS `g_goodscategory`;
CREATE TABLE `g_goodscategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `category_type` int NOT NULL,
  `is_tab` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `parent_category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `g_goodscategory_parent_category_id_c633d19b_fk_g_goodsca` (`parent_category_id`),
  CONSTRAINT `g_goodscategory_parent_category_id_c633d19b_fk_g_goodsca` FOREIGN KEY (`parent_category_id`) REFERENCES `g_goodscategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of g_goodscategory
-- ----------------------------
INSERT INTO `g_goodscategory` VALUES ('1', '生鲜食品', 'sxsp', '好好好', '1', '1', '2020-11-27 10:23:00.000000', null);
INSERT INTO `g_goodscategory` VALUES ('2', '精品肉类', 'jprl', '', '2', '0', '2020-11-27 10:23:32.109314', '1');
INSERT INTO `g_goodscategory` VALUES ('3', '羊肉', 'yr', '', '3', '0', '2020-11-27 10:23:32.135245', '2');
INSERT INTO `g_goodscategory` VALUES ('4', '禽类', 'ql', '', '3', '0', '2020-11-27 10:23:32.139234', '2');
INSERT INTO `g_goodscategory` VALUES ('5', '猪肉', 'zr', '', '3', '0', '2020-11-27 10:23:32.144221', '2');
INSERT INTO `g_goodscategory` VALUES ('6', '牛肉', 'nr', '', '3', '0', '2020-11-27 10:23:32.148442', '2');
INSERT INTO `g_goodscategory` VALUES ('7', '海鲜水产', 'hxsc', '', '2', '0', '2020-11-27 10:23:32.152199', '1');
INSERT INTO `g_goodscategory` VALUES ('8', '参鲍', 'cb', '', '3', '0', '2020-11-27 10:23:32.155421', '7');
INSERT INTO `g_goodscategory` VALUES ('9', '鱼', 'yu', '', '3', '0', '2020-11-27 10:23:32.159410', '7');
INSERT INTO `g_goodscategory` VALUES ('10', '虾', 'xia', '', '3', '0', '2020-11-27 10:23:32.162173', '7');
INSERT INTO `g_goodscategory` VALUES ('11', '蟹/贝', 'xb', '', '3', '0', '2020-11-27 10:23:32.165164', '7');
INSERT INTO `g_goodscategory` VALUES ('12', '蛋制品', 'dzp', '', '2', '0', '2020-11-27 10:23:32.169154', '1');
INSERT INTO `g_goodscategory` VALUES ('13', '松花蛋/咸鸭蛋', 'xhd_xyd', '', '3', '0', '2020-11-27 10:23:32.172156', '12');
INSERT INTO `g_goodscategory` VALUES ('14', '鸡蛋', 'jd', '', '3', '0', '2020-11-27 10:23:32.176146', '12');
INSERT INTO `g_goodscategory` VALUES ('15', '叶菜类', 'ycl', '', '2', '0', '2020-11-27 10:23:32.179127', '1');
INSERT INTO `g_goodscategory` VALUES ('16', '生菜', 'sc', '', '3', '0', '2020-11-27 10:23:32.183127', '15');
INSERT INTO `g_goodscategory` VALUES ('17', '菠菜', 'bc', '', '3', '0', '2020-11-27 10:23:32.187108', '15');
INSERT INTO `g_goodscategory` VALUES ('18', '圆椒', 'yj', '', '3', '0', '2020-11-27 10:23:32.191095', '15');
INSERT INTO `g_goodscategory` VALUES ('19', '西兰花', 'xlh', '', '3', '0', '2020-11-27 10:23:32.194098', '15');
INSERT INTO `g_goodscategory` VALUES ('20', '根茎类', 'gjl', '', '2', '0', '2020-11-27 10:23:32.198087', '1');
INSERT INTO `g_goodscategory` VALUES ('21', '茄果类', 'qgl', '', '2', '0', '2020-11-27 10:23:32.201079', '1');
INSERT INTO `g_goodscategory` VALUES ('22', '菌菇类', 'jgl', '', '2', '0', '2020-11-27 10:23:32.205058', '1');
INSERT INTO `g_goodscategory` VALUES ('23', '进口生鲜', 'jksx', '', '2', '0', '2020-11-27 10:23:32.212049', '1');
INSERT INTO `g_goodscategory` VALUES ('24', '酒水饮料', 'jsyl', '好好好', '1', '1', '2020-11-27 10:23:00.000000', null);
INSERT INTO `g_goodscategory` VALUES ('25', '白酒', 'bk', '', '2', '0', '2020-11-27 10:23:32.219021', '24');
INSERT INTO `g_goodscategory` VALUES ('26', '五粮液', 'wly', '', '3', '0', '2020-11-27 10:23:32.223010', '25');
INSERT INTO `g_goodscategory` VALUES ('27', '泸州老窖', 'lzlj', '', '3', '0', '2020-11-27 10:23:32.227009', '25');
INSERT INTO `g_goodscategory` VALUES ('28', '茅台', 'mt', '', '3', '0', '2020-11-27 10:23:32.233991', '25');
INSERT INTO `g_goodscategory` VALUES ('29', '葡萄酒', 'ptj', '', '2', '0', '2020-11-27 10:23:32.237980', '24');
INSERT INTO `g_goodscategory` VALUES ('30', '洋酒', 'yj', '', '2', '0', '2020-11-27 10:23:32.240963', '24');
INSERT INTO `g_goodscategory` VALUES ('31', '啤酒', 'pj', '', '2', '0', '2020-11-27 10:23:32.244959', '24');
INSERT INTO `g_goodscategory` VALUES ('32', '其他酒品', 'qtjp', '', '2', '0', '2020-11-27 10:23:32.247953', '24');
INSERT INTO `g_goodscategory` VALUES ('33', '其他品牌', 'qtpp', '', '3', '0', '2020-11-27 10:23:32.251943', '32');
INSERT INTO `g_goodscategory` VALUES ('34', '黄酒', 'hj', '', '3', '0', '2020-11-27 10:23:32.255932', '32');
INSERT INTO `g_goodscategory` VALUES ('35', '养生酒', 'ysj', '', '3', '0', '2020-11-27 10:23:32.259921', '32');
INSERT INTO `g_goodscategory` VALUES ('36', '饮料/水', 'yls', '', '2', '0', '2020-11-27 10:23:32.262913', '24');
INSERT INTO `g_goodscategory` VALUES ('37', '红酒', 'hj', '', '2', '0', '2020-11-27 10:23:32.265915', '24');
INSERT INTO `g_goodscategory` VALUES ('38', '白兰地', 'bld', '', '3', '0', '2020-11-27 10:23:32.268887', '37');
INSERT INTO `g_goodscategory` VALUES ('39', '威士忌', 'wsj', '', '3', '0', '2020-11-27 10:23:32.272887', '37');
INSERT INTO `g_goodscategory` VALUES ('40', '粮油副食', '粮油副食', '好好好', '1', '1', '2020-11-27 10:23:00.000000', null);
INSERT INTO `g_goodscategory` VALUES ('41', '食用油', '食用油', '', '2', '0', '2020-11-27 10:23:32.280865', '40');
INSERT INTO `g_goodscategory` VALUES ('42', '其他食用油', '其他食用油', '', '3', '0', '2020-11-27 10:23:32.283854', '41');
INSERT INTO `g_goodscategory` VALUES ('43', '菜仔油', '菜仔油', '', '3', '0', '2020-11-27 10:23:32.287837', '41');
INSERT INTO `g_goodscategory` VALUES ('44', '花生油', '花生油', '', '3', '0', '2020-11-27 10:23:32.291836', '41');
INSERT INTO `g_goodscategory` VALUES ('45', '橄榄油', '橄榄油', '', '3', '0', '2020-11-27 10:23:32.294830', '41');
INSERT INTO `g_goodscategory` VALUES ('46', '礼盒', '礼盒', '', '3', '0', '2020-11-27 10:23:32.301834', '41');
INSERT INTO `g_goodscategory` VALUES ('47', '米面杂粮', '米面杂粮', '', '2', '0', '2020-11-27 10:23:32.305789', '40');
INSERT INTO `g_goodscategory` VALUES ('48', '面粉/面条', '面粉/面条', '', '3', '0', '2020-11-27 10:23:32.308783', '47');
INSERT INTO `g_goodscategory` VALUES ('49', '大米', '大米', '', '3', '0', '2020-11-27 10:23:32.311773', '47');
INSERT INTO `g_goodscategory` VALUES ('50', '意大利面', '意大利面', '', '3', '0', '2020-11-27 10:23:32.315791', '47');
INSERT INTO `g_goodscategory` VALUES ('51', '厨房调料', '厨房调料', '', '2', '0', '2020-11-27 10:23:32.319753', '40');
INSERT INTO `g_goodscategory` VALUES ('52', '调味油/汁', '调味油/汁', '', '3', '0', '2020-11-27 10:23:32.324749', '51');
INSERT INTO `g_goodscategory` VALUES ('53', '酱油/醋', '酱油/醋', '', '3', '0', '2020-11-27 10:23:32.327740', '51');
INSERT INTO `g_goodscategory` VALUES ('54', '南北干货', '南北干货', '', '2', '0', '2020-11-27 10:23:32.331720', '40');
INSERT INTO `g_goodscategory` VALUES ('55', '方便速食', '方便速食', '', '2', '0', '2020-11-27 10:23:32.335719', '40');
INSERT INTO `g_goodscategory` VALUES ('56', '调味品', '调味品', '', '2', '0', '2020-11-27 10:23:32.340695', '40');
INSERT INTO `g_goodscategory` VALUES ('57', '蔬菜水果', '蔬菜水果', '好好好', '1', '1', '2020-11-27 10:23:00.000000', null);
INSERT INTO `g_goodscategory` VALUES ('58', '有机蔬菜', '有机蔬菜', '', '2', '0', '2020-11-27 10:23:32.347687', '57');
INSERT INTO `g_goodscategory` VALUES ('59', '西红柿', '西红柿', '', '3', '0', '2020-11-27 10:23:32.354659', '58');
INSERT INTO `g_goodscategory` VALUES ('60', '韭菜', '韭菜', '', '3', '0', '2020-11-27 10:23:32.357651', '58');
INSERT INTO `g_goodscategory` VALUES ('61', '青菜', '青菜', '', '3', '0', '2020-11-27 10:23:32.361640', '58');
INSERT INTO `g_goodscategory` VALUES ('62', '精选蔬菜', '精选蔬菜', '', '2', '0', '2020-11-27 10:23:32.366840', '57');
INSERT INTO `g_goodscategory` VALUES ('63', '甘蓝', '甘蓝', '', '3', '0', '2020-11-27 10:23:32.369648', '62');
INSERT INTO `g_goodscategory` VALUES ('64', '胡萝卜', '胡萝卜', '', '3', '0', '2020-11-27 10:23:32.374636', '62');
INSERT INTO `g_goodscategory` VALUES ('65', '黄瓜', '黄瓜', '', '3', '0', '2020-11-27 10:23:32.378625', '62');
INSERT INTO `g_goodscategory` VALUES ('66', '进口水果', '进口水果', '', '2', '0', '2020-11-27 10:23:32.381615', '57');
INSERT INTO `g_goodscategory` VALUES ('67', '火龙果', '火龙果', '', '3', '0', '2020-11-27 10:23:32.384606', '66');
INSERT INTO `g_goodscategory` VALUES ('68', '菠萝蜜', '菠萝蜜', '', '3', '0', '2020-11-27 10:23:32.387576', '66');
INSERT INTO `g_goodscategory` VALUES ('69', '奇异果', '奇异果', '', '3', '0', '2020-11-27 10:23:32.391678', '66');
INSERT INTO `g_goodscategory` VALUES ('70', '国产水果', '国产水果', '', '2', '0', '2020-11-27 10:23:32.395548', '57');
INSERT INTO `g_goodscategory` VALUES ('71', '水果礼盒', '水果礼盒', '', '3', '0', '2020-11-27 10:23:32.398583', '70');
INSERT INTO `g_goodscategory` VALUES ('72', '苹果', '苹果', '', '3', '0', '2020-11-27 10:23:32.402560', '70');
INSERT INTO `g_goodscategory` VALUES ('73', '雪梨', '雪梨', '', '3', '0', '2020-11-27 10:23:32.407547', '70');
INSERT INTO `g_goodscategory` VALUES ('74', '休闲食品', '休闲食品', '好好好', '1', '1', '2020-11-27 10:23:00.000000', null);
INSERT INTO `g_goodscategory` VALUES ('75', '休闲零食', '休闲零食', '', '2', '0', '2020-11-27 10:23:32.413500', '74');
INSERT INTO `g_goodscategory` VALUES ('76', '果冻', '果冻', '', '3', '0', '2020-11-27 10:23:32.417500', '75');
INSERT INTO `g_goodscategory` VALUES ('77', '枣类', '枣类', '', '3', '0', '2020-11-27 10:23:32.420483', '75');
INSERT INTO `g_goodscategory` VALUES ('78', '蜜饯', '蜜饯', '', '3', '0', '2020-11-27 10:23:32.423484', '75');
INSERT INTO `g_goodscategory` VALUES ('79', '肉类零食', '肉类零食', '', '3', '0', '2020-11-27 10:23:32.427465', '75');
INSERT INTO `g_goodscategory` VALUES ('80', '坚果炒货', '坚果炒货', '', '3', '0', '2020-11-27 10:23:32.430456', '75');
INSERT INTO `g_goodscategory` VALUES ('81', '糖果', '糖果', '', '2', '0', '2020-11-27 10:23:32.433458', '74');
INSERT INTO `g_goodscategory` VALUES ('82', '创意喜糖', '创意喜糖', '', '3', '0', '2020-11-27 10:23:32.436439', '81');
INSERT INTO `g_goodscategory` VALUES ('83', '口香糖', '口香糖', '', '3', '0', '2020-11-27 10:23:32.440428', '81');
INSERT INTO `g_goodscategory` VALUES ('84', '软糖', '软糖', '', '3', '0', '2020-11-27 10:23:32.443421', '81');
INSERT INTO `g_goodscategory` VALUES ('85', '棒棒糖', '棒棒糖', '', '3', '0', '2020-11-27 10:23:32.447410', '81');
INSERT INTO `g_goodscategory` VALUES ('86', '巧克力', '巧克力', '', '2', '0', '2020-11-27 10:23:32.450413', '74');
INSERT INTO `g_goodscategory` VALUES ('87', '夹心巧克力', '夹心巧克力', '', '3', '0', '2020-11-27 10:23:32.463376', '86');
INSERT INTO `g_goodscategory` VALUES ('88', '白巧克力', '白巧克力', '', '3', '0', '2020-11-27 10:23:32.472343', '86');
INSERT INTO `g_goodscategory` VALUES ('89', '松露巧克力', '松露巧克力', '', '3', '0', '2020-11-27 10:23:32.476333', '86');
INSERT INTO `g_goodscategory` VALUES ('90', '黑巧克力', '黑巧克力', '', '3', '0', '2020-11-27 10:23:32.479335', '86');
INSERT INTO `g_goodscategory` VALUES ('91', '肉干肉脯/豆干', '肉干肉脯/豆干', '', '2', '0', '2020-11-27 10:23:32.483313', '74');
INSERT INTO `g_goodscategory` VALUES ('92', '牛肉干', '牛肉干', '', '3', '0', '2020-11-27 10:23:32.487305', '91');
INSERT INTO `g_goodscategory` VALUES ('93', '猪肉脯', '猪肉脯', '', '3', '0', '2020-11-27 10:23:32.491295', '91');
INSERT INTO `g_goodscategory` VALUES ('94', '牛肉粒', '牛肉粒', '', '3', '0', '2020-11-27 10:23:32.495283', '91');
INSERT INTO `g_goodscategory` VALUES ('95', '猪肉干', '猪肉干', '', '3', '0', '2020-11-27 10:23:32.499271', '91');
INSERT INTO `g_goodscategory` VALUES ('96', '鱿鱼丝/鱼干', '鱿鱼丝/鱼干', '', '2', '0', '2020-11-27 10:23:32.503261', '74');
INSERT INTO `g_goodscategory` VALUES ('97', '鱿鱼足', '鱿鱼足', '', '3', '0', '2020-11-27 10:23:32.507251', '96');
INSERT INTO `g_goodscategory` VALUES ('98', '鱿鱼丝', '鱿鱼丝', '', '3', '0', '2020-11-27 10:23:32.511250', '96');
INSERT INTO `g_goodscategory` VALUES ('99', '墨鱼/乌贼', '墨鱼/乌贼', '', '3', '0', '2020-11-27 10:23:32.514233', '96');
INSERT INTO `g_goodscategory` VALUES ('100', '鱿鱼仔', '鱿鱼仔', '', '3', '0', '2020-11-27 10:23:32.517224', '96');
INSERT INTO `g_goodscategory` VALUES ('101', '鱿鱼片', '鱿鱼片', '', '3', '0', '2020-11-27 10:23:32.521219', '96');
INSERT INTO `g_goodscategory` VALUES ('102', '奶类食品', '奶类食品', '好好好', '1', '0', '2020-11-27 10:23:00.000000', null);
INSERT INTO `g_goodscategory` VALUES ('103', '进口奶品', '进口奶品', '', '2', '0', '2020-11-27 10:23:32.528193', '102');
INSERT INTO `g_goodscategory` VALUES ('104', '国产奶品', '国产奶品', '', '2', '0', '2020-11-27 10:23:32.534177', '102');
INSERT INTO `g_goodscategory` VALUES ('105', '奶粉', '奶粉', '', '2', '0', '2020-11-27 10:23:32.539165', '102');
INSERT INTO `g_goodscategory` VALUES ('106', '有机奶', '有机奶', '', '2', '0', '2020-11-27 10:23:32.542159', '102');
INSERT INTO `g_goodscategory` VALUES ('107', '原料奶', '原料奶', '', '2', '0', '2020-11-27 10:23:32.546145', '102');
INSERT INTO `g_goodscategory` VALUES ('108', '天然干货', '天然干货', '好好好', '1', '0', '2020-11-27 10:23:00.000000', null);
INSERT INTO `g_goodscategory` VALUES ('109', '菌菇类', '菌菇类', '', '2', '0', '2020-11-27 10:23:32.553128', '108');
INSERT INTO `g_goodscategory` VALUES ('110', '腌干海产', '腌干海产', '', '2', '0', '2020-11-27 10:23:32.558116', '108');
INSERT INTO `g_goodscategory` VALUES ('111', '汤料', '汤料', '', '2', '0', '2020-11-27 10:23:32.562104', '108');
INSERT INTO `g_goodscategory` VALUES ('112', '豆类', '豆类', '', '2', '0', '2020-11-27 10:23:32.566092', '108');
INSERT INTO `g_goodscategory` VALUES ('113', '干菜/菜干', '干菜/菜干', '', '2', '0', '2020-11-27 10:23:32.571090', '108');
INSERT INTO `g_goodscategory` VALUES ('114', '干果/果干', '干果/果干', '', '2', '0', '2020-11-27 10:23:32.575105', '108');
INSERT INTO `g_goodscategory` VALUES ('115', '豆制品', '豆制品', '', '2', '0', '2020-11-27 10:23:32.578062', '108');
INSERT INTO `g_goodscategory` VALUES ('116', '腊味', '腊味', '', '2', '0', '2020-11-27 10:23:32.583048', '108');
INSERT INTO `g_goodscategory` VALUES ('117', '精选茗茶', '精选茗茶', '好好好', '1', '0', '2020-11-27 10:23:00.000000', null);
INSERT INTO `g_goodscategory` VALUES ('118', '白茶', '白茶', '', '2', '0', '2020-11-27 10:23:32.591026', '117');
INSERT INTO `g_goodscategory` VALUES ('119', '红茶', '红茶', '', '2', '0', '2020-11-27 10:23:32.596012', '117');
INSERT INTO `g_goodscategory` VALUES ('120', '绿茶', '绿茶', '', '2', '0', '2020-11-27 10:23:32.611969', '117');

-- ----------------------------
-- Table structure for g_goodscategorybrand
-- ----------------------------
DROP TABLE IF EXISTS `g_goodscategorybrand`;
CREATE TABLE `g_goodscategorybrand` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `g_goodscategorybrand_category_id_17c3dc54_fk_g_goodscategory_id` (`category_id`),
  CONSTRAINT `g_goodscategorybrand_category_id_17c3dc54_fk_g_goodscategory_id` FOREIGN KEY (`category_id`) REFERENCES `g_goodscategory` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of g_goodscategorybrand
-- ----------------------------

-- ----------------------------
-- Table structure for g_goodsimage
-- ----------------------------
DROP TABLE IF EXISTS `g_goodsimage`;
CREATE TABLE `g_goodsimage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `g_goodsimage_goods_id_a48e3d34_fk_g_goods_id` (`goods_id`),
  CONSTRAINT `g_goodsimage_goods_id_a48e3d34_fk_g_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `g_goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of g_goodsimage
-- ----------------------------
INSERT INTO `g_goodsimage` VALUES ('1', 'goods/images/1_P_1449024889889.jpg', '2020-11-27 10:25:59.068871', '1');
INSERT INTO `g_goodsimage` VALUES ('2', 'goods/images/1_P_1449024889264.jpg', '2020-11-27 10:25:59.082834', '1');
INSERT INTO `g_goodsimage` VALUES ('3', 'goods/images/1_P_1449024889726.jpg', '2020-11-27 10:25:59.086825', '1');
INSERT INTO `g_goodsimage` VALUES ('4', 'goods/images/1_P_1449024889018.jpg', '2020-11-27 10:25:59.090812', '1');
INSERT INTO `g_goodsimage` VALUES ('5', 'goods/images/1_P_1449024889287.jpg', '2020-11-27 10:25:59.093811', '1');
INSERT INTO `g_goodsimage` VALUES ('6', 'goods/images/2_P_1448945810202.jpg', '2020-11-27 10:25:59.102781', '2');
INSERT INTO `g_goodsimage` VALUES ('7', 'goods/images/2_P_1448945810814.jpg', '2020-11-27 10:25:59.109761', '2');
INSERT INTO `g_goodsimage` VALUES ('8', 'goods/images/7_P_1448945104883.jpg', '2020-11-27 10:25:59.119738', '3');
INSERT INTO `g_goodsimage` VALUES ('9', 'goods/images/7_P_1448945104734.jpg', '2020-11-27 10:25:59.124730', '3');
INSERT INTO `g_goodsimage` VALUES ('10', 'goods/images/47_P_1448946213263.jpg', '2020-11-27 10:25:59.132701', '4');
INSERT INTO `g_goodsimage` VALUES ('11', 'goods/images/47_P_1448946213157.jpg', '2020-11-27 10:25:59.135691', '4');
INSERT INTO `g_goodsimage` VALUES ('12', 'goods/images/10_P_1448944572085.jpg', '2020-11-27 10:25:59.143752', '5');
INSERT INTO `g_goodsimage` VALUES ('13', 'goods/images/10_P_1448944572532.jpg', '2020-11-27 10:25:59.147661', '5');
INSERT INTO `g_goodsimage` VALUES ('14', 'goods/images/10_P_1448944572872.jpg', '2020-11-27 10:25:59.151680', '5');
INSERT INTO `g_goodsimage` VALUES ('15', 'goods/images/4_P_1448945381985.jpg', '2020-11-27 10:25:59.160625', '6');
INSERT INTO `g_goodsimage` VALUES ('16', 'goods/images/4_P_1448945381013.jpg', '2020-11-27 10:25:59.163618', '6');
INSERT INTO `g_goodsimage` VALUES ('17', 'goods/images/8_P_1448945032810.jpg', '2020-11-27 10:25:59.172594', '7');
INSERT INTO `g_goodsimage` VALUES ('18', 'goods/images/8_P_1448945032646.jpg', '2020-11-27 10:25:59.175585', '7');
INSERT INTO `g_goodsimage` VALUES ('19', 'goods/images/11_P_1448944388277.jpg', '2020-11-27 10:25:59.183565', '8');
INSERT INTO `g_goodsimage` VALUES ('20', 'goods/images/11_P_1448944388034.jpg', '2020-11-27 10:25:59.186557', '8');
INSERT INTO `g_goodsimage` VALUES ('21', 'goods/images/11_P_1448944388201.jpg', '2020-11-27 10:25:59.190555', '8');
INSERT INTO `g_goodsimage` VALUES ('22', 'goods/images/6_P_1448945167279.jpg', '2020-11-27 10:25:59.198534', '9');
INSERT INTO `g_goodsimage` VALUES ('23', 'goods/images/6_P_1448945167015.jpg', '2020-11-27 10:25:59.202513', '9');
INSERT INTO `g_goodsimage` VALUES ('24', 'goods/images/9_P_1448944791617.jpg', '2020-11-27 10:25:59.211500', '10');
INSERT INTO `g_goodsimage` VALUES ('25', 'goods/images/9_P_1448944791129.jpg', '2020-11-27 10:25:59.214481', '10');
INSERT INTO `g_goodsimage` VALUES ('26', 'goods/images/9_P_1448944791077.jpg', '2020-11-27 10:25:59.218493', '10');
INSERT INTO `g_goodsimage` VALUES ('27', 'goods/images/9_P_1448944791229.jpg', '2020-11-27 10:25:59.221463', '10');
INSERT INTO `g_goodsimage` VALUES ('28', 'goods/images/3_P_1448945490837.jpg', '2020-11-27 10:25:59.233440', '11');
INSERT INTO `g_goodsimage` VALUES ('29', 'goods/images/3_P_1448945490084.jpg', '2020-11-27 10:25:59.237422', '11');
INSERT INTO `g_goodsimage` VALUES ('30', 'goods/images/48_P_1448943988970.jpg', '2020-11-27 10:25:59.246396', '12');
INSERT INTO `g_goodsimage` VALUES ('31', 'goods/images/48_P_1448943988898.jpg', '2020-11-27 10:25:59.249398', '12');
INSERT INTO `g_goodsimage` VALUES ('32', 'goods/images/48_P_1448943988439.jpg', '2020-11-27 10:25:59.253380', '12');
INSERT INTO `g_goodsimage` VALUES ('33', 'goods/images/5_P_1448945270390.jpg', '2020-11-27 10:25:59.263419', '13');
INSERT INTO `g_goodsimage` VALUES ('34', 'goods/images/5_P_1448945270067.jpg', '2020-11-27 10:25:59.267340', '13');
INSERT INTO `g_goodsimage` VALUES ('35', 'goods/images/5_P_1448945270432.jpg', '2020-11-27 10:25:59.272330', '13');
INSERT INTO `g_goodsimage` VALUES ('36', 'images/201705/goods_img/53_P_1495068879687.jpg', '2020-11-27 10:25:59.281337', '14');
INSERT INTO `g_goodsimage` VALUES ('37', 'goods/images/16_P_1448947194687.jpg', '2020-11-27 10:25:59.292274', '15');
INSERT INTO `g_goodsimage` VALUES ('38', 'goods/images/14_P_1448947354031.jpg', '2020-11-27 10:25:59.302247', '16');
INSERT INTO `g_goodsimage` VALUES ('39', 'goods/images/14_P_1448947354433.jpg', '2020-11-27 10:25:59.309229', '16');
INSERT INTO `g_goodsimage` VALUES ('40', 'goods/images/12_P_1448947547989.jpg', '2020-11-27 10:25:59.319211', '17');
INSERT INTO `g_goodsimage` VALUES ('41', 'goods/images/46_P_1448946598711.jpg', '2020-11-27 10:25:59.330401', '18');
INSERT INTO `g_goodsimage` VALUES ('42', 'goods/images/46_P_1448946598301.jpg', '2020-11-27 10:25:59.334161', '18');
INSERT INTO `g_goodsimage` VALUES ('43', 'goods/images/21_P_1448946793276.jpg', '2020-11-27 10:25:59.346167', '19');
INSERT INTO `g_goodsimage` VALUES ('44', 'goods/images/21_P_1448946793153.jpg', '2020-11-27 10:25:59.350123', '19');
INSERT INTO `g_goodsimage` VALUES ('45', 'goods/images/15_P_1448947257324.jpg', '2020-11-27 10:25:59.360324', '20');
INSERT INTO `g_goodsimage` VALUES ('46', 'goods/images/15_P_1448947257580.jpg', '2020-11-27 10:25:59.364081', '20');
INSERT INTO `g_goodsimage` VALUES ('47', 'goods/images/13_P_1448947460386.jpg', '2020-11-27 10:25:59.376077', '21');
INSERT INTO `g_goodsimage` VALUES ('48', 'goods/images/13_P_1448947460276.jpg', '2020-11-27 10:25:59.379041', '21');
INSERT INTO `g_goodsimage` VALUES ('49', 'goods/images/13_P_1448947460353.jpg', '2020-11-27 10:25:59.383233', '21');
INSERT INTO `g_goodsimage` VALUES ('50', 'goods/images/50_P_1448946543091.jpg', '2020-11-27 10:25:59.393073', '22');
INSERT INTO `g_goodsimage` VALUES ('51', 'goods/images/50_P_1448946542182.jpg', '2020-11-27 10:25:59.396993', '22');
INSERT INTO `g_goodsimage` VALUES ('52', 'goods/images/51_P_1448946466595.jpg', '2020-11-27 10:25:59.405972', '23');
INSERT INTO `g_goodsimage` VALUES ('53', 'goods/images/51_P_1448946466208.jpg', '2020-11-27 10:25:59.410177', '23');
INSERT INTO `g_goodsimage` VALUES ('54', 'goods/images/17_P_1448947102246.jpg', '2020-11-27 10:25:59.424967', '24');
INSERT INTO `g_goodsimage` VALUES ('55', 'goods/images/20_P_1448946850602.jpg', '2020-11-27 10:25:59.434124', '25');
INSERT INTO `g_goodsimage` VALUES ('56', 'goods/images/19_P_1448946951581.jpg', '2020-11-27 10:25:59.443868', '26');
INSERT INTO `g_goodsimage` VALUES ('57', 'goods/images/19_P_1448946951726.jpg', '2020-11-27 10:25:59.446859', '26');
INSERT INTO `g_goodsimage` VALUES ('58', 'goods/images/18_P_1448947011435.jpg', '2020-11-27 10:25:59.455847', '27');
INSERT INTO `g_goodsimage` VALUES ('59', 'goods/images/22_P_1448946729629.jpg', '2020-11-27 10:25:59.463825', '28');
INSERT INTO `g_goodsimage` VALUES ('60', 'goods/images/45_P_1448946661303.jpg', '2020-11-27 10:25:59.471794', '29');
INSERT INTO `g_goodsimage` VALUES ('61', 'goods/images/32_P_1448948525620.jpg', '2020-11-27 10:25:59.480769', '30');
INSERT INTO `g_goodsimage` VALUES ('62', 'goods/images/30_P_1448948663450.jpg', '2020-11-27 10:25:59.490744', '31');
INSERT INTO `g_goodsimage` VALUES ('63', 'goods/images/30_P_1448948662571.jpg', '2020-11-27 10:25:59.494961', '31');
INSERT INTO `g_goodsimage` VALUES ('64', 'goods/images/30_P_1448948663221.jpg', '2020-11-27 10:25:59.498950', '31');
INSERT INTO `g_goodsimage` VALUES ('65', 'goods/images/31_P_1448948598947.jpg', '2020-11-27 10:25:59.509692', '32');
INSERT INTO `g_goodsimage` VALUES ('66', 'goods/images/31_P_1448948598475.jpg', '2020-11-27 10:25:59.513693', '32');
INSERT INTO `g_goodsimage` VALUES ('67', 'goods/images/35_P_1448948333610.jpg', '2020-11-27 10:25:59.541609', '33');
INSERT INTO `g_goodsimage` VALUES ('68', 'goods/images/35_P_1448948333313.jpg', '2020-11-27 10:25:59.551586', '33');
INSERT INTO `g_goodsimage` VALUES ('69', 'goods/images/36_P_1448948234405.jpg', '2020-11-27 10:25:59.566542', '34');
INSERT INTO `g_goodsimage` VALUES ('70', 'goods/images/36_P_1448948234250.jpg', '2020-11-27 10:25:59.572524', '34');
INSERT INTO `g_goodsimage` VALUES ('71', 'goods/images/33_P_1448948479966.jpg', '2020-11-27 10:25:59.586510', '35');
INSERT INTO `g_goodsimage` VALUES ('72', 'goods/images/33_P_1448948479886.jpg', '2020-11-27 10:25:59.592483', '35');
INSERT INTO `g_goodsimage` VALUES ('73', 'goods/images/34_P_1448948399009.jpg', '2020-11-27 10:25:59.601445', '36');
INSERT INTO `g_goodsimage` VALUES ('74', 'goods/images/43_P_1448948762645.jpg', '2020-11-27 10:25:59.611420', '37');
INSERT INTO `g_goodsimage` VALUES ('75', 'goods/images/38_P_1448949220255.jpg', '2020-11-27 10:25:59.621396', '38');
INSERT INTO `g_goodsimage` VALUES ('76', 'goods/images/44_P_1448948850187.jpg', '2020-11-27 10:25:59.632363', '39');
INSERT INTO `g_goodsimage` VALUES ('77', 'images/201511/goods_img/49_P_1448162819889.jpg', '2020-11-27 10:25:59.641349', '40');
INSERT INTO `g_goodsimage` VALUES ('78', 'goods/images/40_P_1448949038702.jpg', '2020-11-27 10:25:59.650326', '41');
INSERT INTO `g_goodsimage` VALUES ('79', 'goods/images/39_P_1448949115481.jpg', '2020-11-27 10:25:59.663281', '42');
INSERT INTO `g_goodsimage` VALUES ('80', 'goods/images/41_P_1448948980358.jpg', '2020-11-27 10:25:59.679240', '43');
INSERT INTO `g_goodsimage` VALUES ('81', 'goods/images/37_P_1448949284365.jpg', '2020-11-27 10:25:59.691206', '44');
INSERT INTO `g_goodsimage` VALUES ('82', 'goods/images/42_P_1448948895193.jpg', '2020-11-27 10:25:59.699186', '45');
INSERT INTO `g_goodsimage` VALUES ('83', 'goods/images/27_P_1448947771805.jpg', '2020-11-27 10:25:59.711188', '46');
INSERT INTO `g_goodsimage` VALUES ('84', 'goods/images/23_P_1448948070348.jpg', '2020-11-27 10:25:59.720132', '47');
INSERT INTO `g_goodsimage` VALUES ('85', 'goods/images/26_P_1448947825754.jpg', '2020-11-27 10:25:59.732097', '48');
INSERT INTO `g_goodsimage` VALUES ('86', 'goods/images/28_P_1448947699948.jpg', '2020-11-27 10:25:59.742108', '49');
INSERT INTO `g_goodsimage` VALUES ('87', 'goods/images/28_P_1448947699777.jpg', '2020-11-27 10:25:59.745066', '49');
INSERT INTO `g_goodsimage` VALUES ('88', 'goods/images/24_P_1448948023823.jpg', '2020-11-27 10:25:59.755036', '50');
INSERT INTO `g_goodsimage` VALUES ('89', 'goods/images/24_P_1448948023977.jpg', '2020-11-27 10:25:59.759025', '50');
INSERT INTO `g_goodsimage` VALUES ('90', 'goods/images/25_P_1448947875346.jpg', '2020-11-27 10:25:59.767003', '51');
INSERT INTO `g_goodsimage` VALUES ('91', 'goods/images/29_P_1448947631994.jpg', '2020-11-27 10:25:59.776976', '52');
INSERT INTO `g_goodsimage` VALUES ('92', 'goods/images/1_P_1449024889889.jpg', '2020-11-27 21:14:13.800352', '53');
INSERT INTO `g_goodsimage` VALUES ('93', 'goods/images/1_P_1449024889264.jpg', '2020-11-27 21:14:13.808329', '53');
INSERT INTO `g_goodsimage` VALUES ('94', 'goods/images/1_P_1449024889726.jpg', '2020-11-27 21:14:13.812320', '53');
INSERT INTO `g_goodsimage` VALUES ('95', 'goods/images/1_P_1449024889018.jpg', '2020-11-27 21:14:13.821296', '53');
INSERT INTO `g_goodsimage` VALUES ('96', 'goods/images/1_P_1449024889287.jpg', '2020-11-27 21:14:13.825285', '53');
INSERT INTO `g_goodsimage` VALUES ('97', 'goods/images/2_P_1448945810202.jpg', '2020-11-27 21:14:13.854215', '54');
INSERT INTO `g_goodsimage` VALUES ('98', 'goods/images/2_P_1448945810814.jpg', '2020-11-27 21:14:13.859194', '54');
INSERT INTO `g_goodsimage` VALUES ('99', 'goods/images/7_P_1448945104883.jpg', '2020-11-27 21:14:13.869168', '55');
INSERT INTO `g_goodsimage` VALUES ('100', 'goods/images/7_P_1448945104734.jpg', '2020-11-27 21:14:13.874153', '55');
INSERT INTO `g_goodsimage` VALUES ('101', 'goods/images/47_P_1448946213263.jpg', '2020-11-27 21:14:13.883130', '56');
INSERT INTO `g_goodsimage` VALUES ('102', 'goods/images/47_P_1448946213157.jpg', '2020-11-27 21:14:13.887122', '56');
INSERT INTO `g_goodsimage` VALUES ('103', 'goods/images/10_P_1448944572085.jpg', '2020-11-27 21:14:13.897092', '57');
INSERT INTO `g_goodsimage` VALUES ('104', 'goods/images/10_P_1448944572532.jpg', '2020-11-27 21:14:13.901082', '57');
INSERT INTO `g_goodsimage` VALUES ('105', 'goods/images/10_P_1448944572872.jpg', '2020-11-27 21:14:13.906068', '57');
INSERT INTO `g_goodsimage` VALUES ('106', 'goods/images/4_P_1448945381985.jpg', '2020-11-27 21:14:13.915045', '58');
INSERT INTO `g_goodsimage` VALUES ('107', 'goods/images/4_P_1448945381013.jpg', '2020-11-27 21:14:13.919034', '58');
INSERT INTO `g_goodsimage` VALUES ('108', 'goods/images/8_P_1448945032810.jpg', '2020-11-27 21:14:13.931003', '59');
INSERT INTO `g_goodsimage` VALUES ('109', 'goods/images/8_P_1448945032646.jpg', '2020-11-27 21:14:13.934994', '59');
INSERT INTO `g_goodsimage` VALUES ('110', 'goods/images/11_P_1448944388277.jpg', '2020-11-27 21:14:13.969911', '60');
INSERT INTO `g_goodsimage` VALUES ('111', 'goods/images/11_P_1448944388034.jpg', '2020-11-27 21:14:13.976881', '60');
INSERT INTO `g_goodsimage` VALUES ('112', 'goods/images/11_P_1448944388201.jpg', '2020-11-27 21:14:13.984862', '60');
INSERT INTO `g_goodsimage` VALUES ('113', 'goods/images/6_P_1448945167279.jpg', '2020-11-27 21:14:14.001813', '61');
INSERT INTO `g_goodsimage` VALUES ('114', 'goods/images/6_P_1448945167015.jpg', '2020-11-27 21:14:14.007798', '61');
INSERT INTO `g_goodsimage` VALUES ('115', 'goods/images/9_P_1448944791617.jpg', '2020-11-27 21:14:14.017770', '62');
INSERT INTO `g_goodsimage` VALUES ('116', 'goods/images/9_P_1448944791129.jpg', '2020-11-27 21:14:14.022757', '62');
INSERT INTO `g_goodsimage` VALUES ('117', 'goods/images/9_P_1448944791077.jpg', '2020-11-27 21:14:14.026746', '62');
INSERT INTO `g_goodsimage` VALUES ('118', 'goods/images/9_P_1448944791229.jpg', '2020-11-27 21:14:14.030736', '62');
INSERT INTO `g_goodsimage` VALUES ('119', 'goods/images/3_P_1448945490837.jpg', '2020-11-27 21:14:14.046693', '63');
INSERT INTO `g_goodsimage` VALUES ('120', 'goods/images/3_P_1448945490084.jpg', '2020-11-27 21:14:14.051679', '63');
INSERT INTO `g_goodsimage` VALUES ('121', 'goods/images/48_P_1448943988970.jpg', '2020-11-27 21:14:14.062650', '64');
INSERT INTO `g_goodsimage` VALUES ('122', 'goods/images/48_P_1448943988898.jpg', '2020-11-27 21:14:14.065642', '64');
INSERT INTO `g_goodsimage` VALUES ('123', 'goods/images/48_P_1448943988439.jpg', '2020-11-27 21:14:14.069639', '64');
INSERT INTO `g_goodsimage` VALUES ('124', 'goods/images/5_P_1448945270390.jpg', '2020-11-27 21:14:14.078607', '65');
INSERT INTO `g_goodsimage` VALUES ('125', 'goods/images/5_P_1448945270067.jpg', '2020-11-27 21:14:14.082597', '65');
INSERT INTO `g_goodsimage` VALUES ('126', 'goods/images/5_P_1448945270432.jpg', '2020-11-27 21:14:14.086586', '65');
INSERT INTO `g_goodsimage` VALUES ('127', 'images/201705/goods_img/53_P_1495068879687.jpg', '2020-11-27 21:14:14.096559', '66');
INSERT INTO `g_goodsimage` VALUES ('128', 'goods/images/16_P_1448947194687.jpg', '2020-11-27 21:14:14.105534', '67');
INSERT INTO `g_goodsimage` VALUES ('129', 'goods/images/14_P_1448947354031.jpg', '2020-11-27 21:14:14.113514', '68');
INSERT INTO `g_goodsimage` VALUES ('130', 'goods/images/14_P_1448947354433.jpg', '2020-11-27 21:14:14.116506', '68');
INSERT INTO `g_goodsimage` VALUES ('131', 'goods/images/12_P_1448947547989.jpg', '2020-11-27 21:14:14.124485', '69');
INSERT INTO `g_goodsimage` VALUES ('132', 'goods/images/46_P_1448946598711.jpg', '2020-11-27 21:14:14.132464', '70');
INSERT INTO `g_goodsimage` VALUES ('133', 'goods/images/46_P_1448946598301.jpg', '2020-11-27 21:14:14.136453', '70');
INSERT INTO `g_goodsimage` VALUES ('134', 'goods/images/21_P_1448946793276.jpg', '2020-11-27 21:14:14.143433', '71');
INSERT INTO `g_goodsimage` VALUES ('135', 'goods/images/21_P_1448946793153.jpg', '2020-11-27 21:14:14.147423', '71');
INSERT INTO `g_goodsimage` VALUES ('136', 'goods/images/15_P_1448947257324.jpg', '2020-11-27 21:14:14.156398', '72');
INSERT INTO `g_goodsimage` VALUES ('137', 'goods/images/15_P_1448947257580.jpg', '2020-11-27 21:14:14.159391', '72');
INSERT INTO `g_goodsimage` VALUES ('138', 'goods/images/13_P_1448947460386.jpg', '2020-11-27 21:14:14.167369', '73');
INSERT INTO `g_goodsimage` VALUES ('139', 'goods/images/13_P_1448947460276.jpg', '2020-11-27 21:14:14.171360', '73');
INSERT INTO `g_goodsimage` VALUES ('140', 'goods/images/13_P_1448947460353.jpg', '2020-11-27 21:14:14.174352', '73');
INSERT INTO `g_goodsimage` VALUES ('141', 'goods/images/50_P_1448946543091.jpg', '2020-11-27 21:14:14.182330', '74');
INSERT INTO `g_goodsimage` VALUES ('142', 'goods/images/50_P_1448946542182.jpg', '2020-11-27 21:14:14.186320', '74');
INSERT INTO `g_goodsimage` VALUES ('143', 'goods/images/51_P_1448946466595.jpg', '2020-11-27 21:14:14.193302', '75');
INSERT INTO `g_goodsimage` VALUES ('144', 'goods/images/51_P_1448946466208.jpg', '2020-11-27 21:14:14.197292', '75');
INSERT INTO `g_goodsimage` VALUES ('145', 'goods/images/17_P_1448947102246.jpg', '2020-11-27 21:14:14.205269', '76');
INSERT INTO `g_goodsimage` VALUES ('146', 'goods/images/20_P_1448946850602.jpg', '2020-11-27 21:14:14.213249', '77');
INSERT INTO `g_goodsimage` VALUES ('147', 'goods/images/19_P_1448946951581.jpg', '2020-11-27 21:14:14.221227', '78');
INSERT INTO `g_goodsimage` VALUES ('148', 'goods/images/19_P_1448946951726.jpg', '2020-11-27 21:14:14.225216', '78');
INSERT INTO `g_goodsimage` VALUES ('149', 'goods/images/18_P_1448947011435.jpg', '2020-11-27 21:14:14.233195', '79');
INSERT INTO `g_goodsimage` VALUES ('150', 'goods/images/22_P_1448946729629.jpg', '2020-11-27 21:14:14.241173', '80');
INSERT INTO `g_goodsimage` VALUES ('151', 'goods/images/45_P_1448946661303.jpg', '2020-11-27 21:14:14.249152', '81');
INSERT INTO `g_goodsimage` VALUES ('152', 'goods/images/32_P_1448948525620.jpg', '2020-11-27 21:14:14.257129', '82');
INSERT INTO `g_goodsimage` VALUES ('153', 'goods/images/30_P_1448948663450.jpg', '2020-11-27 21:14:14.267106', '83');
INSERT INTO `g_goodsimage` VALUES ('154', 'goods/images/30_P_1448948662571.jpg', '2020-11-27 21:14:14.271092', '83');
INSERT INTO `g_goodsimage` VALUES ('155', 'goods/images/30_P_1448948663221.jpg', '2020-11-27 21:14:14.275081', '83');
INSERT INTO `g_goodsimage` VALUES ('156', 'goods/images/31_P_1448948598947.jpg', '2020-11-27 21:14:14.283060', '84');
INSERT INTO `g_goodsimage` VALUES ('157', 'goods/images/31_P_1448948598475.jpg', '2020-11-27 21:14:14.286053', '84');
INSERT INTO `g_goodsimage` VALUES ('158', 'goods/images/35_P_1448948333610.jpg', '2020-11-27 21:14:14.295030', '85');
INSERT INTO `g_goodsimage` VALUES ('159', 'goods/images/35_P_1448948333313.jpg', '2020-11-27 21:14:14.299017', '85');
INSERT INTO `g_goodsimage` VALUES ('160', 'goods/images/36_P_1448948234405.jpg', '2020-11-27 21:14:14.306996', '86');
INSERT INTO `g_goodsimage` VALUES ('161', 'goods/images/36_P_1448948234250.jpg', '2020-11-27 21:14:14.310988', '86');
INSERT INTO `g_goodsimage` VALUES ('162', 'goods/images/33_P_1448948479966.jpg', '2020-11-27 21:14:14.320961', '87');
INSERT INTO `g_goodsimage` VALUES ('163', 'goods/images/33_P_1448948479886.jpg', '2020-11-27 21:14:14.323953', '87');
INSERT INTO `g_goodsimage` VALUES ('164', 'goods/images/34_P_1448948399009.jpg', '2020-11-27 21:14:14.332929', '88');
INSERT INTO `g_goodsimage` VALUES ('165', 'goods/images/43_P_1448948762645.jpg', '2020-11-27 21:14:14.341905', '89');
INSERT INTO `g_goodsimage` VALUES ('166', 'goods/images/38_P_1448949220255.jpg', '2020-11-27 21:14:14.351877', '90');
INSERT INTO `g_goodsimage` VALUES ('167', 'goods/images/44_P_1448948850187.jpg', '2020-11-27 21:14:14.362847', '91');
INSERT INTO `g_goodsimage` VALUES ('168', 'images/201511/goods_img/49_P_1448162819889.jpg', '2020-11-27 21:14:14.372820', '92');
INSERT INTO `g_goodsimage` VALUES ('169', 'goods/images/40_P_1448949038702.jpg', '2020-11-27 21:14:14.381798', '93');
INSERT INTO `g_goodsimage` VALUES ('170', 'goods/images/39_P_1448949115481.jpg', '2020-11-27 21:14:14.391772', '94');
INSERT INTO `g_goodsimage` VALUES ('171', 'goods/images/41_P_1448948980358.jpg', '2020-11-27 21:14:14.407727', '95');
INSERT INTO `g_goodsimage` VALUES ('172', 'goods/images/37_P_1448949284365.jpg', '2020-11-27 21:14:14.420694', '96');
INSERT INTO `g_goodsimage` VALUES ('173', 'goods/images/42_P_1448948895193.jpg', '2020-11-27 21:14:14.430668', '97');
INSERT INTO `g_goodsimage` VALUES ('174', 'goods/images/27_P_1448947771805.jpg', '2020-11-27 21:14:14.440645', '98');
INSERT INTO `g_goodsimage` VALUES ('175', 'goods/images/23_P_1448948070348.jpg', '2020-11-27 21:14:14.449616', '99');
INSERT INTO `g_goodsimage` VALUES ('176', 'goods/images/26_P_1448947825754.jpg', '2020-11-27 21:14:14.457594', '100');
INSERT INTO `g_goodsimage` VALUES ('177', 'goods/images/28_P_1448947699948.jpg', '2020-11-27 21:14:14.467569', '101');
INSERT INTO `g_goodsimage` VALUES ('178', 'goods/images/28_P_1448947699777.jpg', '2020-11-27 21:14:14.471556', '101');
INSERT INTO `g_goodsimage` VALUES ('179', 'goods/images/24_P_1448948023823.jpg', '2020-11-27 21:14:14.481532', '102');
INSERT INTO `g_goodsimage` VALUES ('180', 'goods/images/24_P_1448948023977.jpg', '2020-11-27 21:14:14.485521', '102');
INSERT INTO `g_goodsimage` VALUES ('181', 'goods/images/25_P_1448947875346.jpg', '2020-11-27 21:14:14.494495', '103');
INSERT INTO `g_goodsimage` VALUES ('182', 'goods/images/29_P_1448947631994.jpg', '2020-11-27 21:14:14.503471', '104');
INSERT INTO `g_goodsimage` VALUES ('183', 'goods/images/1_P_1449024889889.jpg', '2020-11-27 21:14:25.353942', '105');
INSERT INTO `g_goodsimage` VALUES ('184', 'goods/images/1_P_1449024889264.jpg', '2020-11-27 21:14:25.356935', '105');
INSERT INTO `g_goodsimage` VALUES ('185', 'goods/images/1_P_1449024889726.jpg', '2020-11-27 21:14:25.362918', '105');
INSERT INTO `g_goodsimage` VALUES ('186', 'goods/images/1_P_1449024889018.jpg', '2020-11-27 21:14:25.375922', '105');
INSERT INTO `g_goodsimage` VALUES ('187', 'goods/images/1_P_1449024889287.jpg', '2020-11-27 21:14:25.382867', '105');
INSERT INTO `g_goodsimage` VALUES ('188', 'goods/images/2_P_1448945810202.jpg', '2020-11-27 21:14:25.413785', '106');
INSERT INTO `g_goodsimage` VALUES ('189', 'goods/images/2_P_1448945810814.jpg', '2020-11-27 21:14:25.417772', '106');
INSERT INTO `g_goodsimage` VALUES ('190', 'goods/images/7_P_1448945104883.jpg', '2020-11-27 21:14:25.426749', '107');
INSERT INTO `g_goodsimage` VALUES ('191', 'goods/images/7_P_1448945104734.jpg', '2020-11-27 21:14:25.429741', '107');
INSERT INTO `g_goodsimage` VALUES ('192', 'goods/images/47_P_1448946213263.jpg', '2020-11-27 21:14:25.439748', '108');
INSERT INTO `g_goodsimage` VALUES ('193', 'goods/images/47_P_1448946213157.jpg', '2020-11-27 21:14:25.442706', '108');
INSERT INTO `g_goodsimage` VALUES ('194', 'goods/images/10_P_1448944572085.jpg', '2020-11-27 21:14:25.452680', '109');
INSERT INTO `g_goodsimage` VALUES ('195', 'goods/images/10_P_1448944572532.jpg', '2020-11-27 21:14:25.455671', '109');
INSERT INTO `g_goodsimage` VALUES ('196', 'goods/images/10_P_1448944572872.jpg', '2020-11-27 21:14:25.463650', '109');
INSERT INTO `g_goodsimage` VALUES ('197', 'goods/images/4_P_1448945381985.jpg', '2020-11-27 21:14:25.474620', '110');
INSERT INTO `g_goodsimage` VALUES ('198', 'goods/images/4_P_1448945381013.jpg', '2020-11-27 21:14:25.478644', '110');
INSERT INTO `g_goodsimage` VALUES ('199', 'goods/images/8_P_1448945032810.jpg', '2020-11-27 21:14:25.487585', '111');
INSERT INTO `g_goodsimage` VALUES ('200', 'goods/images/8_P_1448945032646.jpg', '2020-11-27 21:14:25.490611', '111');
INSERT INTO `g_goodsimage` VALUES ('201', 'goods/images/11_P_1448944388277.jpg', '2020-11-27 21:14:25.499553', '112');
INSERT INTO `g_goodsimage` VALUES ('202', 'goods/images/11_P_1448944388034.jpg', '2020-11-27 21:14:25.502581', '112');
INSERT INTO `g_goodsimage` VALUES ('203', 'goods/images/11_P_1448944388201.jpg', '2020-11-27 21:14:25.505564', '112');
INSERT INTO `g_goodsimage` VALUES ('204', 'goods/images/6_P_1448945167279.jpg', '2020-11-27 21:14:25.513516', '113');
INSERT INTO `g_goodsimage` VALUES ('205', 'goods/images/6_P_1448945167015.jpg', '2020-11-27 21:14:25.517506', '113');
INSERT INTO `g_goodsimage` VALUES ('206', 'goods/images/9_P_1448944791617.jpg', '2020-11-27 21:14:25.530470', '114');
INSERT INTO `g_goodsimage` VALUES ('207', 'goods/images/9_P_1448944791129.jpg', '2020-11-27 21:14:25.534459', '114');
INSERT INTO `g_goodsimage` VALUES ('208', 'goods/images/9_P_1448944791077.jpg', '2020-11-27 21:14:25.537453', '114');
INSERT INTO `g_goodsimage` VALUES ('209', 'goods/images/9_P_1448944791229.jpg', '2020-11-27 21:14:25.540443', '114');
INSERT INTO `g_goodsimage` VALUES ('210', 'goods/images/3_P_1448945490837.jpg', '2020-11-27 21:14:25.549420', '115');
INSERT INTO `g_goodsimage` VALUES ('211', 'goods/images/3_P_1448945490084.jpg', '2020-11-27 21:14:25.553409', '115');
INSERT INTO `g_goodsimage` VALUES ('212', 'goods/images/48_P_1448943988970.jpg', '2020-11-27 21:14:25.561388', '116');
INSERT INTO `g_goodsimage` VALUES ('213', 'goods/images/48_P_1448943988898.jpg', '2020-11-27 21:14:25.565377', '116');
INSERT INTO `g_goodsimage` VALUES ('214', 'goods/images/48_P_1448943988439.jpg', '2020-11-27 21:14:25.569367', '116');
INSERT INTO `g_goodsimage` VALUES ('215', 'goods/images/5_P_1448945270390.jpg', '2020-11-27 21:14:25.579340', '117');
INSERT INTO `g_goodsimage` VALUES ('216', 'goods/images/5_P_1448945270067.jpg', '2020-11-27 21:14:25.583330', '117');
INSERT INTO `g_goodsimage` VALUES ('217', 'goods/images/5_P_1448945270432.jpg', '2020-11-27 21:14:25.588317', '117');
INSERT INTO `g_goodsimage` VALUES ('218', 'images/201705/goods_img/53_P_1495068879687.jpg', '2020-11-27 21:14:25.597329', '118');
INSERT INTO `g_goodsimage` VALUES ('219', 'goods/images/16_P_1448947194687.jpg', '2020-11-27 21:14:25.606268', '119');
INSERT INTO `g_goodsimage` VALUES ('220', 'goods/images/14_P_1448947354031.jpg', '2020-11-27 21:14:25.618235', '120');
INSERT INTO `g_goodsimage` VALUES ('221', 'goods/images/14_P_1448947354433.jpg', '2020-11-27 21:14:25.623224', '120');
INSERT INTO `g_goodsimage` VALUES ('222', 'goods/images/12_P_1448947547989.jpg', '2020-11-27 21:14:25.632233', '121');
INSERT INTO `g_goodsimage` VALUES ('223', 'goods/images/46_P_1448946598711.jpg', '2020-11-27 21:14:25.642172', '122');
INSERT INTO `g_goodsimage` VALUES ('224', 'goods/images/46_P_1448946598301.jpg', '2020-11-27 21:14:25.646193', '122');
INSERT INTO `g_goodsimage` VALUES ('225', 'goods/images/21_P_1448946793276.jpg', '2020-11-27 21:14:25.654139', '123');
INSERT INTO `g_goodsimage` VALUES ('226', 'goods/images/21_P_1448946793153.jpg', '2020-11-27 21:14:25.658164', '123');
INSERT INTO `g_goodsimage` VALUES ('227', 'goods/images/15_P_1448947257324.jpg', '2020-11-27 21:14:25.668104', '124');
INSERT INTO `g_goodsimage` VALUES ('228', 'goods/images/15_P_1448947257580.jpg', '2020-11-27 21:14:25.672092', '124');
INSERT INTO `g_goodsimage` VALUES ('229', 'goods/images/13_P_1448947460386.jpg', '2020-11-27 21:14:25.682103', '125');
INSERT INTO `g_goodsimage` VALUES ('230', 'goods/images/13_P_1448947460276.jpg', '2020-11-27 21:14:25.687053', '125');
INSERT INTO `g_goodsimage` VALUES ('231', 'goods/images/13_P_1448947460353.jpg', '2020-11-27 21:14:25.690043', '125');
INSERT INTO `g_goodsimage` VALUES ('232', 'goods/images/50_P_1448946543091.jpg', '2020-11-27 21:14:25.714978', '126');
INSERT INTO `g_goodsimage` VALUES ('233', 'goods/images/50_P_1448946542182.jpg', '2020-11-27 21:14:25.723954', '126');
INSERT INTO `g_goodsimage` VALUES ('234', 'goods/images/51_P_1448946466595.jpg', '2020-11-27 21:14:25.733926', '127');
INSERT INTO `g_goodsimage` VALUES ('235', 'goods/images/51_P_1448946466208.jpg', '2020-11-27 21:14:25.737916', '127');
INSERT INTO `g_goodsimage` VALUES ('236', 'goods/images/17_P_1448947102246.jpg', '2020-11-27 21:14:25.747890', '128');
INSERT INTO `g_goodsimage` VALUES ('237', 'goods/images/20_P_1448946850602.jpg', '2020-11-27 21:14:25.756867', '129');
INSERT INTO `g_goodsimage` VALUES ('238', 'goods/images/19_P_1448946951581.jpg', '2020-11-27 21:14:25.764845', '130');
INSERT INTO `g_goodsimage` VALUES ('239', 'goods/images/19_P_1448946951726.jpg', '2020-11-27 21:14:25.769829', '130');
INSERT INTO `g_goodsimage` VALUES ('240', 'goods/images/18_P_1448947011435.jpg', '2020-11-27 21:14:25.777808', '131');
INSERT INTO `g_goodsimage` VALUES ('241', 'goods/images/22_P_1448946729629.jpg', '2020-11-27 21:14:25.787783', '132');
INSERT INTO `g_goodsimage` VALUES ('242', 'goods/images/45_P_1448946661303.jpg', '2020-11-27 21:14:25.796760', '133');
INSERT INTO `g_goodsimage` VALUES ('243', 'goods/images/32_P_1448948525620.jpg', '2020-11-27 21:14:25.805734', '134');
INSERT INTO `g_goodsimage` VALUES ('244', 'goods/images/30_P_1448948663450.jpg', '2020-11-27 21:14:25.814709', '135');
INSERT INTO `g_goodsimage` VALUES ('245', 'goods/images/30_P_1448948662571.jpg', '2020-11-27 21:14:25.819697', '135');
INSERT INTO `g_goodsimage` VALUES ('246', 'goods/images/30_P_1448948663221.jpg', '2020-11-27 21:14:25.823725', '135');
INSERT INTO `g_goodsimage` VALUES ('247', 'goods/images/31_P_1448948598947.jpg', '2020-11-27 21:14:25.833659', '136');
INSERT INTO `g_goodsimage` VALUES ('248', 'goods/images/31_P_1448948598475.jpg', '2020-11-27 21:14:25.837650', '136');
INSERT INTO `g_goodsimage` VALUES ('249', 'goods/images/35_P_1448948333610.jpg', '2020-11-27 21:14:25.845630', '137');
INSERT INTO `g_goodsimage` VALUES ('250', 'goods/images/35_P_1448948333313.jpg', '2020-11-27 21:14:25.849619', '137');
INSERT INTO `g_goodsimage` VALUES ('251', 'goods/images/36_P_1448948234405.jpg', '2020-11-27 21:14:25.857632', '138');
INSERT INTO `g_goodsimage` VALUES ('252', 'goods/images/36_P_1448948234250.jpg', '2020-11-27 21:14:25.861587', '138');
INSERT INTO `g_goodsimage` VALUES ('253', 'goods/images/33_P_1448948479966.jpg', '2020-11-27 21:14:25.869564', '139');
INSERT INTO `g_goodsimage` VALUES ('254', 'goods/images/33_P_1448948479886.jpg', '2020-11-27 21:14:25.873554', '139');
INSERT INTO `g_goodsimage` VALUES ('255', 'goods/images/34_P_1448948399009.jpg', '2020-11-27 21:14:25.881531', '140');
INSERT INTO `g_goodsimage` VALUES ('256', 'goods/images/43_P_1448948762645.jpg', '2020-11-27 21:14:25.889547', '141');
INSERT INTO `g_goodsimage` VALUES ('257', 'goods/images/38_P_1448949220255.jpg', '2020-11-27 21:14:25.898488', '142');
INSERT INTO `g_goodsimage` VALUES ('258', 'goods/images/44_P_1448948850187.jpg', '2020-11-27 21:14:25.905468', '143');
INSERT INTO `g_goodsimage` VALUES ('259', 'images/201511/goods_img/49_P_1448162819889.jpg', '2020-11-27 21:14:25.914445', '144');
INSERT INTO `g_goodsimage` VALUES ('260', 'goods/images/40_P_1448949038702.jpg', '2020-11-27 21:14:25.922431', '145');
INSERT INTO `g_goodsimage` VALUES ('261', 'goods/images/39_P_1448949115481.jpg', '2020-11-27 21:14:25.930438', '146');
INSERT INTO `g_goodsimage` VALUES ('262', 'goods/images/41_P_1448948980358.jpg', '2020-11-27 21:14:25.938380', '147');
INSERT INTO `g_goodsimage` VALUES ('263', 'goods/images/37_P_1448949284365.jpg', '2020-11-27 21:14:25.947355', '148');
INSERT INTO `g_goodsimage` VALUES ('264', 'goods/images/42_P_1448948895193.jpg', '2020-11-27 21:14:25.956332', '149');
INSERT INTO `g_goodsimage` VALUES ('265', 'goods/images/27_P_1448947771805.jpg', '2020-11-27 21:14:25.967301', '150');
INSERT INTO `g_goodsimage` VALUES ('266', 'goods/images/23_P_1448948070348.jpg', '2020-11-27 21:14:25.977277', '151');
INSERT INTO `g_goodsimage` VALUES ('267', 'goods/images/26_P_1448947825754.jpg', '2020-11-27 21:14:25.985255', '152');
INSERT INTO `g_goodsimage` VALUES ('268', 'goods/images/28_P_1448947699948.jpg', '2020-11-27 21:14:25.993234', '153');
INSERT INTO `g_goodsimage` VALUES ('269', 'goods/images/28_P_1448947699777.jpg', '2020-11-27 21:14:25.997223', '153');
INSERT INTO `g_goodsimage` VALUES ('270', 'goods/images/24_P_1448948023823.jpg', '2020-11-27 21:14:26.006199', '154');
INSERT INTO `g_goodsimage` VALUES ('271', 'goods/images/24_P_1448948023977.jpg', '2020-11-27 21:14:26.009391', '154');
INSERT INTO `g_goodsimage` VALUES ('272', 'goods/images/25_P_1448947875346.jpg', '2020-11-27 21:14:26.022155', '155');
INSERT INTO `g_goodsimage` VALUES ('273', 'goods/images/29_P_1448947631994.jpg', '2020-11-27 21:14:26.031131', '156');

-- ----------------------------
-- Table structure for g_hotsearchwords
-- ----------------------------
DROP TABLE IF EXISTS `g_hotsearchwords`;
CREATE TABLE `g_hotsearchwords` (
  `id` int NOT NULL AUTO_INCREMENT,
  `keywords` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `index` int NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of g_hotsearchwords
-- ----------------------------

-- ----------------------------
-- Table structure for t_ordergoods
-- ----------------------------
DROP TABLE IF EXISTS `t_ordergoods`;
CREATE TABLE `t_ordergoods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `goods_num` int NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int NOT NULL,
  `order_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `t_ordergoods_goods_id_06f262d3_fk_g_goods_id` (`goods_id`),
  KEY `t_ordergoods_order_id_e9c13aad_fk_t_orderinfo_id` (`order_id`),
  CONSTRAINT `t_ordergoods_goods_id_06f262d3_fk_g_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `g_goods` (`id`),
  CONSTRAINT `t_ordergoods_order_id_e9c13aad_fk_t_orderinfo_id` FOREIGN KEY (`order_id`) REFERENCES `t_orderinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of t_ordergoods
-- ----------------------------
INSERT INTO `t_ordergoods` VALUES ('1', '60', '2020-12-05 08:41:09.931058', '1', '2');
INSERT INTO `t_ordergoods` VALUES ('2', '60', '2020-12-05 08:41:09.954005', '2', '2');
INSERT INTO `t_ordergoods` VALUES ('3', '6', '2020-12-05 09:10:22.760848', '24', '3');

-- ----------------------------
-- Table structure for t_orderinfo
-- ----------------------------
DROP TABLE IF EXISTS `t_orderinfo`;
CREATE TABLE `t_orderinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nonce_str` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `trade_no` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pay_status` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `pay_type` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `post_script` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `order_mount` double NOT NULL,
  `pay_time` datetime(6) DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `signer_name` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `singer_mobile` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  UNIQUE KEY `nonce_str` (`nonce_str`),
  UNIQUE KEY `trade_no` (`trade_no`),
  KEY `t_orderinfo_user_id_23e1c274_fk_u_userprofile_id` (`user_id`),
  CONSTRAINT `t_orderinfo_user_id_23e1c274_fk_u_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `u_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of t_orderinfo
-- ----------------------------
INSERT INTO `t_orderinfo` VALUES ('1', '20201205083923198', null, null, 'paying', 'alipay', '很好吃', '100', null, '北京', '韩鹏', '15735431774', '2020-12-05 08:39:00.000000', '1');
INSERT INTO `t_orderinfo` VALUES ('2', '20201205084109192', null, null, 'paying', 'alipay', '太棒了', '200', null, '上海', '韩鹏', '15735431774', '2020-12-05 08:41:00.000000', '1');
INSERT INTO `t_orderinfo` VALUES ('3', '20201205091022743', null, null, 'paying', 'alipay', '111', '270', null, '北京市北京市房山区网络学院', '韩鹏', '15735431779', '2020-12-05 09:10:22.754864', '7');

-- ----------------------------
-- Table structure for t_shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `t_shoppingcart`;
CREATE TABLE `t_shoppingcart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nums` int NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_shoppingcart_user_id_goods_id_d43b9f51_uniq` (`user_id`,`goods_id`),
  KEY `t_shoppingcart_goods_id_43c3c520_fk_g_goods_id` (`goods_id`),
  CONSTRAINT `t_shoppingcart_goods_id_43c3c520_fk_g_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `g_goods` (`id`),
  CONSTRAINT `t_shoppingcart_user_id_6938095e_fk_u_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `u_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of t_shoppingcart
-- ----------------------------

-- ----------------------------
-- Table structure for uo_useraddress
-- ----------------------------
DROP TABLE IF EXISTS `uo_useraddress`;
CREATE TABLE `uo_useraddress` (
  `id` int NOT NULL AUTO_INCREMENT,
  `province` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `district` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `signer_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `signer_mobile` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uo_useraddress_user_id_2fcad242_fk_u_userprofile_id` (`user_id`),
  CONSTRAINT `uo_useraddress_user_id_2fcad242_fk_u_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `u_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of uo_useraddress
-- ----------------------------
INSERT INTO `uo_useraddress` VALUES ('2', '北京市', '北京市', '房山区', '网络学院', '韩鹏', '15735431779', '2020-12-05 08:48:39.603703', '7');

-- ----------------------------
-- Table structure for uo_userfav
-- ----------------------------
DROP TABLE IF EXISTS `uo_userfav`;
CREATE TABLE `uo_userfav` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uo_userfav_user_id_goods_id_a098fb69_uniq` (`user_id`,`goods_id`),
  KEY `uo_userfav_goods_id_4c578759_fk_g_goods_id` (`goods_id`),
  CONSTRAINT `uo_userfav_goods_id_4c578759_fk_g_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `g_goods` (`id`),
  CONSTRAINT `uo_userfav_user_id_7d0856d4_fk_u_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `u_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of uo_userfav
-- ----------------------------

-- ----------------------------
-- Table structure for uo_userleavingmessage
-- ----------------------------
DROP TABLE IF EXISTS `uo_userleavingmessage`;
CREATE TABLE `uo_userleavingmessage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message_type` int NOT NULL,
  `subject` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `file` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uo_userleavingmessage_user_id_f6850af0_fk_u_userprofile_id` (`user_id`),
  CONSTRAINT `uo_userleavingmessage_user_id_f6850af0_fk_u_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `u_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of uo_userleavingmessage
-- ----------------------------

-- ----------------------------
-- Table structure for u_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `u_userprofile`;
CREATE TABLE `u_userprofile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(6) COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(11) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of u_userprofile
-- ----------------------------
INSERT INTO `u_userprofile` VALUES ('1', 'pbkdf2_sha256$150000$EzofpQKClfim$BhL/hQQyHA82w3Ccns7JrmI94kXnePKlZG8XW5pciyU=', '2020-12-04 08:46:48.290681', '1', 'xadmin', '', '', '1', '1', '2020-11-26 00:24:00.000000', '超级用户', null, 'male', '15735431775', 'xadmin@qq.com');
INSERT INTO `u_userprofile` VALUES ('7', 'pbkdf2_sha256$150000$0Q6jtJgPwsN3$fCg5hJS+ySuIrOaRzkok0VrgXGyU7CcppghMwwVq+fE=', null, '0', '15735431776', '', '', '0', '1', '2020-12-03 11:15:43.140779', '韩嘉鹏', '2001-08-10', 'male', '15735431776', '1935337186@qq.com');

-- ----------------------------
-- Table structure for u_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `u_userprofile_groups`;
CREATE TABLE `u_userprofile_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userprofile_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_userprofile_groups_userprofile_id_group_id_0151a8bf_uniq` (`userprofile_id`,`group_id`),
  KEY `u_userprofile_groups_group_id_c53f1c3d_fk_auth_group_id` (`group_id`),
  CONSTRAINT `u_userprofile_groups_group_id_c53f1c3d_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `u_userprofile_groups_userprofile_id_bc5e45e9_fk_u_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `u_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of u_userprofile_groups
-- ----------------------------

-- ----------------------------
-- Table structure for u_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `u_userprofile_user_permissions`;
CREATE TABLE `u_userprofile_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userprofile_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_userprofile_user_permi_userprofile_id_permissio_ed4ff716_uniq` (`userprofile_id`,`permission_id`),
  KEY `u_userprofile_user_p_permission_id_5883b6c3_fk_auth_perm` (`permission_id`),
  CONSTRAINT `u_userprofile_user_p_permission_id_5883b6c3_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `u_userprofile_user_p_userprofile_id_22ce7749_fk_u_userpro` FOREIGN KEY (`userprofile_id`) REFERENCES `u_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of u_userprofile_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for u_verifycode
-- ----------------------------
DROP TABLE IF EXISTS `u_verifycode`;
CREATE TABLE `u_verifycode` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of u_verifycode
-- ----------------------------
INSERT INTO `u_verifycode` VALUES ('1', '1388', '15735431776', '2020-12-02 21:21:43.861222');
INSERT INTO `u_verifycode` VALUES ('2', '5672', '18335706360', '2020-12-02 21:22:16.374296');
INSERT INTO `u_verifycode` VALUES ('3', '9204', '15735431776', '2020-12-02 21:22:55.061007');
INSERT INTO `u_verifycode` VALUES ('4', '2284', '15735431776', '2020-12-02 21:29:02.515462');
INSERT INTO `u_verifycode` VALUES ('5', '9604', '19834669743', '2020-12-02 21:29:07.252051');
INSERT INTO `u_verifycode` VALUES ('6', '9122', '18634779809', '2020-12-02 21:29:22.338443');
INSERT INTO `u_verifycode` VALUES ('7', '9787', '15735431776', '2020-12-03 08:37:19.517839');
INSERT INTO `u_verifycode` VALUES ('8', '0748', '15735431776', '2020-12-03 09:24:02.106801');
INSERT INTO `u_verifycode` VALUES ('9', '5248', '15735431776', '2020-12-03 10:35:11.177196');
INSERT INTO `u_verifycode` VALUES ('10', '2817', '18734794234', '2020-12-03 10:35:38.825495');
INSERT INTO `u_verifycode` VALUES ('11', '3498', '15735431776', '2020-12-03 11:02:40.352030');
INSERT INTO `u_verifycode` VALUES ('12', '5020', '15735431776', '2020-12-03 11:15:20.890666');

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `url_name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `query` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_u_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_u_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `u_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `object_id` longtext COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_u_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_u_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `u_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES ('1', '2020-11-27 01:12:08.816128', '127.0.0.1', '1', 'xadmin', 'change', 'Changed name and mobile.', '11', '1');
INSERT INTO `xadmin_log` VALUES ('2', '2020-11-28 10:54:20.992508', '127.0.0.1', '1', '生鲜食品', 'change', '修改 desc 和 is_tab', '18', '1');
INSERT INTO `xadmin_log` VALUES ('3', '2020-11-28 10:55:28.783578', '127.0.0.1', '117', '精选茗茶', 'change', '修改 desc 和 is_tab', '18', '1');
INSERT INTO `xadmin_log` VALUES ('4', '2020-11-28 10:55:46.690463', '127.0.0.1', '108', '天然干货', 'change', '修改 desc 和 is_tab', '18', '1');
INSERT INTO `xadmin_log` VALUES ('5', '2020-11-28 10:56:01.518932', '127.0.0.1', '102', '奶类食品', 'change', '修改 desc 和 is_tab', '18', '1');
INSERT INTO `xadmin_log` VALUES ('6', '2020-11-28 10:56:10.871341', '127.0.0.1', '74', '休闲食品', 'change', '修改 desc 和 is_tab', '18', '1');
INSERT INTO `xadmin_log` VALUES ('7', '2020-11-28 10:56:18.869070', '127.0.0.1', '57', '蔬菜水果', 'change', '修改 desc 和 is_tab', '18', '1');
INSERT INTO `xadmin_log` VALUES ('8', '2020-11-28 10:56:27.454877', '127.0.0.1', '40', '粮油副食', 'change', '修改 desc 和 is_tab', '18', '1');
INSERT INTO `xadmin_log` VALUES ('9', '2020-11-28 10:56:35.679863', '127.0.0.1', '24', '酒水饮料', 'change', '修改 desc 和 is_tab', '18', '1');
INSERT INTO `xadmin_log` VALUES ('10', '2020-12-01 09:50:55.242149', '127.0.0.1', '2', 'hanjiapeng', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('11', '2020-12-01 09:51:14.217765', '127.0.0.1', '1', 'xadmin', 'change', '修改 last_login 和 name', '11', '1');
INSERT INTO `xadmin_log` VALUES ('12', '2020-12-01 09:51:20.057206', '127.0.0.1', '2', 'hanjiapeng', 'change', '没有字段被修改。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('13', '2020-12-01 09:51:23.233729', '127.0.0.1', '1', 'xadmin', 'change', '没有字段被修改。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('14', '2020-12-01 09:51:26.685309', '127.0.0.1', '2', 'hanjiapeng', 'change', '没有字段被修改。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('15', '2020-12-01 09:56:11.044234', '127.0.0.1', '2', 'hanjiapeng', 'delete', '', '11', '1');
INSERT INTO `xadmin_log` VALUES ('16', '2020-12-02 09:00:49.210064', '127.0.0.1', '117', '精选茗茶', 'change', '修改 is_tab', '18', '1');
INSERT INTO `xadmin_log` VALUES ('17', '2020-12-02 09:00:58.203770', '127.0.0.1', '108', '天然干货', 'change', '修改 is_tab', '18', '1');
INSERT INTO `xadmin_log` VALUES ('18', '2020-12-02 09:01:05.142936', '127.0.0.1', '102', '奶类食品', 'change', '修改 is_tab', '18', '1');
INSERT INTO `xadmin_log` VALUES ('19', '2020-12-03 14:19:13.977534', '127.0.0.1', '156', '融氏纯玉米胚芽油5l桶', 'change', '修改 goods_sn，goods_brief，goods_desc 和 is_hot', '13', '1');
INSERT INTO `xadmin_log` VALUES ('20', '2020-12-03 15:27:42.494772', '127.0.0.1', '5', '15735431776', 'delete', '', '22', '1');
INSERT INTO `xadmin_log` VALUES ('21', '2020-12-03 15:27:47.534543', '127.0.0.1', '4', '15735431776', 'delete', '', '22', '1');
INSERT INTO `xadmin_log` VALUES ('22', '2020-12-03 15:27:55.886886', '127.0.0.1', '3', '15735431776', 'delete', '', '22', '1');
INSERT INTO `xadmin_log` VALUES ('23', '2020-12-03 15:28:01.855147', '127.0.0.1', '1', 'xadmin', 'delete', '', '22', '1');

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `key` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_u_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_u_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `u_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES ('1', 'dashboard:home:pos', '', '1');
INSERT INTO `xadmin_usersettings` VALUES ('2', 'site-theme', '/static/xadmin/css/themes/bootstrap-xadmin.css', '1');

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `widget_type` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_u_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_u_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `u_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------
