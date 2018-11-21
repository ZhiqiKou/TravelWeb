/*
Navicat MySQL Data Transfer

Source Server         : ubantuDB
Source Server Version : 80013
Source Host           : 192.168.0.175:3306
Source Database       : TravelWebsite

Target Server Type    : MYSQL
Target Server Version : 80013
File Encoding         : 65001

Date: 2018-11-21 14:53:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;

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
INSERT INTO `auth_permission` VALUES ('21', 'Can add 游记信息', '6', 'add_diary');
INSERT INTO `auth_permission` VALUES ('22', 'Can change 游记信息', '6', 'change_diary');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete 游记信息', '6', 'delete_diary');
INSERT INTO `auth_permission` VALUES ('24', 'Can view 游记信息', '6', 'view_diary');
INSERT INTO `auth_permission` VALUES ('25', 'Can add news', '7', 'add_news');
INSERT INTO `auth_permission` VALUES ('26', 'Can change news', '7', 'change_news');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete news', '7', 'delete_news');
INSERT INTO `auth_permission` VALUES ('28', 'Can view news', '7', 'view_news');
INSERT INTO `auth_permission` VALUES ('29', 'Can add 活动评论', '8', 'add_activecomments');
INSERT INTO `auth_permission` VALUES ('30', 'Can change 活动评论', '8', 'change_activecomments');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete 活动评论', '8', 'delete_activecomments');
INSERT INTO `auth_permission` VALUES ('32', 'Can view 活动评论', '8', 'view_activecomments');
INSERT INTO `auth_permission` VALUES ('33', 'Can add 游记评论', '9', 'add_diarycomments');
INSERT INTO `auth_permission` VALUES ('34', 'Can change 游记评论', '9', 'change_diarycomments');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete 游记评论', '9', 'delete_diarycomments');
INSERT INTO `auth_permission` VALUES ('36', 'Can view 游记评论', '9', 'view_diarycomments');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 景区评论', '10', 'add_spotscomments');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 景区评论', '10', 'change_spotscomments');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 景区评论', '10', 'delete_spotscomments');
INSERT INTO `auth_permission` VALUES ('40', 'Can view 景区评论', '10', 'view_spotscomments');
INSERT INTO `auth_permission` VALUES ('41', 'Can add 游记收藏', '11', 'add_usercollect');
INSERT INTO `auth_permission` VALUES ('42', 'Can change 游记收藏', '11', 'change_usercollect');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete 游记收藏', '11', 'delete_usercollect');
INSERT INTO `auth_permission` VALUES ('44', 'Can view 游记收藏', '11', 'view_usercollect');
INSERT INTO `auth_permission` VALUES ('45', 'Can add 旅游活动', '12', 'add_active');
INSERT INTO `auth_permission` VALUES ('46', 'Can change 旅游活动', '12', 'change_active');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete 旅游活动', '12', 'delete_active');
INSERT INTO `auth_permission` VALUES ('48', 'Can view 旅游活动', '12', 'view_active');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 轮播图', '13', 'add_gallery');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 轮播图', '13', 'change_gallery');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 轮播图', '13', 'delete_gallery');
INSERT INTO `auth_permission` VALUES ('52', 'Can view 轮播图', '13', 'view_gallery');
INSERT INTO `auth_permission` VALUES ('53', 'Can add 旅游景区', '14', 'add_spots');
INSERT INTO `auth_permission` VALUES ('54', 'Can change 旅游景区', '14', 'change_spots');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete 旅游景区', '14', 'delete_spots');
INSERT INTO `auth_permission` VALUES ('56', 'Can view 旅游景区', '14', 'view_spots');
INSERT INTO `auth_permission` VALUES ('57', 'Can add 用户信息', '15', 'add_myuser');
INSERT INTO `auth_permission` VALUES ('58', 'Can change 用户信息', '15', 'change_myuser');
INSERT INTO `auth_permission` VALUES ('59', 'Can delete 用户信息', '15', 'delete_myuser');
INSERT INTO `auth_permission` VALUES ('60', 'Can view 用户信息', '15', 'view_myuser');
INSERT INTO `auth_permission` VALUES ('61', 'Can add 轮播图', '16', 'add_banner');
INSERT INTO `auth_permission` VALUES ('62', 'Can change 轮播图', '16', 'change_banner');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete 轮播图', '16', 'delete_banner');
INSERT INTO `auth_permission` VALUES ('64', 'Can view 轮播图', '16', 'view_banner');
INSERT INTO `auth_permission` VALUES ('65', 'Can add 邮箱验证码信息', '17', 'add_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('66', 'Can change 邮箱验证码信息', '17', 'change_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('67', 'Can delete 邮箱验证码信息', '17', 'delete_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('68', 'Can view 邮箱验证码信息', '17', 'view_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('69', 'Can add 常用联系人信息', '18', 'add_thecontact');
INSERT INTO `auth_permission` VALUES ('70', 'Can change 常用联系人信息', '18', 'change_thecontact');
INSERT INTO `auth_permission` VALUES ('71', 'Can delete 常用联系人信息', '18', 'delete_thecontact');
INSERT INTO `auth_permission` VALUES ('72', 'Can view 常用联系人信息', '18', 'view_thecontact');
INSERT INTO `auth_permission` VALUES ('73', 'Can add Bookmark', '19', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('74', 'Can change Bookmark', '19', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('75', 'Can delete Bookmark', '19', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('76', 'Can view Bookmark', '19', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('77', 'Can add User Setting', '20', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('78', 'Can change User Setting', '20', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('79', 'Can delete User Setting', '20', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('80', 'Can view User Setting', '20', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('81', 'Can add User Widget', '21', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('82', 'Can change User Widget', '21', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('83', 'Can delete User Widget', '21', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('84', 'Can view User Widget', '21', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('85', 'Can add log entry', '22', 'add_log');
INSERT INTO `auth_permission` VALUES ('86', 'Can change log entry', '22', 'change_log');
INSERT INTO `auth_permission` VALUES ('87', 'Can delete log entry', '22', 'delete_log');
INSERT INTO `auth_permission` VALUES ('88', 'Can view log entry', '22', 'view_log');
INSERT INTO `auth_permission` VALUES ('89', 'Can add 商品信息', '23', 'add_product');
INSERT INTO `auth_permission` VALUES ('90', 'Can change 商品信息', '23', 'change_product');
INSERT INTO `auth_permission` VALUES ('91', 'Can delete 商品信息', '23', 'delete_product');
INSERT INTO `auth_permission` VALUES ('92', 'Can view 商品信息', '23', 'view_product');
INSERT INTO `auth_permission` VALUES ('93', 'Can add 商品图片', '24', 'add_propic');
INSERT INTO `auth_permission` VALUES ('94', 'Can change 商品图片', '24', 'change_propic');
INSERT INTO `auth_permission` VALUES ('95', 'Can delete 商品图片', '24', 'delete_propic');
INSERT INTO `auth_permission` VALUES ('96', 'Can view 商品图片', '24', 'view_propic');
INSERT INTO `auth_permission` VALUES ('97', 'Can add captcha store', '25', 'add_captchastore');
INSERT INTO `auth_permission` VALUES ('98', 'Can change captcha store', '25', 'change_captchastore');
INSERT INTO `auth_permission` VALUES ('99', 'Can delete captcha store', '25', 'delete_captchastore');
INSERT INTO `auth_permission` VALUES ('100', 'Can view captcha store', '25', 'view_captchastore');
INSERT INTO `auth_permission` VALUES ('101', 'Can add area info', '26', 'add_areainfo');
INSERT INTO `auth_permission` VALUES ('102', 'Can change area info', '26', 'change_areainfo');
INSERT INTO `auth_permission` VALUES ('103', 'Can delete area info', '26', 'delete_areainfo');
INSERT INTO `auth_permission` VALUES ('104', 'Can view area info', '26', 'view_areainfo');
INSERT INTO `auth_permission` VALUES ('105', 'Can add 游记点赞', '27', 'add_userfav');
INSERT INTO `auth_permission` VALUES ('106', 'Can change 游记点赞', '27', 'change_userfav');
INSERT INTO `auth_permission` VALUES ('107', 'Can delete 游记点赞', '27', 'delete_userfav');
INSERT INTO `auth_permission` VALUES ('108', 'Can view 游记点赞', '27', 'view_userfav');
INSERT INTO `auth_permission` VALUES ('109', 'Can add shopping cart', '28', 'add_shoppingcart');
INSERT INTO `auth_permission` VALUES ('110', 'Can change shopping cart', '28', 'change_shoppingcart');
INSERT INTO `auth_permission` VALUES ('111', 'Can delete shopping cart', '28', 'delete_shoppingcart');
INSERT INTO `auth_permission` VALUES ('112', 'Can view shopping cart', '28', 'view_shoppingcart');
INSERT INTO `auth_permission` VALUES ('113', 'Can add 商品订单主表', '29', 'add_goodsordersmaintable');
INSERT INTO `auth_permission` VALUES ('114', 'Can change 商品订单主表', '29', 'change_goodsordersmaintable');
INSERT INTO `auth_permission` VALUES ('115', 'Can delete 商品订单主表', '29', 'delete_goodsordersmaintable');
INSERT INTO `auth_permission` VALUES ('116', 'Can view 商品订单主表', '29', 'view_goodsordersmaintable');
INSERT INTO `auth_permission` VALUES ('117', 'Can add 用户购买商品信息', '30', 'add_orderitems');
INSERT INTO `auth_permission` VALUES ('118', 'Can change 用户购买商品信息', '30', 'change_orderitems');
INSERT INTO `auth_permission` VALUES ('119', 'Can delete 用户购买商品信息', '30', 'delete_orderitems');
INSERT INTO `auth_permission` VALUES ('120', 'Can view 用户购买商品信息', '30', 'view_orderitems');
INSERT INTO `auth_permission` VALUES ('121', 'Can add 直接购买商品', '31', 'add_shopping');
INSERT INTO `auth_permission` VALUES ('122', 'Can change 直接购买商品', '31', 'change_shopping');
INSERT INTO `auth_permission` VALUES ('123', 'Can delete 直接购买商品', '31', 'delete_shopping');
INSERT INTO `auth_permission` VALUES ('124', 'Can view 直接购买商品', '31', 'view_shopping');
INSERT INTO `auth_permission` VALUES ('125', 'Can add 商品评论', '32', 'add_productcomments');
INSERT INTO `auth_permission` VALUES ('126', 'Can change 商品评论', '32', 'change_productcomments');
INSERT INTO `auth_permission` VALUES ('127', 'Can delete 商品评论', '32', 'delete_productcomments');
INSERT INTO `auth_permission` VALUES ('128', 'Can view 商品评论', '32', 'view_productcomments');
INSERT INTO `auth_permission` VALUES ('129', 'Can add 门票订单', '33', 'add_ticketsordersmaintable');
INSERT INTO `auth_permission` VALUES ('130', 'Can change 门票订单', '33', 'change_ticketsordersmaintable');
INSERT INTO `auth_permission` VALUES ('131', 'Can delete 门票订单', '33', 'delete_ticketsordersmaintable');
INSERT INTO `auth_permission` VALUES ('132', 'Can view 门票订单', '33', 'view_ticketsordersmaintable');
INSERT INTO `auth_permission` VALUES ('133', 'Can add 旅游订单', '34', 'add_scenicordersmaintable');
INSERT INTO `auth_permission` VALUES ('134', 'Can change 旅游订单', '34', 'change_scenicordersmaintable');
INSERT INTO `auth_permission` VALUES ('135', 'Can delete 旅游订单', '34', 'delete_scenicordersmaintable');
INSERT INTO `auth_permission` VALUES ('136', 'Can view 旅游订单', '34', 'view_scenicordersmaintable');

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES ('157', '8*7=', '56', '1629cf1ecd71517e65d1f3d47ea05f5d6be2e538', '2018-10-18 16:33:59.104375');

-- ----------------------------
-- Table structure for diarys_diary
-- ----------------------------
DROP TABLE IF EXISTS `diarys_diary`;
CREATE TABLE `diarys_diary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `checknum` int(11) NOT NULL,
  `commentsnum` int(11) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `add_times` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `praisenum` int(11) NOT NULL,
  `collectnum` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `diarys_diary_user_id_6a600bd5_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `diarys_diary_user_id_6a600bd5_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of diarys_diary
-- ----------------------------
INSERT INTO `diarys_diary` VALUES ('3', '人间仙境白云山，最美人间十月天', '<p>对于热爱旅行的人来说，十月是个美好的季节，它可以金灿耀眼，可以绿意盎然，也可以白雪皑皑，它同时带来惊艳，让人念念不忘。</p><p><br/></p><p>对于还未上路的人来说，十一月是个特殊的季节，候鸟的邂逅、色彩的碰撞，还是古村的静候，都在这个时刻释放出无限光彩。</p><p><br/></p><p>网友经常问我：“你经常出去旅行，是因为爱好吗？”</p><p><br/></p><p>我说：“旅行不是爱好，而是生活”，不论是向左走，还是向右行，抑或是精心规划行程，又或者是说走就走，都是一种生活的态度。于是在这个收获的季节，我又出发了——人间仙境白云山。</p><p><br/></p><p>&nbsp;</p><p>洛阳白云山位于河南省洛阳市嵩县南部伏牛山腹地原始林区，总面积168平方公里，动物204种，植物1991种，森林覆盖率98.5%以上，被专家学者誉为“自然博物馆”。</p><p><br/></p><p>世界地质公园，国家5A级旅游景区，国家级森林公园、国家级自然保护区，中国十佳休闲胜地，中国最美地方之一，河南省十佳景区好去处第三名， 自有“人间仙境”之称。2010年更晋升世界地质公园。平均海拔1800米，海拔1500米以上的山峰37座，其中玉皇顶海拔2216米，为白云山第一峰，是看日出观云海的最佳处之一。</p><p><br/></p><p>白云山夏季最高气温不超过26℃，是国内首屈一指的避暑胜地。</p><p><br/></p><p>白云山主要景区有：白云峰、玉皇顶、小黄山、九龙瀑布、原始森林五大观光区和白云湖、高山森林氧吧、高山牡丹园、留侯祠、芦花谷五大休闲区。建议游玩时间2--3天。</p><p><img src=\"/media/ueimages/10070m000000dwnkw8E39_R_1024_10000_Q90_20181025135132_689.jpg\" title=\"\" alt=\"10070m000000dwnkw8E39_R_1024_10000_Q90.jpg\"/></p>', 'diary/2018/10/bg_S7RQs7B.jpg', '16', '0', '1', '2018-10-25 13:51:38.381751', '1', '6', '0');
INSERT INTO `diarys_diary` VALUES ('4', '人间仙境白云山', '<p>对于热爱旅行的人来说，十月是个美好的季节，它可以金灿耀眼，可以绿意盎然，也可以白雪皑皑，它同时带来惊艳，让人念念不忘。</p><p><br/></p><p>对于还未上路的人来说，十一月是个特殊的季节，候鸟的邂逅、色彩的碰撞，还是古村的静候，都在这个时刻释放出无限光彩。</p><p><br/></p><p>网友经常问我：“你经常出去旅行，是因为爱好吗？”</p><p><br/></p><p>我说：“旅行不是爱好，而是生活”，不论是向左走，还是向右行，抑或是精心规划行程，又或者是说走就走，都是一种生活的态度。于是在这个收获的季节，我又出发了——人间仙境白云山。</p><p><br/></p><p>&nbsp;</p><p>洛阳白云山位于河南省洛阳市嵩县南部伏牛山腹地原始林区，总面积168平方公里，动物204种，植物1991种，森林覆盖率98.5%以上，被专家学者誉为“自然博物馆”。</p><p><br/></p><p>世界地质公园，国家5A级旅游景区，国家级森林公园、国家级自然保护区，中国十佳休闲胜地，中国最美地方之一，河南省十佳景区好去处第三名， 自有“人间仙境”之称。2010年更晋升世界地质公园。平均海拔1800米，海拔1500米以上的山峰37座，其中玉皇顶海拔2216米，为白云山第一峰，是看日出观云海的最佳处之一。</p><p><br/></p><p>白云山夏季最高气温不超过26℃，是国内首屈一指的避暑胜地。</p><p><br/></p><p>白云山主要景区有：白云峰、玉皇顶、小黄山、九龙瀑布、原始森林五大观光区和白云湖、高山森林氧吧、高山牡丹园、留侯祠、芦花谷五大休闲区。建议游玩时间2--3天。</p><p><img src=\"/media/ueimages/10070m000000dwnkw8E39_R_1024_10000_Q90_20181025135132_689.jpg\" title=\"\" alt=\"10070m000000dwnkw8E39_R_1024_10000_Q90.jpg\"/></p>', 'diary/2018/10/bg_S7RQs7B.jpg', '2', '0', '1', '2018-10-25 13:51:38.381751', '1', '0', '0');
INSERT INTO `diarys_diary` VALUES ('5', '赏千年银杏林', '<p>每年</p><p>给自己定个小目标，</p><p>春天去看一场花开；</p><p>夏天去看一次大海；</p><p>秋天去看一片银杏。</p><p>带着这个梦想来到洛阳，白云山。</p><p style=\"text-align:center\"><img src=\"http://127.0.0.1:8000/media/1_20181029155011_609.png\" title=\"\" alt=\"1.png\"/></p><p><br/></p><p>洛阳·白云山&nbsp;</p><p><br/></p>', 'diary/2018/10/1_9UMmOAm.png', '3', '0', '1', '2018-10-29 15:51:24.664372', '19', '3', '0');
INSERT INTO `diarys_diary` VALUES ('6', '全攻略', '<p>在年少的岁月里，从书中初读洛阳的时候，我年轻而朝气蓬勃地心，充满了向往。那股迎面扑来的气息奔放着几千年前的唐风汉雅直闯我的心扉，向往便如美丽的伊洛河水流淌过日月的岁岁年年，古都洛阳在遥远的地方，如一颗明星般闪耀在我的脑际，夕阳红，朝霞更红。</p><p><br/></p><p>怀揣着仰慕的心情，低头在白马的蹄印里读洛阳的时候，残梦便从魏晋的繁华里耸立起一座名为白马的寺院，一柱香点燃历史的明灭，钟声就再也没有沉寂，钟声就在沧桑里坚强而又深情地唱响了几干年。而几千年后的白马，依然站在它最后的蹄印里，谛听着马寺钟声，守望着艰难跋涉的洛阳。</p><p><br/></p><p>行走在洛阳之东，在龙门石窟里读洛阳的时候，心底依稀望见几千年前风雪的黄昏，先民们被铁链紧锁着的身躯和被神光所笼罩的灵魂，那斑斑血迹里痛苦的呻吟声和冰冷石崖上钎锤的敲击声以及撞击出的凄美的火花，石崖上的人归去了，如轻烟细雨般没有痕迹，石头上的文化却留下来了。伊河因此而美丽，龙门因此而名符其实地身价百倍。其实这正是洛阳的不凡之处啊，龙门石窟，那是先祖们穿透岁月、穿透历史烟尘而一直凝望我们的目光…………</p><p style=\"text-align: center;\"><img src=\"/media/6e06f50f6e8741b2938a01e514f6b8f1_R_1024_10000_Q90_20181029155324_809.jpg\" title=\"\" alt=\"6e06f50f6e8741b2938a01e514f6b8f1_R_1024_10000_Q90.jpg\"/></p>', 'diary/2018/10/fb10a87f433747b1bdaad3910f805c5b_R_1024_10000_Q90.jpg', '53', '0', '1', '2018-10-29 15:53:43.925177', '19', '0', '0');
INSERT INTO `diarys_diary` VALUES ('7', '賞花行', '<p>4月中，突然心血來潮，和姐姐到洛陽看牡丹。趕快定行程、訂機票、酒店，因有些事情耽擱，4月21晚出發。</p><p>4月21日</p><p>因為直飛洛陽的票價貴近一倍，故取廣州至鄭州 (深航ZH9607 (18:25-20:40)，含稅770元)，飛機異常準時，20:40抵鄭，如按原計劃是可以直接坐八逹航空公司的大巴到洛陽(車程三小時，車費80元/人(?)晚上9:00、10:30、12:00)，因耽心飛機晚點，改先停鄭州，訂了火車站北側的紅珊瑚酒店。次日早再乘高鐵往洛陽。</p><p>順利乘晚上從新鄭機場至市區的民航大巴，到金水路民航大酒店( 大巴服務至航班結束)，</p><p>路程 約一小時，票價20元。</p><p>下車後，原擬打車到5公里外的鄭州火車站，沒想到，兩輛警車就停在民航巴士旁，出租車不能停靠，警察叫我們往前走到三十米外那裡等車。實際上那裡停了幾輛出租車或私家車，都不打錶，往火車站叫價30元。正討價還價間，又來了一輛民航大巴，出租車即時坐地起價：30元包車也不行了，要併車，每人15元。無奈之下，只有與另一年輕人併車，收了我們兩人25。我不明白，為什麼警察就在旁邊，他們也敢這樣做？</p><p>紅珊瑚酒店Red Coral Hotel (四星)溫馨特惠房(雙床雙早) 228元 (由攜程介紹訂)</p><p>郑州 二七区 二马路20号 (火车站北出站口斜对面 ，步行3-4分鐘可到火車站入口)</p><p>這間酒店是老牌四星酒店，外觀顯得有點陳舊。幸而房內床舖較新淨，房間很大，而且包兩位自助早餐 (早餐品種多樣，不錯) ，價位可以接受。有點不足的是只有大堂有WIFI。</p><p>4月22日</p><p>睡到自然醒，享受酒店提供的自助早餐後，乘動車往洛陽。</p><p>鄭州火車站往洛陽龙门站：9:00(D1001_39.5元/人,47分鐘) (列車從鄭州站到西安北)</p><p>(如果想早，從鄭州站始發的還有：7:12 (D5309_39.5元/人，約1 小時) 、8:00 (G1001_59.5元/人，37分鐘)、</p><p>注意：1. 鄭州乘高鐵和動車有兩個站：鄭州站(在二七區)和鄭州東站(在鄭東新區)，買票時不要搞錯了。</p><p>2. 洛陽高鐵和動車停靠洛陽城南洛龍區洛陽龍門站，距王城廣場約十二公里。有多班公交車直到市內。</p><p>3. 廣州南至洛陽龍門的高鐵每天有6班，其中3班為廣州南始發。車程約7.5小時，票價不到700元。我們乘飛機表面快，但左右折騰，實在累，兼且時間也沒省。所以應常考慮高鐵。</p><p>10：00AM寄存行李在龙门火车站(每個行李箱15元)，預購4.24往西安的動車票(D1001，9:49-12:08)</p><p>打車(約5公里，10.5元)往游龙门石窟、白园 （约4小时）</p><p>龍門石窟為國家5A級景區，門票120元，60-69歲半票，70以上免票。</p><p><img src=\"/media/1ae3ae23ec92443d9126f6bf6daa5f81_R_671_10000_Q90_20181029155559_330.jpg\" title=\"\" alt=\"1ae3ae23ec92443d9126f6bf6daa5f81_R_671_10000_Q90.jpg\"/></p>', 'diary/2018/10/893aebb481754feea54d7124d10b3b7f_R_671_10000_Q90.jpg', '2', '0', '0', '2018-10-29 15:56:09.247553', '19', '0', '0');
INSERT INTO `diarys_diary` VALUES ('8', '千年洛阳', '<p><img src=\"/media/CggYHFbN1-yAHQCsAANf2YxMj6E011_C_350_234_Q90_20181029155827_411.jpg\" style=\"\"/></p><p><img src=\"/media/CggYHVbN1-6ASzkYAAJyMreTpvk475_R_10000_500_Q90_20181029155827_606.jpg\" style=\"\"/></p><p><img src=\"/media/CggYs1bN1-yAUNw5AAOOjgStrss989_R_10000_500_Q90_20181029155827_317.jpg\" style=\"\"/></p><p><img src=\"/media/CggYslbN1-2ARx-PAAItNbzMpP8974_R_10000_500_Q90_20181029155827_667.jpg\" style=\"\"/></p><p><img src=\"/media/CggYtFbN1-yACKs6AAL5e7SJYoQ470_R_1024_10000_Q90_20181029155827_359.jpg\" style=\"\"/></p><p><br/></p>', 'diary/2018/10/CggYs1bN1-yAUNw5AAOOjgStrss989_R_10000_500_Q90.jpg', '9', '0', '1', '2018-10-29 15:58:42.898813', '19', '0', '2');
INSERT INTO `diarys_diary` VALUES ('74', '  登两千米白云山，赏千年银杏林', '<p>每年</p><p>给自己定个小目标，</p><p>春天去看一场花开；</p><p>夏天去看一次大海；</p><p>秋天去看一片银杏。</p><p>带着这个梦想来到洛阳，白云山。</p><p style=\"text-align:center\"><img src=\"http://127.0.0.1:8000/media/1_20181029155011_609.png\" title=\"\" alt=\"1.png\"/></p><p><br/></p><p>洛阳·白云山&nbsp;</p><p><br/></p>', 'diary/2018/10/1_9UMmOAm.png', '3', '0', '1', '2018-10-29 15:51:24.664372', '1', '51', '0');
INSERT INTO `diarys_diary` VALUES ('75', '  洛阳全攻略', '<p>在年少的岁月里，从书中初读洛阳的时候，我年轻而朝气蓬勃地心，充满了向往。那股迎面扑来的气息奔放着几千年前的唐风汉雅直闯我的心扉，向往便如美丽的伊洛河水流淌过日月的岁岁年年，古都洛阳在遥远的地方，如一颗明星般闪耀在我的脑际，夕阳红，朝霞更红。</p><p><br/></p><p>怀揣着仰慕的心情，低头在白马的蹄印里读洛阳的时候，残梦便从魏晋的繁华里耸立起一座名为白马的寺院，一柱香点燃历史的明灭，钟声就再也没有沉寂，钟声就在沧桑里坚强而又深情地唱响了几干年。而几千年后的白马，依然站在它最后的蹄印里，谛听着马寺钟声，守望着艰难跋涉的洛阳。</p><p><br/></p><p>行走在洛阳之东，在龙门石窟里读洛阳的时候，心底依稀望见几千年前风雪的黄昏，先民们被铁链紧锁着的身躯和被神光所笼罩的灵魂，那斑斑血迹里痛苦的呻吟声和冰冷石崖上钎锤的敲击声以及撞击出的凄美的火花，石崖上的人归去了，如轻烟细雨般没有痕迹，石头上的文化却留下来了。伊河因此而美丽，龙门因此而名符其实地身价百倍。其实这正是洛阳的不凡之处啊，龙门石窟，那是先祖们穿透岁月、穿透历史烟尘而一直凝望我们的目光…………</p><p style=\"text-align: center;\"><img src=\"/media/6e06f50f6e8741b2938a01e514f6b8f1_R_1024_10000_Q90_20181029155324_809.jpg\" title=\"\" alt=\"6e06f50f6e8741b2938a01e514f6b8f1_R_1024_10000_Q90.jpg\"/></p>', 'diary/2018/10/fb10a87f433747b1bdaad3910f805c5b_R_1024_10000_Q90.jpg', '73', '6', '1', '2018-10-29 15:53:43.925177', '1', '0', '3');
INSERT INTO `diarys_diary` VALUES ('76', '  4月洛陽賞花行', '<p>4月中，突然心血來潮，和姐姐到洛陽看牡丹。趕快定行程、訂機票、酒店，因有些事情耽擱，4月21晚出發。</p><p>4月21日</p><p>因為直飛洛陽的票價貴近一倍，故取廣州至鄭州 (深航ZH9607 (18:25-20:40)，含稅770元)，飛機異常準時，20:40抵鄭，如按原計劃是可以直接坐八逹航空公司的大巴到洛陽(車程三小時，車費80元/人(?)晚上9:00、10:30、12:00)，因耽心飛機晚點，改先停鄭州，訂了火車站北側的紅珊瑚酒店。次日早再乘高鐵往洛陽。</p><p>順利乘晚上從新鄭機場至市區的民航大巴，到金水路民航大酒店( 大巴服務至航班結束)，</p><p>路程 約一小時，票價20元。</p><p>下車後，原擬打車到5公里外的鄭州火車站，沒想到，兩輛警車就停在民航巴士旁，出租車不能停靠，警察叫我們往前走到三十米外那裡等車。實際上那裡停了幾輛出租車或私家車，都不打錶，往火車站叫價30元。正討價還價間，又來了一輛民航大巴，出租車即時坐地起價：30元包車也不行了，要併車，每人15元。無奈之下，只有與另一年輕人併車，收了我們兩人25。我不明白，為什麼警察就在旁邊，他們也敢這樣做？</p><p>紅珊瑚酒店Red Coral Hotel (四星)溫馨特惠房(雙床雙早) 228元 (由攜程介紹訂)</p><p>郑州 二七区 二马路20号 (火车站北出站口斜对面 ，步行3-4分鐘可到火車站入口)</p><p>這間酒店是老牌四星酒店，外觀顯得有點陳舊。幸而房內床舖較新淨，房間很大，而且包兩位自助早餐 (早餐品種多樣，不錯) ，價位可以接受。有點不足的是只有大堂有WIFI。</p><p>4月22日</p><p>睡到自然醒，享受酒店提供的自助早餐後，乘動車往洛陽。</p><p>鄭州火車站往洛陽龙门站：9:00(D1001_39.5元/人,47分鐘) (列車從鄭州站到西安北)</p><p>(如果想早，從鄭州站始發的還有：7:12 (D5309_39.5元/人，約1 小時) 、8:00 (G1001_59.5元/人，37分鐘)、</p><p>注意：1. 鄭州乘高鐵和動車有兩個站：鄭州站(在二七區)和鄭州東站(在鄭東新區)，買票時不要搞錯了。</p><p>2. 洛陽高鐵和動車停靠洛陽城南洛龍區洛陽龍門站，距王城廣場約十二公里。有多班公交車直到市內。</p><p>3. 廣州南至洛陽龍門的高鐵每天有6班，其中3班為廣州南始發。車程約7.5小時，票價不到700元。我們乘飛機表面快，但左右折騰，實在累，兼且時間也沒省。所以應常考慮高鐵。</p><p>10：00AM寄存行李在龙门火车站(每個行李箱15元)，預購4.24往西安的動車票(D1001，9:49-12:08)</p><p>打車(約5公里，10.5元)往游龙门石窟、白园 （约4小时）</p><p>龍門石窟為國家5A級景區，門票120元，60-69歲半票，70以上免票。</p><p><img src=\"/media/1ae3ae23ec92443d9126f6bf6daa5f81_R_671_10000_Q90_20181029155559_330.jpg\" title=\"\" alt=\"1ae3ae23ec92443d9126f6bf6daa5f81_R_671_10000_Q90.jpg\"/></p>', 'diary/2018/10/893aebb481754feea54d7124d10b3b7f_R_671_10000_Q90.jpg', '3', '1', '0', '2018-10-29 15:56:09.247553', '19', '8', '1');
INSERT INTO `diarys_diary` VALUES ('77', '古都清明 千年洛阳', '<p><img src=\"/media/CggYHFbN1-yAHQCsAANf2YxMj6E011_C_350_234_Q90_20181029155827_411.jpg\" style=\"\"/></p><p><img src=\"/media/CggYHVbN1-6ASzkYAAJyMreTpvk475_R_10000_500_Q90_20181029155827_606.jpg\" style=\"\"/></p><p><img src=\"/media/CggYs1bN1-yAUNw5AAOOjgStrss989_R_10000_500_Q90_20181029155827_317.jpg\" style=\"\"/></p><p><img src=\"/media/CggYslbN1-2ARx-PAAItNbzMpP8974_R_10000_500_Q90_20181029155827_667.jpg\" style=\"\"/></p><p><img src=\"/media/CggYtFbN1-yACKs6AAL5e7SJYoQ470_R_1024_10000_Q90_20181029155827_359.jpg\" style=\"\"/></p><p><br/></p>', 'diary/2018/10/CggYs1bN1-yAUNw5AAOOjgStrss989_R_10000_500_Q90.jpg', '142', '0', '1', '2018-10-29 15:58:42.898813', '1', '0', '0');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('25', 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('6', 'diarys', 'diary');
INSERT INTO `django_content_type` VALUES ('7', 'news', 'news');
INSERT INTO `django_content_type` VALUES ('8', 'operation', 'activecomments');
INSERT INTO `django_content_type` VALUES ('9', 'operation', 'diarycomments');
INSERT INTO `django_content_type` VALUES ('32', 'operation', 'productcomments');
INSERT INTO `django_content_type` VALUES ('31', 'operation', 'shopping');
INSERT INTO `django_content_type` VALUES ('28', 'operation', 'shoppingcart');
INSERT INTO `django_content_type` VALUES ('10', 'operation', 'spotscomments');
INSERT INTO `django_content_type` VALUES ('11', 'operation', 'usercollect');
INSERT INTO `django_content_type` VALUES ('27', 'operation', 'userfav');
INSERT INTO `django_content_type` VALUES ('29', 'pay', 'goodsordersmaintable');
INSERT INTO `django_content_type` VALUES ('30', 'pay', 'orderitems');
INSERT INTO `django_content_type` VALUES ('34', 'pay', 'scenicordersmaintable');
INSERT INTO `django_content_type` VALUES ('33', 'pay', 'ticketsordersmaintable');
INSERT INTO `django_content_type` VALUES ('12', 'scenicspots', 'active');
INSERT INTO `django_content_type` VALUES ('13', 'scenicspots', 'gallery');
INSERT INTO `django_content_type` VALUES ('14', 'scenicspots', 'spots');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('23', 'shop', 'product');
INSERT INTO `django_content_type` VALUES ('24', 'shop', 'propic');
INSERT INTO `django_content_type` VALUES ('26', 'users', 'areainfo');
INSERT INTO `django_content_type` VALUES ('16', 'users', 'banner');
INSERT INTO `django_content_type` VALUES ('17', 'users', 'emailverifyrecord');
INSERT INTO `django_content_type` VALUES ('15', 'users', 'myuser');
INSERT INTO `django_content_type` VALUES ('18', 'users', 'thecontact');
INSERT INTO `django_content_type` VALUES ('19', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('22', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('20', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('21', 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2018-10-09 16:26:05.433260');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2018-10-09 16:26:05.851075');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2018-10-09 16:26:07.159414');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2018-10-09 16:26:07.469071');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2018-10-09 16:26:07.489161');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2018-10-09 16:26:07.508064');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2018-10-09 16:26:07.525505');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2018-10-09 16:26:07.539623');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2018-10-09 16:26:07.561272');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2018-10-09 16:26:07.578811');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0009_alter_user_last_name_max_length', '2018-10-09 16:26:07.596594');
INSERT INTO `django_migrations` VALUES ('12', 'users', '0001_initial', '2018-10-09 16:26:09.742026');
INSERT INTO `django_migrations` VALUES ('13', 'admin', '0001_initial', '2018-10-09 16:26:10.401200');
INSERT INTO `django_migrations` VALUES ('14', 'admin', '0002_logentry_remove_auto_add', '2018-10-09 16:26:10.421689');
INSERT INTO `django_migrations` VALUES ('15', 'admin', '0003_logentry_add_action_flag_choices', '2018-10-09 16:26:10.450370');
INSERT INTO `django_migrations` VALUES ('16', 'diarys', '0001_initial', '2018-10-09 16:26:10.564613');
INSERT INTO `django_migrations` VALUES ('17', 'diarys', '0002_diary_user', '2018-10-09 16:26:10.936283');
INSERT INTO `django_migrations` VALUES ('18', 'news', '0001_initial', '2018-10-09 16:26:11.069816');
INSERT INTO `django_migrations` VALUES ('19', 'scenicspots', '0001_initial', '2018-10-09 16:26:11.858810');
INSERT INTO `django_migrations` VALUES ('20', 'operation', '0001_initial', '2018-10-09 16:26:12.484342');
INSERT INTO `django_migrations` VALUES ('21', 'operation', '0002_auto_20181009_1624', '2018-10-09 16:26:15.011204');
INSERT INTO `django_migrations` VALUES ('22', 'sessions', '0001_initial', '2018-10-09 16:26:15.222733');
INSERT INTO `django_migrations` VALUES ('23', 'xadmin', '0001_initial', '2018-10-09 16:26:16.579197');
INSERT INTO `django_migrations` VALUES ('24', 'xadmin', '0002_log', '2018-10-09 16:26:17.276652');
INSERT INTO `django_migrations` VALUES ('25', 'xadmin', '0003_auto_20160715_0100', '2018-10-09 16:26:17.598662');
INSERT INTO `django_migrations` VALUES ('26', 'shop', '0001_initial', '2018-10-10 09:56:09.849007');
INSERT INTO `django_migrations` VALUES ('27', 'news', '0002_auto_20181011_0944', '2018-10-11 09:44:43.587982');
INSERT INTO `django_migrations` VALUES ('28', 'news', '0003_auto_20181011_1059', '2018-10-11 10:59:30.523816');
INSERT INTO `django_migrations` VALUES ('29', 'captcha', '0001_initial', '2018-10-11 14:11:54.926549');
INSERT INTO `django_migrations` VALUES ('30', 'scenicspots', '0002_auto_20181015_1654', '2018-10-15 16:54:27.987588');
INSERT INTO `django_migrations` VALUES ('31', 'scenicspots', '0003_auto_20181016_1412', '2018-10-16 14:12:47.106173');
INSERT INTO `django_migrations` VALUES ('32', 'scenicspots', '0003_auto_20181016_1605', '2018-10-16 16:05:56.341874');
INSERT INTO `django_migrations` VALUES ('33', 'scenicspots', '0004_auto_20181016_1607', '2018-10-16 16:07:04.562935');
INSERT INTO `django_migrations` VALUES ('34', 'scenicspots', '0005_auto_20181016_1608', '2018-10-16 16:08:24.317636');
INSERT INTO `django_migrations` VALUES ('35', 'users', '0002_myuser_integral', '2018-10-17 09:50:27.796235');
INSERT INTO `django_migrations` VALUES ('36', 'users', '0003_myuser_check_time', '2018-10-17 14:44:34.508524');
INSERT INTO `django_migrations` VALUES ('37', 'users', '0004_auto_20181018_1011', '2018-10-18 10:11:24.027408');
INSERT INTO `django_migrations` VALUES ('38', 'users', '0005_areainfo', '2018-10-18 10:26:50.224997');
INSERT INTO `django_migrations` VALUES ('39', 'users', '0006_auto_20181018_1043', '2018-10-18 10:44:09.789843');
INSERT INTO `django_migrations` VALUES ('40', 'users', '0004_auto_20181018_1048', '2018-10-18 10:49:05.642659');
INSERT INTO `django_migrations` VALUES ('41', 'users', '0005_auto_20181018_1101', '2018-10-18 11:01:48.904530');
INSERT INTO `django_migrations` VALUES ('42', 'users', '0006_auto_20181018_1506', '2018-10-18 15:07:57.965127');
INSERT INTO `django_migrations` VALUES ('43', 'users', '0007_auto_20181018_1559', '2018-10-18 15:59:30.366503');
INSERT INTO `django_migrations` VALUES ('44', 'users', '0004_auto_20181018_1601', '2018-10-18 16:01:17.792776');
INSERT INTO `django_migrations` VALUES ('45', 'users', '0005_auto_20181018_1623', '2018-10-18 16:24:04.737184');
INSERT INTO `django_migrations` VALUES ('46', 'users', '0006_auto_20181018_1625', '2018-10-18 16:25:18.133600');
INSERT INTO `django_migrations` VALUES ('47', 'users', '0006_auto_20181018_1627', '2018-10-18 16:27:58.880720');
INSERT INTO `django_migrations` VALUES ('48', 'users', '0007_auto_20181019_1006', '2018-10-19 10:06:06.415892');
INSERT INTO `django_migrations` VALUES ('49', 'users', '0008_auto_20181019_1416', '2018-10-19 14:16:46.260110');
INSERT INTO `django_migrations` VALUES ('50', 'users', '0007_auto_20181019_1452', '2018-10-19 15:26:44.480658');
INSERT INTO `django_migrations` VALUES ('51', 'users', '0008_auto_20181019_1523', '2018-10-19 15:27:09.875443');
INSERT INTO `django_migrations` VALUES ('52', 'diarys', '0003_auto_20181025_1137', '2018-10-25 11:37:35.109152');
INSERT INTO `django_migrations` VALUES ('53', 'diarys', '0004_auto_20181025_1403', '2018-10-25 14:03:49.659776');
INSERT INTO `django_migrations` VALUES ('54', 'diarys', '0003_auto_20181026_1325', '2018-10-26 13:25:39.725773');
INSERT INTO `django_migrations` VALUES ('55', 'diarys', '0004_auto_20181026_1450', '2018-10-26 14:51:03.916641');
INSERT INTO `django_migrations` VALUES ('56', 'diarys', '0005_diary_praisenum', '2018-10-29 16:25:12.485427');
INSERT INTO `django_migrations` VALUES ('57', 'diarys', '0006_diary_collectnum', '2018-10-29 16:29:17.860055');
INSERT INTO `django_migrations` VALUES ('58', 'operation', '0003_userfav', '2018-10-31 10:03:11.776788');
INSERT INTO `django_migrations` VALUES ('59', 'shop', '0002_auto_20181101_1411', '2018-11-01 14:11:35.125966');
INSERT INTO `django_migrations` VALUES ('60', 'shop', '0003_propic_add_time', '2018-11-01 14:24:05.931082');
INSERT INTO `django_migrations` VALUES ('61', 'shop', '0004_auto_20181101_1433', '2018-11-01 14:33:41.060981');
INSERT INTO `django_migrations` VALUES ('62', 'shop', '0005_auto_20181101_1520', '2018-11-01 15:20:30.030885');
INSERT INTO `django_migrations` VALUES ('63', 'operation', '0004_shoppingcart', '2018-11-02 14:18:44.006037');
INSERT INTO `django_migrations` VALUES ('64', 'operation', '0005_auto_20181106_0941', '2018-11-06 09:42:00.064744');
INSERT INTO `django_migrations` VALUES ('65', 'pay', '0001_initial', '2018-11-08 13:59:49.988765');
INSERT INTO `django_migrations` VALUES ('66', 'pay', '0002_auto_20181108_1406', '2018-11-08 14:06:37.056286');
INSERT INTO `django_migrations` VALUES ('67', 'pay', '0003_auto_20181109_1110', '2018-11-09 11:10:45.960591');
INSERT INTO `django_migrations` VALUES ('68', 'pay', '0004_auto_20181109_1323', '2018-11-09 13:23:52.491480');
INSERT INTO `django_migrations` VALUES ('69', 'pay', '0002_orderitems_good_price', '2018-11-09 14:00:00.964442');
INSERT INTO `django_migrations` VALUES ('70', 'pay', '0003_auto_20181109_1404', '2018-11-09 14:04:11.181572');
INSERT INTO `django_migrations` VALUES ('71', 'pay', '0004_orderitems_good_image', '2018-11-09 14:12:05.059083');
INSERT INTO `django_migrations` VALUES ('72', 'pay', '0005_orderitems_good_id', '2018-11-09 15:26:31.905550');
INSERT INTO `django_migrations` VALUES ('73', 'operation', '0006_shopping', '2018-11-12 10:29:12.530515');
INSERT INTO `django_migrations` VALUES ('74', 'operation', '0007_productcomments', '2018-11-12 15:14:51.659297');
INSERT INTO `django_migrations` VALUES ('75', 'pay', '0006_ticketsordersmaintable', '2018-11-13 15:04:13.132703');
INSERT INTO `django_migrations` VALUES ('76', 'pay', '0007_ticketsordersmaintable_cdk', '2018-11-14 10:20:53.136136');
INSERT INTO `django_migrations` VALUES ('77', 'pay', '0008_auto_20181114_1036', '2018-11-14 10:36:06.076438');
INSERT INTO `django_migrations` VALUES ('78', 'pay', '0009_auto_20181114_1317', '2018-11-14 13:17:10.539366');
INSERT INTO `django_migrations` VALUES ('79', 'scenicspots', '0003_auto_20181016_1625', '2018-11-19 10:41:36.210767');
INSERT INTO `django_migrations` VALUES ('80', 'scenicspots', '0004_auto_20181119_1037', '2018-11-19 10:41:36.322340');
INSERT INTO `django_migrations` VALUES ('81', 'pay', '0010_auto_20181119_1545', '2018-11-19 15:45:46.302588');
INSERT INTO `django_migrations` VALUES ('82', 'users', '0009_auto_20181109_1338', '2018-11-20 11:48:47.917988');
INSERT INTO `django_migrations` VALUES ('83', 'users', '0010_remove_banner_index', '2018-11-20 11:48:48.206575');
INSERT INTO `django_migrations` VALUES ('84', 'users', '0011_auto_20181120_1353', '2018-11-20 13:54:07.160925');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('5b9yqp0jwrw9erg53kuf16mtx03mpyne', 'ODUzY2NlMDAxZGJiYmM0MGViOGI4OTdmZjRmODY0ZDUwYTlkNWYyYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwOTY5MDFiYmZmMGRjNjI3ZTM5NGU3ODE4ZTc5ODZhNTNhZmFiYjU3IiwiTElTVF9RVUVSWSI6W1sic2hvcCIsInByb2R1Y3QiXSwiIl0sIndpemFyZF94YWRtaW51c2Vyd2lkZ2V0X2FkbWluX3dpemFyZF9mb3JtX3BsdWdpbiI6eyJzdGVwIjpudWxsLCJzdGVwX2RhdGEiOnt9LCJzdGVwX2ZpbGVzIjp7fSwiZXh0cmFfZGF0YSI6e319fQ==', '2018-11-15 16:04:43.816724');
INSERT INTO `django_session` VALUES ('80yzhy03f4fd629kifkk73d0z05eoy4t', 'MWM4NzgwOTU3YWNlZGNjY2E4YzYwNjBmOGRiNmFjNDgwMTUyMWZhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwOTY5MDFiYmZmMGRjNjI3ZTM5NGU3ODE4ZTc5ODZhNTNhZmFiYjU3IiwiTElTVF9RVUVSWSI6W1sidXNlcnMiLCJiYW5uZXIiXSwiIl0sIm5hdl9tZW51IjoiW3tcInRpdGxlXCI6IFwiVXNlcnNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTRmZTFcdTYwNmZcIiwgXCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL215dXNlci9cIiwgXCJpY29uXCI6IFwiZmEgZmEtdXNlclwiLCBcIm9yZGVyXCI6IDN9LCB7XCJ0aXRsZVwiOiBcIlx1OGY2ZVx1NjRhZFx1NTZmZVwiLCBcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvYmFubmVyL1wiLCBcImljb25cIjogXCJmYSBmYS1waG90b1wiLCBcIm9yZGVyXCI6IDExfV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3VzZXJzL215dXNlci9cIn0sIHtcInRpdGxlXCI6IFwiXHU1NTQ2XHU1N2NlXHU0ZmUxXHU2MDZmXCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU1NTQ2XHU1NGMxXHU0ZmUxXHU2MDZmXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9zaG9wL3Byb2R1Y3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLXNob3BwaW5nLWNhcnRcIiwgXCJvcmRlclwiOiA5fSwge1widGl0bGVcIjogXCJcdTU1NDZcdTU0YzFcdTU2ZmVcdTcyNDdcIiwgXCJ1cmxcIjogXCIveGFkbWluL3Nob3AvcHJvcGljL1wiLCBcImljb25cIjogXCJmYSBmYS1waWN0dXJlLW9cIiwgXCJvcmRlclwiOiAxMH1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1zaG9wcGluZy1jYXJ0XCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9zaG9wL3Byb2R1Y3QvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1NjViMFx1OTVmYlx1OGQ0NFx1OGJhZlwiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1NjViMFx1OTVmYlx1NGZlMVx1NjA2ZlwiLCBcInVybFwiOiBcIi94YWRtaW4vbmV3cy9uZXdzL1wiLCBcImljb25cIjogXCJmYSBmYS1uZXdzcGFwZXItb1wiLCBcIm9yZGVyXCI6IDV9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtbmV3c3BhcGVyLW9cIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL25ld3MvbmV3cy9cIn0sIHtcInRpdGxlXCI6IFwiXHU2NjZmXHU1MzNhXHU1MjE3XHU4ODY4XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2NWM1XHU2ZTM4XHU2NjZmXHU1MzNhXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9zY2VuaWNzcG90cy9zcG90cy9cIiwgXCJpY29uXCI6IFwiZmEgZmEtYmFua1wiLCBcIm9yZGVyXCI6IDZ9LCB7XCJ0aXRsZVwiOiBcIlx1OGY2ZVx1NjRhZFx1NTZmZVwiLCBcInVybFwiOiBcIi94YWRtaW4vc2Nlbmljc3BvdHMvZ2FsbGVyeS9cIiwgXCJpY29uXCI6IFwiZmEgZmEtcGljdHVyZS1vXCIsIFwib3JkZXJcIjogN30sIHtcInRpdGxlXCI6IFwiXHU2NWM1XHU2ZTM4XHU2ZDNiXHU1MmE4XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9zY2VuaWNzcG90cy9hY3RpdmUvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNsaXBib2FyZFwiLCBcIm9yZGVyXCI6IDh9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtYmFua1wiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vc2Nlbmljc3BvdHMvc3BvdHMvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1N2JhMVx1NzQwNlwiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1NjVlNVx1NWZkN1x1OGJiMFx1NWY1NVwiLCBcInVybFwiOiBcIi94YWRtaW4veGFkbWluL2xvZy9cIiwgXCJpY29uXCI6IFwiZmEgZmEtY29nXCIsIFwib3JkZXJcIjogMTN9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtY29nXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wifSwge1widGl0bGVcIjogXCJcdThiYTRcdThiYzFcdTU0OGNcdTYzODhcdTY3NDNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTdlYzRcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogMn0sIHtcInRpdGxlXCI6IFwiXHU2NzQzXHU5NjUwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL3Blcm1pc3Npb24vXCIsIFwiaWNvblwiOiBcImZhIGZhLWxvY2tcIiwgXCJvcmRlclwiOiA0fV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9hdXRoL2dyb3VwL1wifV0ifQ==', '2018-12-05 14:37:41.626802');
INSERT INTO `django_session` VALUES ('ev7jwhjt20x2hsa2ma1o0xs1hu0qngow', 'YThkOWE0M2ZjNmZiODkwOTg3MmVmNjQwNzNlMTVlOGU5ZDM3OWE2NTp7Il9hdXRoX3VzZXJfaWQiOiIxOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzBhYmFmYWY1ZjZhZDY3MTAzODE0N2U2MjllZmRjMzgyM2Q5N2FkYiJ9', '2018-10-26 14:32:18.516868');
INSERT INTO `django_session` VALUES ('s9333wadrnmd1l5q93m71jd6hghx4prm', 'MTZkYTdiZjVlYmY1MTJlMTdjYzAyYzJmNDc5YjEzNjMzNjkxZDQ3Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NTIzMTZkYzYwOGUzZGY4MmQ1ZDUwYTc2ZWE3NWUyOGZlZmU4YjEwIiwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==', '2018-10-26 16:39:26.919838');

-- ----------------------------
-- Table structure for news_news
-- ----------------------------
DROP TABLE IF EXISTS `news_news`;
CREATE TABLE `news_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `checknum` int(11) NOT NULL,
  `classification` varchar(10) NOT NULL,
  `add_times` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_news
-- ----------------------------
INSERT INTO `news_news` VALUES ('1', '河南90后运动员摘得亚残会金牌', '24岁的爱笑的90后姑娘，又拿金牌了。10月9日中午，从印度尼西亚雅加达传来消息，郑州大学体育学院的姑娘李露，拿到了T45/46/47第三届亚洲残疾人运动会田径200米冠军。\r\n\r\n　　照片里，李露身着比赛服，披着鲜艳的五星国旗，笑得格外灿烂。全国残运会冠军、里约残奥会冠军、残疾人世锦赛冠军、亚洲残运会冠军……李露用努力与实力，终于拿到了属于自己的“大满贯”。', 'news/2018/10/TVgz-hktxqai3239835.jpg', '5', 'hot', '2018-10-10 10:40:00.000000');
INSERT INTO `news_news` VALUES ('2', '洛阳市将沿瀍河建隋唐大运河文化公园', '近日，市城乡规划委员会2018年第十次会议召开，审议并原则通过了《洛阳隋唐大运河文化公园景观规划设计方案》《洛宁县城乡总体规划(2017—2035)》《洛阳轨道交通控制中心方案》《隆安东方明珠三期建筑单体设计方案》等。洛阳日报今日继续对相关规划方案进行解读。敬请关注。', 'news/2018/10/00300203755_5fdd830f.jpg', '1', 'life', '2018-10-10 11:05:00.000000');
INSERT INTO `news_news` VALUES ('3', '河洛典故：前倨后恭', '“前倨后恭”，起先傲慢，然后恭敬，形容对人的态度前后截然不同。\r\n\r\n　　这个典故的主人公，是苏秦和他的嫂子。\r\n\r\n　　苏秦，洛阳人，战国时期著名的纵横家、外交家、军事家。\r\n\r\n　　苏秦年轻时拜鬼谷子为师，学习纵横术。学成后，他到秦国劝秦王“连横”，但建议未被采纳。最后，盘缠用完了，他只好穿着草鞋狼狈离开秦国，回到故乡。\r\n\r\n　　“归至家，妻不下纴，嫂不为炊，父母不与言。”苏秦回到老家，妻子不下织布机，嫂子不给他做饭，父母不和他说话。\r\n\r\n　　受此冷遇，苏秦更加发奋读书。读书读困了，他就拿一把锥子，用力刺自己的大腿，以此自省。\r\n\r\n　　苏秦主攻姜太公的兵书，一年后，他将此书研究透了，于是再次出山，游说国君。\r\n\r\n　　这次他游说的主题是“合纵”。他先来到赵国，侃侃而谈，有理有据，说得赵王心花怒放，连连称好，于是封他为宰相，赐其兵车一百辆、锦绣一千匹、白璧一百对、黄金一万镒(yì，古代重量单位，一镒合二十两，一说二十四两)，让他带着这些东西去游说其他国家，共同抗秦。\r\n\r\n　　苏秦成功说动齐、楚、燕、魏、韩五国，加上赵国，六国“合纵”，他被推为“纵约长”，六国都聘他为宰相。\r\n\r\n　　苏秦说服楚王后，回赵国向赵王汇报，途中经过洛阳，周显王听说了，吓得不得了，赶紧派人清扫道路，在洛阳城外迎接他。他的家人都跪在地上，不敢抬起头来看他。\r\n\r\n　　《史记》中记载：“苏秦笑谓其嫂曰：‘何前倨而后恭也？’”\r\n\r\n　　苏秦故意让嫂子难堪，笑着问她：“你为什么以前那么傲慢，现在却这么恭敬？”\r\n\r\n　　他的嫂子回答：“因为你现在官高钱多。”', 'news/2018/10/ac4bd11373f0820221facfa542fbfbedab641b3b.jpg', '11', 'culture', '2018-10-10 11:07:00.000000');
INSERT INTO `news_news` VALUES ('4', '洛阳：描绘“诗和远方”新画卷', '<p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">金秋的河洛大地，风光旖旎，美不胜收。刚刚落幕的2018洛阳河洛文化旅游节好戏连台，吸引了八方来客。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　进入“十三五”以来，我市用抓文化的理念抓旅游、用抓旅游的方法抓文化，着力加快文旅融合步伐，积极发展智慧旅游、全域旅游，为节会活动注入了新活力，推动了文化旅游产业的转型升级和提质增效。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\"><br/></p><p><span style=\"margin: 0px; padding: 0px; border: 0px;\"><img border=\"0\" height=\"532\" src=\"http://news.lyd.com.cn/pic/003/002/039/00300203976_e0d829ed.jpg\" width=\"800\" style=\"margin: 0px auto; padding: 0px; border: 0px; max-width: 300px; height: auto; display: block;\"/></span></p><p><span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 楷体;\">洛邑古城文峰塔</span></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\"><br/></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　<span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><strong style=\"margin: 0px; padding: 0px; border: 0px;\">　文旅融合</strong></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><strong style=\"margin: 0px; padding: 0px; border: 0px;\">　　助推节会创新提升</strong></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　“不出洛阳就能逛国际展会，还能观赏原汁原味的非遗展示，挑选各式各样的特色商品，这样的博览会，多多益善！”今年中秋假期，精品荟萃的首届中原文化旅游产业博览会让前来观展的市民和游客纷纷称赞、流连忘返。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　这场以“创新、融合、共赢、发展”为主题的文化旅游盛会，是今年河洛文化旅游节的一大亮点。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　据悉，首届中原文化旅游产业博览会设置13个主题展区和服务功能区，展览面积达3万平方米，来自国内外的1500多家文化旅游企业参展，让广大市民和游客共享异彩纷呈的文化旅游盛宴；来自俄罗斯、法国、美国等30多个国家和地区的100家国际采购商与中原地区100余家文化旅游企业进行了洽谈对接，助推中原文旅融合、产业转型；来自国内文化旅游领域的行业专家、高校学者齐聚一堂，围绕洛阳文化旅游产业融合发展建言献策……</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　文化是旅游的灵魂，旅游是文化的载体。作为文旅融合的重头戏，本届博览会是我市积极顺应文化旅游融合发展新趋势、推动文化旅游产业转型升级、加快国际文化旅游名城建设的一次全新布局。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　2004年，我市举办首届河洛文化旅游节，目的在于以十一黄金周为中心拉动洛阳秋季旅游市场。近年，河洛文化旅游节影响日益扩大，贴上“河洛文化”这个标签，瞄准“文化旅游”这个市场，正努力打造成既有文化特色又有旅游优势的品牌盛会。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　同时，首届中原文化旅游产业博览会打破路径依赖、拓宽运作视野，首次与河洛文化旅游节两会合一、相互促进，在更深层次、更广领域、更高起点推动文化和旅游深度融合。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　根在河洛——客家文化学术交流会、“丝路起点·异域风情”文艺巡演、百强旅行商(洛阳)采购大会……纵览今年河洛文化旅游节的13项活动安排，基本上都是为“突出文旅融合”而谋，内容与形式不断创新的河洛文化旅游节，正努力“让诗和远方走在一起”。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\"><br/></p><p><span style=\"margin: 0px; padding: 0px; border: 0px;\"><img border=\"0\" height=\"399\" src=\"http://news.lyd.com.cn/pic/003/002/039/00300203975_41e28442.jpg\" width=\"800\" style=\"margin: 0px auto; padding: 0px; border: 0px; max-width: 300px; height: auto; display: block;\"/></span></p><p><span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 楷体;\">皮影表演</span></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\"><br/></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　<span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><strong style=\"margin: 0px; padding: 0px; border: 0px;\">以节惠民</strong></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><strong style=\"margin: 0px; padding: 0px; border: 0px;\">　　群众共享发展成果</strong></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　刚刚过去的十一黄金周，我市游客接待量再创新高。短短七天，前来观光度假的游客超过628万人次。在洛阳，游客不仅能欣赏到美景，还能感受到惠民政策给群众带来的获得感和幸福感。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　今年河洛文化旅游节期间，我市延续了以往的“旅游年票正常使用、文化活动免费看”等惠民措施，在坚持“以节惠民”中，为人们带来一场异彩纷呈的文化旅游盛宴。作为一大亮点，首届中原文化旅游产业博览会不收取任何门票，免费进行非遗等各类文化展演的惠民举措，把博览会变为一场别开生面的文化惠民盛宴。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　依托河洛文化旅游节与文化旅游产业博览会的“节会新组合”，洛阳在与民共享中“分好蛋糕”，写实写深惠民“大文章”。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　文化旅游的盛会，人民群众的节日。近年，我市“以节惠民”重磅举措不断，从去年牡丹文化节推出“旅游年票不受限、部分公园不收费、社会车辆不禁行、餐饮住宿控涨幅”等四项惠民举措，到去年河洛文化旅游节延展惠民范围、丰富惠民内容，扩大为“景区免费或半价，精品剧目预约领票免费看，环城高速免费通行”等惠民大礼包，再到今年牡丹文化节的“5+1”惠民政策，洛阳“以节惠民”不断丰富内涵和刷新样式，直接带动了文化旅游人气的“爆棚”，在市民和游客中留下了好口碑。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　在业内人士看来，以节惠民的“洛阳模式”，体现了共享发展理念和以人为本的执政理念，让本地群众享受到了节会的红利，有利于打破“门票经济”壁垒，推动文化旅游业迈向高质量发展，把节会带来的巨量旅游人次转化成更多效益，使节会真正成为人民的节日、百姓的盛会。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　让群众感到满意的不仅是这些惠民政策。进入“十三五”以来，围绕牡丹文化节和河洛文化旅游节两大节会，我市坚持“以节促建、以节促管、以节推介、利民惠民、全面提升”的办节宗旨，使两大节会成为弘扬优秀文化、促进多产融合、建设美丽城市、幸福广大群众的重要纽带和平台，也推进了各项工作全面提升。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\"><br/></p><p><span style=\"margin: 0px; padding: 0px; border: 0px;\"><img border=\"0\" height=\"579\" src=\"http://news.lyd.com.cn/pic/003/002/039/00300203973_ddf8ac3a.jpg\" width=\"800\" style=\"margin: 0px auto; padding: 0px; border: 0px; max-width: 300px; height: auto; display: block;\"/></span></p><p><span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 楷体;\">参观洛阳博物馆</span></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\"><br/></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　<span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><strong style=\"margin: 0px; padding: 0px; border: 0px;\">以节为媒</strong></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><strong style=\"margin: 0px; padding: 0px; border: 0px;\">　　加快产业转型升级</strong></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　走进新时代，人民群众的美好生活需求不断增长，已从“到此一游”转变为“深度体验”。要让静态的历史文化在旅游产品中活化，满足游客的多元化需求，加快文化旅游产业转型升级是发力的关键。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　今年的政府工作报告明确提出，积极发展智慧旅游、全域旅游，实现文化旅游产业由“老三篇”向“新三篇”、“门票经济”向“产业经济”、“旅游城市”向“城市旅游”的转型升级。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　市旅发委相关负责人表示，围绕“建设国际文化旅游名城”这一目标，我市将依托牡丹文化节、河洛文化旅游节等节会，充分发挥洛阳文化旅游资源优势，着力推动文化旅游产业由“老三篇”向“新三篇”、“门票经济”向“产业经济”、“旅游城市”向“城市旅游”转型发展，打造洛阳文化旅游“升级版”。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　文化旅游产业的竞争也是品牌的竞争。我市将进一步提升牡丹文化节、河洛文化旅游节的国际知名度和影响力，深度开拓海外客源市场，积极引客入洛，把特色鲜明的文化旅游产品推向世界，不断提升文化旅游产业的核心竞争力，擦亮“古今辉映、诗和远方”的城市品牌。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　文化旅游产品有特色才能吸引游客。我市将深入挖掘洛阳特色文化旅游资源，把历史活化为故事、把资源转化为优势，推动文化旅游产业与农业、工业、科技、体育、创意等深度融合，推出更具特色的节会活动，培育更丰富的文化旅游新业态，打造更多精品文化旅游项目。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　借力智慧旅游，将洛阳厚重的历史文化讲好、讲活。我市将着力推进智慧景区、智慧旅行社、智慧酒店等建设，积极推进全市景区、酒店、文化旅游企业建设电子商务平台，开展网上预订、在线支付等电子商务业务，加快建设集城市形象展示、智慧旅游体验、游客咨询投诉服务、旅游产品预订、旅游产业监测、旅游应急指挥、旅游票务服务等于一体的智慧旅游服务中心，以智慧旅游建设推进文化旅游产业转型升级。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　我市还将按照国际旅游目的地标准，持续推进旅游标准化建设，不断完善各城市区、各县(市)的旅游集散中心、旅游咨询网点、旅游交通标志、旅游停车场、自驾车营地、旅游公厕、无障碍设施等旅游基础设施，提升旅游公共服务水平，助推全域旅游发展。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　把文化基因注入旅游资源，为旅游供给丰富文化内涵，着力加快文旅融合步伐，推动文化旅游产业迈向高质量发展。如今的洛阳，正描绘一幅“诗和远方”新画卷。（洛阳日报记者 戚帅华 图片由记者 曾宪平 鲁博 刘冰 摄）</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\"><br/></p><p><span style=\"margin: 0px; padding: 0px; border: 0px;\"><img border=\"0\" height=\"392\" src=\"http://news.lyd.com.cn/pic/003/002/039/00300203977_93ecf7e7.jpg\" width=\"800\" style=\"margin: 0px auto; padding: 0px; border: 0px; max-width: 300px; height: auto; display: block;\"/></span></p><p><span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 楷体;\">洛浦风光</span></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\"><br/></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　<span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><strong style=\"margin: 0px; padding: 0px; border: 0px;\">　连线基层</strong></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><strong style=\"margin: 0px; padding: 0px; border: 0px;\">　　“以节惠民”效应明显</strong></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　今年十一黄金周，家住老城区的孙磊和朋友一起去龙门石窟、关林等景区游玩，他们是刷旅游年票进入景区的。“在没有取消旅游年票使用限制之前，只有在外地亲戚朋友来洛阳时，才会去这些景区逛一逛。现在拿着旅游年票逛景区不用再买票，在洛阳游玩变得更自在了。”说起旅游年票惠民政策，孙磊不住地称赞。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　今年河洛文化旅游节期间，洛阳旅游年票仍可正常使用，旅游年票所涵盖的景区都设有绿色通道，越来越多的居民持旅游年票赏花观景，惠民政策让市民得到了实实在在的实惠。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　<span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><strong style=\"margin: 0px; padding: 0px; border: 0px;\">　声音</strong></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　洛阳文化旅游资源丰富，发展文化旅游有着得天独厚的优势。近年，洛阳的文化旅游品牌知名度不断提高，但在国际上的宣传和推广还不够，应持续加强国际化视野“营销”洛阳，进一步提升洛阳的国际知名度和影响力，叫响洛阳文化旅游品牌。</p><p><br/></p>', 'news/2018/10/00300203976_e0d829ed.jpg', '4', 'culture', '2018-10-11 10:41:00.000000');
INSERT INTO `news_news` VALUES ('5', '30多个国家300余位知名摄影家用镜头推介洛阳', '<p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">作为今年河洛文化旅游节重大活动之一，第二十六届亚洲影艺联盟大会暨“世界摄影家看洛阳”摄影采风活动于近日圆满落幕。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　此次活动由河南省摄影家协会、亚洲影艺联盟、丝路影像国际联盟、洛阳市摄影家协会共同主办，以“新时代、新丝路、新影像”为主题。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　作为此次活动主办方之一的亚洲影艺联盟，由摄影大师郎静山联合亚洲多个国家(地区)的主要摄影团体共同创立，是经国际影艺联盟(FIAP)认可的世界四大摄影组织之一。</p><p><span style=\"margin: 0px; padding: 0px; border: 0px;\"><img border=\"0\" height=\"600\" src=\"http://news.lyd.com.cn/pic/003/002/035/00300203533_2bbd1d33.jpg\" width=\"450\" style=\"margin: 0px auto; padding: 0px; border: 0px; max-width: 300px; height: auto; display: block;\"/></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 楷体;\">游龙门 张翠玲 摄</span></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　在此次活动期间，来自日本、缅甸、斯里兰卡、泰国、印度尼西亚、印度、新加坡、马来西亚等30多个国家及中国台湾、香港、澳门的300余位知名摄影家，走进龙门石窟、白马寺、魏家坡、三彩小镇、爱和小镇等景点。洛阳厚重的历史文化、时尚的城市风貌、美丽的自然风光和独特的风俗民情，给摄影家们留下深刻印象。他们纷纷表示，要再到洛阳一游。一名来自缅甸的摄影家说，古都洛阳有看不完的景色和拍不完的摄影题材。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\"><br/></p><p><span style=\"margin: 0px; padding: 0px; border: 0px;\"><img border=\"0\" height=\"600\" src=\"http://news.lyd.com.cn/pic/003/002/035/00300203532_58dcd1b9.jpg\" width=\"800\" style=\"margin: 0px auto; padding: 0px; border: 0px; max-width: 300px; height: auto; display: block;\"/></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: center;\"><span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 楷体;\">看过来 韩建斌 摄</span></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　在此次活动期间，还举办了“花与世界——国际摄影大展”“丝路影像——世界摄影师获奖作品展”“丝路传奇——四国摄影交流展”“世界的眼睛——‘亚洲影艺联盟’‘丝路影像国际联盟’成员组织交流展”四场大型摄影展览，并出版同名画册。</p><p><span style=\"margin: 0px; padding: 0px; border: 0px;\"><img border=\"0\" height=\"600\" src=\"http://news.lyd.com.cn/pic/003/002/035/00300203531_d3520204.jpg\" width=\"800\" style=\"margin: 0px auto; padding: 0px; border: 0px; max-width: 300px; height: auto; display: block;\"/></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: center;\"><span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 楷体;\">爱和小镇 关建华 摄</span></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　此次活动的一大亮点是在洛宁县三彩(国际)陶艺村建立了国际摄影创作基地。该创作基地落户我市，将吸引更多来自世界各地的知名摄影家走进洛阳，用细腻的光影向世界推介古都洛阳，通过艺术扶贫、摄影扶贫，进一步助推洛阳文化旅游产业发展，提升洛阳的知名度。</p><p><br/></p>', 'news/2018/10/00300203530_d346d26b.jpg', '2', 'hot', '2018-10-11 10:59:00.000000');
INSERT INTO `news_news` VALUES ('6', '首届中原文化旅游产业博览会圆满落幕', '<p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">昨日，首届中原文化旅游产业博览会在洛阳会展中心圆满落幕。本届博览会共接待观展市民和游客3.8万人次，这场以“创新、融合、共赢、发展”为主题的文化旅游盛会，在3天的时间里可谓盛况空前亮点纷呈。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\"><br/></p><p><span style=\"margin: 0px; padding: 0px; border: 0px;\"><img border=\"0\" height=\"533\" src=\"http://news.lyd.com.cn/pic/003/002/007/00300200781_d74fd6de.jpg\" width=\"800\" style=\"margin: 0px auto; padding: 0px; border: 0px; max-width: 300px; height: auto; display: block;\"/></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 楷体;\">搭建“一带一路”交流合作平台</span></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　<span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><strong style=\"margin: 0px; padding: 0px; border: 0px;\">-文旅融合捧盛宴</strong></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　首届中原文化旅游产业博览会共设出彩中原馆、“一带一路”国际馆、印象洛阳馆3个展馆，展览面积达3万平方米，来自国内外的1500多家文化旅游企业参展，展览面积大，参展企业多。博览会设置有序馆、出彩中原展区、省辖市精品展区、陶瓷源陶瓷大师精品展区、博物馆之都(文博)展区、书香满城展区、非遗展区、全域旅游展区、智慧文旅展区、工美文创展区、休闲生活展区、中原文创旅游产品大赛暨“老家礼物”评选区、“一带一路”(国际)展区等13个主题展区和服务功能区，内容丰富、精品荟萃，让广大市民和游客共享异彩纷呈的文化旅游盛宴。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　<span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><strong style=\"margin: 0px; padding: 0px; border: 0px;\">- “国际采购”成果丰</strong></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　在本届博览会期间举办的“一带一路”国际采购洽谈会上，来自西班牙、意大利、俄罗斯、法国、美国、澳大利亚、埃及、土耳其等30多个国家和地区的100家国际采购商与中原地区100余家文化旅游企业进行了洽谈对接，最终达成合作意向36个，总金额达4.3亿美元，为中原地区深化同世界各国交流合作搭建了重要平台。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　本届博览会期间，还以“文旅新时代、产融新思路”为主题，举办了“一带一路”文化旅游产业论坛。论坛上，来自国内文化旅游领域的行业专家、高校学者齐聚一堂，围绕洛阳文化旅游产业融合发展、文化旅游品牌打造等话题建言献策，助推我市文化旅游产业发展。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　<span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><strong style=\"margin: 0px; padding: 0px; border: 0px;\">-会场展示“国际范儿”</strong></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　巴基斯坦的玉石、印度的铜雕、西班牙的葡萄酒……本届博览会设置有“一带一路”(国际)展区，吸引了来自西班牙、意大利、法国、德国、俄罗斯、加拿大、澳大利亚、韩国、泰国、马来西亚、印度、日本、加纳、肯尼亚等30多个国家和地区的企业参展，参展商品包括陶瓷工艺品、木制工艺品、玉石工艺品及燕窝、咖啡、葡萄酒等，国际化、多元化的元素更丰富，让市民在家门口就能观赏和购买异域特色商品。</p><p><span style=\"margin: 0px; padding: 0px; border: 0px;\"><img border=\"0\" height=\"524\" src=\"http://news.lyd.com.cn/pic/003/002/007/00300200782_e17693d3.jpg\" width=\"800\" style=\"margin: 0px auto; padding: 0px; border: 0px; max-width: 300px; height: auto; display: block;\"/></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: center;\"><span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 楷体;\">开创文旅融合新时代</span></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　<span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><strong style=\"margin: 0px; padding: 0px; border: 0px;\">　-文化精品“讲故事”</strong></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　本届博览会注重展示文化精品，其中，博物馆之都(文博)展区集中展示我市“博物馆之都”建设亮点，非遗展区展示了6个国家级、11个省级非物质文化遗产代表性项目。除了我市的洛阳宫灯、孟津剪纸、洛宁竹编等，还有灵宝皮影戏、淮阳泥泥狗、开封汴绣等外地的非遗项目，让观众大饱眼福。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　<span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><strong style=\"margin: 0px; padding: 0px; border: 0px;\">　-互动体验魅力足</strong></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　本届博览会上，一些高科技企业带来了智能语音交互机器人、VR(虚拟现实)和AR(增强现实)等体验设备，参观者带上VR设备，就可以在一些景区虚拟漫游，通过智慧化手段增强旅游产品与游客的互动性。同时，我市文化旅游产业在智慧化体验、智慧化管理、智慧化营销等方面的亮点也得到展示，展现了科技与文化旅游产业融合的魅力。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　<span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><strong style=\"margin: 0px; padding: 0px; border: 0px;\">-文创产品促升级</strong></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　本届博览会期间举办了中原文创旅游产品大赛暨“老家礼物”评选活动，吸引了来自河南、安徽、山东、陕西、山西等地的200多家企业参展，参展作品500多件，涉及陶艺、瓷器、刺绣、竹编、剪纸等。其中，我市多件参展商品获奖。大赛旨在引导本地企业创新开发理念，推出更多特色鲜明、内涵丰富、便捷实用的文创旅游产品，为全市文创旅游产品创新升级带来更多动力。</p><p><br/></p>', 'news/2018/10/00300200783_0cabb0bc.jpg', '1', 'active', '2018-10-11 11:01:00.000000');
INSERT INTO `news_news` VALUES ('7', '洛阳地铁1号线又有两个隧洞单线贯通', '<p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">昨日，我市地铁建设又传来好消息——地铁1号线应天门站至丽景门站区间、史家湾站至杨湾站区间实现单线洞通！至此，地铁1号线全线已实现三条隧道贯通。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\"><img src=\"http://news.lyd.com.cn/pic/003/002/019/00300201907_785dd758.jpg\"/></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　<span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><strong style=\"margin: 0px; padding: 0px; border: 0px;\">地铁1号线应天门站至丽景门站区间南线贯通</strong></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　此次洞通的为地铁1号线应天门站至丽景门站区间南线，全长780米，服役的盾构机是“牡丹13号”，它于5月29日从应天门站始发，9月27日该条隧道贯通。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　这台盾构机直径6.47米，巨型娇艳的状元红牡丹在盾构机刀盘上“绽放”，它还开过“粉丝见面会”，不少晚报的幸运读者还到现场见识过它的高颜值。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　当记者再次看到它时，它斑驳的刀盘上满是黏土、砂石。该区间盾构负责人张雄介绍，同样彩绘的盾构机在郑州、西安等地施工完毕时，都还能看到原貌，但我市地质层结构复杂，该作业区域卵石含量及砂层块石含量高，对刀盘的磨损较为严重，导致“牡丹13号”的容颜受损严重，最严重的部位刀片磨损了2.5厘米左右，好的地方刀片也被磨损0.6厘米。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　“接下来，‘牡丹13号’将被送回厂里进行修整，更换部件，然后重新上岗。”张雄说，预计10月20日前后它将从地铁1号线应天门站出发，向周王城广场站掘进。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　<span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><strong style=\"margin: 0px; padding: 0px; border: 0px;\">史家湾站至杨湾站：一口气“行进”1.6公里不换刀，全国罕见</strong></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　此次洞通的还有地铁1号线史家湾站至杨湾站区间北线，该段长1621米，服役的盾构机为“牡丹2号”，它于3月31日从史家湾站始发，9月28日该条隧道贯通。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　该区间是我市地铁1号线正线施工最长的区间，也是地质结构最复杂的区间，整个施工区处于砂卵石混合板结层，且地下水丰沛，施工难度大。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　“在这样的地质条件下，通常盾构机每掘进500米左右就需要更换一次刀片。”该区间段项目负责人王小刚说，更换一次刀片通常会延误一个半月的工期，且盾构停滞段容易出现地面沉降，不但给施工人员带来安全隐患，也易引发地面道路沉陷，影响市民出行安全。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　为避免中途更换刀片，该区间承建单位定制了盾构机，将液压驱动改为电机驱动，使得盾构机动力更足、提速更快，避免了刀片卡死的情况。此外刀盘、刀片均进行了改良，增加了刀片数量和刀盘的耐磨性。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　承建单位还专门从成都等地调来6名有相同地质条件施工工作经验的司机，制定了严密的渣土改良方法，准确控制各项技术参数，使盾构机花最少的损耗行进最长的距离。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　最终，“牡丹2号”完成了掘进6个月、1.6公里不更换刀片的壮举，这在全国同等地质条件施工中都属罕见。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　<span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><strong style=\"margin: 0px; padding: 0px; border: 0px;\">预计10月底，地铁1号线将有6条隧道实现贯通</strong></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　市轨道交通有限公司工程一部副部长康跃进介绍，截至目前，洛阳地铁1号线18个车站已全部进入主体结构施工，并已累计下井15台盾构机，累计掘进8000多米。已实现贯通的3条隧道分别是塔湾站至史家湾站区间南线、应天门站至丽景门站区间南线、史家湾站至杨湾站区间北线。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　根据施工计划，预计10月底，史家湾站至杨湾站区间南线、应天门站至丽景门站区间北线、塔湾站至启明南路站区间北线也将贯通。届时，地铁1号线将有6条隧道实现贯通，其中史家湾站至杨湾站、应天门站至丽景门站均为双洞贯通。</p><p><br/></p>', 'news/2018/10/00300201907_785dd758.jpg', '2', 'hot', '2018-10-11 11:02:00.000000');
INSERT INTO `news_news` VALUES ('8', '“双创”英才 洛城探秘', '<p><span style=\"margin: 0px; padding: 0px; border: 0px;\"><img border=\"0\" height=\"396\" src=\"http://news.lyd.com.cn/pic/003/002/044/00300204463_22935061.jpg\" width=\"600\" style=\"margin: 0px auto; padding: 0px; border: 0px; max-width: 300px; height: auto; display: block;\"/></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: center; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　<span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 楷体;\">洛阳北玻研制的4.5米世界最大弧长弯钢玻璃</span></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　13日上午，在洛参加第七届中国创新创业大赛先进制造行业总决赛的先进制造参赛企业代表，参观了东方红农耕博物馆、中国一拖、洛阳北玻、金鹭公司、洛阳博物馆，感悟洛阳当地先进制造优秀企业的创新精神，感受河洛大地积极创新创业的氛围。这是参赛企业代表在中国一拖生产线，感受“共和国制造”及背后的创新精神。</p><p><br/></p>', 'news/2018/10/00300204462_64b4dfa2.jpg', '3', 'culture', '2018-10-15 09:57:00.000000');
INSERT INTO `news_news` VALUES ('9', '洛阳牡丹', '<p><a href=\"http://shop.bytravel.cn/produce/738B9EBB5B50526A5200/\" style=\"color: rgb(0, 0, 153); text-decoration-line: none;\"><img src=\"http://h2.bytravel.cn/shop/head/120.gif\" hspace=\"2\" vspace=\"2\" class=\"hpic\" alt=\"洛阳牡丹\" style=\"border: 1px solid rgb(170, 170, 170);\"/></a></p><p></p><p>洛阳牡丹为地理标志保护产品。</p><p>　　洛阳是著名的牡丹之乡，有许多吟咏赞美牡丹的诗句留传于世，唐代诗人刘禹锡就有“唯有牡丹真国色，花开时节动帝京”的诗句，到了宋代诗人李正封的“国色朝酣酒，天香染夜衣”一句更使牡丹获得了“国色天香”的称号。&nbsp;<br/></p><p style=\"line-height: 22.4px; margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><br/></p><p style=\"line-height: 22.4px; margin-top: 0px; margin-bottom: 0px; padding: 0px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;洛阳牡丹千姿百态，根据颜色、花形、产地、种植等不同特点，可以分成90多个品种，其中以“姚黄”、“魏紫”最是有名。&nbsp;<br/></p><p style=\"line-height: 22.4px; margin-top: 0px; margin-bottom: 0px; padding: 0px;\">　　　　　　 春日赏牡丹的习俗由来以久，最早始于唐代，赏花时间最长可达20多天。从1982年开始，洛阳市把每年的4月15日至25日定为“牡丹花会”，在赏花的同时还举办丰富多彩的灯展、诗会、影展、书画展等文化娱乐活动，每年花会期间，中外游客纷至沓来，络绎不绝，盛况空前。</p><p><br/></p>', 'news/2018/10/mudan.jpg', '1', 'specialty', '2018-10-15 10:25:00.000000');
INSERT INTO `news_news` VALUES ('10', '孟津黄河鲤鱼', '<p><span style=\"font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">　“黄河三尺鲤，本在</span><a href=\"http://shop.bytravel.cn/produce/index994.html\" target=\"_blank\" class=\"blue\" style=\"color: rgb(0, 0, 153); font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">孟津</a><span style=\"font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">居”。这里所产鲤鱼尾巴浅红、肚皮鲜白，肉质细嫩，味道鲜美，无泥腥味，营养丰富，滋补健身，为宴席佳肴。</span></p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\">　　孟津<a href=\"http://shop.bytravel.cn/produce/9EC46CB39CA49C7C/\" target=\"_blank\" class=\"blue\" style=\"color: rgb(0, 0, 153);\">黄河鲤鱼</a>是<a href=\"http://shop.bytravel.cn/produce/index124.html\" target=\"_blank\" class=\"blue\" style=\"color: rgb(0, 0, 153);\">河南</a>省<a href=\"http://shop.bytravel.cn/produce/index221.html\" target=\"_blank\" class=\"blue\" style=\"color: rgb(0, 0, 153);\">洛阳</a>市孟津县的特产。孟津以东黄河河道开始放宽，河床宽而浅，含沙量少，透明度高，水中富含鱼类生长所需的各种营养盐类，此处的鲤鱼因而味道鲜美。</p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\">　　唐朝大诗人李白曾赋诗：“黄河三尺鲤，本在孟津居，点额不成龙，归来伴凡鱼。”这恐怕是孟津红烧黄河鲤鱼最好的广告词。</p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\">　　孟津县会盟镇调优水产养殖品种结构，突出特色产业。大力发展黄河鲤鱼养殖生产，加快黄河鲤鱼产业的发展，打造洛阳最大的万亩无公害黄河鲤鱼养殖基地，计划年产3万吨、实现产值4亿元。</p><p><br/></p>', 'news/2018/10/liyu.jpg', '0', 'specialty', '2018-10-15 10:28:00.000000');
INSERT INTO `news_news` VALUES ('11', '洛阳唐三彩', '<p><a href=\"http://shop.bytravel.cn/produce/index221.html\" target=\"_blank\" class=\"blue\" style=\"color: rgb(0, 0, 153); font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">洛阳</a><a href=\"http://shop.bytravel.cn/produce/55104E095F69/\" target=\"_blank\" class=\"blue\" style=\"color: rgb(0, 0, 153); font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">唐三彩</a><span style=\"font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">品种繁多，内容丰富，囊括了当时社会生活的各个方面。唐三彩主要用作陪葬明器，有俑像类和生活器皿类。俑像类主要有人物俑和动物俑。人物俑题材广泛，主要有妇女、文吏俑、武士俑等。唐三彩女俑取材于唐代社会活生生的女性人物，有立俑、坐俑、乐舞俑、乐唱俑、骑马俑、对镜梳妆俑等，着重表现唐代妇女姿态自由、面容丰腴、肌肤细腻、双手纤巧、两足丰柔的形象。文吏俑是唐朝社会文臣的形象，在社会上有较高的社会地位和优裕的生活条件。但“伴君如伴虎”，所以这些人物文静端庄、思绪深沉、气派不凡，虽说衣帽齐整、峨冠博带，仍不能掩饰内心的惶恐。武士俑，是唐王朝武装力量的缩影，多为英俊潇洒的年轻战士，有的站立，有的骑马，拉弓射箭。唐三彩器胡人、乐舞、杂技俑中从另一个侧面表现出唐人生活的多样化，丰富化，可谓千姿百态，色彩纷呈。再现了唐代盛世时中原与边疆各族人民</span><a href=\"http://shop.bytravel.cn/produce/index2998.html\" target=\"_blank\" class=\"blue\" style=\"color: rgb(0, 0, 153); font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">友好</a><span style=\"font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">相处、中外频繁交往的情景。</span></p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\">　　洛阳出土的唐三彩已有300多个品种，生动地反映出当时繁荣的社会面貌和精湛的釉陶工艺。洛阳龙门<a href=\"http://beijing.bytravel.cn/Scenery/xiangshan/\" target=\"_blank\" class=\"blue\" style=\"color: rgb(0, 0, 153);\">香山</a>出土的三彩高颈瓶，是仿照佛教法器中的净水瓶烧制的，而龙首杯、凤首壶则是仿西亚流行的兽首杯、扁壶制成的。</p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\">　　从近年出土的三彩器物分析，盛唐是唐三彩制作的极盛时期，品种丰富，做工精美，产量巨大；天宝以后数量逐渐减少；安史之乱以后，其制作进入尾声，逐渐衰落。唐代三彩釉工艺对宋三彩和清三彩都有影响，在<a href=\"http://japan.bytravel.cn/\" target=\"_blank\" class=\"blue\" style=\"color: rgb(0, 0, 153);\">日本</a>曾仿制成所谓“<a href=\"http://japan.bytravel.cn/Scenery/Nara/\" target=\"_blank\" class=\"blue\" style=\"color: rgb(0, 0, 153);\">奈良</a>三彩”，<a href=\"http://as.bytravel.cn/v/26/\" target=\"_blank\" class=\"blue\" style=\"color: rgb(0, 0, 153);\">朝鲜</a>半岛曾仿制成所谓“<a href=\"http://shop.bytravel.cn/produce/index958.html\" target=\"_blank\" class=\"blue\" style=\"color: rgb(0, 0, 153);\">新罗</a>三彩”。在今<a href=\"http://as.bytravel.cn/v/68/\" target=\"_blank\" class=\"blue\" style=\"color: rgb(0, 0, 153);\">乌兹别克</a>斯坦撒马尔罕出土有三彩碗，今<a href=\"http://as.bytravel.cn/v/72/\" target=\"_blank\" class=\"blue\" style=\"color: rgb(0, 0, 153);\">伊拉克</a>、<a href=\"http://as.bytravel.cn/v/76/\" target=\"_blank\" class=\"blue\" style=\"color: rgb(0, 0, 153);\">伊朗</a>、<a href=\"http://as.bytravel.cn/v/58/\" target=\"_blank\" class=\"blue\" style=\"color: rgb(0, 0, 153);\">叙利亚</a>、<a href=\"http://aftour.bytravel.cn/v/3/\" target=\"_blank\" class=\"blue\" style=\"color: rgb(0, 0, 153);\">埃及</a>和<a href=\"http://aftour.bytravel.cn/v/16/\" target=\"_blank\" class=\"blue\" style=\"color: rgb(0, 0, 153);\">苏丹</a>境内都发现有洛阳唐三彩，充分说明了当地人对唐三彩的喜爱，这也是唐代洛阳对外文化交流、通商贸易的重要物证。１９７６年，在洛阳附近<a href=\"http://shop.bytravel.cn/produce/index698.html\" target=\"_blank\" class=\"blue\" style=\"color: rgb(0, 0, 153);\">巩义</a>市（唐时为洛州巩县）的小黄冶、<a href=\"http://shop.bytravel.cn/produce/59279EC4/\" target=\"_blank\" class=\"blue\" style=\"color: rgb(0, 0, 153);\">大黄</a>冶发现三彩窑址、作坊，经考证，是当时洛阳唐三彩的重要产地。</p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\">　　唐三彩的制作工艺十分复杂。除少数红陶胎为普通陶土烧制外，多数采用比较纯净的白色高岭土烧制。这种土具有很强的可塑性，晾干时不会开裂。唐三彩的制作工艺较为复杂，先将高岭土舂捣、洗滤、制胎，再将制好的坯胎放在窑内烧至１１００℃左右，然后取出挂彩施釉，再入窑内以９００℃左右的氧化焰进行第二次焙烧，就可以生产出绚丽多彩的各种器物。三彩釉质的主要成分是硅酸铝，呈色剂则为种类不同的金属氧化物，如浅黄为铁或锑、褐黄为铁、绿为铜、蓝为铜或钴、紫为锰。用得最多的三种颜色是黄、绿、白，还有蓝、赭、紫、黑等。釉中的铅质助溶剂使釉汁在烧制品上流淌，形成丰富瑰丽的变化，所谓三彩实则釉色变化多端，并非只有三种颜色。</p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\">　　唐三彩是中国古代<a href=\"http://shop.bytravel.cn/produce/967674F7/\" target=\"_blank\" class=\"blue\" style=\"color: rgb(0, 0, 153);\">陶瓷</a>艺术宝库中一朵绚丽夺目的奇葩，是中国唐代工艺美术的精华之作，它吸纳了中国绘画、<a href=\"http://usa.bytravel.cn/jd/Sculpture/\" target=\"_blank\" class=\"blue\" style=\"color: rgb(0, 0, 153);\">雕塑</a>等工艺美术的优点，采用印花、堆贴、刻画等形式的装饰图案，造型浑厚丰满，工整细腻，线条简朴、流畅，具有独特的艺术风格和鲜明的民族特色。</p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\">　　自清光绪年间在洛阳发现首批唐三彩以来，中外古董商争相来洛阳重金购买。为满足当时文物界对唐三彩的需求，洛阳一带出现了<a href=\"http://shop.bytravel.cn/produce/4EFF55104E095F69/\" target=\"_blank\" class=\"blue\" style=\"color: rgb(0, 0, 153);\">仿唐三彩</a>的作坊，开始了仿唐三彩的制作，但仿品粗糙，效果不佳。新中国成立后，在中央领导的关注下，设立专门机构研究唐三彩的制作工艺，使“洛阳唐三彩”的制作工艺和技术水平达到了一个新的高度。目前，洛阳生产唐三彩的工厂多达数十家，尤以洛阳<a href=\"http://shop.bytravel.cn/produce2/7F8E672F967674F7.html\" target=\"_blank\" class=\"blue\" style=\"color: rgb(0, 0, 153);\">美术陶瓷</a>厂生产的“九都牌”唐三彩最为有名。</p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\">　　洛阳唐三彩曾作为国家珍贵礼品，赠送给30多个国家的元首和政府首脑。目前，唐三彩仍然是古都洛阳传统的出口商品，远销世界五十多个国家和地区，深受世界各国人民的青睐。</p><p><br/></p>', 'news/2018/10/tangsancai.jpg', '0', 'specialty', '2018-10-15 10:32:00.000000');
INSERT INTO `news_news` VALUES ('12', '不翻汤', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255);\">洛阳不翻汤是一道色香味俱全的地方传统名吃。味道纯正、酸辣利口、油而不腻。已有120多年的历史。用小勺舀一些稀绿豆面糊往平底锅里一倒,即成一张类似春卷的薄片,不用翻个就熟,所以就叫&quot;不翻&quot;。再把两张晶莹翠绿的&quot;不翻&quot;叠着放在碗里，舀些滚烫的猪骨头汤浇在上面，放上些粉条、木耳等，还放些醋、胡椒粉，这样一碗不翻汤就做好了。</span></p>', 'news/2018/10/bufantang.jpg', '4', 'food', '2018-10-15 10:34:00.000000');
INSERT INTO `news_news` VALUES ('13', '双11，洛阳人花了8亿多元 收发快件1390万件', '<p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　“双11”买的东西，您都收到了吗？</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　阿里巴巴数据显示，今年“双11”，洛阳人贡献了8.236亿元，比去年多花了2.403亿元。昨日下午，记者从市邮政管理局了解到，我市今年“双11”期间(11日至16日)的快件业务量达到1390万件，比去年“双11”的989.78万件增加约400万件。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　1390万件是啥概念？</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　以平均每个快件20厘米长来计算，如果把这些快件连起来，其长度将达到2780公里</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　几乎可以从洛阳排到乌鲁木齐</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　这段距离，我们开车走高速公路(以时速100公里计算)，跑一天一夜还跑不完</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　在百度地图上测算洛阳到乌鲁木齐的距离约为2896公里</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\"><span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><strong style=\"margin: 0px; padding: 0px; border: 0px;\">在这6天里</strong></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\"><span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><strong style=\"margin: 0px; padding: 0px; border: 0px;\">　　我市平均每分钟收发件约1609件</strong></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　●平均到我市快递行业3500余名从业人员身上</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　●平均每人每天要发送快件约620件</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　当然，这已经远远超出了快递员的日工作量，所以各快递品牌普遍在“双11”期间聘请“外援”，比如来自我市各高校勤工助学的大学生等。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　以平均每个快件1公斤来计算</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　这些快件摞在一起的重量将达1.39万吨</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　每头成年亚洲象的体重约为5吨</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　也就是说今年“双11”我市全部快件的重量相当于2780头成年亚洲象</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　在这1390万件快件中</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">进港量(由外地发往我市)达560万件</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　同比增长约34.4%</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　出港量(由我市发往外地)达450万件</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　同比增长约51%</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　中转量达380万件</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　同比增长约38.6%</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　而在2017年“双11”期间，我市快件的进港量为416.86万件，出港量为298.83万件，经我市中转的快件量达到274.09万件。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　<span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><strong style=\"margin: 0px; padding: 0px; border: 0px;\">我市快递数据速读</strong></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　33目前全市快递品牌33个</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　3百世汇通、圆通、韵达排我市“双11”快件量前3名</p><article id=\"article-CEVMA6N600018AOR\" style=\"margin: 0px 0px 0.2rem; padding: 0px 0.3rem 0.4rem; border-bottom: 1px solid rgb(230, 230, 230); background-color: rgb(246, 246, 246);\"><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　800全市自动智能快递柜目前有800多组，洛龙区最多</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　2在国家邮政局发布的2017年快递服务满意度调查结果中，洛阳在50个样本城市中排名第2位</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　99.6我市的揽收件实名录入率在99.6%以上</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　在1390万件的背后，是“快递+”战略及末端派送能力的增强：</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　<span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><strong style=\"margin: 0px; padding: 0px; border: 0px;\">“快递+”战略</strong></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　目前，我市已经实现乡镇快递100%覆盖，初步搭建起“农产品进城和工业品下乡”的通道，日发货量达到5.5万件，网络销售量连年提升。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　偃师布鞋、新安樱桃、洛阳牡丹、洛宁苹果等走出洛阳，走向各地。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　<span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 128);\"><strong style=\"margin: 0px; padding: 0px; border: 0px;\">快递“三进”工程</strong></span></p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify;\">　　“三进”即进机关、进社区、进高校，是破解“最后一公里”投递难题的关键。</p></article>', 'news/2018/11/kuaidi.jpeg', '0', 'active', '2018-11-12 11:34:00.000000');
INSERT INTO `news_news` VALUES ('14', '央视纪录片《大戏记忆》在洛拍摄', '<p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　记者昨日从市文广新局获悉，日前，央视大型纪录片《大戏记忆》豫剧篇《穆桂英挂帅》在我市取景拍摄，97岁高龄的马金凤先生专程参与，还与戏迷朋友进行了互动。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　豫剧《穆桂英挂帅》是豫剧大师马金凤的代表剧目，该剧一经问世就引起轰动，独创了我国戏剧表演艺术中“帅旦”这一行当。数十年来，由马金凤主演的豫剧《穆桂英挂帅》红遍大江南北，成为豫剧“马派”的优秀传统保留剧目。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　市文广新局相关负责人介绍，纪录片在洛拍摄期间，97岁高龄的马金凤先生专程参与，还同戏迷朋友进行了互动。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　记者了解到，纪录片《大戏记忆》豫剧篇选取了《花木兰》《穆桂英挂帅》《程婴救孤》三个剧目进行拍摄。该片以大戏为载体，挖掘大戏背后的鲜活人物和动人故事，同时运用新的技术手段，使中国传统戏曲艺术与当下先进的虚拟现实技术相融合，从而更好地传播和弘扬戏曲艺术。</p><p><br/></p>', 'news/2018/11/c67fb8715a2190683b0926576d37ef00.jpg', '0', 'active', '2018-10-20 11:38:00.000000');
INSERT INTO `news_news` VALUES ('15', '第五届龙门诗会举行', '<p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">18日晚，第五届龙门诗会在洛阳师范学院举行。如水夜色中，饱含深情的朗诵为观众呈献了一场诗词盛宴。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　本届诗会围绕“运河诗情”主题，分为水运、物运、城运、国运4个篇章，节目异彩纷呈。中国作家协会诗歌委员会主任、《诗刊》原主编叶延滨，《中国作家》杂志社文学部主任方文，中国诗歌学会理事张况，《北京文学》杂志社主编助理王童等诗人参加诗会。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　从2014年至今，龙门诗会已成功举办5届，先后邀请余光中、汪国真、郑愁予等20多位海内外著名诗人、学者，以诗歌为媒介，传承河洛文化，进行文化交流。</p><p><br/></p>', 'news/2018/11/146111130.jpg', '0', 'active', '2018-10-10 09:41:00.000000');

-- ----------------------------
-- Table structure for operation_activecomments
-- ----------------------------
DROP TABLE IF EXISTS `operation_activecomments`;
CREATE TABLE `operation_activecomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `active_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_activecomm_active_id_fa517fb5_fk_scenicspo` (`active_id`),
  KEY `operation_activecomments_user_id_ae1153b0_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `operation_activecomm_active_id_fa517fb5_fk_scenicspo` FOREIGN KEY (`active_id`) REFERENCES `scenicspots_active` (`id`),
  CONSTRAINT `operation_activecomments_user_id_ae1153b0_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_activecomments
-- ----------------------------
INSERT INTO `operation_activecomments` VALUES ('1', '龙门石窟是洛阳最经典的景点，其中西山石窟是龙门最精华的部分，包括奉先寺的卢舍那佛像和古阳洞中的“龙门二十品”', '2018-11-19 17:07:42.503174', '2', '1');
INSERT INTO `operation_activecomments` VALUES ('2', '独立成团·私家享受,完美！', '2018-11-20 10:10:49.023945', '3', '1');

-- ----------------------------
-- Table structure for operation_diarycomments
-- ----------------------------
DROP TABLE IF EXISTS `operation_diarycomments`;
CREATE TABLE `operation_diarycomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `diary_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_diarycomments_diary_id_a5054431_fk_diarys_diary_id` (`diary_id`),
  KEY `operation_diarycomments_user_id_90fe7301_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `operation_diarycomments_diary_id_a5054431_fk_diarys_diary_id` FOREIGN KEY (`diary_id`) REFERENCES `diarys_diary` (`id`),
  CONSTRAINT `operation_diarycomments_user_id_90fe7301_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_diarycomments
-- ----------------------------
INSERT INTO `operation_diarycomments` VALUES ('1', '一般化', '2018-10-31 15:20:43.142073', '76', '1');
INSERT INTO `operation_diarycomments` VALUES ('2', '还可以', '2018-10-31 15:44:29.000000', '75', '19');
INSERT INTO `operation_diarycomments` VALUES ('3', '学习了', '2018-10-31 15:49:02.384543', '75', '1');
INSERT INTO `operation_diarycomments` VALUES ('4', '很好', '2018-10-31 15:49:58.802799', '75', '19');
INSERT INTO `operation_diarycomments` VALUES ('5', 'hahahahahahhahah', '2018-10-31 15:51:28.044170', '75', '1');
INSERT INTO `operation_diarycomments` VALUES ('6', '好好好好好', '2018-10-31 16:17:25.236691', '75', '1');
INSERT INTO `operation_diarycomments` VALUES ('7', '很好很好很好！', '2018-11-14 15:31:24.000000', '75', '19');

-- ----------------------------
-- Table structure for operation_productcomments
-- ----------------------------
DROP TABLE IF EXISTS `operation_productcomments`;
CREATE TABLE `operation_productcomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(25) NOT NULL,
  `comments` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_productcomments_product_id_07f2dc10_fk_shop_product_id` (`product_id`),
  KEY `operation_productcomments_user_id_c7452db3_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `operation_productcomments_product_id_07f2dc10_fk_shop_product_id` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`),
  CONSTRAINT `operation_productcomments_user_id_c7452db3_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_productcomments
-- ----------------------------
INSERT INTO `operation_productcomments` VALUES ('1', '1541999329971653321', '很好看的摆件！', '2018-11-12 16:22:17.564157', '6', '1');

-- ----------------------------
-- Table structure for operation_shopping
-- ----------------------------
DROP TABLE IF EXISTS `operation_shopping`;
CREATE TABLE `operation_shopping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_shopping_product_id_13d02d24_fk_shop_product_id` (`product_id`),
  KEY `operation_shopping_user_id_0b58005c_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `operation_shopping_product_id_13d02d24_fk_shop_product_id` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`),
  CONSTRAINT `operation_shopping_user_id_0b58005c_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_shopping
-- ----------------------------
INSERT INTO `operation_shopping` VALUES ('8', '4', '2018-11-12 11:08:55.376533', '8', '1');
INSERT INTO `operation_shopping` VALUES ('9', '1', '2018-11-12 11:17:27.335778', '6', '1');
INSERT INTO `operation_shopping` VALUES ('10', '1', '2018-11-12 13:07:37.909377', '5', '1');
INSERT INTO `operation_shopping` VALUES ('11', '1', '2018-11-13 13:14:13.822066', '3', '1');

-- ----------------------------
-- Table structure for operation_shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `operation_shoppingcart`;
CREATE TABLE `operation_shoppingcart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_check` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_shoppingcart_product_id_39e6948f_fk_shop_product_id` (`product_id`),
  KEY `operation_shoppingcart_user_id_afb642bb_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `operation_shoppingcart_product_id_39e6948f_fk_shop_product_id` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`),
  CONSTRAINT `operation_shoppingcart_user_id_afb642bb_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_shoppingcart
-- ----------------------------
INSERT INTO `operation_shoppingcart` VALUES ('1', '1', '2018-11-02 15:27:57.042176', '7', '1', '1');
INSERT INTO `operation_shoppingcart` VALUES ('5', '10', '2018-11-09 14:02:08.433645', '5', '1', '0');
INSERT INTO `operation_shoppingcart` VALUES ('6', '3', '2018-11-09 15:21:18.795222', '8', '1', '0');
INSERT INTO `operation_shoppingcart` VALUES ('7', '1', '2018-11-09 15:22:19.405650', '6', '1', '1');
INSERT INTO `operation_shoppingcart` VALUES ('8', '12', '2018-11-09 15:28:33.228581', '1', '1', '0');

-- ----------------------------
-- Table structure for operation_spotscomments
-- ----------------------------
DROP TABLE IF EXISTS `operation_spotscomments`;
CREATE TABLE `operation_spotscomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `spots_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_spotscomme_spots_id_9e05aeab_fk_scenicspo` (`spots_id`),
  KEY `operation_spotscomments_user_id_1ab65cb3_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `operation_spotscomme_spots_id_9e05aeab_fk_scenicspo` FOREIGN KEY (`spots_id`) REFERENCES `scenicspots_spots` (`id`),
  CONSTRAINT `operation_spotscomments_user_id_1ab65cb3_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_spotscomments
-- ----------------------------
INSERT INTO `operation_spotscomments` VALUES ('1', '白马寺本身并不大，就是那五座殿宇；可白马寺景区却很大，全部走完至少要有两小时。挺好的！', '2018-11-14 14:11:23.012778', '4', '1');
INSERT INTO `operation_spotscomments` VALUES ('2', '花园以隋唐历史文化为底蕴，以牡丹文化为主要内容，融历史文化、牡丹文化和园林景观为一体，充分展示了牡丹之美、之清、之幽', '2018-11-19 17:07:01.251005', '5', '1');

-- ----------------------------
-- Table structure for operation_usercollect
-- ----------------------------
DROP TABLE IF EXISTS `operation_usercollect`;
CREATE TABLE `operation_usercollect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `diary_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_usercollect_diary_id_645e38c5_fk_diarys_diary_id` (`diary_id`),
  KEY `operation_usercollect_user_id_bd2b08b4_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `operation_usercollect_diary_id_645e38c5_fk_diarys_diary_id` FOREIGN KEY (`diary_id`) REFERENCES `diarys_diary` (`id`),
  CONSTRAINT `operation_usercollect_user_id_bd2b08b4_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_usercollect
-- ----------------------------
INSERT INTO `operation_usercollect` VALUES ('4', '2018-11-14 16:45:32.729416', '8', '1');
INSERT INTO `operation_usercollect` VALUES ('5', '2018-11-14 16:45:39.214790', '76', '1');
INSERT INTO `operation_usercollect` VALUES ('23', '2018-11-15 10:09:58.238369', '75', '1');

-- ----------------------------
-- Table structure for operation_userfav
-- ----------------------------
DROP TABLE IF EXISTS `operation_userfav`;
CREATE TABLE `operation_userfav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `diary_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_userfav_diary_id_15f80041_fk_diarys_diary_id` (`diary_id`),
  KEY `operation_userfav_user_id_1f1a4c7e_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `operation_userfav_diary_id_15f80041_fk_diarys_diary_id` FOREIGN KEY (`diary_id`) REFERENCES `diarys_diary` (`id`),
  CONSTRAINT `operation_userfav_user_id_1f1a4c7e_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_userfav
-- ----------------------------

-- ----------------------------
-- Table structure for pay_goodsordersmaintable
-- ----------------------------
DROP TABLE IF EXISTS `pay_goodsordersmaintable`;
CREATE TABLE `pay_goodsordersmaintable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(25) NOT NULL,
  `order_describe` varchar(50) NOT NULL,
  `total_amount` decimal(11,2) NOT NULL,
  `consignee` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `zip_code` varchar(6) NOT NULL,
  `order_state` varchar(3) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `pay_time` datetime(6) DEFAULT NULL,
  `received_time` datetime(6) DEFAULT NULL,
  `finish_time` datetime(6) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pay_goodsordersmaintable_user_id_a9d1ec06_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `pay_goodsordersmaintable_user_id_a9d1ec06_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pay_goodsordersmaintable
-- ----------------------------
INSERT INTO `pay_goodsordersmaintable` VALUES ('1', '1541742473926987561', '木制帆船33cm深蓝色2050 客厅酒柜电视柜摆件家居装饰品', '1598.00', 'ABC', '河南  洛阳  洛龙区 洛龙区123123', '12345678910', '000000', 'yzf', '2018-11-09 13:47:54.061815', '2018-11-09 13:48:27.810196', null, null, '1');
INSERT INTO `pay_goodsordersmaintable` VALUES ('2', '1541743460533560781', '木制帆船33cm深蓝色2050 客厅酒柜电视柜摆件家居装饰品等多件商品', '2318.00', 'ABC', '河南  洛阳  洛龙区 洛龙区123123', '12345678910', '000000', 'yzf', '2018-11-09 14:04:20.671379', '2018-11-09 14:04:52.403942', '2018-11-13 16:28:30.732406', null, '1');
INSERT INTO `pay_goodsordersmaintable` VALUES ('3', '1541748091988500191', '德芙 Dove巧克力分享碗装 丝滑牛奶巧克力 糖果巧克力', '89.40', '黄鹤', '浙江  温州  龙湾区 江南皮革厂', '18888888888', '123456', 'ysh', '2018-11-09 15:21:32.077866', '2018-11-09 15:22:03.476689', '2018-11-12 14:59:26.761479', null, '1');
INSERT INTO `pay_goodsordersmaintable` VALUES ('4', '1541748152642443961', '纯铜梅花鹿摆件新中式家居客厅装饰品玄关茶几电视柜创意艺术工艺', '498.00', '黄鹤', '浙江  温州  龙湾区 江南皮革厂', '18888888888', '123456', 'wzf', '2018-11-09 15:22:32.765393', null, null, null, '1');
INSERT INTO `pay_goodsordersmaintable` VALUES ('5', '1541748525478583981', '红心柚子10斤整箱福建平和管溪蜜柚新鲜水果包邮红肉密柚', '89.40', 'ABC', '河南  洛阳  洛龙区 洛龙区123123', '12345678910', '000000', 'yzf', '2018-11-09 15:28:45.602637', '2018-11-12 14:42:06.874718', null, null, '1');
INSERT INTO `pay_goodsordersmaintable` VALUES ('6', '1541985947829919171', '红心柚子10斤整箱福建平和管溪蜜柚新鲜水果包邮红肉密柚', '357.60', '黄鹤', '浙江  温州  龙湾区 江南皮革厂', '18888888888', '123456', 'yzf', '2018-11-12 09:25:47.941859', '2018-11-12 09:26:29.903241', null, null, '1');
INSERT INTO `pay_goodsordersmaintable` VALUES ('7', '1541999260727173981', '黄豆江西农家非转基因自种 5斤打豆浆生豆芽专用散装小黄豆', '72.00', '黄鹤', '浙江  温州  龙湾区 江南皮革厂', '18888888888', '123456', 'ysh', '2018-11-12 13:07:40.769128', '2018-11-12 13:08:13.367202', '2018-11-13 16:28:24.196619', null, '1');
INSERT INTO `pay_goodsordersmaintable` VALUES ('8', '1541999329971653321', '纯铜梅花鹿摆件新中式家居客厅装饰品玄关茶几电视柜创意艺术工艺', '498.00', 'zhiqi123', '河南  郑州  二七区 二七区123', '13345678910', '000000', 'ywc', '2018-11-12 13:08:50.050936', '2018-11-12 13:09:21.050126', '2018-11-12 14:53:59.056294', '2018-11-12 16:22:17.590178', '1');
INSERT INTO `pay_goodsordersmaintable` VALUES ('10', '1542098120652654161', '木制帆船33cm深蓝色2050 客厅酒柜电视柜摆件家居装饰品等多件商品', '2096.00', '黄鹤', '浙江  温州  龙湾区 江南皮革厂', '18888888888', '123456', 'ysh', '2018-11-13 16:35:20.783212', '2018-11-13 16:35:55.580379', '2018-11-13 16:35:58.684523', null, '1');

-- ----------------------------
-- Table structure for pay_orderitems
-- ----------------------------
DROP TABLE IF EXISTS `pay_orderitems`;
CREATE TABLE `pay_orderitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `good_name` varchar(30) NOT NULL,
  `good_num` int(11) NOT NULL,
  `order_num` varchar(25) NOT NULL,
  `good_price` double NOT NULL,
  `good_image` varchar(100) NOT NULL,
  `good_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pay_orderitems
-- ----------------------------
INSERT INTO `pay_orderitems` VALUES ('1', '木制帆船33cm深蓝色2050 客厅酒柜电视柜摆件家居装饰品', '1', '1541742473926987561', '1598', 'product/mainimg/2018/11/123asd.jpeg', '7');
INSERT INTO `pay_orderitems` VALUES ('2', '木制帆船33cm深蓝色2050 客厅酒柜电视柜摆件家居装饰品', '1', '1541743460533560781', '1598', 'product/mainimg/2018/11/123asd.jpeg', '7');
INSERT INTO `pay_orderitems` VALUES ('3', '黄豆江西农家非转基因自种 5斤打豆浆生豆芽专用散装小黄豆', '10', '1541743460533560781', '72', 'product/mainimg/2018/11/u8602493881365701743fm200gp0.jpg', '5');
INSERT INTO `pay_orderitems` VALUES ('6', '德芙 Dove巧克力分享碗装 丝滑牛奶巧克力 糖果巧克力', '3', '1541748091988500191', '29.8', 'product/mainimg/2018/11/timg.jpeg', '8');
INSERT INTO `pay_orderitems` VALUES ('7', '纯铜梅花鹿摆件新中式家居客厅装饰品玄关茶几电视柜创意艺术工艺', '1', '1541748152642443961', '498', 'product/mainimg/2018/11/342355.jpeg', '6');
INSERT INTO `pay_orderitems` VALUES ('8', '红心柚子10斤整箱福建平和管溪蜜柚新鲜水果包邮红肉密柚', '3', '1541748525478583981', '29.8', 'product/mainimg/2018/11/u8997057393192590278fm26gp0.jpg', '1');
INSERT INTO `pay_orderitems` VALUES ('9', '红心柚子10斤整箱福建平和管溪蜜柚新鲜水果包邮红肉密柚', '12', '1541985947829919171', '29.8', 'product/mainimg/2018/11/u8997057393192590278fm26gp0.jpg', '1');
INSERT INTO `pay_orderitems` VALUES ('10', '黄豆江西农家非转基因自种 5斤打豆浆生豆芽专用散装小黄豆', '1', '1541999260727173981', '72', 'product/mainimg/2018/11/u8602493881365701743fm200gp0.jpg', '5');
INSERT INTO `pay_orderitems` VALUES ('11', '纯铜梅花鹿摆件新中式家居客厅装饰品玄关茶几电视柜创意艺术工艺', '1', '1541999329971653321', '498', 'product/mainimg/2018/11/342355.jpeg', '6');
INSERT INTO `pay_orderitems` VALUES ('12', '德芙 Dove巧克力分享碗装 丝滑牛奶巧克力 糖果巧克力', '3', '1542097549359671461', '29.8', 'product/mainimg/2018/11/timg.jpeg', '8');
INSERT INTO `pay_orderitems` VALUES ('13', '纯铜梅花鹿摆件新中式家居客厅装饰品玄关茶几电视柜创意艺术工艺', '2', '1542097549359671461', '498', 'product/mainimg/2018/11/342355.jpeg', '6');
INSERT INTO `pay_orderitems` VALUES ('14', '木制帆船33cm深蓝色2050 客厅酒柜电视柜摆件家居装饰品', '1', '1542098120652654161', '1598', 'product/mainimg/2018/11/123asd.jpeg', '7');
INSERT INTO `pay_orderitems` VALUES ('15', '纯铜梅花鹿摆件新中式家居客厅装饰品玄关茶几电视柜创意艺术工艺', '1', '1542098120652654161', '498', 'product/mainimg/2018/11/342355.jpeg', '6');

-- ----------------------------
-- Table structure for pay_scenicordersmaintable
-- ----------------------------
DROP TABLE IF EXISTS `pay_scenicordersmaintable`;
CREATE TABLE `pay_scenicordersmaintable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scenic_name` varchar(30) NOT NULL,
  `buy_num` int(11) NOT NULL,
  `ticket_price` double NOT NULL,
  `scenic_image` varchar(100) NOT NULL,
  `scenic_id` int(11) NOT NULL,
  `order_num` varchar(25) NOT NULL,
  `cdk` varchar(25) NOT NULL,
  `order_describe` varchar(50) NOT NULL,
  `total_amount` decimal(11,2) NOT NULL,
  `consignee` varchar(30) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `order_state` varchar(3) NOT NULL,
  `classification` varchar(2) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `pay_time` datetime(6) DEFAULT NULL,
  `received_time` datetime(6) DEFAULT NULL,
  `finish_time` datetime(6) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pay_scenicordersmaintable_user_id_1fd20704_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `pay_scenicordersmaintable_user_id_1fd20704_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pay_scenicordersmaintable
-- ----------------------------
INSERT INTO `pay_scenicordersmaintable` VALUES ('2', '中国国花园', '1', '10', 'spots/thumbnail/2018/10/timg_7Squhac.jpeg', '5', '154261410049883401', '9Por5-hhOAk-jFbqr-CvB78', '中国国花园门票', '10.00', '黄鹤', '18888888888', 'ywc', 'mp', '2018-11-19 15:55:00.500821', '2018-11-19 15:55:42.774384', null, '2018-11-19 17:07:01.332485', '1');
INSERT INTO `pay_scenicordersmaintable` VALUES ('3', '洛阳白马寺', '2', '50', 'spots/thumbnail/2018/10/b151f8198618367a39ac6bc927738bd4b31ce5f9_a4KWxIC.jpg', '4', '154261510662321741', 'amjtW-6zhVy-j2oir-nWmfA', '洛阳白马寺门票', '100.00', '慕容铁蛋', '13255684466', 'yzf', 'mp', '2018-11-19 16:11:46.626726', '2018-11-19 16:12:31.405169', null, null, '1');
INSERT INTO `pay_scenicordersmaintable` VALUES ('4', '鸡冠洞', '1', '80', 'spots/thumbnail/2018/10/eb4f9f6b-bebf-44b5-835a-5d356ab3119c_480_320_T7UrY8k.jpg', '3', '154261531998408111', 'rcr4X-iaZjV-PJwZ2-8AMFF', '鸡冠洞门票', '80.00', '李白', '13345678910', 'yzf', 'mp', '2018-11-19 16:15:19.987236', '2018-11-19 16:15:49.953833', null, null, '1');
INSERT INTO `pay_scenicordersmaintable` VALUES ('5', '洛阳2日1晚跟团游·龙门石窟-白马寺-少林寺纯玩2日游', '1', '399', 'active/2018/11/longmenshiku_VmtBGlg.jpeg', '2', '1542616228676335021', 'JYp52-xRRdQ-lRtfk-x8dNJ', '洛阳2日1晚跟团游·龙门石窟-白马寺-少林寺纯玩2日游', '399.00', '黄鹤', '18888888888', 'ywc', 'hd', '2018-11-19 16:30:28.679494', '2018-11-19 16:31:04.595318', null, '2018-11-19 17:07:42.604363', '1');
INSERT INTO `pay_scenicordersmaintable` VALUES ('6', '洛阳龙门石窟+白马寺院+少林寺+龙潭大峡谷3日2晚跟团游', '2', '699', 'active/2018/11/shaolin.jpeg', '1', '1542616675465996671', '', '洛阳龙门石窟+白马寺院+少林寺+龙潭大峡谷3日2晚跟团游', '1398.00', '黄鹤', '18888888888', 'wzf', 'hd', '2018-11-19 16:37:55.468917', null, null, null, '1');
INSERT INTO `pay_scenicordersmaintable` VALUES ('7', '洛阳2日1晚跟团游·龙门石窟-白马寺-少林寺纯玩2日游', '1', '399', 'active/2018/11/longmenshiku_VmtBGlg.jpeg', '2', '1542678331860761191', 'cuU2X-rPgCP-BiAA3-XVG0I', '洛阳2日1晚跟团游·龙门石窟-白马寺-少林寺纯玩2日游', '399.00', '黄鹤', '18888888888', 'yzf', 'hd', '2018-11-20 09:45:32.086806', '2018-11-20 09:46:40.816136', null, null, '1');
INSERT INTO `pay_scenicordersmaintable` VALUES ('8', '洛阳2日1晚跟团游·龙门石窟-白马寺-少林寺纯玩2日游', '1', '399', 'active/2018/11/longmenshiku_VmtBGlg.jpeg', '2', '1542678357330589961', '8G0xr-XUdDa-m0BIt-WbmMi', '洛阳2日1晚跟团游·龙门石窟-白马寺-少林寺纯玩2日游', '399.00', '慕容铁主', '18835641234', 'yzf', 'hd', '2018-11-20 09:45:57.367523', '2018-11-20 10:10:07.016571', null, null, '1');
INSERT INTO `pay_scenicordersmaintable` VALUES ('9', '洛阳+云台山4日私家团(4钻)·『独立成团·私家享受』', '2', '2995', 'active/2018/11/sdfsdfsdgsdgss.jpeg', '3', '1542678468301508341', 'IjYJf-2Hpqx-mGAdm-BIpHY', '洛阳+云台山4日私家团(4钻)·『独立成团·私家享受』', '5990.00', '黄鹤', '18888888888', 'ywc', 'hd', '2018-11-20 09:47:48.349429', '2018-11-20 09:48:20.097284', null, '2018-11-20 10:10:49.130609', '1');
INSERT INTO `pay_scenicordersmaintable` VALUES ('10', '洛阳2日1晚跟团游·龙门石窟-白马寺-少林寺纯玩2日游', '1', '399', 'active/2018/11/longmenshiku_VmtBGlg.jpeg', '2', '1542678937707499421', 'zSRRq-DTOxV-O9tX2-UxJHv', '洛阳2日1晚跟团游·龙门石窟-白马寺-少林寺纯玩2日游', '399.00', '鲁迅', '12345678910', 'yzf', 'hd', '2018-11-20 09:55:37.712928', '2018-11-20 09:56:26.595082', null, null, '1');

-- ----------------------------
-- Table structure for scenicspots_active
-- ----------------------------
DROP TABLE IF EXISTS `scenicspots_active`;
CREATE TABLE `scenicspots_active` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `introduce` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `classification` varchar(10) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `go_time` datetime(6) NOT NULL,
  `address` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `now_num` int(11) NOT NULL,
  `all_num` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scenicspots_active
-- ----------------------------
INSERT INTO `scenicspots_active` VALUES ('1', '洛阳龙门石窟+白马寺院+少林寺+龙潭大峡谷3日2晚跟团游', '<h3 class=\"hd\" data-reactid=\"302\" style=\"margin: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 24px; line-height: 1; font-family: &quot;microsoft yahei&quot;; text-align: center; white-space: normal;\">费用</h3><ul class=\"mod_info_box list-paddingleft-2\" data-reactid=\"304\" style=\"margin: 0px 0px 20px; padding: 0px 0px 0px 115px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 24px; min-height: 48px;\"><li><p>费用包含</p></li><li><p><br/></p></li><ul class=\"txt_list list-paddingleft-2\" data-reactid=\"307\" style=\"list-style-type: square;\"><li><p>往返旅游巴士</p></li><li><p>行程所列酒店住宿费用</p></li><li><p>酒店标准2人间</p></li><li><p>行程内所列餐食，具体情况请见行程推荐/安排。</p></li><li><p>当地中文导游服务。</p></li><li><p>行程中所列景点首道大门票龙门石窟、白马寺、少林寺、龙潭大峡谷</p></li><li><p>身高0.8--1.2米（含）,不占床,儿童只含当地用车，其余产生自理</p></li></ul></ul><ul class=\"mod_info_box list-paddingleft-2\" data-reactid=\"315\" style=\"margin: 0px 0px 20px; padding: 0px 0px 0px 115px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 24px; min-height: 48px;\"><li><p>自理费用</p></li><li><p><br/></p></li><ul class=\"txt_list list-paddingleft-2\" data-reactid=\"318\" style=\"list-style-type: square;\"><li><p>超重行李的托运费、保管费; 因交通延阻、罢工、天气、机器故障等不可抗力原因所导致的额外费用: 酒店内洗衣、理发、电话、传真、收费电视、饮品、烟酒等个人消费; 自由活动期间的用车服务; 提供导游服务的产品在自由活动期间无陪同服务; 当地参加的自费以及“费用包含”中不包含的其它项目。</p></li></ul></ul><p><br/></p>', 'active/2018/11/shaolin.jpeg', 'natural', '0379-00000000', '2019-01-20 08:00:00.000000', '洛阳火车站', '699', '0', '30', '2018-11-19 10:43:00.000000');
INSERT INTO `scenicspots_active` VALUES ('2', '洛阳2日1晚跟团游·龙门石窟-白马寺-少林寺纯玩2日游', '<h3 class=\"mult_data_tit\" style=\"margin: 0px 0px 20px; padding: 0px; font-weight: 100; font-size: 22px;\"><p>洛阳_龙门石窟_白马寺_洛阳</p></h3><h5 style=\"margin: 0px; padding: 10px 0px 0px; font-weight: 100; font-size: 18px;\"><span class=\"i_sce\" style=\"background-repeat: no-repeat; display: inline-block; vertical-align: middle; position: relative; top: -1px; height: 20px; width: 20px; margin: 5px 0px 0px -87px; background-image: url(&quot;//pic.c-ctrip.com/VacationOnlinePic/vacation_v2/searchresult/ico_travel03.png&quot;); background-position: 0px -40px; float: left;\"></span>08:00</h5><h4 class=\"sce_tit\" style=\"margin: 0px; padding: 0px; font-weight: 100; font-size: 18px;\">前往景点：<a data-json=\"{&quot;GSScenicSpotID&quot;:77498,&quot;PreName&quot;:&quot;&quot;,&quot;Name&quot;:&quot;龙门石窟&quot;,&quot;SuffixName&quot;:&quot;&quot;}\" class=\"J_mapPointHook\" style=\"color: rgb(25, 160, 240); outline: none;\">龙门石窟</a><span class=\"mult_score\" style=\"font-size: 12px; color: rgb(25, 160, 240); margin-left: 25px;\"><span style=\"margin: 0px; padding: 0px; font-size: 18px;\">4.6</span>/5分</span></h4><p>早8:00乘车赴世界文化遗产、中国武术发源地少林寺景区游览，少林寺，又名僧人寺，以禅宗和武术并称于世，有“禅宗祖廷，中国汉传佛教禅宗祖庭。少林寺属国家5A级旅游景区。联合国教科文组织将少林寺、“天地之中”等8处11项历史建筑列为世界文化遗产。包括：少林寺寺院、 功夫表演、 塔林，(参观时间约3小时），中餐后（自理）下午16:00左右到达古都洛阳，结束愉快旅程。<br/></p><p>。。。。。。。。。。。。。。</p><p>。。。。。。。</p><p>。。。。。。。</p><p>。。。。。。。</p><p>。。。。。。。</p><p><br/> </p><p style=\"position: absolute; width: 1px; height: 1px; overflow: hidden; left: -1000px; white-space: nowrap; top: 365px;\"><span style=\"white-space: normal;\">。。。。。。。</span></p>', 'active/2018/11/longmenshiku_VmtBGlg.jpeg', 'natural', '0379-00000000', '2018-12-20 09:00:00.000000', '龙门石窟门口', '399', '4', '25', '2018-11-19 11:02:00.000000');
INSERT INTO `scenicspots_active` VALUES ('3', '洛阳+云台山4日私家团(4钻)·『独立成团·私家享受』', '<ul data-reactid=\"88\" style=\"padding: 0px; color: rgb(34, 34, 34); font-family: &quot;microsoft yahei&quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\" class=\" list-paddingleft-2\"><li><p><span style=\"font-size: 20px; color: rgb(255, 0, 0);\"><strong>★ 私人定制：每张订单独立成团，管家式导游服务，专车，人多价更优！</strong></span></p></li><li><p><span style=\"font-size: 20px; color: rgb(255, 0, 0);\"><strong>★ 龙门石窟+少林寺；云台山体验刺激玻璃栈道！景点门票全含，全程纯玩无购物！</strong></span></p></li><li><p><span style=\"font-size: 20px; color: rgb(255, 0, 0);\"><strong>★ 一晚宿洛阳，一晚宿云台山景区内，边走边住！全程纯玩无购物，回归纯真旅游！</strong></span></p></li></ul><p><br/></p>', 'active/2018/11/sdfsdfsdgsdgss.jpeg', 'leisure', '0379-00000000', '2019-03-20 08:00:00.000000', '洛阳火车站', '2995', '2', '10', '2018-11-19 11:09:00.000000');

-- ----------------------------
-- Table structure for scenicspots_gallery
-- ----------------------------
DROP TABLE IF EXISTS `scenicspots_gallery`;
CREATE TABLE `scenicspots_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `spots_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `scenicspots_gallery_spots_id_43d90e33_fk_scenicspots_spots_id` (`spots_id`),
  CONSTRAINT `scenicspots_gallery_spots_id_43d90e33_fk_scenicspots_spots_id` FOREIGN KEY (`spots_id`) REFERENCES `scenicspots_spots` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scenicspots_gallery
-- ----------------------------
INSERT INTO `scenicspots_gallery` VALUES ('1', '往事越千年', 'spots/banner/2018/10/timg.jpeg', '2018-10-16 14:31:00.000000', '1');
INSERT INTO `scenicspots_gallery` VALUES ('2', '远景', 'spots/banner/2018/10/timg_1.jpeg', '2018-10-16 14:32:00.000000', '1');
INSERT INTO `scenicspots_gallery` VALUES ('3', '庐舍那大佛', 'spots/banner/2018/10/timg_2.jpeg', '2018-10-16 14:33:00.000000', '1');
INSERT INTO `scenicspots_gallery` VALUES ('4', '奉先寺', 'spots/banner/2018/10/timg_3.jpeg', '2018-10-16 14:34:00.000000', '1');
INSERT INTO `scenicspots_gallery` VALUES ('5', '全景', 'spots/banner/2018/10/u3190787190571207846fm26gp0.jpg', '2018-10-16 14:34:00.000000', '1');
INSERT INTO `scenicspots_gallery` VALUES ('6', '白云山风光1', 'spots/banner/2018/10/43f2_b.jpg', '2018-10-16 14:35:00.000000', '2');
INSERT INTO `scenicspots_gallery` VALUES ('7', '白云山风光2', 'spots/banner/2018/10/2017050105.jpg', '2018-10-16 14:37:00.000000', '2');
INSERT INTO `scenicspots_gallery` VALUES ('8', '白云山风光3', 'spots/banner/2018/10/d01373f082025aafe06feaf1f0edab64034f1aae.jpg', '2018-10-16 14:37:00.000000', '2');
INSERT INTO `scenicspots_gallery` VALUES ('9', '全景', 'spots/banner/2018/10/国花园.jpeg', '2018-10-16 14:38:00.000000', '5');
INSERT INTO `scenicspots_gallery` VALUES ('10', '东门', 'spots/banner/2018/10/sdfasfsd.jpeg', '2018-10-16 14:39:00.000000', '5');
INSERT INTO `scenicspots_gallery` VALUES ('11', '西门', 'spots/banner/2018/10/15643.jpeg', '2018-10-16 14:39:00.000000', '5');
INSERT INTO `scenicspots_gallery` VALUES ('12', '马寺钟声', 'spots/banner/2018/10/dsefsfg.jpeg', '2018-10-16 14:40:00.000000', '4');
INSERT INTO `scenicspots_gallery` VALUES ('13', '白马寺', 'spots/banner/2018/10/safasfg.jpeg', '2018-10-16 14:41:00.000000', '4');
INSERT INTO `scenicspots_gallery` VALUES ('14', '马寺印象', 'spots/banner/2018/10/dfsafsfg.jpeg', '2018-10-16 14:41:00.000000', '4');
INSERT INTO `scenicspots_gallery` VALUES ('15', '鸡冠洞1', 'spots/banner/2018/10/013e355875ca65a801219c77a66943.jpg1280w_1l_2o_100sh.jpg', '2018-10-16 14:43:00.000000', '3');
INSERT INTO `scenicspots_gallery` VALUES ('16', '鸡冠洞2', 'spots/banner/2018/10/bf096b63f6246b60138698a0e1f81a4c500fa25d.jpg', '2018-10-16 14:43:00.000000', '3');
INSERT INTO `scenicspots_gallery` VALUES ('17', '鸡冠洞3', 'spots/banner/2018/10/dbb44aed2e738bd4e03f33fbab8b87d6267ff9da.jpg', '2018-10-16 14:44:00.000000', '3');
INSERT INTO `scenicspots_gallery` VALUES ('18', '鸡冠洞4', 'spots/banner/2018/10/f703738da9773912282ad258f3198618367ae2ff.jpg', '2018-10-16 14:44:00.000000', '3');
INSERT INTO `scenicspots_gallery` VALUES ('19', '鸡冠洞5', 'spots/banner/2018/10/u5763711552706764766fm26gp0.jpg', '2018-10-16 14:44:00.000000', '3');

-- ----------------------------
-- Table structure for scenicspots_spots
-- ----------------------------
DROP TABLE IF EXISTS `scenicspots_spots`;
CREATE TABLE `scenicspots_spots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `classification` varchar(10) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `businessHours` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `add_times` datetime(6) NOT NULL,
  `x` decimal(9,6) NOT NULL,
  `y` decimal(9,6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scenicspots_spots
-- ----------------------------
INSERT INTO `scenicspots_spots` VALUES ('1', '龙门石窟', '<p><span style=\"background-color: rgb(255, 255, 255); font-family: 宋体; font-size: 14px;\">　　龙门石窟位于洛阳市区南12公里处，是与大同云岗石窟、敦煌千佛洞石窟齐名的我国三大石窟之一，国家5A景区。</span><br/> </p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\">　　龙门是一个风景秀丽的地方，这里有东、西两座青山对峙，伊水缓缓北流。远远望去，犹如一座天然门阙，所以古称“伊阙”。“伊阙”，自古以来，已成为游龙门的第一景观。唐诗人白居易曾说过：“洛阳四郊山水之胜，龙门首焉”。</p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\">　　龙门石窟始凿于北魏孝文帝迁都洛阳（公元494年）前后，后来，历经东魏、北齐、北周，到隋唐至宋等朝代又连续大规模营造达400余年之久。密布于伊水东西两山的峭壁上，南北长达1公里，共有97000余尊佛像，1300多个石窟。现存窟龛2345个，题记和碑刻3600余品，佛塔50余座，造像10万余尊。其中最大的佛像高达17.14米，最小的仅有2厘米。这些都体现出了我国古代劳动人民很高的艺术造诣。</p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\">　　奉先寺是龙门唐代石窟中最大的一个石窟，长宽各30余米。据碑文记载，此窟开凿于唐代武则天时期，历时三年。洞中佛像明显体现了唐代佛像艺术特点，面形丰肥、两耳下垂，形态0、安详、温存、亲切，极为动人。石窟正中卢舍那佛坐像为龙门石窟最大佛像，身高17.14米，头高4米，耳朵长1.9米，造型丰满，仪表堂皇，衣纹流畅，具有高度的艺术感染力，实在是一件精美绝伦的艺术杰作。据佛经说，卢舍那意即光明普照。这尊佛像，丰颐秀目，嘴角微翘，呈微笑状，头部稍低，略作俯视态，宛若一位睿智而慈祥的中年妇女，令人敬而不惧。有人评论说，在塑造这尊佛像时，把高尚的情操、丰富的感情、开阔的胸怀和典雅的外貌完美地结合在一起，因此，她具有巨大的艺术魅力。卢舍那佛像两边还有二弟子迦叶和阿难，形态温顺虔诚，二菩萨和善开朗。天王手托宝塔，显得魁梧刚劲。而力士像就更动人了，只见他右手叉腰，左手合十，威武雄壮。</p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\">　　金刚力士雕像比卢舍那佛像旁的力士像更加动人，是龙门石窟中的珍品，1953年清理洞窟积土时，在极南洞附近发现的，是被盗凿而未能运走遗留下的。只见金刚力士两眼暴突，怒视前方，二手握拳，胸上、手、腿上的肌肉高高隆起。整座雕像造型粗犷豪放，雄健有力，气势逼人。</p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\">　　龙门石窟中另一个著名洞窟是宾阳洞。这个窟前后用了24年才完成，是开凿时间最长的一个洞窟。洞内有11尊大佛像。主像释迦牟尼像，高鼻大眼、体态端祥，左右二边有弟子、菩萨侍立，佛和菩萨面相清瘦，目大额平，衣锦纹理周密刻划，有明显西域艺术痕迹。窟顶雕有飞天，挺健飘逸，是北魏中期石雕艺术的杰作。洞中原有两幅大型浮雕《皇帝礼佛图》、《太后礼佛图》，画面上分别以魏孝文帝和文明皇太后为中心，前簇后拥，组成礼佛行列，构图精美，雕刻细致，艺术价值很高，是一幅反映当时帝王生活的图画。可惜被美国人勾结中国奸商盗运到美国，现分别藏于美国堪萨斯城纳尔逊艺术馆和纽约市艺术博物馆。而洞口唐宰相书法家褚遂良书碑铭，很值得一览。</p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\">　　万佛洞在宾阳洞南边，洞中刻像丰富，南北石壁上刻满了小佛像，很多佛像仅一寸，或几厘米高，计有1500多尊。正壁菩萨佛像端坐于束腰八角莲花座上。束腰处有四力士，肩托仰莲。后壁刻有莲花54枝，每枝花上坐着一菩萨或供养人，壁顶上浮雕伎乐人，个个婀娜多姿，形象逼真。沿口南壁上还有一座观音菩萨像，手提净瓶举尘尾，体态圆润丰满，姿势优美，十分传神。</p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\">　　古阳洞也很出名。这里有丰富造像题记，为人称道的龙门十二品，大部分集中在这里。清代学者康有为盛赞这里的书法之美为：魄力雄强、气象浑穆、笔法跳越、点画峻厚、意态奇逸、精神飞动、骨法洞达、结构天成、血肉丰美。</p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\">　　还有一个药方洞，刻有140个药方，反映了我国古代医学的成就。把一些药方刻在石碑上或洞窟中，在别的地方也有发现，这是古代医学成就传之后世的一个重要方法。</p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\">　　龙门石窟不仅仅是佛像雕刻技艺精湛，而石窟中造像题记也不乏艺术精品。龙门石窟造像题记遍布许许多多的洞窟，约有3600品，其中龙门二十品，是我国优秀文化遗产的一部分，在国内外学术界、书法界有很广泛的影响。龙门二十品，十九品集中于古阳洞，另有一品在西山中部偏南老龙洞崖壁的慈香窟里。古阳洞是龙门石窟中开凿最早的一个窟，凿于北魏孝文帝迁都洛阳前一年。洞内小佛龛琳琅满目，雕刻精巧。</p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\">　　龙门石窟保留著大量的宗教、美术、书法、音乐、服饰、医药、建筑和中外交通等方面的实物史料。因此，它堪称为一座大型石刻艺术博物馆。它与甘肃敦煌莫高窟、山西大同云冈石窟并称为中国三大石刻艺术宝库。2000年11月洛阳龙门石窟被联合国教科文组织遗产委员会列入《世界遗产名录》。</p><p><br/> </p>', 'spots/thumbnail/2018/10/下载_0iTJ0CT.jpeg', 'spots/mainfigure/2018/10/u30829683821652909244fm200gp0_VO5wJX9.jpg', 'natural', '0379-65980972', '全年', '洛阳市洛龙区238省道', '120', '2018-10-16 09:50:00.000000', '112.485281', '34.567362');
INSERT INTO `scenicspots_spots` VALUES ('2', '洛阳白云山', '<p>白云山位于河南省<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%B4%9B%E9%98%B3\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">洛阳</a>市<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%B5%A9%E5%8E%BF/2542808\" data-lemmaid=\"2542808\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">嵩县</a>南部<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E4%BC%8F%E7%89%9B%E5%B1%B1/1177338\" data-lemmaid=\"1177338\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">伏牛山</a>腹地原始林区，总面积168平方公里，动物204种，植物1991种，森林覆盖率98.5%以上，被专家学者誉为“<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E8%87%AA%E7%84%B6%E5%8D%9A%E7%89%A9%E9%A6%86/7493762\" data-lemmaid=\"7493762\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">自然博物馆</a>”。</p><p>海拔1500米以上的山峰37座，其中玉皇顶海拔2216米，为白云山第一峰，是看<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%97%A5%E5%87%BA/25307\" data-lemmaid=\"25307\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">日出</a>观云海的最佳处之一。</p><p>白云山（Baiyun Mountain）：<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E4%B8%96%E7%95%8C%E5%9C%B0%E8%B4%A8%E5%85%AC%E5%9B%AD/3604728\" data-lemmaid=\"3604728\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">世界地质公园</a>，<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%9B%BD%E5%AE%B6AAAAA%E7%BA%A7%E6%97%85%E6%B8%B8%E6%99%AF%E5%8C%BA\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">国家AAAAA级旅游景区</a>，国家级森林公园、<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%9B%BD%E5%AE%B6%E7%BA%A7%E8%87%AA%E7%84%B6%E4%BF%9D%E6%8A%A4%E5%8C%BA/7516695\" data-lemmaid=\"7516695\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">国家级自然保护区</a>，中国十佳休闲胜地，中国最美地方之一，河南省十佳景区好去处第三名。<span class=\"sup--normal\" data-sup=\"1\" style=\"font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 102, 204); cursor: pointer; padding: 0px 2px;\">&nbsp;[1]</span><a style=\"color: rgb(19, 110, 194); position: relative; top: -50px; font-size: 0px; line-height: 0;\" name=\"ref_[1]_5065565\"></a>&nbsp;</p><p>白云山主要景区有：白云峰、玉皇顶、鸡角曼（小黄山）、九龙瀑布、原始森林五大观光区和白云湖、高山<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%A3%AE%E6%9E%97%E6%B0%A7%E5%90%A7/6827100\" data-lemmaid=\"6827100\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">森林氧吧</a>、高山牡丹园、<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%95%99%E4%BE%AF%E7%A5%A0/9710395\" data-lemmaid=\"9710395\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">留侯祠</a>、芦花谷五大休闲区。</p><p><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%99%BD%E4%BA%91%E5%B1%B1/1365\" data-lemmaid=\"1365\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">白云山</a>融山、石、水、洞、林、草、花、鸟、兽为一体，雄、险、奇、幽、美、妙交相生辉，形成各具特色的景观区，成为中原地区集观光旅游、度假避暑、科研实习、寻古探幽为一体的复合型旅游区，被誉为“人间仙境”、“中原名山”。</p><p><br/> </p>', 'spots/thumbnail/2018/10/5aa745f69bc83_9oqheqt_CxnpWIh.jpg', 'spots/mainfigure/2018/10/659ac7198618367a4cec2e7a2e738bd4b21ce578_DQK3MNA.jpg', 'leisure', '0379-66586666', '全年', '河南省洛阳市嵩县南部伏牛山腹地原始林区', '75', '2018-10-16 09:57:00.000000', '111.859577', '33.680906');
INSERT INTO `scenicspots_spots` VALUES ('3', '鸡冠洞', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, &quot;Microsoft YaHei&quot;, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);\">大型石灰岩溶洞，喀斯特岩溶地貌，鸡冠洞长达5600米，供观赏长度1800余米，观赏面积2.3万平方米。5A级景区。此类洞穴在北方少见，被誉为北国第一洞府。八大景区，玉柱潭、溢彩殿、叠帏宫、洞天河、聚仙宫、瑶池宫、藏秀阁、石林坊。溢彩殿顶悬挂的钟乳石，地面上的石笋星罗棋布、流光溢彩，故而得名。各个景区都各有特色，奇异美丽。</span></p><p><br/> </p><p>鸡冠洞位于河南省<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%B4%9B%E9%98%B3%E5%B8%82\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">洛阳市</a><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%A0%BE%E5%B7%9D%E5%8E%BF/2542573\" data-lemmaid=\"2542573\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">栾川县</a>，县城西三公里，<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%A7%A6%E5%B2%AD\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">秦岭</a>余脉<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E4%BC%8F%E7%89%9B%E5%B1%B1\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">伏牛山</a>支脉鸡冠山的半山腰上，海拔1021米。</p><p>鸡冠洞是一处大型的石灰岩溶洞，喀斯特岩溶地貌，鸡冠洞长达5600米，供观赏长度1800余米，观赏面积2.3万平方米。此类洞穴在北方少见，被誉为北国第一洞府。</p><p>2012年1月9日被中国国家旅游局授予国家5A级旅游景区称号。</p><p><br/> </p>', 'spots/thumbnail/2018/10/eb4f9f6b-bebf-44b5-835a-5d356ab3119c_480_320_T7UrY8k.jpg', 'spots/mainfigure/2018/10/50047581-5abe-400f-90cf-5b4dd9b1a6b5_480_320_8udunHe.jpg', 'natural', '0379-00000000', '全年', '河南省洛阳市栾川县城西三公里', '80', '2018-10-16 09:59:00.000000', '111.577142', '33.789745');
INSERT INTO `scenicspots_spots` VALUES ('4', '洛阳白马寺', '<p><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%99%BD%E9%A9%AC%E5%AF%BA/4680\" data-lemmaid=\"4680\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">白马寺</a>位于河南省洛阳市老城以东12公里，洛龙区白马寺镇内。创建于<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E4%B8%9C%E6%B1%89/395223\" data-lemmaid=\"395223\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">东汉</a>永平十一年（公元68年），中国第一<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%8F%A4%E5%88%B9/6565710\" data-lemmaid=\"6565710\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">古刹</a>，世界著名伽蓝，是佛教传入中国后兴建的第一座官办寺院，有<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E4%B8%AD%E5%9B%BD%E4%BD%9B%E6%95%99/364238\" data-lemmaid=\"364238\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">中国佛教</a>的“祖庭”和“释源”之称，距今已有1900多年的历史。现存的遗址古迹为元、明、清时所留。寺内保存了大量元代夹纻干漆造像如三世佛、二天将、十八罗汉等，弥足珍贵。</p><p>1961年，白马寺被中华人民共和国国务院公布为第一批<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%85%A8%E5%9B%BD%E9%87%8D%E7%82%B9%E6%96%87%E7%89%A9%E4%BF%9D%E6%8A%A4%E5%8D%95%E4%BD%8D\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">全国重点文物保护单位</a>。1983年，被国务院确定为全国<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%B1%89%E4%BC%A0%E4%BD%9B%E6%95%99/3498693\" data-lemmaid=\"3498693\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">汉传佛教</a>重点寺院。2001年1月，白马寺被国家旅游局命名为首批<a target=\"_blank\" href=\"https://baike.baidu.com/item/AAAA%E7%BA%A7%E6%99%AF%E5%8C%BA\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">AAAA级景区</a>。</p><p><br/> </p>', 'spots/thumbnail/2018/10/b151f8198618367a39ac6bc927738bd4b31ce5f9_a4KWxIC.jpg', 'spots/mainfigure/2018/10/908fa0ec08fa513d21fb78ca346d55fbb2fbd954_x4azeuQ.jpg', 'natural', '0379-63781065', '全年', '河南省洛阳市洛龙区白马寺镇', '50', '2018-10-16 10:03:00.000000', '112.611892', '34.727587');
INSERT INTO `scenicspots_spots` VALUES ('5', '中国国花园', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">中国国花园始建于2001年9月，是我国目前最大的牡丹专类观赏园，位于河南省洛阳市洛河南岸隋唐城遗址之上，东起洛龙路，西至</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%89%A1%E4%B8%B9%E6%A1%A5\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">牡丹桥</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">，南临洛宜路，北依</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%B4%9B%E6%B2%B3\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">洛河</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">，东西长2400米，南北最宽524米，占地1548亩。中国国花园以隋唐历史文化为底蕴，以牡丹文化为主要内容，融历史文化、牡丹文化和园林景观为一体，充分展示了牡丹之美、之清、之幽，享有“中国国花第一园”之美誉。自西向东共分为六个景区，即：西入口景区、牡丹文化区、牡丹历史文化区、堤面游赏区、东入口景区、生产管理区。其中种植牡丹1000多个品种50万株，包含牡丹的九大色系，种植乔、灌木及各类植物100多个品种200余万株。在环境布置上以植物见长，自然</span><a class=\"lemma-album layout-right nslog:10000206\" title=\"洛阳半龛居士刘中州牡丹画册页\" href=\"https://baike.baidu.com/pic/%E4%B8%AD%E5%9B%BD%E5%9B%BD%E8%8A%B1%E5%9B%AD/2955321/10333718/5fdf8db1cb134954cb1c01c3544e9258d1094a13?fr=lemma&ct=cover\" target=\"_blank\" nslog-type=\"10000206\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; display: block; width: 221px; border-bottom: 0px; margin: 10px 0px; position: relative; float: right; clear: right; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\"></a></p><p></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">流畅，突出体现了传统</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%9A%87%E5%AE%B6%E5%9B%AD%E6%9E%97\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">皇家园林</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">的造园风格。</span></p><p><br/></p>', 'spots/thumbnail/2018/10/timg_7Squhac.jpeg', 'spots/mainfigure/2018/10/timg_1_cKWahDn_H3hLvUv.jpeg', 'leisure', '0379-65522119', '全年', '东门：洛阳桥南，西门：牡丹桥南', '10', '2018-10-16 10:07:00.000000', '112.465145', '34.661831');

-- ----------------------------
-- Table structure for shop_product
-- ----------------------------
DROP TABLE IF EXISTS `shop_product`;
CREATE TABLE `shop_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `price` double NOT NULL,
  `num` int(11) NOT NULL,
  `freight` int(11) NOT NULL,
  `origin` varchar(20) NOT NULL,
  `pro_type` varchar(3) NOT NULL,
  `buyers` int(11) NOT NULL,
  `comments` int(11) NOT NULL,
  `details` longtext NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `mainimg` varchar(100) NOT NULL,
  `remind` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_product
-- ----------------------------
INSERT INTO `shop_product` VALUES ('1', '红心柚子10斤整箱福建平和管溪蜜柚新鲜水果包邮红肉密柚', '29.8', '473', '0', '福建漳州', 'sg', '30', '0', '<p><span style=\"color: rgb(255, 0, 0);\"><em><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">新品上市</span></em></span></p><p><span style=\"color: rgb(255, 0, 0);\"><em><span style=\"font-size: 24px; font-family: 隶书, SimLi;\"><br/> </span></em></span></p><p><span style=\"color: rgb(255, 0, 0);\"><em><span style=\"font-size: 24px; font-family: 隶书, SimLi;\"><img src=\"/media/shop/ueditor/image_20181101141949_382.png\" title=\"\" alt=\"image.png\"/> </span></em></span></p><p><span style=\"color: rgb(255, 0, 0);\"><em><span style=\"font-size: 24px; font-family: 隶书, SimLi;\"><br/> </span></em></span></p><p><span style=\"color: rgb(255, 0, 0);\"><em><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍<em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0);\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0);\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0);\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0);\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0);\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0);\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em></span></em></span></p>', '2018-08-01 10:11:00.000000', 'product/mainimg/2018/11/u8997057393192590278fm26gp0.jpg', '此商品为鲜活易腐类，不支持7天无理由退货');
INSERT INTO `shop_product` VALUES ('2', '无籽青柠檬 皮薄汁多新鲜水果 500g', '10', '553', '10', '福建厦门', 'sg', '0', '0', '<p><img src=\"/media/shop/ueditor/image_20181101142048_101.png\" title=\"\" alt=\"image.png\"/> </p>', '2018-10-06 14:20:00.000000', 'product/mainimg/2018/11/546475.jpeg', '此商品为鲜活易腐类，不支持7天无理由退货');
INSERT INTO `shop_product` VALUES ('3', '新鲜有机水果大红寒富苹果农场现摘红富士甜脆可口1斤包邮', '10', '561', '0', '辽宁鞍山', 'sg', '50', '0', '<p style=\"text-align: center;\"><span style=\"color: rgb(227, 108, 9); font-size: 36px; text-align: center;\">脆甜多汁大苹果</span></p><p style=\"text-align: center;\"><span style=\"color: rgb(227, 108, 9); font-size: 36px; text-align: center;\"><span style=\"color: rgb(227, 108, 9); font-size: 36px; text-align: center;\">脆甜多汁大苹果</span></span></p><p style=\"text-align: center;\"><span style=\"color: rgb(227, 108, 9); font-size: 36px; text-align: center;\"><span style=\"color: rgb(227, 108, 9); font-size: 36px; text-align: center;\"><span style=\"color: rgb(227, 108, 9); font-size: 36px; text-align: center;\">脆甜多汁大苹果</span></span></span></p><p style=\"text-align: center;\"><span style=\"color: rgb(227, 108, 9); font-size: 36px; text-align: center;\"><span style=\"color: rgb(227, 108, 9); font-size: 36px; text-align: center;\"><span style=\"color: rgb(227, 108, 9); font-size: 36px; text-align: center;\"><span style=\"color: rgb(227, 108, 9); font-size: 36px; text-align: center;\">脆甜多汁大苹果</span></span></span></span></p><p style=\"text-align: center;\"><span style=\"color: rgb(227, 108, 9); font-size: 36px; text-align: center;\"><span style=\"color: rgb(227, 108, 9); font-size: 36px; text-align: center;\"><span style=\"color: rgb(227, 108, 9); font-size: 36px; text-align: center;\"><span style=\"color: rgb(227, 108, 9); font-size: 36px; text-align: center;\"><span style=\"color: rgb(227, 108, 9); font-size: 36px; text-align: center;\">脆甜多汁大苹果</span></span></span></span></span></p>', '2018-11-01 14:36:00.000000', 'product/mainimg/2018/11/34553434.jpeg', null);
INSERT INTO `shop_product` VALUES ('4', '东北大米新米 农家自产长粒香大米5kg精选不抛光散装粳米10', '59', '129', '5', '东北', 'ncp', '0', '0', '<p>大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介</p>', '2018-11-01 14:42:00.000000', 'product/mainimg/2018/11/2142345.jpeg', null);
INSERT INTO `shop_product` VALUES ('5', '黄豆江西农家非转基因自种 5斤打豆浆生豆芽专用散装小黄豆', '72', '1402', '0', '江西', 'ncp', '15', '0', '<ul class=\"parameter2 p-parameter-list list-paddingleft-2\" style=\"list-style-type: none;\"><li><p style=\"text-align: center;\"><span style=\"color: rgb(255, 0, 0);\">商品名称：黄豆江西农家非转基因自种 5斤打豆浆生豆芽专用散装小黄豆</span></p></li><li><p style=\"text-align: center;\"><span style=\"color: rgb(255, 0, 0);\">商品编号：32519106186</span></p></li><li><p style=\"text-align: center;\"><span style=\"color: rgb(255, 0, 0);\">商品毛重：2.5kg</span></p></li><li><p style=\"text-align: center;\"><span style=\"color: rgb(255, 0, 0);\">货号：557403272799</span></p></li><li><p style=\"text-align: center;\"><span style=\"color: rgb(255, 0, 0);\">分类：黄豆</span></p></li></ul><p><br/> </p>', '2018-11-01 14:48:00.000000', 'product/mainimg/2018/11/u8602493881365701743fm200gp0.jpg', null);
INSERT INTO `shop_product` VALUES ('6', '纯铜梅花鹿摆件新中式家居客厅装饰品玄关茶几电视柜创意艺术工艺', '498', '25', '0', '广东中山', 'gyp', '3', '0', '<ul class=\"parameter2 p-parameter-list list-paddingleft-2\" style=\"list-style-type: none;\"><li><p>商品名称：纯铜梅花鹿摆件新中式家居客厅装饰品玄关茶几电视柜创意艺术工艺品办公室书房铜摆设开业招财乔迁礼物礼品 铜梅花鹿</p></li><li><p>商品编号：00000000</p></li><li><p>商品毛重：1.5kg</p></li><li><p>材质：铜</p></li><li><p>风格：新中式</p></li><li><p>类型：桌面摆件</p></li><li><p>分类：装饰摆件</p></li><li><p>适用场景：客厅，玄关，书房，餐厅</p></li></ul><p><br/> </p>', '2018-11-01 14:51:00.000000', 'product/mainimg/2018/11/342355.jpeg', '支持七天无理由退货');
INSERT INTO `shop_product` VALUES ('7', '木制帆船33cm深蓝色2050 客厅酒柜电视柜摆件家居装饰品', '1598', '45', '0', '浙江义乌', 'gyp', '21', '0', '<ul class=\"parameter2 p-parameter-list list-paddingleft-2\" style=\"list-style-type: none;\"><li><p>商品名称：墨斗鱼木制帆船33cm 深蓝色2050</p></li><li><p>商品编号：7476412</p></li><li><p>商品毛重：0.66kg</p></li><li><p>商品产地：浙江义乌</p></li><li><p>材质：木质</p></li><li><p>风格：现代简约</p></li><li><p>类型：桌面摆件</p></li><li><p>外观造型：建筑</p></li><li><p>分类：装饰摆件</p></li><li><p>用途：事业</p></li><li><p>适用场景：客厅，玄关，书房，餐厅</p></li></ul><p><br/> </p>', '2018-11-01 14:54:00.000000', 'product/mainimg/2018/11/123asd.jpeg', '支持七天无理由退货');
INSERT INTO `shop_product` VALUES ('8', '德芙 Dove巧克力分享碗装 丝滑牛奶巧克力 糖果巧克力', '29.8', '839', '0', '北京', 'fsp', '1', '0', '<ul class=\"parameter2 p-parameter-list list-paddingleft-2\" style=\"list-style-type: none;\"><li><p>商品名称：德芙牛奶巧克力</p></li><li><p>商品编号：1178879</p></li><li><p>商品毛重：310.00g</p></li><li><p>商品产地：北京/嘉兴</p></li><li><p>国产/进口：国产</p></li><li><p>分类：巧克力</p></li><li><p>形状：排块</p></li></ul><p><br/> </p>', '2018-11-01 14:55:00.000000', 'product/mainimg/2018/11/timg.jpeg', '');

-- ----------------------------
-- Table structure for shop_propic
-- ----------------------------
DROP TABLE IF EXISTS `shop_propic`;
CREATE TABLE `shop_propic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_propic_product_id_32f51b91_fk_shop_product_id` (`product_id`),
  CONSTRAINT `shop_propic_product_id_32f51b91_fk_shop_product_id` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_propic
-- ----------------------------
INSERT INTO `shop_propic` VALUES ('1', 'product/2018/11/sdadasdsf.jpeg', '1', '2018-11-01 14:33:00.000000');
INSERT INTO `shop_propic` VALUES ('2', 'product/2018/11/u13169828951304490032fm26gp0.jpg', '1', '2018-11-01 14:34:00.000000');
INSERT INTO `shop_propic` VALUES ('3', 'product/2018/11/u18929235521492736427fm200gp0.jpg', '1', '2018-11-01 14:34:00.000000');
INSERT INTO `shop_propic` VALUES ('5', 'product/2018/11/youzi1.jpeg', '1', '2018-11-01 14:34:00.000000');
INSERT INTO `shop_propic` VALUES ('6', 'product/2018/11/u5982165093666614667fm26gp0.jpg', '2', '2018-11-01 14:35:00.000000');
INSERT INTO `shop_propic` VALUES ('7', 'product/2018/11/u7601192363179539404fm26gp0.jpg', '2', '2018-11-01 14:36:00.000000');
INSERT INTO `shop_propic` VALUES ('8', 'product/2018/11/u10823352311037865581fm200gp0.jpg', '2', '2018-11-01 14:36:00.000000');
INSERT INTO `shop_propic` VALUES ('9', 'product/2018/11/u13006401731507832118fm200gp0.jpg', '3', '2018-11-01 14:39:00.000000');
INSERT INTO `shop_propic` VALUES ('10', 'product/2018/11/u21326009963129401320fm200gp0.jpg', '3', '2018-11-01 14:40:00.000000');
INSERT INTO `shop_propic` VALUES ('11', 'product/2018/11/u2619906361712776241fm200gp0.jpg', '3', '2018-11-01 14:40:00.000000');
INSERT INTO `shop_propic` VALUES ('12', 'product/2018/11/5b6176c3N4ace3d7a.jpg', '4', '2018-11-01 14:46:00.000000');
INSERT INTO `shop_propic` VALUES ('13', 'product/2018/11/5b6176caNdd0e0859.jpg', '4', '2018-11-01 14:47:00.000000');
INSERT INTO `shop_propic` VALUES ('14', 'product/2018/11/u21469647391264340391fm200gp0.jpg', '5', '2018-11-01 14:50:00.000000');
INSERT INTO `shop_propic` VALUES ('15', 'product/2018/11/u22923944891760817181fm200gp0.jpg', '5', '2018-11-01 14:50:00.000000');
INSERT INTO `shop_propic` VALUES ('16', 'product/2018/11/u257853416681158271fm200gp0.jpg', '5', '2018-11-01 14:50:00.000000');
INSERT INTO `shop_propic` VALUES ('17', 'product/2018/11/u42067941022732747374fm26gp0.jpg', '5', '2018-11-01 14:50:00.000000');
INSERT INTO `shop_propic` VALUES ('18', 'product/2018/11/5b5edba5N60720245.jpg', '6', '2018-11-01 14:53:00.000000');
INSERT INTO `shop_propic` VALUES ('19', 'product/2018/11/5b5edba6N904080ff.jpg', '6', '2018-11-01 14:53:00.000000');
INSERT INTO `shop_propic` VALUES ('20', 'product/2018/11/5b068a12N6bb7b1e4.jpg', '7', '2018-11-01 14:55:00.000000');
INSERT INTO `shop_propic` VALUES ('21', 'product/2018/11/u12968643141600296057fm26gp0.jpg', '8', '2018-11-01 14:59:00.000000');
INSERT INTO `shop_propic` VALUES ('22', 'product/2018/11/u23076616973972066607fm26gp0.jpg', '8', '2018-11-01 14:59:00.000000');
INSERT INTO `shop_propic` VALUES ('23', 'product/2018/11/u36642129033322461283fm26gp0.jpg', '8', '2018-11-01 14:59:00.000000');

-- ----------------------------
-- Table structure for users_areainfo
-- ----------------------------
DROP TABLE IF EXISTS `users_areainfo`;
CREATE TABLE `users_areainfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `Parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_areainfo_Parent_id_1438e84c_fk_users_areainfo_id` (`Parent_id`),
  CONSTRAINT `users_areainfo_Parent_id_1438e84c_fk_users_areainfo_id` FOREIGN KEY (`Parent_id`) REFERENCES `users_areainfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=990101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_areainfo
-- ----------------------------
INSERT INTO `users_areainfo` VALUES ('110000', '北京', '0');
INSERT INTO `users_areainfo` VALUES ('110100', '北京市', '110000');
INSERT INTO `users_areainfo` VALUES ('110101', '东城', '110100');
INSERT INTO `users_areainfo` VALUES ('110102', '西城', '110100');
INSERT INTO `users_areainfo` VALUES ('110103', '崇文', '110100');
INSERT INTO `users_areainfo` VALUES ('110104', '宣武', '110100');
INSERT INTO `users_areainfo` VALUES ('110105', '朝阳', '110100');
INSERT INTO `users_areainfo` VALUES ('110106', '丰台', '110100');
INSERT INTO `users_areainfo` VALUES ('110107', '石景山', '110100');
INSERT INTO `users_areainfo` VALUES ('110108', '海淀', '110100');
INSERT INTO `users_areainfo` VALUES ('110109', '门头沟', '110100');
INSERT INTO `users_areainfo` VALUES ('110111', '房山', '110100');
INSERT INTO `users_areainfo` VALUES ('110112', '通州', '110100');
INSERT INTO `users_areainfo` VALUES ('110113', '顺义', '110100');
INSERT INTO `users_areainfo` VALUES ('110114', '昌平', '110100');
INSERT INTO `users_areainfo` VALUES ('110115', '大兴', '110100');
INSERT INTO `users_areainfo` VALUES ('110116', '怀柔', '110100');
INSERT INTO `users_areainfo` VALUES ('110117', '平谷', '110100');
INSERT INTO `users_areainfo` VALUES ('110228', '密云', '110100');
INSERT INTO `users_areainfo` VALUES ('110229', '延庆', '110100');
INSERT INTO `users_areainfo` VALUES ('110230', '其它', '110100');
INSERT INTO `users_areainfo` VALUES ('120000', '天津', '0');
INSERT INTO `users_areainfo` VALUES ('120100', '天津市', '120000');
INSERT INTO `users_areainfo` VALUES ('120101', '和平', '120100');
INSERT INTO `users_areainfo` VALUES ('120102', '河东', '120100');
INSERT INTO `users_areainfo` VALUES ('120103', '河西', '120100');
INSERT INTO `users_areainfo` VALUES ('120104', '南开', '120100');
INSERT INTO `users_areainfo` VALUES ('120105', '河北', '120100');
INSERT INTO `users_areainfo` VALUES ('120106', '红桥', '120100');
INSERT INTO `users_areainfo` VALUES ('120107', '塘沽', '120100');
INSERT INTO `users_areainfo` VALUES ('120108', '汉沽', '120100');
INSERT INTO `users_areainfo` VALUES ('120109', '大港', '120100');
INSERT INTO `users_areainfo` VALUES ('120110', '东丽', '120100');
INSERT INTO `users_areainfo` VALUES ('120111', '西青', '120100');
INSERT INTO `users_areainfo` VALUES ('120112', '津南', '120100');
INSERT INTO `users_areainfo` VALUES ('120113', '北辰', '120100');
INSERT INTO `users_areainfo` VALUES ('120114', '武清', '120100');
INSERT INTO `users_areainfo` VALUES ('120115', '宝坻', '120100');
INSERT INTO `users_areainfo` VALUES ('120221', '宁河', '120100');
INSERT INTO `users_areainfo` VALUES ('120223', '静海', '120100');
INSERT INTO `users_areainfo` VALUES ('120225', '蓟县', '120100');
INSERT INTO `users_areainfo` VALUES ('120226', '其它', '120100');
INSERT INTO `users_areainfo` VALUES ('130000', '河北', '0');
INSERT INTO `users_areainfo` VALUES ('130100', '石家庄', '130000');
INSERT INTO `users_areainfo` VALUES ('130102', '长安区', '130100');
INSERT INTO `users_areainfo` VALUES ('130103', '桥东区', '130100');
INSERT INTO `users_areainfo` VALUES ('130104', '桥西区', '130100');
INSERT INTO `users_areainfo` VALUES ('130105', '新华区', '130100');
INSERT INTO `users_areainfo` VALUES ('130107', '井陉矿区', '130100');
INSERT INTO `users_areainfo` VALUES ('130108', '裕华区', '130100');
INSERT INTO `users_areainfo` VALUES ('130121', '井陉县', '130100');
INSERT INTO `users_areainfo` VALUES ('130123', '正定县', '130100');
INSERT INTO `users_areainfo` VALUES ('130124', '栾城县', '130100');
INSERT INTO `users_areainfo` VALUES ('130125', '行唐县', '130100');
INSERT INTO `users_areainfo` VALUES ('130126', '灵寿县', '130100');
INSERT INTO `users_areainfo` VALUES ('130127', '高邑县', '130100');
INSERT INTO `users_areainfo` VALUES ('130128', '深泽县', '130100');
INSERT INTO `users_areainfo` VALUES ('130129', '赞皇县', '130100');
INSERT INTO `users_areainfo` VALUES ('130130', '无极县', '130100');
INSERT INTO `users_areainfo` VALUES ('130131', '平山县', '130100');
INSERT INTO `users_areainfo` VALUES ('130132', '元氏县', '130100');
INSERT INTO `users_areainfo` VALUES ('130133', '赵县', '130100');
INSERT INTO `users_areainfo` VALUES ('130181', '辛集市', '130100');
INSERT INTO `users_areainfo` VALUES ('130182', '藁城市', '130100');
INSERT INTO `users_areainfo` VALUES ('130183', '晋州市', '130100');
INSERT INTO `users_areainfo` VALUES ('130184', '新乐市', '130100');
INSERT INTO `users_areainfo` VALUES ('130185', '鹿泉市', '130100');
INSERT INTO `users_areainfo` VALUES ('130186', '其它区', '130100');
INSERT INTO `users_areainfo` VALUES ('130200', '唐山', '130000');
INSERT INTO `users_areainfo` VALUES ('130202', '路南区', '130200');
INSERT INTO `users_areainfo` VALUES ('130203', '路北区', '130200');
INSERT INTO `users_areainfo` VALUES ('130204', '古冶区', '130200');
INSERT INTO `users_areainfo` VALUES ('130205', '开平区', '130200');
INSERT INTO `users_areainfo` VALUES ('130207', '丰南区', '130200');
INSERT INTO `users_areainfo` VALUES ('130208', '丰润区', '130200');
INSERT INTO `users_areainfo` VALUES ('130223', '滦县', '130200');
INSERT INTO `users_areainfo` VALUES ('130224', '滦南县', '130200');
INSERT INTO `users_areainfo` VALUES ('130225', '乐亭县', '130200');
INSERT INTO `users_areainfo` VALUES ('130227', '迁西县', '130200');
INSERT INTO `users_areainfo` VALUES ('130229', '玉田县', '130200');
INSERT INTO `users_areainfo` VALUES ('130230', '唐海县', '130200');
INSERT INTO `users_areainfo` VALUES ('130281', '遵化市', '130200');
INSERT INTO `users_areainfo` VALUES ('130283', '迁安市', '130200');
INSERT INTO `users_areainfo` VALUES ('130284', '其它区', '130200');
INSERT INTO `users_areainfo` VALUES ('130300', '秦皇岛', '130000');
INSERT INTO `users_areainfo` VALUES ('130302', '海港区', '130300');
INSERT INTO `users_areainfo` VALUES ('130303', '山海关区', '130300');
INSERT INTO `users_areainfo` VALUES ('130304', '北戴河区', '130300');
INSERT INTO `users_areainfo` VALUES ('130321', '青龙满族自治县', '130300');
INSERT INTO `users_areainfo` VALUES ('130322', '昌黎县', '130300');
INSERT INTO `users_areainfo` VALUES ('130323', '抚宁县', '130300');
INSERT INTO `users_areainfo` VALUES ('130324', '卢龙县', '130300');
INSERT INTO `users_areainfo` VALUES ('130398', '其它区', '130300');
INSERT INTO `users_areainfo` VALUES ('130399', '经济技术开发区', '130300');
INSERT INTO `users_areainfo` VALUES ('130400', '邯郸', '130000');
INSERT INTO `users_areainfo` VALUES ('130402', '邯山区', '130400');
INSERT INTO `users_areainfo` VALUES ('130403', '丛台区', '130400');
INSERT INTO `users_areainfo` VALUES ('130404', '复兴区', '130400');
INSERT INTO `users_areainfo` VALUES ('130406', '峰峰矿区', '130400');
INSERT INTO `users_areainfo` VALUES ('130421', '邯郸县', '130400');
INSERT INTO `users_areainfo` VALUES ('130423', '临漳县', '130400');
INSERT INTO `users_areainfo` VALUES ('130424', '成安县', '130400');
INSERT INTO `users_areainfo` VALUES ('130425', '大名县', '130400');
INSERT INTO `users_areainfo` VALUES ('130426', '涉县', '130400');
INSERT INTO `users_areainfo` VALUES ('130427', '磁县', '130400');
INSERT INTO `users_areainfo` VALUES ('130428', '肥乡县', '130400');
INSERT INTO `users_areainfo` VALUES ('130429', '永年县', '130400');
INSERT INTO `users_areainfo` VALUES ('130430', '邱县', '130400');
INSERT INTO `users_areainfo` VALUES ('130431', '鸡泽县', '130400');
INSERT INTO `users_areainfo` VALUES ('130432', '广平县', '130400');
INSERT INTO `users_areainfo` VALUES ('130433', '馆陶县', '130400');
INSERT INTO `users_areainfo` VALUES ('130434', '魏县', '130400');
INSERT INTO `users_areainfo` VALUES ('130435', '曲周县', '130400');
INSERT INTO `users_areainfo` VALUES ('130481', '武安市', '130400');
INSERT INTO `users_areainfo` VALUES ('130482', '其它区', '130400');
INSERT INTO `users_areainfo` VALUES ('130500', '邢台', '130000');
INSERT INTO `users_areainfo` VALUES ('130502', '桥东区', '130500');
INSERT INTO `users_areainfo` VALUES ('130503', '桥西区', '130500');
INSERT INTO `users_areainfo` VALUES ('130521', '邢台县', '130500');
INSERT INTO `users_areainfo` VALUES ('130522', '临城县', '130500');
INSERT INTO `users_areainfo` VALUES ('130523', '内丘县', '130500');
INSERT INTO `users_areainfo` VALUES ('130524', '柏乡县', '130500');
INSERT INTO `users_areainfo` VALUES ('130525', '隆尧县', '130500');
INSERT INTO `users_areainfo` VALUES ('130526', '任县', '130500');
INSERT INTO `users_areainfo` VALUES ('130527', '南和县', '130500');
INSERT INTO `users_areainfo` VALUES ('130528', '宁晋县', '130500');
INSERT INTO `users_areainfo` VALUES ('130529', '巨鹿县', '130500');
INSERT INTO `users_areainfo` VALUES ('130530', '新河县', '130500');
INSERT INTO `users_areainfo` VALUES ('130531', '广宗县', '130500');
INSERT INTO `users_areainfo` VALUES ('130532', '平乡县', '130500');
INSERT INTO `users_areainfo` VALUES ('130533', '威县', '130500');
INSERT INTO `users_areainfo` VALUES ('130534', '清河县', '130500');
INSERT INTO `users_areainfo` VALUES ('130535', '临西县', '130500');
INSERT INTO `users_areainfo` VALUES ('130581', '南宫市', '130500');
INSERT INTO `users_areainfo` VALUES ('130582', '沙河市', '130500');
INSERT INTO `users_areainfo` VALUES ('130583', '其它区', '130500');
INSERT INTO `users_areainfo` VALUES ('130600', '保定', '130000');
INSERT INTO `users_areainfo` VALUES ('130602', '新市区', '130600');
INSERT INTO `users_areainfo` VALUES ('130603', '北市区', '130600');
INSERT INTO `users_areainfo` VALUES ('130604', '南市区', '130600');
INSERT INTO `users_areainfo` VALUES ('130621', '满城县', '130600');
INSERT INTO `users_areainfo` VALUES ('130622', '清苑县', '130600');
INSERT INTO `users_areainfo` VALUES ('130623', '涞水县', '130600');
INSERT INTO `users_areainfo` VALUES ('130624', '阜平县', '130600');
INSERT INTO `users_areainfo` VALUES ('130625', '徐水县', '130600');
INSERT INTO `users_areainfo` VALUES ('130626', '定兴县', '130600');
INSERT INTO `users_areainfo` VALUES ('130627', '唐县', '130600');
INSERT INTO `users_areainfo` VALUES ('130628', '高阳县', '130600');
INSERT INTO `users_areainfo` VALUES ('130629', '容城县', '130600');
INSERT INTO `users_areainfo` VALUES ('130630', '涞源县', '130600');
INSERT INTO `users_areainfo` VALUES ('130631', '望都县', '130600');
INSERT INTO `users_areainfo` VALUES ('130632', '安新县', '130600');
INSERT INTO `users_areainfo` VALUES ('130633', '易县', '130600');
INSERT INTO `users_areainfo` VALUES ('130634', '曲阳县', '130600');
INSERT INTO `users_areainfo` VALUES ('130635', '蠡县', '130600');
INSERT INTO `users_areainfo` VALUES ('130636', '顺平县', '130600');
INSERT INTO `users_areainfo` VALUES ('130637', '博野县', '130600');
INSERT INTO `users_areainfo` VALUES ('130638', '雄县', '130600');
INSERT INTO `users_areainfo` VALUES ('130681', '涿州市', '130600');
INSERT INTO `users_areainfo` VALUES ('130682', '定州市', '130600');
INSERT INTO `users_areainfo` VALUES ('130683', '安国市', '130600');
INSERT INTO `users_areainfo` VALUES ('130684', '高碑店市', '130600');
INSERT INTO `users_areainfo` VALUES ('130698', '高开区', '130600');
INSERT INTO `users_areainfo` VALUES ('130699', '其它区', '130600');
INSERT INTO `users_areainfo` VALUES ('130700', '张家口', '130000');
INSERT INTO `users_areainfo` VALUES ('130702', '桥东区', '130700');
INSERT INTO `users_areainfo` VALUES ('130703', '桥西区', '130700');
INSERT INTO `users_areainfo` VALUES ('130705', '宣化区', '130700');
INSERT INTO `users_areainfo` VALUES ('130706', '下花园区', '130700');
INSERT INTO `users_areainfo` VALUES ('130721', '宣化县', '130700');
INSERT INTO `users_areainfo` VALUES ('130722', '张北县', '130700');
INSERT INTO `users_areainfo` VALUES ('130723', '康保县', '130700');
INSERT INTO `users_areainfo` VALUES ('130724', '沽源县', '130700');
INSERT INTO `users_areainfo` VALUES ('130725', '尚义县', '130700');
INSERT INTO `users_areainfo` VALUES ('130726', '蔚县', '130700');
INSERT INTO `users_areainfo` VALUES ('130727', '阳原县', '130700');
INSERT INTO `users_areainfo` VALUES ('130728', '怀安县', '130700');
INSERT INTO `users_areainfo` VALUES ('130729', '万全县', '130700');
INSERT INTO `users_areainfo` VALUES ('130730', '怀来县', '130700');
INSERT INTO `users_areainfo` VALUES ('130731', '涿鹿县', '130700');
INSERT INTO `users_areainfo` VALUES ('130732', '赤城县', '130700');
INSERT INTO `users_areainfo` VALUES ('130733', '崇礼县', '130700');
INSERT INTO `users_areainfo` VALUES ('130734', '其它区', '130700');
INSERT INTO `users_areainfo` VALUES ('130800', '承德', '130000');
INSERT INTO `users_areainfo` VALUES ('130802', '双桥区', '130800');
INSERT INTO `users_areainfo` VALUES ('130803', '双滦区', '130800');
INSERT INTO `users_areainfo` VALUES ('130804', '鹰手营子矿区', '130800');
INSERT INTO `users_areainfo` VALUES ('130821', '承德县', '130800');
INSERT INTO `users_areainfo` VALUES ('130822', '兴隆县', '130800');
INSERT INTO `users_areainfo` VALUES ('130823', '平泉县', '130800');
INSERT INTO `users_areainfo` VALUES ('130824', '滦平县', '130800');
INSERT INTO `users_areainfo` VALUES ('130825', '隆化县', '130800');
INSERT INTO `users_areainfo` VALUES ('130826', '丰宁满族自治县', '130800');
INSERT INTO `users_areainfo` VALUES ('130827', '宽城满族自治县', '130800');
INSERT INTO `users_areainfo` VALUES ('130828', '围场满族蒙古族自治县', '130800');
INSERT INTO `users_areainfo` VALUES ('130829', '其它区', '130800');
INSERT INTO `users_areainfo` VALUES ('130900', '沧州', '130000');
INSERT INTO `users_areainfo` VALUES ('130902', '新华区', '130900');
INSERT INTO `users_areainfo` VALUES ('130903', '运河区', '130900');
INSERT INTO `users_areainfo` VALUES ('130921', '沧县', '130900');
INSERT INTO `users_areainfo` VALUES ('130922', '青县', '130900');
INSERT INTO `users_areainfo` VALUES ('130923', '东光县', '130900');
INSERT INTO `users_areainfo` VALUES ('130924', '海兴县', '130900');
INSERT INTO `users_areainfo` VALUES ('130925', '盐山县', '130900');
INSERT INTO `users_areainfo` VALUES ('130926', '肃宁县', '130900');
INSERT INTO `users_areainfo` VALUES ('130927', '南皮县', '130900');
INSERT INTO `users_areainfo` VALUES ('130928', '吴桥县', '130900');
INSERT INTO `users_areainfo` VALUES ('130929', '献县', '130900');
INSERT INTO `users_areainfo` VALUES ('130930', '孟村回族自治县', '130900');
INSERT INTO `users_areainfo` VALUES ('130981', '泊头市', '130900');
INSERT INTO `users_areainfo` VALUES ('130982', '任丘市', '130900');
INSERT INTO `users_areainfo` VALUES ('130983', '黄骅市', '130900');
INSERT INTO `users_areainfo` VALUES ('130984', '河间市', '130900');
INSERT INTO `users_areainfo` VALUES ('130985', '其它区', '130900');
INSERT INTO `users_areainfo` VALUES ('131000', '廊坊', '130000');
INSERT INTO `users_areainfo` VALUES ('131002', '安次区', '131000');
INSERT INTO `users_areainfo` VALUES ('131003', '广阳区', '131000');
INSERT INTO `users_areainfo` VALUES ('131022', '固安县', '131000');
INSERT INTO `users_areainfo` VALUES ('131023', '永清县', '131000');
INSERT INTO `users_areainfo` VALUES ('131024', '香河县', '131000');
INSERT INTO `users_areainfo` VALUES ('131025', '大城县', '131000');
INSERT INTO `users_areainfo` VALUES ('131026', '文安县', '131000');
INSERT INTO `users_areainfo` VALUES ('131028', '大厂回族自治县', '131000');
INSERT INTO `users_areainfo` VALUES ('131051', '开发区', '131000');
INSERT INTO `users_areainfo` VALUES ('131052', '燕郊经济技术开发区', '131000');
INSERT INTO `users_areainfo` VALUES ('131081', '霸州市', '131000');
INSERT INTO `users_areainfo` VALUES ('131082', '三河市', '131000');
INSERT INTO `users_areainfo` VALUES ('131083', '其它区', '131000');
INSERT INTO `users_areainfo` VALUES ('131100', '衡水', '130000');
INSERT INTO `users_areainfo` VALUES ('131102', '桃城区', '131100');
INSERT INTO `users_areainfo` VALUES ('131121', '枣强县', '131100');
INSERT INTO `users_areainfo` VALUES ('131122', '武邑县', '131100');
INSERT INTO `users_areainfo` VALUES ('131123', '武强县', '131100');
INSERT INTO `users_areainfo` VALUES ('131124', '饶阳县', '131100');
INSERT INTO `users_areainfo` VALUES ('131125', '安平县', '131100');
INSERT INTO `users_areainfo` VALUES ('131126', '故城县', '131100');
INSERT INTO `users_areainfo` VALUES ('131127', '景县', '131100');
INSERT INTO `users_areainfo` VALUES ('131128', '阜城县', '131100');
INSERT INTO `users_areainfo` VALUES ('131181', '冀州市', '131100');
INSERT INTO `users_areainfo` VALUES ('131182', '深州市', '131100');
INSERT INTO `users_areainfo` VALUES ('131183', '其它区', '131100');
INSERT INTO `users_areainfo` VALUES ('140000', '山西', '0');
INSERT INTO `users_areainfo` VALUES ('140100', '太原', '140000');
INSERT INTO `users_areainfo` VALUES ('140105', '小店区', '140100');
INSERT INTO `users_areainfo` VALUES ('140106', '迎泽区', '140100');
INSERT INTO `users_areainfo` VALUES ('140107', '杏花岭区', '140100');
INSERT INTO `users_areainfo` VALUES ('140108', '尖草坪区', '140100');
INSERT INTO `users_areainfo` VALUES ('140109', '万柏林区', '140100');
INSERT INTO `users_areainfo` VALUES ('140110', '晋源区', '140100');
INSERT INTO `users_areainfo` VALUES ('140121', '清徐县', '140100');
INSERT INTO `users_areainfo` VALUES ('140122', '阳曲县', '140100');
INSERT INTO `users_areainfo` VALUES ('140123', '娄烦县', '140100');
INSERT INTO `users_areainfo` VALUES ('140181', '古交市', '140100');
INSERT INTO `users_areainfo` VALUES ('140182', '其它区', '140100');
INSERT INTO `users_areainfo` VALUES ('140200', '大同', '140000');
INSERT INTO `users_areainfo` VALUES ('140202', '城区', '140200');
INSERT INTO `users_areainfo` VALUES ('140203', '矿区', '140200');
INSERT INTO `users_areainfo` VALUES ('140211', '南郊区', '140200');
INSERT INTO `users_areainfo` VALUES ('140212', '新荣区', '140200');
INSERT INTO `users_areainfo` VALUES ('140221', '阳高县', '140200');
INSERT INTO `users_areainfo` VALUES ('140222', '天镇县', '140200');
INSERT INTO `users_areainfo` VALUES ('140223', '广灵县', '140200');
INSERT INTO `users_areainfo` VALUES ('140224', '灵丘县', '140200');
INSERT INTO `users_areainfo` VALUES ('140225', '浑源县', '140200');
INSERT INTO `users_areainfo` VALUES ('140226', '左云县', '140200');
INSERT INTO `users_areainfo` VALUES ('140227', '大同县', '140200');
INSERT INTO `users_areainfo` VALUES ('140228', '其它区', '140200');
INSERT INTO `users_areainfo` VALUES ('140300', '阳泉', '140000');
INSERT INTO `users_areainfo` VALUES ('140302', '城区', '140300');
INSERT INTO `users_areainfo` VALUES ('140303', '矿区', '140300');
INSERT INTO `users_areainfo` VALUES ('140311', '郊区', '140300');
INSERT INTO `users_areainfo` VALUES ('140321', '平定县', '140300');
INSERT INTO `users_areainfo` VALUES ('140322', '盂县', '140300');
INSERT INTO `users_areainfo` VALUES ('140323', '其它区', '140300');
INSERT INTO `users_areainfo` VALUES ('140400', '长治', '140000');
INSERT INTO `users_areainfo` VALUES ('140421', '长治县', '140400');
INSERT INTO `users_areainfo` VALUES ('140423', '襄垣县', '140400');
INSERT INTO `users_areainfo` VALUES ('140424', '屯留县', '140400');
INSERT INTO `users_areainfo` VALUES ('140425', '平顺县', '140400');
INSERT INTO `users_areainfo` VALUES ('140426', '黎城县', '140400');
INSERT INTO `users_areainfo` VALUES ('140427', '壶关县', '140400');
INSERT INTO `users_areainfo` VALUES ('140428', '长子县', '140400');
INSERT INTO `users_areainfo` VALUES ('140429', '武乡县', '140400');
INSERT INTO `users_areainfo` VALUES ('140430', '沁县', '140400');
INSERT INTO `users_areainfo` VALUES ('140431', '沁源县', '140400');
INSERT INTO `users_areainfo` VALUES ('140481', '潞城市', '140400');
INSERT INTO `users_areainfo` VALUES ('140482', '城区', '140400');
INSERT INTO `users_areainfo` VALUES ('140483', '郊区', '140400');
INSERT INTO `users_areainfo` VALUES ('140484', '高新区', '140400');
INSERT INTO `users_areainfo` VALUES ('140485', '其它区', '140400');
INSERT INTO `users_areainfo` VALUES ('140500', '晋城', '140000');
INSERT INTO `users_areainfo` VALUES ('140502', '城区', '140500');
INSERT INTO `users_areainfo` VALUES ('140521', '沁水县', '140500');
INSERT INTO `users_areainfo` VALUES ('140522', '阳城县', '140500');
INSERT INTO `users_areainfo` VALUES ('140524', '陵川县', '140500');
INSERT INTO `users_areainfo` VALUES ('140525', '泽州县', '140500');
INSERT INTO `users_areainfo` VALUES ('140581', '高平市', '140500');
INSERT INTO `users_areainfo` VALUES ('140582', '其它区', '140500');
INSERT INTO `users_areainfo` VALUES ('140600', '朔州', '140000');
INSERT INTO `users_areainfo` VALUES ('140602', '朔城区', '140600');
INSERT INTO `users_areainfo` VALUES ('140603', '平鲁区', '140600');
INSERT INTO `users_areainfo` VALUES ('140621', '山阴县', '140600');
INSERT INTO `users_areainfo` VALUES ('140622', '应县', '140600');
INSERT INTO `users_areainfo` VALUES ('140623', '右玉县', '140600');
INSERT INTO `users_areainfo` VALUES ('140624', '怀仁县', '140600');
INSERT INTO `users_areainfo` VALUES ('140625', '其它区', '140600');
INSERT INTO `users_areainfo` VALUES ('140700', '晋中', '140000');
INSERT INTO `users_areainfo` VALUES ('140702', '榆次区', '140700');
INSERT INTO `users_areainfo` VALUES ('140721', '榆社县', '140700');
INSERT INTO `users_areainfo` VALUES ('140722', '左权县', '140700');
INSERT INTO `users_areainfo` VALUES ('140723', '和顺县', '140700');
INSERT INTO `users_areainfo` VALUES ('140724', '昔阳县', '140700');
INSERT INTO `users_areainfo` VALUES ('140725', '寿阳县', '140700');
INSERT INTO `users_areainfo` VALUES ('140726', '太谷县', '140700');
INSERT INTO `users_areainfo` VALUES ('140727', '祁县', '140700');
INSERT INTO `users_areainfo` VALUES ('140728', '平遥县', '140700');
INSERT INTO `users_areainfo` VALUES ('140729', '灵石县', '140700');
INSERT INTO `users_areainfo` VALUES ('140781', '介休市', '140700');
INSERT INTO `users_areainfo` VALUES ('140782', '其它区', '140700');
INSERT INTO `users_areainfo` VALUES ('140800', '运城', '140000');
INSERT INTO `users_areainfo` VALUES ('140802', '盐湖区', '140800');
INSERT INTO `users_areainfo` VALUES ('140821', '临猗县', '140800');
INSERT INTO `users_areainfo` VALUES ('140822', '万荣县', '140800');
INSERT INTO `users_areainfo` VALUES ('140823', '闻喜县', '140800');
INSERT INTO `users_areainfo` VALUES ('140824', '稷山县', '140800');
INSERT INTO `users_areainfo` VALUES ('140825', '新绛县', '140800');
INSERT INTO `users_areainfo` VALUES ('140826', '绛县', '140800');
INSERT INTO `users_areainfo` VALUES ('140827', '垣曲县', '140800');
INSERT INTO `users_areainfo` VALUES ('140828', '夏县', '140800');
INSERT INTO `users_areainfo` VALUES ('140829', '平陆县', '140800');
INSERT INTO `users_areainfo` VALUES ('140830', '芮城县', '140800');
INSERT INTO `users_areainfo` VALUES ('140881', '永济市', '140800');
INSERT INTO `users_areainfo` VALUES ('140882', '河津市', '140800');
INSERT INTO `users_areainfo` VALUES ('140883', '其它区', '140800');
INSERT INTO `users_areainfo` VALUES ('140900', '忻州', '140000');
INSERT INTO `users_areainfo` VALUES ('140902', '忻府区', '140900');
INSERT INTO `users_areainfo` VALUES ('140921', '定襄县', '140900');
INSERT INTO `users_areainfo` VALUES ('140922', '五台县', '140900');
INSERT INTO `users_areainfo` VALUES ('140923', '代县', '140900');
INSERT INTO `users_areainfo` VALUES ('140924', '繁峙县', '140900');
INSERT INTO `users_areainfo` VALUES ('140925', '宁武县', '140900');
INSERT INTO `users_areainfo` VALUES ('140926', '静乐县', '140900');
INSERT INTO `users_areainfo` VALUES ('140927', '神池县', '140900');
INSERT INTO `users_areainfo` VALUES ('140928', '五寨县', '140900');
INSERT INTO `users_areainfo` VALUES ('140929', '岢岚县', '140900');
INSERT INTO `users_areainfo` VALUES ('140930', '河曲县', '140900');
INSERT INTO `users_areainfo` VALUES ('140931', '保德县', '140900');
INSERT INTO `users_areainfo` VALUES ('140932', '偏关县', '140900');
INSERT INTO `users_areainfo` VALUES ('140981', '原平市', '140900');
INSERT INTO `users_areainfo` VALUES ('140982', '其它区', '140900');
INSERT INTO `users_areainfo` VALUES ('141000', '临汾', '140000');
INSERT INTO `users_areainfo` VALUES ('141002', '尧都区', '141000');
INSERT INTO `users_areainfo` VALUES ('141021', '曲沃县', '141000');
INSERT INTO `users_areainfo` VALUES ('141022', '翼城县', '141000');
INSERT INTO `users_areainfo` VALUES ('141023', '襄汾县', '141000');
INSERT INTO `users_areainfo` VALUES ('141024', '洪洞县', '141000');
INSERT INTO `users_areainfo` VALUES ('141025', '古县', '141000');
INSERT INTO `users_areainfo` VALUES ('141026', '安泽县', '141000');
INSERT INTO `users_areainfo` VALUES ('141027', '浮山县', '141000');
INSERT INTO `users_areainfo` VALUES ('141028', '吉县', '141000');
INSERT INTO `users_areainfo` VALUES ('141029', '乡宁县', '141000');
INSERT INTO `users_areainfo` VALUES ('141030', '大宁县', '141000');
INSERT INTO `users_areainfo` VALUES ('141031', '隰县', '141000');
INSERT INTO `users_areainfo` VALUES ('141032', '永和县', '141000');
INSERT INTO `users_areainfo` VALUES ('141033', '蒲县', '141000');
INSERT INTO `users_areainfo` VALUES ('141034', '汾西县', '141000');
INSERT INTO `users_areainfo` VALUES ('141081', '侯马市', '141000');
INSERT INTO `users_areainfo` VALUES ('141082', '霍州市', '141000');
INSERT INTO `users_areainfo` VALUES ('141083', '其它区', '141000');
INSERT INTO `users_areainfo` VALUES ('141100', '吕梁', '140000');
INSERT INTO `users_areainfo` VALUES ('141102', '离石区', '141100');
INSERT INTO `users_areainfo` VALUES ('141121', '文水县', '141100');
INSERT INTO `users_areainfo` VALUES ('141122', '交城县', '141100');
INSERT INTO `users_areainfo` VALUES ('141123', '兴县', '141100');
INSERT INTO `users_areainfo` VALUES ('141124', '临县', '141100');
INSERT INTO `users_areainfo` VALUES ('141125', '柳林县', '141100');
INSERT INTO `users_areainfo` VALUES ('141126', '石楼县', '141100');
INSERT INTO `users_areainfo` VALUES ('141127', '岚县', '141100');
INSERT INTO `users_areainfo` VALUES ('141128', '方山县', '141100');
INSERT INTO `users_areainfo` VALUES ('141129', '中阳县', '141100');
INSERT INTO `users_areainfo` VALUES ('141130', '交口县', '141100');
INSERT INTO `users_areainfo` VALUES ('141181', '孝义市', '141100');
INSERT INTO `users_areainfo` VALUES ('141182', '汾阳市', '141100');
INSERT INTO `users_areainfo` VALUES ('141183', '其它区', '141100');
INSERT INTO `users_areainfo` VALUES ('150000', '内蒙', '0');
INSERT INTO `users_areainfo` VALUES ('150100', '呼和浩特', '150000');
INSERT INTO `users_areainfo` VALUES ('150102', '新城区', '150100');
INSERT INTO `users_areainfo` VALUES ('150103', '回民区', '150100');
INSERT INTO `users_areainfo` VALUES ('150104', '玉泉区', '150100');
INSERT INTO `users_areainfo` VALUES ('150105', '赛罕区', '150100');
INSERT INTO `users_areainfo` VALUES ('150121', '土默特左旗', '150100');
INSERT INTO `users_areainfo` VALUES ('150122', '托克托县', '150100');
INSERT INTO `users_areainfo` VALUES ('150123', '和林格尔县', '150100');
INSERT INTO `users_areainfo` VALUES ('150124', '清水河县', '150100');
INSERT INTO `users_areainfo` VALUES ('150125', '武川县', '150100');
INSERT INTO `users_areainfo` VALUES ('150126', '其它区', '150100');
INSERT INTO `users_areainfo` VALUES ('150200', '包头', '150000');
INSERT INTO `users_areainfo` VALUES ('150202', '东河区', '150200');
INSERT INTO `users_areainfo` VALUES ('150203', '昆都仑区', '150200');
INSERT INTO `users_areainfo` VALUES ('150204', '青山区', '150200');
INSERT INTO `users_areainfo` VALUES ('150205', '石拐区', '150200');
INSERT INTO `users_areainfo` VALUES ('150206', '白云矿区', '150200');
INSERT INTO `users_areainfo` VALUES ('150207', '九原区', '150200');
INSERT INTO `users_areainfo` VALUES ('150221', '土默特右旗', '150200');
INSERT INTO `users_areainfo` VALUES ('150222', '固阳县', '150200');
INSERT INTO `users_areainfo` VALUES ('150223', '达尔罕茂明安联合旗', '150200');
INSERT INTO `users_areainfo` VALUES ('150224', '其它区', '150200');
INSERT INTO `users_areainfo` VALUES ('150300', '乌海', '150000');
INSERT INTO `users_areainfo` VALUES ('150302', '海勃湾区', '150300');
INSERT INTO `users_areainfo` VALUES ('150303', '海南区', '150300');
INSERT INTO `users_areainfo` VALUES ('150304', '乌达区', '150300');
INSERT INTO `users_areainfo` VALUES ('150305', '其它区', '150300');
INSERT INTO `users_areainfo` VALUES ('150400', '赤峰', '150000');
INSERT INTO `users_areainfo` VALUES ('150402', '红山区', '150400');
INSERT INTO `users_areainfo` VALUES ('150403', '元宝山区', '150400');
INSERT INTO `users_areainfo` VALUES ('150404', '松山区', '150400');
INSERT INTO `users_areainfo` VALUES ('150421', '阿鲁科尔沁旗', '150400');
INSERT INTO `users_areainfo` VALUES ('150422', '巴林左旗', '150400');
INSERT INTO `users_areainfo` VALUES ('150423', '巴林右旗', '150400');
INSERT INTO `users_areainfo` VALUES ('150424', '林西县', '150400');
INSERT INTO `users_areainfo` VALUES ('150425', '克什克腾旗', '150400');
INSERT INTO `users_areainfo` VALUES ('150426', '翁牛特旗', '150400');
INSERT INTO `users_areainfo` VALUES ('150428', '喀喇沁旗', '150400');
INSERT INTO `users_areainfo` VALUES ('150429', '宁城县', '150400');
INSERT INTO `users_areainfo` VALUES ('150430', '敖汉旗', '150400');
INSERT INTO `users_areainfo` VALUES ('150431', '其它区', '150400');
INSERT INTO `users_areainfo` VALUES ('150500', '通辽', '150000');
INSERT INTO `users_areainfo` VALUES ('150502', '科尔沁区', '150500');
INSERT INTO `users_areainfo` VALUES ('150521', '科尔沁左翼中旗', '150500');
INSERT INTO `users_areainfo` VALUES ('150522', '科尔沁左翼后旗', '150500');
INSERT INTO `users_areainfo` VALUES ('150523', '开鲁县', '150500');
INSERT INTO `users_areainfo` VALUES ('150524', '库伦旗', '150500');
INSERT INTO `users_areainfo` VALUES ('150525', '奈曼旗', '150500');
INSERT INTO `users_areainfo` VALUES ('150526', '扎鲁特旗', '150500');
INSERT INTO `users_areainfo` VALUES ('150581', '霍林郭勒市', '150500');
INSERT INTO `users_areainfo` VALUES ('150582', '其它区', '150500');
INSERT INTO `users_areainfo` VALUES ('150600', '鄂尔多斯', '150000');
INSERT INTO `users_areainfo` VALUES ('150602', '东胜区', '150600');
INSERT INTO `users_areainfo` VALUES ('150621', '达拉特旗', '150600');
INSERT INTO `users_areainfo` VALUES ('150622', '准格尔旗', '150600');
INSERT INTO `users_areainfo` VALUES ('150623', '鄂托克前旗', '150600');
INSERT INTO `users_areainfo` VALUES ('150624', '鄂托克旗', '150600');
INSERT INTO `users_areainfo` VALUES ('150625', '杭锦旗', '150600');
INSERT INTO `users_areainfo` VALUES ('150626', '乌审旗', '150600');
INSERT INTO `users_areainfo` VALUES ('150627', '伊金霍洛旗', '150600');
INSERT INTO `users_areainfo` VALUES ('150628', '其它区', '150600');
INSERT INTO `users_areainfo` VALUES ('150700', '呼伦贝尔', '150000');
INSERT INTO `users_areainfo` VALUES ('150702', '海拉尔区', '150700');
INSERT INTO `users_areainfo` VALUES ('150721', '阿荣旗', '150700');
INSERT INTO `users_areainfo` VALUES ('150722', '莫力达瓦达斡尔族自治旗', '150700');
INSERT INTO `users_areainfo` VALUES ('150723', '鄂伦春自治旗', '150700');
INSERT INTO `users_areainfo` VALUES ('150724', '鄂温克族自治旗', '150700');
INSERT INTO `users_areainfo` VALUES ('150725', '陈巴尔虎旗', '150700');
INSERT INTO `users_areainfo` VALUES ('150726', '新巴尔虎左旗', '150700');
INSERT INTO `users_areainfo` VALUES ('150727', '新巴尔虎右旗', '150700');
INSERT INTO `users_areainfo` VALUES ('150781', '满洲里市', '150700');
INSERT INTO `users_areainfo` VALUES ('150782', '牙克石市', '150700');
INSERT INTO `users_areainfo` VALUES ('150783', '扎兰屯市', '150700');
INSERT INTO `users_areainfo` VALUES ('150784', '额尔古纳市', '150700');
INSERT INTO `users_areainfo` VALUES ('150785', '根河市', '150700');
INSERT INTO `users_areainfo` VALUES ('150786', '其它区', '150700');
INSERT INTO `users_areainfo` VALUES ('150800', '巴彦淖尔', '150000');
INSERT INTO `users_areainfo` VALUES ('150802', '临河区', '150800');
INSERT INTO `users_areainfo` VALUES ('150821', '五原县', '150800');
INSERT INTO `users_areainfo` VALUES ('150822', '磴口县', '150800');
INSERT INTO `users_areainfo` VALUES ('150823', '乌拉特前旗', '150800');
INSERT INTO `users_areainfo` VALUES ('150824', '乌拉特中旗', '150800');
INSERT INTO `users_areainfo` VALUES ('150825', '乌拉特后旗', '150800');
INSERT INTO `users_areainfo` VALUES ('150826', '杭锦后旗', '150800');
INSERT INTO `users_areainfo` VALUES ('150827', '其它区', '150800');
INSERT INTO `users_areainfo` VALUES ('150900', '乌兰察布', '150000');
INSERT INTO `users_areainfo` VALUES ('150902', '集宁区', '150900');
INSERT INTO `users_areainfo` VALUES ('150921', '卓资县', '150900');
INSERT INTO `users_areainfo` VALUES ('150922', '化德县', '150900');
INSERT INTO `users_areainfo` VALUES ('150923', '商都县', '150900');
INSERT INTO `users_areainfo` VALUES ('150924', '兴和县', '150900');
INSERT INTO `users_areainfo` VALUES ('150925', '凉城县', '150900');
INSERT INTO `users_areainfo` VALUES ('150926', '察哈尔右翼前旗', '150900');
INSERT INTO `users_areainfo` VALUES ('150927', '察哈尔右翼中旗', '150900');
INSERT INTO `users_areainfo` VALUES ('150928', '察哈尔右翼后旗', '150900');
INSERT INTO `users_areainfo` VALUES ('150929', '四子王旗', '150900');
INSERT INTO `users_areainfo` VALUES ('150981', '丰镇市', '150900');
INSERT INTO `users_areainfo` VALUES ('150982', '其它区', '150900');
INSERT INTO `users_areainfo` VALUES ('152200', '兴安盟', '150000');
INSERT INTO `users_areainfo` VALUES ('152201', '乌兰浩特市', '152200');
INSERT INTO `users_areainfo` VALUES ('152202', '阿尔山市', '152200');
INSERT INTO `users_areainfo` VALUES ('152221', '科尔沁右翼前旗', '152200');
INSERT INTO `users_areainfo` VALUES ('152222', '科尔沁右翼中旗', '152200');
INSERT INTO `users_areainfo` VALUES ('152223', '扎赉特旗', '152200');
INSERT INTO `users_areainfo` VALUES ('152224', '突泉县', '152200');
INSERT INTO `users_areainfo` VALUES ('152225', '其它区', '152200');
INSERT INTO `users_areainfo` VALUES ('152500', '锡林郭勒盟', '150000');
INSERT INTO `users_areainfo` VALUES ('152501', '二连浩特市', '152500');
INSERT INTO `users_areainfo` VALUES ('152502', '锡林浩特市', '152500');
INSERT INTO `users_areainfo` VALUES ('152522', '阿巴嘎旗', '152500');
INSERT INTO `users_areainfo` VALUES ('152523', '苏尼特左旗', '152500');
INSERT INTO `users_areainfo` VALUES ('152524', '苏尼特右旗', '152500');
INSERT INTO `users_areainfo` VALUES ('152525', '东乌珠穆沁旗', '152500');
INSERT INTO `users_areainfo` VALUES ('152526', '西乌珠穆沁旗', '152500');
INSERT INTO `users_areainfo` VALUES ('152527', '太仆寺旗', '152500');
INSERT INTO `users_areainfo` VALUES ('152528', '镶黄旗', '152500');
INSERT INTO `users_areainfo` VALUES ('152529', '正镶白旗', '152500');
INSERT INTO `users_areainfo` VALUES ('152530', '正蓝旗', '152500');
INSERT INTO `users_areainfo` VALUES ('152531', '多伦县', '152500');
INSERT INTO `users_areainfo` VALUES ('152532', '其它区', '152500');
INSERT INTO `users_areainfo` VALUES ('152900', '阿拉善盟', '150000');
INSERT INTO `users_areainfo` VALUES ('152921', '阿拉善左旗', '152900');
INSERT INTO `users_areainfo` VALUES ('152922', '阿拉善右旗', '152900');
INSERT INTO `users_areainfo` VALUES ('152923', '额济纳旗', '152900');
INSERT INTO `users_areainfo` VALUES ('152924', '其它区', '152900');
INSERT INTO `users_areainfo` VALUES ('210000', '辽宁', '0');
INSERT INTO `users_areainfo` VALUES ('210100', '沈阳', '210000');
INSERT INTO `users_areainfo` VALUES ('210102', '和平区', '210100');
INSERT INTO `users_areainfo` VALUES ('210103', '沈河区', '210100');
INSERT INTO `users_areainfo` VALUES ('210104', '大东区', '210100');
INSERT INTO `users_areainfo` VALUES ('210105', '皇姑区', '210100');
INSERT INTO `users_areainfo` VALUES ('210106', '铁西区', '210100');
INSERT INTO `users_areainfo` VALUES ('210111', '苏家屯区', '210100');
INSERT INTO `users_areainfo` VALUES ('210112', '东陵区', '210100');
INSERT INTO `users_areainfo` VALUES ('210113', '新城子区', '210100');
INSERT INTO `users_areainfo` VALUES ('210114', '于洪区', '210100');
INSERT INTO `users_areainfo` VALUES ('210122', '辽中县', '210100');
INSERT INTO `users_areainfo` VALUES ('210123', '康平县', '210100');
INSERT INTO `users_areainfo` VALUES ('210124', '法库县', '210100');
INSERT INTO `users_areainfo` VALUES ('210181', '新民市', '210100');
INSERT INTO `users_areainfo` VALUES ('210182', '浑南新区', '210100');
INSERT INTO `users_areainfo` VALUES ('210183', '张士开发区', '210100');
INSERT INTO `users_areainfo` VALUES ('210184', '沈北新区', '210100');
INSERT INTO `users_areainfo` VALUES ('210185', '其它区', '210100');
INSERT INTO `users_areainfo` VALUES ('210200', '大连', '210000');
INSERT INTO `users_areainfo` VALUES ('210202', '中山区', '210200');
INSERT INTO `users_areainfo` VALUES ('210203', '西岗区', '210200');
INSERT INTO `users_areainfo` VALUES ('210204', '沙河口区', '210200');
INSERT INTO `users_areainfo` VALUES ('210211', '甘井子区', '210200');
INSERT INTO `users_areainfo` VALUES ('210212', '旅顺口区', '210200');
INSERT INTO `users_areainfo` VALUES ('210213', '金州区', '210200');
INSERT INTO `users_areainfo` VALUES ('210224', '长海县', '210200');
INSERT INTO `users_areainfo` VALUES ('210251', '开发区', '210200');
INSERT INTO `users_areainfo` VALUES ('210281', '瓦房店市', '210200');
INSERT INTO `users_areainfo` VALUES ('210282', '普兰店市', '210200');
INSERT INTO `users_areainfo` VALUES ('210283', '庄河市', '210200');
INSERT INTO `users_areainfo` VALUES ('210297', '岭前区', '210200');
INSERT INTO `users_areainfo` VALUES ('210298', '其它区', '210200');
INSERT INTO `users_areainfo` VALUES ('210300', '鞍山', '210000');
INSERT INTO `users_areainfo` VALUES ('210302', '铁东区', '210300');
INSERT INTO `users_areainfo` VALUES ('210303', '铁西区', '210300');
INSERT INTO `users_areainfo` VALUES ('210304', '立山区', '210300');
INSERT INTO `users_areainfo` VALUES ('210311', '千山区', '210300');
INSERT INTO `users_areainfo` VALUES ('210321', '台安县', '210300');
INSERT INTO `users_areainfo` VALUES ('210323', '岫岩满族自治县', '210300');
INSERT INTO `users_areainfo` VALUES ('210351', '高新区', '210300');
INSERT INTO `users_areainfo` VALUES ('210381', '海城市', '210300');
INSERT INTO `users_areainfo` VALUES ('210382', '其它区', '210300');
INSERT INTO `users_areainfo` VALUES ('210400', '抚顺', '210000');
INSERT INTO `users_areainfo` VALUES ('210402', '新抚区', '210400');
INSERT INTO `users_areainfo` VALUES ('210403', '东洲区', '210400');
INSERT INTO `users_areainfo` VALUES ('210404', '望花区', '210400');
INSERT INTO `users_areainfo` VALUES ('210411', '顺城区', '210400');
INSERT INTO `users_areainfo` VALUES ('210421', '抚顺县', '210400');
INSERT INTO `users_areainfo` VALUES ('210422', '新宾满族自治县', '210400');
INSERT INTO `users_areainfo` VALUES ('210423', '清原满族自治县', '210400');
INSERT INTO `users_areainfo` VALUES ('210424', '其它区', '210400');
INSERT INTO `users_areainfo` VALUES ('210500', '本溪', '210000');
INSERT INTO `users_areainfo` VALUES ('210502', '平山区', '210500');
INSERT INTO `users_areainfo` VALUES ('210503', '溪湖区', '210500');
INSERT INTO `users_areainfo` VALUES ('210504', '明山区', '210500');
INSERT INTO `users_areainfo` VALUES ('210505', '南芬区', '210500');
INSERT INTO `users_areainfo` VALUES ('210521', '本溪满族自治县', '210500');
INSERT INTO `users_areainfo` VALUES ('210522', '桓仁满族自治县', '210500');
INSERT INTO `users_areainfo` VALUES ('210523', '其它区', '210500');
INSERT INTO `users_areainfo` VALUES ('210600', '丹东', '210000');
INSERT INTO `users_areainfo` VALUES ('210602', '元宝区', '210600');
INSERT INTO `users_areainfo` VALUES ('210603', '振兴区', '210600');
INSERT INTO `users_areainfo` VALUES ('210604', '振安区', '210600');
INSERT INTO `users_areainfo` VALUES ('210624', '宽甸满族自治县', '210600');
INSERT INTO `users_areainfo` VALUES ('210681', '东港市', '210600');
INSERT INTO `users_areainfo` VALUES ('210682', '凤城市', '210600');
INSERT INTO `users_areainfo` VALUES ('210683', '其它区', '210600');
INSERT INTO `users_areainfo` VALUES ('210700', '锦州', '210000');
INSERT INTO `users_areainfo` VALUES ('210702', '古塔区', '210700');
INSERT INTO `users_areainfo` VALUES ('210703', '凌河区', '210700');
INSERT INTO `users_areainfo` VALUES ('210711', '太和区', '210700');
INSERT INTO `users_areainfo` VALUES ('210726', '黑山县', '210700');
INSERT INTO `users_areainfo` VALUES ('210727', '义县', '210700');
INSERT INTO `users_areainfo` VALUES ('210781', '凌海市', '210700');
INSERT INTO `users_areainfo` VALUES ('210782', '北镇市', '210700');
INSERT INTO `users_areainfo` VALUES ('210783', '其它区', '210700');
INSERT INTO `users_areainfo` VALUES ('210800', '营口', '210000');
INSERT INTO `users_areainfo` VALUES ('210802', '站前区', '210800');
INSERT INTO `users_areainfo` VALUES ('210803', '西市区', '210800');
INSERT INTO `users_areainfo` VALUES ('210804', '鲅鱼圈区', '210800');
INSERT INTO `users_areainfo` VALUES ('210811', '老边区', '210800');
INSERT INTO `users_areainfo` VALUES ('210881', '盖州市', '210800');
INSERT INTO `users_areainfo` VALUES ('210882', '大石桥市', '210800');
INSERT INTO `users_areainfo` VALUES ('210883', '其它区', '210800');
INSERT INTO `users_areainfo` VALUES ('210900', '阜新', '210000');
INSERT INTO `users_areainfo` VALUES ('210902', '海州区', '210900');
INSERT INTO `users_areainfo` VALUES ('210903', '新邱区', '210900');
INSERT INTO `users_areainfo` VALUES ('210904', '太平区', '210900');
INSERT INTO `users_areainfo` VALUES ('210905', '清河门区', '210900');
INSERT INTO `users_areainfo` VALUES ('210911', '细河区', '210900');
INSERT INTO `users_areainfo` VALUES ('210921', '阜新蒙古族自治县', '210900');
INSERT INTO `users_areainfo` VALUES ('210922', '彰武县', '210900');
INSERT INTO `users_areainfo` VALUES ('210923', '其它区', '210900');
INSERT INTO `users_areainfo` VALUES ('211000', '辽阳', '210000');
INSERT INTO `users_areainfo` VALUES ('211002', '白塔区', '211000');
INSERT INTO `users_areainfo` VALUES ('211003', '文圣区', '211000');
INSERT INTO `users_areainfo` VALUES ('211004', '宏伟区', '211000');
INSERT INTO `users_areainfo` VALUES ('211005', '弓长岭区', '211000');
INSERT INTO `users_areainfo` VALUES ('211011', '太子河区', '211000');
INSERT INTO `users_areainfo` VALUES ('211021', '辽阳县', '211000');
INSERT INTO `users_areainfo` VALUES ('211081', '灯塔市', '211000');
INSERT INTO `users_areainfo` VALUES ('211082', '其它区', '211000');
INSERT INTO `users_areainfo` VALUES ('211100', '盘锦', '210000');
INSERT INTO `users_areainfo` VALUES ('211102', '双台子区', '211100');
INSERT INTO `users_areainfo` VALUES ('211103', '兴隆台区', '211100');
INSERT INTO `users_areainfo` VALUES ('211121', '大洼县', '211100');
INSERT INTO `users_areainfo` VALUES ('211122', '盘山县', '211100');
INSERT INTO `users_areainfo` VALUES ('211123', '其它区', '211100');
INSERT INTO `users_areainfo` VALUES ('211200', '铁岭', '210000');
INSERT INTO `users_areainfo` VALUES ('211202', '银州区', '211200');
INSERT INTO `users_areainfo` VALUES ('211204', '清河区', '211200');
INSERT INTO `users_areainfo` VALUES ('211221', '铁岭县', '211200');
INSERT INTO `users_areainfo` VALUES ('211223', '西丰县', '211200');
INSERT INTO `users_areainfo` VALUES ('211224', '昌图县', '211200');
INSERT INTO `users_areainfo` VALUES ('211281', '调兵山市', '211200');
INSERT INTO `users_areainfo` VALUES ('211282', '开原市', '211200');
INSERT INTO `users_areainfo` VALUES ('211283', '其它区', '211200');
INSERT INTO `users_areainfo` VALUES ('211300', '朝阳', '210000');
INSERT INTO `users_areainfo` VALUES ('211302', '双塔区', '211300');
INSERT INTO `users_areainfo` VALUES ('211303', '龙城区', '211300');
INSERT INTO `users_areainfo` VALUES ('211321', '朝阳县', '211300');
INSERT INTO `users_areainfo` VALUES ('211322', '建平县', '211300');
INSERT INTO `users_areainfo` VALUES ('211324', '喀喇沁左翼蒙古族自治县', '211300');
INSERT INTO `users_areainfo` VALUES ('211381', '北票市', '211300');
INSERT INTO `users_areainfo` VALUES ('211382', '凌源市', '211300');
INSERT INTO `users_areainfo` VALUES ('211383', '其它区', '211300');
INSERT INTO `users_areainfo` VALUES ('211400', '葫芦岛', '210000');
INSERT INTO `users_areainfo` VALUES ('211402', '连山区', '211400');
INSERT INTO `users_areainfo` VALUES ('211403', '龙港区', '211400');
INSERT INTO `users_areainfo` VALUES ('211404', '南票区', '211400');
INSERT INTO `users_areainfo` VALUES ('211421', '绥中县', '211400');
INSERT INTO `users_areainfo` VALUES ('211422', '建昌县', '211400');
INSERT INTO `users_areainfo` VALUES ('211481', '兴城市', '211400');
INSERT INTO `users_areainfo` VALUES ('211482', '其它区', '211400');
INSERT INTO `users_areainfo` VALUES ('220000', '吉林', '0');
INSERT INTO `users_areainfo` VALUES ('220100', '长春', '220000');
INSERT INTO `users_areainfo` VALUES ('220102', '南关区', '220100');
INSERT INTO `users_areainfo` VALUES ('220103', '宽城区', '220100');
INSERT INTO `users_areainfo` VALUES ('220104', '朝阳区', '220100');
INSERT INTO `users_areainfo` VALUES ('220105', '二道区', '220100');
INSERT INTO `users_areainfo` VALUES ('220106', '绿园区', '220100');
INSERT INTO `users_areainfo` VALUES ('220112', '双阳区', '220100');
INSERT INTO `users_areainfo` VALUES ('220122', '农安县', '220100');
INSERT INTO `users_areainfo` VALUES ('220181', '九台市', '220100');
INSERT INTO `users_areainfo` VALUES ('220182', '榆树市', '220100');
INSERT INTO `users_areainfo` VALUES ('220183', '德惠市', '220100');
INSERT INTO `users_areainfo` VALUES ('220184', '高新技术产业开发区', '220100');
INSERT INTO `users_areainfo` VALUES ('220185', '汽车产业开发区', '220100');
INSERT INTO `users_areainfo` VALUES ('220186', '经济技术开发区', '220100');
INSERT INTO `users_areainfo` VALUES ('220187', '净月旅游开发区', '220100');
INSERT INTO `users_areainfo` VALUES ('220188', '其它区', '220100');
INSERT INTO `users_areainfo` VALUES ('220200', '吉林', '220000');
INSERT INTO `users_areainfo` VALUES ('220202', '昌邑区', '220200');
INSERT INTO `users_areainfo` VALUES ('220203', '龙潭区', '220200');
INSERT INTO `users_areainfo` VALUES ('220204', '船营区', '220200');
INSERT INTO `users_areainfo` VALUES ('220211', '丰满区', '220200');
INSERT INTO `users_areainfo` VALUES ('220221', '永吉县', '220200');
INSERT INTO `users_areainfo` VALUES ('220281', '蛟河市', '220200');
INSERT INTO `users_areainfo` VALUES ('220282', '桦甸市', '220200');
INSERT INTO `users_areainfo` VALUES ('220283', '舒兰市', '220200');
INSERT INTO `users_areainfo` VALUES ('220284', '磐石市', '220200');
INSERT INTO `users_areainfo` VALUES ('220285', '其它区', '220200');
INSERT INTO `users_areainfo` VALUES ('220300', '四平', '220000');
INSERT INTO `users_areainfo` VALUES ('220302', '铁西区', '220300');
INSERT INTO `users_areainfo` VALUES ('220303', '铁东区', '220300');
INSERT INTO `users_areainfo` VALUES ('220322', '梨树县', '220300');
INSERT INTO `users_areainfo` VALUES ('220323', '伊通满族自治县', '220300');
INSERT INTO `users_areainfo` VALUES ('220381', '公主岭市', '220300');
INSERT INTO `users_areainfo` VALUES ('220382', '双辽市', '220300');
INSERT INTO `users_areainfo` VALUES ('220383', '其它区', '220300');
INSERT INTO `users_areainfo` VALUES ('220400', '辽源', '220000');
INSERT INTO `users_areainfo` VALUES ('220402', '龙山区', '220400');
INSERT INTO `users_areainfo` VALUES ('220403', '西安区', '220400');
INSERT INTO `users_areainfo` VALUES ('220421', '东丰县', '220400');
INSERT INTO `users_areainfo` VALUES ('220422', '东辽县', '220400');
INSERT INTO `users_areainfo` VALUES ('220423', '其它区', '220400');
INSERT INTO `users_areainfo` VALUES ('220500', '通化', '220000');
INSERT INTO `users_areainfo` VALUES ('220502', '东昌区', '220500');
INSERT INTO `users_areainfo` VALUES ('220503', '二道江区', '220500');
INSERT INTO `users_areainfo` VALUES ('220521', '通化县', '220500');
INSERT INTO `users_areainfo` VALUES ('220523', '辉南县', '220500');
INSERT INTO `users_areainfo` VALUES ('220524', '柳河县', '220500');
INSERT INTO `users_areainfo` VALUES ('220581', '梅河口市', '220500');
INSERT INTO `users_areainfo` VALUES ('220582', '集安市', '220500');
INSERT INTO `users_areainfo` VALUES ('220583', '其它区', '220500');
INSERT INTO `users_areainfo` VALUES ('220600', '白山', '220000');
INSERT INTO `users_areainfo` VALUES ('220602', '八道江区', '220600');
INSERT INTO `users_areainfo` VALUES ('220621', '抚松县', '220600');
INSERT INTO `users_areainfo` VALUES ('220622', '靖宇县', '220600');
INSERT INTO `users_areainfo` VALUES ('220623', '长白朝鲜族自治县', '220600');
INSERT INTO `users_areainfo` VALUES ('220625', '江源县', '220600');
INSERT INTO `users_areainfo` VALUES ('220681', '临江市', '220600');
INSERT INTO `users_areainfo` VALUES ('220682', '其它区', '220600');
INSERT INTO `users_areainfo` VALUES ('220700', '松原', '220000');
INSERT INTO `users_areainfo` VALUES ('220702', '宁江区', '220700');
INSERT INTO `users_areainfo` VALUES ('220721', '前郭尔罗斯蒙古族自治县', '220700');
INSERT INTO `users_areainfo` VALUES ('220722', '长岭县', '220700');
INSERT INTO `users_areainfo` VALUES ('220723', '乾安县', '220700');
INSERT INTO `users_areainfo` VALUES ('220724', '扶余县', '220700');
INSERT INTO `users_areainfo` VALUES ('220725', '其它区', '220700');
INSERT INTO `users_areainfo` VALUES ('220800', '白城', '220000');
INSERT INTO `users_areainfo` VALUES ('220802', '洮北区', '220800');
INSERT INTO `users_areainfo` VALUES ('220821', '镇赉县', '220800');
INSERT INTO `users_areainfo` VALUES ('220822', '通榆县', '220800');
INSERT INTO `users_areainfo` VALUES ('220881', '洮南市', '220800');
INSERT INTO `users_areainfo` VALUES ('220882', '大安市', '220800');
INSERT INTO `users_areainfo` VALUES ('220883', '其它区', '220800');
INSERT INTO `users_areainfo` VALUES ('222400', '延边', '220000');
INSERT INTO `users_areainfo` VALUES ('222401', '延吉市', '222400');
INSERT INTO `users_areainfo` VALUES ('222402', '图们市', '222400');
INSERT INTO `users_areainfo` VALUES ('222403', '敦化市', '222400');
INSERT INTO `users_areainfo` VALUES ('222404', '珲春市', '222400');
INSERT INTO `users_areainfo` VALUES ('222405', '龙井市', '222400');
INSERT INTO `users_areainfo` VALUES ('222406', '和龙市', '222400');
INSERT INTO `users_areainfo` VALUES ('222424', '汪清县', '222400');
INSERT INTO `users_areainfo` VALUES ('222426', '安图县', '222400');
INSERT INTO `users_areainfo` VALUES ('222427', '其它区', '222400');
INSERT INTO `users_areainfo` VALUES ('230000', '黑龙江', '0');
INSERT INTO `users_areainfo` VALUES ('230100', '哈尔滨', '230000');
INSERT INTO `users_areainfo` VALUES ('230102', '道里区', '230100');
INSERT INTO `users_areainfo` VALUES ('230103', '南岗区', '230100');
INSERT INTO `users_areainfo` VALUES ('230104', '道外区', '230100');
INSERT INTO `users_areainfo` VALUES ('230106', '香坊区', '230100');
INSERT INTO `users_areainfo` VALUES ('230107', '动力区', '230100');
INSERT INTO `users_areainfo` VALUES ('230108', '平房区', '230100');
INSERT INTO `users_areainfo` VALUES ('230109', '松北区', '230100');
INSERT INTO `users_areainfo` VALUES ('230111', '呼兰区', '230100');
INSERT INTO `users_areainfo` VALUES ('230123', '依兰县', '230100');
INSERT INTO `users_areainfo` VALUES ('230124', '方正县', '230100');
INSERT INTO `users_areainfo` VALUES ('230125', '宾县', '230100');
INSERT INTO `users_areainfo` VALUES ('230126', '巴彦县', '230100');
INSERT INTO `users_areainfo` VALUES ('230127', '木兰县', '230100');
INSERT INTO `users_areainfo` VALUES ('230128', '通河县', '230100');
INSERT INTO `users_areainfo` VALUES ('230129', '延寿县', '230100');
INSERT INTO `users_areainfo` VALUES ('230181', '阿城市', '230100');
INSERT INTO `users_areainfo` VALUES ('230182', '双城市', '230100');
INSERT INTO `users_areainfo` VALUES ('230183', '尚志市', '230100');
INSERT INTO `users_areainfo` VALUES ('230184', '五常市', '230100');
INSERT INTO `users_areainfo` VALUES ('230185', '阿城市', '230100');
INSERT INTO `users_areainfo` VALUES ('230186', '其它区', '230100');
INSERT INTO `users_areainfo` VALUES ('230200', '齐齐哈尔', '230000');
INSERT INTO `users_areainfo` VALUES ('230202', '龙沙区', '230200');
INSERT INTO `users_areainfo` VALUES ('230203', '建华区', '230200');
INSERT INTO `users_areainfo` VALUES ('230204', '铁锋区', '230200');
INSERT INTO `users_areainfo` VALUES ('230205', '昂昂溪区', '230200');
INSERT INTO `users_areainfo` VALUES ('230206', '富拉尔基区', '230200');
INSERT INTO `users_areainfo` VALUES ('230207', '碾子山区', '230200');
INSERT INTO `users_areainfo` VALUES ('230208', '梅里斯达斡尔族区', '230200');
INSERT INTO `users_areainfo` VALUES ('230221', '龙江县', '230200');
INSERT INTO `users_areainfo` VALUES ('230223', '依安县', '230200');
INSERT INTO `users_areainfo` VALUES ('230224', '泰来县', '230200');
INSERT INTO `users_areainfo` VALUES ('230225', '甘南县', '230200');
INSERT INTO `users_areainfo` VALUES ('230227', '富裕县', '230200');
INSERT INTO `users_areainfo` VALUES ('230229', '克山县', '230200');
INSERT INTO `users_areainfo` VALUES ('230230', '克东县', '230200');
INSERT INTO `users_areainfo` VALUES ('230231', '拜泉县', '230200');
INSERT INTO `users_areainfo` VALUES ('230281', '讷河市', '230200');
INSERT INTO `users_areainfo` VALUES ('230282', '其它区', '230200');
INSERT INTO `users_areainfo` VALUES ('230300', '鸡西', '230000');
INSERT INTO `users_areainfo` VALUES ('230302', '鸡冠区', '230300');
INSERT INTO `users_areainfo` VALUES ('230303', '恒山区', '230300');
INSERT INTO `users_areainfo` VALUES ('230304', '滴道区', '230300');
INSERT INTO `users_areainfo` VALUES ('230305', '梨树区', '230300');
INSERT INTO `users_areainfo` VALUES ('230306', '城子河区', '230300');
INSERT INTO `users_areainfo` VALUES ('230307', '麻山区', '230300');
INSERT INTO `users_areainfo` VALUES ('230321', '鸡东县', '230300');
INSERT INTO `users_areainfo` VALUES ('230381', '虎林市', '230300');
INSERT INTO `users_areainfo` VALUES ('230382', '密山市', '230300');
INSERT INTO `users_areainfo` VALUES ('230383', '其它区', '230300');
INSERT INTO `users_areainfo` VALUES ('230400', '鹤岗', '230000');
INSERT INTO `users_areainfo` VALUES ('230402', '向阳区', '230400');
INSERT INTO `users_areainfo` VALUES ('230403', '工农区', '230400');
INSERT INTO `users_areainfo` VALUES ('230404', '南山区', '230400');
INSERT INTO `users_areainfo` VALUES ('230405', '兴安区', '230400');
INSERT INTO `users_areainfo` VALUES ('230406', '东山区', '230400');
INSERT INTO `users_areainfo` VALUES ('230407', '兴山区', '230400');
INSERT INTO `users_areainfo` VALUES ('230421', '萝北县', '230400');
INSERT INTO `users_areainfo` VALUES ('230422', '绥滨县', '230400');
INSERT INTO `users_areainfo` VALUES ('230423', '其它区', '230400');
INSERT INTO `users_areainfo` VALUES ('230500', '双鸭山', '230000');
INSERT INTO `users_areainfo` VALUES ('230502', '尖山区', '230500');
INSERT INTO `users_areainfo` VALUES ('230503', '岭东区', '230500');
INSERT INTO `users_areainfo` VALUES ('230505', '四方台区', '230500');
INSERT INTO `users_areainfo` VALUES ('230506', '宝山区', '230500');
INSERT INTO `users_areainfo` VALUES ('230521', '集贤县', '230500');
INSERT INTO `users_areainfo` VALUES ('230522', '友谊县', '230500');
INSERT INTO `users_areainfo` VALUES ('230523', '宝清县', '230500');
INSERT INTO `users_areainfo` VALUES ('230524', '饶河县', '230500');
INSERT INTO `users_areainfo` VALUES ('230525', '其它区', '230500');
INSERT INTO `users_areainfo` VALUES ('230600', '大庆', '230000');
INSERT INTO `users_areainfo` VALUES ('230602', '萨尔图区', '230600');
INSERT INTO `users_areainfo` VALUES ('230603', '龙凤区', '230600');
INSERT INTO `users_areainfo` VALUES ('230604', '让胡路区', '230600');
INSERT INTO `users_areainfo` VALUES ('230605', '红岗区', '230600');
INSERT INTO `users_areainfo` VALUES ('230606', '大同区', '230600');
INSERT INTO `users_areainfo` VALUES ('230621', '肇州县', '230600');
INSERT INTO `users_areainfo` VALUES ('230622', '肇源县', '230600');
INSERT INTO `users_areainfo` VALUES ('230623', '林甸县', '230600');
INSERT INTO `users_areainfo` VALUES ('230624', '杜尔伯特蒙古族自治县', '230600');
INSERT INTO `users_areainfo` VALUES ('230625', '其它区', '230600');
INSERT INTO `users_areainfo` VALUES ('230700', '伊春', '230000');
INSERT INTO `users_areainfo` VALUES ('230702', '伊春区', '230700');
INSERT INTO `users_areainfo` VALUES ('230703', '南岔区', '230700');
INSERT INTO `users_areainfo` VALUES ('230704', '友好区', '230700');
INSERT INTO `users_areainfo` VALUES ('230705', '西林区', '230700');
INSERT INTO `users_areainfo` VALUES ('230706', '翠峦区', '230700');
INSERT INTO `users_areainfo` VALUES ('230707', '新青区', '230700');
INSERT INTO `users_areainfo` VALUES ('230708', '美溪区', '230700');
INSERT INTO `users_areainfo` VALUES ('230709', '金山屯区', '230700');
INSERT INTO `users_areainfo` VALUES ('230710', '五营区', '230700');
INSERT INTO `users_areainfo` VALUES ('230711', '乌马河区', '230700');
INSERT INTO `users_areainfo` VALUES ('230712', '汤旺河区', '230700');
INSERT INTO `users_areainfo` VALUES ('230713', '带岭区', '230700');
INSERT INTO `users_areainfo` VALUES ('230714', '乌伊岭区', '230700');
INSERT INTO `users_areainfo` VALUES ('230715', '红星区', '230700');
INSERT INTO `users_areainfo` VALUES ('230716', '上甘岭区', '230700');
INSERT INTO `users_areainfo` VALUES ('230722', '嘉荫县', '230700');
INSERT INTO `users_areainfo` VALUES ('230781', '铁力市', '230700');
INSERT INTO `users_areainfo` VALUES ('230782', '其它区', '230700');
INSERT INTO `users_areainfo` VALUES ('230800', '佳木斯', '230000');
INSERT INTO `users_areainfo` VALUES ('230802', '永红区', '230800');
INSERT INTO `users_areainfo` VALUES ('230803', '向阳区', '230800');
INSERT INTO `users_areainfo` VALUES ('230804', '前进区', '230800');
INSERT INTO `users_areainfo` VALUES ('230805', '东风区', '230800');
INSERT INTO `users_areainfo` VALUES ('230811', '郊区', '230800');
INSERT INTO `users_areainfo` VALUES ('230822', '桦南县', '230800');
INSERT INTO `users_areainfo` VALUES ('230826', '桦川县', '230800');
INSERT INTO `users_areainfo` VALUES ('230828', '汤原县', '230800');
INSERT INTO `users_areainfo` VALUES ('230833', '抚远县', '230800');
INSERT INTO `users_areainfo` VALUES ('230881', '同江市', '230800');
INSERT INTO `users_areainfo` VALUES ('230882', '富锦市', '230800');
INSERT INTO `users_areainfo` VALUES ('230883', '其它区', '230800');
INSERT INTO `users_areainfo` VALUES ('230900', '七台河', '230000');
INSERT INTO `users_areainfo` VALUES ('230902', '新兴区', '230900');
INSERT INTO `users_areainfo` VALUES ('230903', '桃山区', '230900');
INSERT INTO `users_areainfo` VALUES ('230904', '茄子河区', '230900');
INSERT INTO `users_areainfo` VALUES ('230921', '勃利县', '230900');
INSERT INTO `users_areainfo` VALUES ('230922', '其它区', '230900');
INSERT INTO `users_areainfo` VALUES ('231000', '牡丹江', '230000');
INSERT INTO `users_areainfo` VALUES ('231002', '东安区', '231000');
INSERT INTO `users_areainfo` VALUES ('231003', '阳明区', '231000');
INSERT INTO `users_areainfo` VALUES ('231004', '爱民区', '231000');
INSERT INTO `users_areainfo` VALUES ('231005', '西安区', '231000');
INSERT INTO `users_areainfo` VALUES ('231024', '东宁县', '231000');
INSERT INTO `users_areainfo` VALUES ('231025', '林口县', '231000');
INSERT INTO `users_areainfo` VALUES ('231081', '绥芬河市', '231000');
INSERT INTO `users_areainfo` VALUES ('231083', '海林市', '231000');
INSERT INTO `users_areainfo` VALUES ('231084', '宁安市', '231000');
INSERT INTO `users_areainfo` VALUES ('231085', '穆棱市', '231000');
INSERT INTO `users_areainfo` VALUES ('231086', '其它区', '231000');
INSERT INTO `users_areainfo` VALUES ('231100', '黑河', '230000');
INSERT INTO `users_areainfo` VALUES ('231102', '爱辉区', '231100');
INSERT INTO `users_areainfo` VALUES ('231121', '嫩江县', '231100');
INSERT INTO `users_areainfo` VALUES ('231123', '逊克县', '231100');
INSERT INTO `users_areainfo` VALUES ('231124', '孙吴县', '231100');
INSERT INTO `users_areainfo` VALUES ('231181', '北安市', '231100');
INSERT INTO `users_areainfo` VALUES ('231182', '五大连池市', '231100');
INSERT INTO `users_areainfo` VALUES ('231183', '其它区', '231100');
INSERT INTO `users_areainfo` VALUES ('231200', '绥化', '230000');
INSERT INTO `users_areainfo` VALUES ('231202', '北林区', '231200');
INSERT INTO `users_areainfo` VALUES ('231221', '望奎县', '231200');
INSERT INTO `users_areainfo` VALUES ('231222', '兰西县', '231200');
INSERT INTO `users_areainfo` VALUES ('231223', '青冈县', '231200');
INSERT INTO `users_areainfo` VALUES ('231224', '庆安县', '231200');
INSERT INTO `users_areainfo` VALUES ('231225', '明水县', '231200');
INSERT INTO `users_areainfo` VALUES ('231226', '绥棱县', '231200');
INSERT INTO `users_areainfo` VALUES ('231281', '安达市', '231200');
INSERT INTO `users_areainfo` VALUES ('231282', '肇东市', '231200');
INSERT INTO `users_areainfo` VALUES ('231283', '海伦市', '231200');
INSERT INTO `users_areainfo` VALUES ('231284', '其它区', '231200');
INSERT INTO `users_areainfo` VALUES ('232700', '大兴安岭', '230000');
INSERT INTO `users_areainfo` VALUES ('232721', '呼玛县', '232700');
INSERT INTO `users_areainfo` VALUES ('232722', '塔河县', '232700');
INSERT INTO `users_areainfo` VALUES ('232723', '漠河县', '232700');
INSERT INTO `users_areainfo` VALUES ('232724', '加格达奇区', '232700');
INSERT INTO `users_areainfo` VALUES ('232725', '其它区', '232700');
INSERT INTO `users_areainfo` VALUES ('310000', '上海', '0');
INSERT INTO `users_areainfo` VALUES ('310100', '上海市', '310000');
INSERT INTO `users_areainfo` VALUES ('310101', '黄浦', '310100');
INSERT INTO `users_areainfo` VALUES ('310103', '卢湾', '310100');
INSERT INTO `users_areainfo` VALUES ('310104', '徐汇', '310100');
INSERT INTO `users_areainfo` VALUES ('310105', '长宁', '310100');
INSERT INTO `users_areainfo` VALUES ('310106', '静安', '310100');
INSERT INTO `users_areainfo` VALUES ('310107', '普陀', '310100');
INSERT INTO `users_areainfo` VALUES ('310108', '闸北', '310100');
INSERT INTO `users_areainfo` VALUES ('310109', '虹口', '310100');
INSERT INTO `users_areainfo` VALUES ('310110', '杨浦', '310100');
INSERT INTO `users_areainfo` VALUES ('310112', '闵行', '310100');
INSERT INTO `users_areainfo` VALUES ('310113', '宝山', '310100');
INSERT INTO `users_areainfo` VALUES ('310114', '嘉定', '310100');
INSERT INTO `users_areainfo` VALUES ('310115', '浦东新', '310100');
INSERT INTO `users_areainfo` VALUES ('310116', '金山', '310100');
INSERT INTO `users_areainfo` VALUES ('310117', '松江', '310100');
INSERT INTO `users_areainfo` VALUES ('310118', '青浦', '310100');
INSERT INTO `users_areainfo` VALUES ('310119', '南汇', '310100');
INSERT INTO `users_areainfo` VALUES ('310120', '奉贤', '310100');
INSERT INTO `users_areainfo` VALUES ('310152', '川沙', '310100');
INSERT INTO `users_areainfo` VALUES ('310230', '崇明', '310100');
INSERT INTO `users_areainfo` VALUES ('310231', '其它', '310100');
INSERT INTO `users_areainfo` VALUES ('320000', '江苏', '0');
INSERT INTO `users_areainfo` VALUES ('320100', '南京', '320000');
INSERT INTO `users_areainfo` VALUES ('320102', '玄武区', '320100');
INSERT INTO `users_areainfo` VALUES ('320103', '白下区', '320100');
INSERT INTO `users_areainfo` VALUES ('320104', '秦淮区', '320100');
INSERT INTO `users_areainfo` VALUES ('320105', '建邺区', '320100');
INSERT INTO `users_areainfo` VALUES ('320106', '鼓楼区', '320100');
INSERT INTO `users_areainfo` VALUES ('320107', '下关区', '320100');
INSERT INTO `users_areainfo` VALUES ('320111', '浦口区', '320100');
INSERT INTO `users_areainfo` VALUES ('320113', '栖霞区', '320100');
INSERT INTO `users_areainfo` VALUES ('320114', '雨花台区', '320100');
INSERT INTO `users_areainfo` VALUES ('320115', '江宁区', '320100');
INSERT INTO `users_areainfo` VALUES ('320116', '六合区', '320100');
INSERT INTO `users_areainfo` VALUES ('320124', '溧水县', '320100');
INSERT INTO `users_areainfo` VALUES ('320125', '高淳县', '320100');
INSERT INTO `users_areainfo` VALUES ('320126', '其它区', '320100');
INSERT INTO `users_areainfo` VALUES ('320200', '无锡', '320000');
INSERT INTO `users_areainfo` VALUES ('320202', '崇安区', '320200');
INSERT INTO `users_areainfo` VALUES ('320203', '南长区', '320200');
INSERT INTO `users_areainfo` VALUES ('320204', '北塘区', '320200');
INSERT INTO `users_areainfo` VALUES ('320205', '锡山区', '320200');
INSERT INTO `users_areainfo` VALUES ('320206', '惠山区', '320200');
INSERT INTO `users_areainfo` VALUES ('320211', '滨湖区', '320200');
INSERT INTO `users_areainfo` VALUES ('320281', '江阴市', '320200');
INSERT INTO `users_areainfo` VALUES ('320282', '宜兴市', '320200');
INSERT INTO `users_areainfo` VALUES ('320296', '新区', '320200');
INSERT INTO `users_areainfo` VALUES ('320297', '其它区', '320200');
INSERT INTO `users_areainfo` VALUES ('320300', '徐州', '320000');
INSERT INTO `users_areainfo` VALUES ('320302', '鼓楼区', '320300');
INSERT INTO `users_areainfo` VALUES ('320303', '云龙区', '320300');
INSERT INTO `users_areainfo` VALUES ('320304', '九里区', '320300');
INSERT INTO `users_areainfo` VALUES ('320305', '贾汪区', '320300');
INSERT INTO `users_areainfo` VALUES ('320311', '泉山区', '320300');
INSERT INTO `users_areainfo` VALUES ('320321', '丰县', '320300');
INSERT INTO `users_areainfo` VALUES ('320322', '沛县', '320300');
INSERT INTO `users_areainfo` VALUES ('320323', '铜山县', '320300');
INSERT INTO `users_areainfo` VALUES ('320324', '睢宁县', '320300');
INSERT INTO `users_areainfo` VALUES ('320381', '新沂市', '320300');
INSERT INTO `users_areainfo` VALUES ('320382', '邳州市', '320300');
INSERT INTO `users_areainfo` VALUES ('320383', '其它区', '320300');
INSERT INTO `users_areainfo` VALUES ('320400', '常州', '320000');
INSERT INTO `users_areainfo` VALUES ('320402', '天宁区', '320400');
INSERT INTO `users_areainfo` VALUES ('320404', '钟楼区', '320400');
INSERT INTO `users_areainfo` VALUES ('320405', '戚墅堰区', '320400');
INSERT INTO `users_areainfo` VALUES ('320411', '新北区', '320400');
INSERT INTO `users_areainfo` VALUES ('320412', '武进区', '320400');
INSERT INTO `users_areainfo` VALUES ('320481', '溧阳市', '320400');
INSERT INTO `users_areainfo` VALUES ('320482', '金坛市', '320400');
INSERT INTO `users_areainfo` VALUES ('320483', '其它区', '320400');
INSERT INTO `users_areainfo` VALUES ('320500', '苏州', '320000');
INSERT INTO `users_areainfo` VALUES ('320502', '沧浪区', '320500');
INSERT INTO `users_areainfo` VALUES ('320503', '平江区', '320500');
INSERT INTO `users_areainfo` VALUES ('320504', '金阊区', '320500');
INSERT INTO `users_areainfo` VALUES ('320505', '虎丘区', '320500');
INSERT INTO `users_areainfo` VALUES ('320506', '吴中区', '320500');
INSERT INTO `users_areainfo` VALUES ('320507', '相城区', '320500');
INSERT INTO `users_areainfo` VALUES ('320581', '常熟市', '320500');
INSERT INTO `users_areainfo` VALUES ('320582', '张家港市', '320500');
INSERT INTO `users_areainfo` VALUES ('320583', '昆山市', '320500');
INSERT INTO `users_areainfo` VALUES ('320584', '吴江市', '320500');
INSERT INTO `users_areainfo` VALUES ('320585', '太仓市', '320500');
INSERT INTO `users_areainfo` VALUES ('320594', '新区', '320500');
INSERT INTO `users_areainfo` VALUES ('320595', '园区', '320500');
INSERT INTO `users_areainfo` VALUES ('320596', '其它区', '320500');
INSERT INTO `users_areainfo` VALUES ('320600', '南通', '320000');
INSERT INTO `users_areainfo` VALUES ('320602', '崇川区', '320600');
INSERT INTO `users_areainfo` VALUES ('320611', '港闸区', '320600');
INSERT INTO `users_areainfo` VALUES ('320621', '海安县', '320600');
INSERT INTO `users_areainfo` VALUES ('320623', '如东县', '320600');
INSERT INTO `users_areainfo` VALUES ('320681', '启东市', '320600');
INSERT INTO `users_areainfo` VALUES ('320682', '如皋市', '320600');
INSERT INTO `users_areainfo` VALUES ('320683', '通州市', '320600');
INSERT INTO `users_areainfo` VALUES ('320684', '海门市', '320600');
INSERT INTO `users_areainfo` VALUES ('320693', '开发区', '320600');
INSERT INTO `users_areainfo` VALUES ('320694', '其它区', '320600');
INSERT INTO `users_areainfo` VALUES ('320700', '连云港', '320000');
INSERT INTO `users_areainfo` VALUES ('320703', '连云区', '320700');
INSERT INTO `users_areainfo` VALUES ('320705', '新浦区', '320700');
INSERT INTO `users_areainfo` VALUES ('320706', '海州区', '320700');
INSERT INTO `users_areainfo` VALUES ('320721', '赣榆县', '320700');
INSERT INTO `users_areainfo` VALUES ('320722', '东海县', '320700');
INSERT INTO `users_areainfo` VALUES ('320723', '灌云县', '320700');
INSERT INTO `users_areainfo` VALUES ('320724', '灌南县', '320700');
INSERT INTO `users_areainfo` VALUES ('320725', '其它区', '320700');
INSERT INTO `users_areainfo` VALUES ('320800', '淮安', '320000');
INSERT INTO `users_areainfo` VALUES ('320802', '清河区', '320800');
INSERT INTO `users_areainfo` VALUES ('320803', '楚州区', '320800');
INSERT INTO `users_areainfo` VALUES ('320804', '淮阴区', '320800');
INSERT INTO `users_areainfo` VALUES ('320811', '清浦区', '320800');
INSERT INTO `users_areainfo` VALUES ('320826', '涟水县', '320800');
INSERT INTO `users_areainfo` VALUES ('320829', '洪泽县', '320800');
INSERT INTO `users_areainfo` VALUES ('320830', '盱眙县', '320800');
INSERT INTO `users_areainfo` VALUES ('320831', '金湖县', '320800');
INSERT INTO `users_areainfo` VALUES ('320832', '其它区', '320800');
INSERT INTO `users_areainfo` VALUES ('320900', '盐城', '320000');
INSERT INTO `users_areainfo` VALUES ('320902', '亭湖区', '320900');
INSERT INTO `users_areainfo` VALUES ('320903', '盐都区', '320900');
INSERT INTO `users_areainfo` VALUES ('320921', '响水县', '320900');
INSERT INTO `users_areainfo` VALUES ('320922', '滨海县', '320900');
INSERT INTO `users_areainfo` VALUES ('320923', '阜宁县', '320900');
INSERT INTO `users_areainfo` VALUES ('320924', '射阳县', '320900');
INSERT INTO `users_areainfo` VALUES ('320925', '建湖县', '320900');
INSERT INTO `users_areainfo` VALUES ('320981', '东台市', '320900');
INSERT INTO `users_areainfo` VALUES ('320982', '大丰市', '320900');
INSERT INTO `users_areainfo` VALUES ('320983', '其它区', '320900');
INSERT INTO `users_areainfo` VALUES ('321000', '扬州', '320000');
INSERT INTO `users_areainfo` VALUES ('321002', '广陵区', '321000');
INSERT INTO `users_areainfo` VALUES ('321003', '邗江区', '321000');
INSERT INTO `users_areainfo` VALUES ('321011', '维扬区', '321000');
INSERT INTO `users_areainfo` VALUES ('321023', '宝应县', '321000');
INSERT INTO `users_areainfo` VALUES ('321081', '仪征市', '321000');
INSERT INTO `users_areainfo` VALUES ('321084', '高邮市', '321000');
INSERT INTO `users_areainfo` VALUES ('321088', '江都市', '321000');
INSERT INTO `users_areainfo` VALUES ('321092', '经济开发区', '321000');
INSERT INTO `users_areainfo` VALUES ('321093', '其它区', '321000');
INSERT INTO `users_areainfo` VALUES ('321100', '镇江', '320000');
INSERT INTO `users_areainfo` VALUES ('321102', '京口区', '321100');
INSERT INTO `users_areainfo` VALUES ('321111', '润州区', '321100');
INSERT INTO `users_areainfo` VALUES ('321112', '丹徒区', '321100');
INSERT INTO `users_areainfo` VALUES ('321181', '丹阳市', '321100');
INSERT INTO `users_areainfo` VALUES ('321182', '扬中市', '321100');
INSERT INTO `users_areainfo` VALUES ('321183', '句容市', '321100');
INSERT INTO `users_areainfo` VALUES ('321184', '其它区', '321100');
INSERT INTO `users_areainfo` VALUES ('321200', '泰州', '320000');
INSERT INTO `users_areainfo` VALUES ('321202', '海陵区', '321200');
INSERT INTO `users_areainfo` VALUES ('321203', '高港区', '321200');
INSERT INTO `users_areainfo` VALUES ('321281', '兴化市', '321200');
INSERT INTO `users_areainfo` VALUES ('321282', '靖江市', '321200');
INSERT INTO `users_areainfo` VALUES ('321283', '泰兴市', '321200');
INSERT INTO `users_areainfo` VALUES ('321284', '姜堰市', '321200');
INSERT INTO `users_areainfo` VALUES ('321285', '其它区', '321200');
INSERT INTO `users_areainfo` VALUES ('321300', '宿迁', '320000');
INSERT INTO `users_areainfo` VALUES ('321302', '宿城区', '321300');
INSERT INTO `users_areainfo` VALUES ('321311', '宿豫区', '321300');
INSERT INTO `users_areainfo` VALUES ('321322', '沭阳县', '321300');
INSERT INTO `users_areainfo` VALUES ('321323', '泗阳县', '321300');
INSERT INTO `users_areainfo` VALUES ('321324', '泗洪县', '321300');
INSERT INTO `users_areainfo` VALUES ('321325', '其它区', '321300');
INSERT INTO `users_areainfo` VALUES ('330000', '浙江', '0');
INSERT INTO `users_areainfo` VALUES ('330100', '杭州', '330000');
INSERT INTO `users_areainfo` VALUES ('330102', '上城区', '330100');
INSERT INTO `users_areainfo` VALUES ('330103', '下城区', '330100');
INSERT INTO `users_areainfo` VALUES ('330104', '江干区', '330100');
INSERT INTO `users_areainfo` VALUES ('330105', '拱墅区', '330100');
INSERT INTO `users_areainfo` VALUES ('330106', '西湖区', '330100');
INSERT INTO `users_areainfo` VALUES ('330108', '滨江区', '330100');
INSERT INTO `users_areainfo` VALUES ('330109', '萧山区', '330100');
INSERT INTO `users_areainfo` VALUES ('330110', '余杭区', '330100');
INSERT INTO `users_areainfo` VALUES ('330122', '桐庐县', '330100');
INSERT INTO `users_areainfo` VALUES ('330127', '淳安县', '330100');
INSERT INTO `users_areainfo` VALUES ('330182', '建德市', '330100');
INSERT INTO `users_areainfo` VALUES ('330183', '富阳市', '330100');
INSERT INTO `users_areainfo` VALUES ('330185', '临安市', '330100');
INSERT INTO `users_areainfo` VALUES ('330186', '其它区', '330100');
INSERT INTO `users_areainfo` VALUES ('330200', '宁波', '330000');
INSERT INTO `users_areainfo` VALUES ('330203', '海曙区', '330200');
INSERT INTO `users_areainfo` VALUES ('330204', '江东区', '330200');
INSERT INTO `users_areainfo` VALUES ('330205', '江北区', '330200');
INSERT INTO `users_areainfo` VALUES ('330206', '北仑区', '330200');
INSERT INTO `users_areainfo` VALUES ('330211', '镇海区', '330200');
INSERT INTO `users_areainfo` VALUES ('330212', '鄞州区', '330200');
INSERT INTO `users_areainfo` VALUES ('330225', '象山县', '330200');
INSERT INTO `users_areainfo` VALUES ('330226', '宁海县', '330200');
INSERT INTO `users_areainfo` VALUES ('330281', '余姚市', '330200');
INSERT INTO `users_areainfo` VALUES ('330282', '慈溪市', '330200');
INSERT INTO `users_areainfo` VALUES ('330283', '奉化市', '330200');
INSERT INTO `users_areainfo` VALUES ('330284', '其它区', '330200');
INSERT INTO `users_areainfo` VALUES ('330300', '温州', '330000');
INSERT INTO `users_areainfo` VALUES ('330302', '鹿城区', '330300');
INSERT INTO `users_areainfo` VALUES ('330303', '龙湾区', '330300');
INSERT INTO `users_areainfo` VALUES ('330304', '瓯海区', '330300');
INSERT INTO `users_areainfo` VALUES ('330322', '洞头县', '330300');
INSERT INTO `users_areainfo` VALUES ('330324', '永嘉县', '330300');
INSERT INTO `users_areainfo` VALUES ('330326', '平阳县', '330300');
INSERT INTO `users_areainfo` VALUES ('330327', '苍南县', '330300');
INSERT INTO `users_areainfo` VALUES ('330328', '文成县', '330300');
INSERT INTO `users_areainfo` VALUES ('330329', '泰顺县', '330300');
INSERT INTO `users_areainfo` VALUES ('330381', '瑞安市', '330300');
INSERT INTO `users_areainfo` VALUES ('330382', '乐清市', '330300');
INSERT INTO `users_areainfo` VALUES ('330383', '其它区', '330300');
INSERT INTO `users_areainfo` VALUES ('330400', '嘉兴', '330000');
INSERT INTO `users_areainfo` VALUES ('330402', '南湖区', '330400');
INSERT INTO `users_areainfo` VALUES ('330411', '秀洲区', '330400');
INSERT INTO `users_areainfo` VALUES ('330421', '嘉善县', '330400');
INSERT INTO `users_areainfo` VALUES ('330424', '海盐县', '330400');
INSERT INTO `users_areainfo` VALUES ('330481', '海宁市', '330400');
INSERT INTO `users_areainfo` VALUES ('330482', '平湖市', '330400');
INSERT INTO `users_areainfo` VALUES ('330483', '桐乡市', '330400');
INSERT INTO `users_areainfo` VALUES ('330484', '其它区', '330400');
INSERT INTO `users_areainfo` VALUES ('330500', '湖州', '330000');
INSERT INTO `users_areainfo` VALUES ('330502', '吴兴区', '330500');
INSERT INTO `users_areainfo` VALUES ('330503', '南浔区', '330500');
INSERT INTO `users_areainfo` VALUES ('330521', '德清县', '330500');
INSERT INTO `users_areainfo` VALUES ('330522', '长兴县', '330500');
INSERT INTO `users_areainfo` VALUES ('330523', '安吉县', '330500');
INSERT INTO `users_areainfo` VALUES ('330524', '其它区', '330500');
INSERT INTO `users_areainfo` VALUES ('330600', '绍兴', '330000');
INSERT INTO `users_areainfo` VALUES ('330602', '越城区', '330600');
INSERT INTO `users_areainfo` VALUES ('330621', '绍兴县', '330600');
INSERT INTO `users_areainfo` VALUES ('330624', '新昌县', '330600');
INSERT INTO `users_areainfo` VALUES ('330681', '诸暨市', '330600');
INSERT INTO `users_areainfo` VALUES ('330682', '上虞市', '330600');
INSERT INTO `users_areainfo` VALUES ('330683', '嵊州市', '330600');
INSERT INTO `users_areainfo` VALUES ('330684', '其它区', '330600');
INSERT INTO `users_areainfo` VALUES ('330700', '金华', '330000');
INSERT INTO `users_areainfo` VALUES ('330702', '婺城区', '330700');
INSERT INTO `users_areainfo` VALUES ('330703', '金东区', '330700');
INSERT INTO `users_areainfo` VALUES ('330723', '武义县', '330700');
INSERT INTO `users_areainfo` VALUES ('330726', '浦江县', '330700');
INSERT INTO `users_areainfo` VALUES ('330727', '磐安县', '330700');
INSERT INTO `users_areainfo` VALUES ('330781', '兰溪市', '330700');
INSERT INTO `users_areainfo` VALUES ('330782', '义乌市', '330700');
INSERT INTO `users_areainfo` VALUES ('330783', '东阳市', '330700');
INSERT INTO `users_areainfo` VALUES ('330784', '永康市', '330700');
INSERT INTO `users_areainfo` VALUES ('330785', '其它区', '330700');
INSERT INTO `users_areainfo` VALUES ('330800', '衢州', '330000');
INSERT INTO `users_areainfo` VALUES ('330802', '柯城区', '330800');
INSERT INTO `users_areainfo` VALUES ('330803', '衢江区', '330800');
INSERT INTO `users_areainfo` VALUES ('330822', '常山县', '330800');
INSERT INTO `users_areainfo` VALUES ('330824', '开化县', '330800');
INSERT INTO `users_areainfo` VALUES ('330825', '龙游县', '330800');
INSERT INTO `users_areainfo` VALUES ('330881', '江山市', '330800');
INSERT INTO `users_areainfo` VALUES ('330882', '其它区', '330800');
INSERT INTO `users_areainfo` VALUES ('330900', '舟山', '330000');
INSERT INTO `users_areainfo` VALUES ('330902', '定海区', '330900');
INSERT INTO `users_areainfo` VALUES ('330903', '普陀区', '330900');
INSERT INTO `users_areainfo` VALUES ('330921', '岱山县', '330900');
INSERT INTO `users_areainfo` VALUES ('330922', '嵊泗县', '330900');
INSERT INTO `users_areainfo` VALUES ('330923', '其它区', '330900');
INSERT INTO `users_areainfo` VALUES ('331000', '台州', '330000');
INSERT INTO `users_areainfo` VALUES ('331002', '椒江区', '331000');
INSERT INTO `users_areainfo` VALUES ('331003', '黄岩区', '331000');
INSERT INTO `users_areainfo` VALUES ('331004', '路桥区', '331000');
INSERT INTO `users_areainfo` VALUES ('331021', '玉环县', '331000');
INSERT INTO `users_areainfo` VALUES ('331022', '三门县', '331000');
INSERT INTO `users_areainfo` VALUES ('331023', '天台县', '331000');
INSERT INTO `users_areainfo` VALUES ('331024', '仙居县', '331000');
INSERT INTO `users_areainfo` VALUES ('331081', '温岭市', '331000');
INSERT INTO `users_areainfo` VALUES ('331082', '临海市', '331000');
INSERT INTO `users_areainfo` VALUES ('331083', '其它区', '331000');
INSERT INTO `users_areainfo` VALUES ('331100', '丽水', '330000');
INSERT INTO `users_areainfo` VALUES ('331102', '莲都区', '331100');
INSERT INTO `users_areainfo` VALUES ('331121', '青田县', '331100');
INSERT INTO `users_areainfo` VALUES ('331122', '缙云县', '331100');
INSERT INTO `users_areainfo` VALUES ('331123', '遂昌县', '331100');
INSERT INTO `users_areainfo` VALUES ('331124', '松阳县', '331100');
INSERT INTO `users_areainfo` VALUES ('331125', '云和县', '331100');
INSERT INTO `users_areainfo` VALUES ('331126', '庆元县', '331100');
INSERT INTO `users_areainfo` VALUES ('331127', '景宁畲族自治县', '331100');
INSERT INTO `users_areainfo` VALUES ('331181', '龙泉市', '331100');
INSERT INTO `users_areainfo` VALUES ('331182', '其它区', '331100');
INSERT INTO `users_areainfo` VALUES ('340000', '安徽', '0');
INSERT INTO `users_areainfo` VALUES ('340100', '合肥', '340000');
INSERT INTO `users_areainfo` VALUES ('340102', '瑶海区', '340100');
INSERT INTO `users_areainfo` VALUES ('340103', '庐阳区', '340100');
INSERT INTO `users_areainfo` VALUES ('340104', '蜀山区', '340100');
INSERT INTO `users_areainfo` VALUES ('340111', '包河区', '340100');
INSERT INTO `users_areainfo` VALUES ('340121', '长丰县', '340100');
INSERT INTO `users_areainfo` VALUES ('340122', '肥东县', '340100');
INSERT INTO `users_areainfo` VALUES ('340123', '肥西县', '340100');
INSERT INTO `users_areainfo` VALUES ('340151', '高新区', '340100');
INSERT INTO `users_areainfo` VALUES ('340191', '中区', '340100');
INSERT INTO `users_areainfo` VALUES ('340192', '其它区', '340100');
INSERT INTO `users_areainfo` VALUES ('340200', '芜湖', '340000');
INSERT INTO `users_areainfo` VALUES ('340202', '镜湖区', '340200');
INSERT INTO `users_areainfo` VALUES ('340203', '弋江区', '340200');
INSERT INTO `users_areainfo` VALUES ('340207', '鸠江区', '340200');
INSERT INTO `users_areainfo` VALUES ('340208', '三山区', '340200');
INSERT INTO `users_areainfo` VALUES ('340221', '芜湖县', '340200');
INSERT INTO `users_areainfo` VALUES ('340222', '繁昌县', '340200');
INSERT INTO `users_areainfo` VALUES ('340223', '南陵县', '340200');
INSERT INTO `users_areainfo` VALUES ('340224', '其它区', '340200');
INSERT INTO `users_areainfo` VALUES ('340300', '蚌埠', '340000');
INSERT INTO `users_areainfo` VALUES ('340302', '龙子湖区', '340300');
INSERT INTO `users_areainfo` VALUES ('340303', '蚌山区', '340300');
INSERT INTO `users_areainfo` VALUES ('340304', '禹会区', '340300');
INSERT INTO `users_areainfo` VALUES ('340311', '淮上区', '340300');
INSERT INTO `users_areainfo` VALUES ('340321', '怀远县', '340300');
INSERT INTO `users_areainfo` VALUES ('340322', '五河县', '340300');
INSERT INTO `users_areainfo` VALUES ('340323', '固镇县', '340300');
INSERT INTO `users_areainfo` VALUES ('340324', '其它区', '340300');
INSERT INTO `users_areainfo` VALUES ('340400', '淮南', '340000');
INSERT INTO `users_areainfo` VALUES ('340402', '大通区', '340400');
INSERT INTO `users_areainfo` VALUES ('340403', '田家庵区', '340400');
INSERT INTO `users_areainfo` VALUES ('340404', '谢家集区', '340400');
INSERT INTO `users_areainfo` VALUES ('340405', '八公山区', '340400');
INSERT INTO `users_areainfo` VALUES ('340406', '潘集区', '340400');
INSERT INTO `users_areainfo` VALUES ('340421', '凤台县', '340400');
INSERT INTO `users_areainfo` VALUES ('340422', '其它区', '340400');
INSERT INTO `users_areainfo` VALUES ('340500', '马鞍山', '340000');
INSERT INTO `users_areainfo` VALUES ('340502', '金家庄区', '340500');
INSERT INTO `users_areainfo` VALUES ('340503', '花山区', '340500');
INSERT INTO `users_areainfo` VALUES ('340504', '雨山区', '340500');
INSERT INTO `users_areainfo` VALUES ('340521', '当涂县', '340500');
INSERT INTO `users_areainfo` VALUES ('340522', '其它区', '340500');
INSERT INTO `users_areainfo` VALUES ('340600', '淮北', '340000');
INSERT INTO `users_areainfo` VALUES ('340602', '杜集区', '340600');
INSERT INTO `users_areainfo` VALUES ('340603', '相山区', '340600');
INSERT INTO `users_areainfo` VALUES ('340604', '烈山区', '340600');
INSERT INTO `users_areainfo` VALUES ('340621', '濉溪县', '340600');
INSERT INTO `users_areainfo` VALUES ('340622', '其它区', '340600');
INSERT INTO `users_areainfo` VALUES ('340700', '铜陵', '340000');
INSERT INTO `users_areainfo` VALUES ('340702', '铜官山区', '340700');
INSERT INTO `users_areainfo` VALUES ('340703', '狮子山区', '340700');
INSERT INTO `users_areainfo` VALUES ('340711', '郊区', '340700');
INSERT INTO `users_areainfo` VALUES ('340721', '铜陵县', '340700');
INSERT INTO `users_areainfo` VALUES ('340722', '其它区', '340700');
INSERT INTO `users_areainfo` VALUES ('340800', '安庆', '340000');
INSERT INTO `users_areainfo` VALUES ('340802', '迎江区', '340800');
INSERT INTO `users_areainfo` VALUES ('340803', '大观区', '340800');
INSERT INTO `users_areainfo` VALUES ('340811', '宜秀区', '340800');
INSERT INTO `users_areainfo` VALUES ('340822', '怀宁县', '340800');
INSERT INTO `users_areainfo` VALUES ('340823', '枞阳县', '340800');
INSERT INTO `users_areainfo` VALUES ('340824', '潜山县', '340800');
INSERT INTO `users_areainfo` VALUES ('340825', '太湖县', '340800');
INSERT INTO `users_areainfo` VALUES ('340826', '宿松县', '340800');
INSERT INTO `users_areainfo` VALUES ('340827', '望江县', '340800');
INSERT INTO `users_areainfo` VALUES ('340828', '岳西县', '340800');
INSERT INTO `users_areainfo` VALUES ('340881', '桐城市', '340800');
INSERT INTO `users_areainfo` VALUES ('340882', '其它区', '340800');
INSERT INTO `users_areainfo` VALUES ('341000', '黄山', '340000');
INSERT INTO `users_areainfo` VALUES ('341002', '屯溪区', '341000');
INSERT INTO `users_areainfo` VALUES ('341003', '黄山区', '341000');
INSERT INTO `users_areainfo` VALUES ('341004', '徽州区', '341000');
INSERT INTO `users_areainfo` VALUES ('341021', '歙县', '341000');
INSERT INTO `users_areainfo` VALUES ('341022', '休宁县', '341000');
INSERT INTO `users_areainfo` VALUES ('341023', '黟县', '341000');
INSERT INTO `users_areainfo` VALUES ('341024', '祁门县', '341000');
INSERT INTO `users_areainfo` VALUES ('341025', '其它区', '341000');
INSERT INTO `users_areainfo` VALUES ('341100', '滁州', '340000');
INSERT INTO `users_areainfo` VALUES ('341102', '琅琊区', '341100');
INSERT INTO `users_areainfo` VALUES ('341103', '南谯区', '341100');
INSERT INTO `users_areainfo` VALUES ('341122', '来安县', '341100');
INSERT INTO `users_areainfo` VALUES ('341124', '全椒县', '341100');
INSERT INTO `users_areainfo` VALUES ('341125', '定远县', '341100');
INSERT INTO `users_areainfo` VALUES ('341126', '凤阳县', '341100');
INSERT INTO `users_areainfo` VALUES ('341181', '天长市', '341100');
INSERT INTO `users_areainfo` VALUES ('341182', '明光市', '341100');
INSERT INTO `users_areainfo` VALUES ('341183', '其它区', '341100');
INSERT INTO `users_areainfo` VALUES ('341200', '阜阳', '340000');
INSERT INTO `users_areainfo` VALUES ('341202', '颍州区', '341200');
INSERT INTO `users_areainfo` VALUES ('341203', '颍东区', '341200');
INSERT INTO `users_areainfo` VALUES ('341204', '颍泉区', '341200');
INSERT INTO `users_areainfo` VALUES ('341221', '临泉县', '341200');
INSERT INTO `users_areainfo` VALUES ('341222', '太和县', '341200');
INSERT INTO `users_areainfo` VALUES ('341225', '阜南县', '341200');
INSERT INTO `users_areainfo` VALUES ('341226', '颍上县', '341200');
INSERT INTO `users_areainfo` VALUES ('341282', '界首市', '341200');
INSERT INTO `users_areainfo` VALUES ('341283', '其它区', '341200');
INSERT INTO `users_areainfo` VALUES ('341300', '宿州', '340000');
INSERT INTO `users_areainfo` VALUES ('341302', '埇桥区', '341300');
INSERT INTO `users_areainfo` VALUES ('341321', '砀山县', '341300');
INSERT INTO `users_areainfo` VALUES ('341322', '萧县', '341300');
INSERT INTO `users_areainfo` VALUES ('341323', '灵璧县', '341300');
INSERT INTO `users_areainfo` VALUES ('341324', '泗县', '341300');
INSERT INTO `users_areainfo` VALUES ('341325', '其它区', '341300');
INSERT INTO `users_areainfo` VALUES ('341400', '巢湖', '340000');
INSERT INTO `users_areainfo` VALUES ('341402', '居巢区', '341400');
INSERT INTO `users_areainfo` VALUES ('341421', '庐江县', '341400');
INSERT INTO `users_areainfo` VALUES ('341422', '无为县', '341400');
INSERT INTO `users_areainfo` VALUES ('341423', '含山县', '341400');
INSERT INTO `users_areainfo` VALUES ('341424', '和县', '341400');
INSERT INTO `users_areainfo` VALUES ('341425', '其它区', '341400');
INSERT INTO `users_areainfo` VALUES ('341500', '六安', '340000');
INSERT INTO `users_areainfo` VALUES ('341502', '金安区', '341500');
INSERT INTO `users_areainfo` VALUES ('341503', '裕安区', '341500');
INSERT INTO `users_areainfo` VALUES ('341521', '寿县', '341500');
INSERT INTO `users_areainfo` VALUES ('341522', '霍邱县', '341500');
INSERT INTO `users_areainfo` VALUES ('341523', '舒城县', '341500');
INSERT INTO `users_areainfo` VALUES ('341524', '金寨县', '341500');
INSERT INTO `users_areainfo` VALUES ('341525', '霍山县', '341500');
INSERT INTO `users_areainfo` VALUES ('341526', '其它区', '341500');
INSERT INTO `users_areainfo` VALUES ('341600', '亳州', '340000');
INSERT INTO `users_areainfo` VALUES ('341602', '谯城区', '341600');
INSERT INTO `users_areainfo` VALUES ('341621', '涡阳县', '341600');
INSERT INTO `users_areainfo` VALUES ('341622', '蒙城县', '341600');
INSERT INTO `users_areainfo` VALUES ('341623', '利辛县', '341600');
INSERT INTO `users_areainfo` VALUES ('341624', '其它区', '341600');
INSERT INTO `users_areainfo` VALUES ('341700', '池州', '340000');
INSERT INTO `users_areainfo` VALUES ('341702', '贵池区', '341700');
INSERT INTO `users_areainfo` VALUES ('341721', '东至县', '341700');
INSERT INTO `users_areainfo` VALUES ('341722', '石台县', '341700');
INSERT INTO `users_areainfo` VALUES ('341723', '青阳县', '341700');
INSERT INTO `users_areainfo` VALUES ('341724', '其它区', '341700');
INSERT INTO `users_areainfo` VALUES ('341800', '宣城', '340000');
INSERT INTO `users_areainfo` VALUES ('341802', '宣州区', '341800');
INSERT INTO `users_areainfo` VALUES ('341821', '郎溪县', '341800');
INSERT INTO `users_areainfo` VALUES ('341822', '广德县', '341800');
INSERT INTO `users_areainfo` VALUES ('341823', '泾县', '341800');
INSERT INTO `users_areainfo` VALUES ('341824', '绩溪县', '341800');
INSERT INTO `users_areainfo` VALUES ('341825', '旌德县', '341800');
INSERT INTO `users_areainfo` VALUES ('341881', '宁国市', '341800');
INSERT INTO `users_areainfo` VALUES ('341882', '其它区', '341800');
INSERT INTO `users_areainfo` VALUES ('350000', '福建', '0');
INSERT INTO `users_areainfo` VALUES ('350100', '福州', '350000');
INSERT INTO `users_areainfo` VALUES ('350102', '鼓楼区', '350100');
INSERT INTO `users_areainfo` VALUES ('350103', '台江区', '350100');
INSERT INTO `users_areainfo` VALUES ('350104', '仓山区', '350100');
INSERT INTO `users_areainfo` VALUES ('350105', '马尾区', '350100');
INSERT INTO `users_areainfo` VALUES ('350111', '晋安区', '350100');
INSERT INTO `users_areainfo` VALUES ('350121', '闽侯县', '350100');
INSERT INTO `users_areainfo` VALUES ('350122', '连江县', '350100');
INSERT INTO `users_areainfo` VALUES ('350123', '罗源县', '350100');
INSERT INTO `users_areainfo` VALUES ('350124', '闽清县', '350100');
INSERT INTO `users_areainfo` VALUES ('350125', '永泰县', '350100');
INSERT INTO `users_areainfo` VALUES ('350128', '平潭县', '350100');
INSERT INTO `users_areainfo` VALUES ('350181', '福清市', '350100');
INSERT INTO `users_areainfo` VALUES ('350182', '长乐市', '350100');
INSERT INTO `users_areainfo` VALUES ('350183', '其它区', '350100');
INSERT INTO `users_areainfo` VALUES ('350200', '厦门', '350000');
INSERT INTO `users_areainfo` VALUES ('350203', '思明区', '350200');
INSERT INTO `users_areainfo` VALUES ('350205', '海沧区', '350200');
INSERT INTO `users_areainfo` VALUES ('350206', '湖里区', '350200');
INSERT INTO `users_areainfo` VALUES ('350211', '集美区', '350200');
INSERT INTO `users_areainfo` VALUES ('350212', '同安区', '350200');
INSERT INTO `users_areainfo` VALUES ('350213', '翔安区', '350200');
INSERT INTO `users_areainfo` VALUES ('350214', '其它区', '350200');
INSERT INTO `users_areainfo` VALUES ('350300', '莆田', '350000');
INSERT INTO `users_areainfo` VALUES ('350302', '城厢区', '350300');
INSERT INTO `users_areainfo` VALUES ('350303', '涵江区', '350300');
INSERT INTO `users_areainfo` VALUES ('350304', '荔城区', '350300');
INSERT INTO `users_areainfo` VALUES ('350305', '秀屿区', '350300');
INSERT INTO `users_areainfo` VALUES ('350322', '仙游县', '350300');
INSERT INTO `users_areainfo` VALUES ('350323', '其它区', '350300');
INSERT INTO `users_areainfo` VALUES ('350400', '三明', '350000');
INSERT INTO `users_areainfo` VALUES ('350402', '梅列区', '350400');
INSERT INTO `users_areainfo` VALUES ('350403', '三元区', '350400');
INSERT INTO `users_areainfo` VALUES ('350421', '明溪县', '350400');
INSERT INTO `users_areainfo` VALUES ('350423', '清流县', '350400');
INSERT INTO `users_areainfo` VALUES ('350424', '宁化县', '350400');
INSERT INTO `users_areainfo` VALUES ('350425', '大田县', '350400');
INSERT INTO `users_areainfo` VALUES ('350426', '尤溪县', '350400');
INSERT INTO `users_areainfo` VALUES ('350427', '沙县', '350400');
INSERT INTO `users_areainfo` VALUES ('350428', '将乐县', '350400');
INSERT INTO `users_areainfo` VALUES ('350429', '泰宁县', '350400');
INSERT INTO `users_areainfo` VALUES ('350430', '建宁县', '350400');
INSERT INTO `users_areainfo` VALUES ('350481', '永安市', '350400');
INSERT INTO `users_areainfo` VALUES ('350482', '其它区', '350400');
INSERT INTO `users_areainfo` VALUES ('350500', '泉州', '350000');
INSERT INTO `users_areainfo` VALUES ('350502', '鲤城区', '350500');
INSERT INTO `users_areainfo` VALUES ('350503', '丰泽区', '350500');
INSERT INTO `users_areainfo` VALUES ('350504', '洛江区', '350500');
INSERT INTO `users_areainfo` VALUES ('350505', '泉港区', '350500');
INSERT INTO `users_areainfo` VALUES ('350521', '惠安县', '350500');
INSERT INTO `users_areainfo` VALUES ('350524', '安溪县', '350500');
INSERT INTO `users_areainfo` VALUES ('350525', '永春县', '350500');
INSERT INTO `users_areainfo` VALUES ('350526', '德化县', '350500');
INSERT INTO `users_areainfo` VALUES ('350527', '金门县', '350500');
INSERT INTO `users_areainfo` VALUES ('350581', '石狮市', '350500');
INSERT INTO `users_areainfo` VALUES ('350582', '晋江市', '350500');
INSERT INTO `users_areainfo` VALUES ('350583', '南安市', '350500');
INSERT INTO `users_areainfo` VALUES ('350584', '其它区', '350500');
INSERT INTO `users_areainfo` VALUES ('350600', '漳州', '350000');
INSERT INTO `users_areainfo` VALUES ('350602', '芗城区', '350600');
INSERT INTO `users_areainfo` VALUES ('350603', '龙文区', '350600');
INSERT INTO `users_areainfo` VALUES ('350622', '云霄县', '350600');
INSERT INTO `users_areainfo` VALUES ('350623', '漳浦县', '350600');
INSERT INTO `users_areainfo` VALUES ('350624', '诏安县', '350600');
INSERT INTO `users_areainfo` VALUES ('350625', '长泰县', '350600');
INSERT INTO `users_areainfo` VALUES ('350626', '东山县', '350600');
INSERT INTO `users_areainfo` VALUES ('350627', '南靖县', '350600');
INSERT INTO `users_areainfo` VALUES ('350628', '平和县', '350600');
INSERT INTO `users_areainfo` VALUES ('350629', '华安县', '350600');
INSERT INTO `users_areainfo` VALUES ('350681', '龙海市', '350600');
INSERT INTO `users_areainfo` VALUES ('350682', '其它区', '350600');
INSERT INTO `users_areainfo` VALUES ('350700', '南平', '350000');
INSERT INTO `users_areainfo` VALUES ('350702', '延平区', '350700');
INSERT INTO `users_areainfo` VALUES ('350721', '顺昌县', '350700');
INSERT INTO `users_areainfo` VALUES ('350722', '浦城县', '350700');
INSERT INTO `users_areainfo` VALUES ('350723', '光泽县', '350700');
INSERT INTO `users_areainfo` VALUES ('350724', '松溪县', '350700');
INSERT INTO `users_areainfo` VALUES ('350725', '政和县', '350700');
INSERT INTO `users_areainfo` VALUES ('350781', '邵武市', '350700');
INSERT INTO `users_areainfo` VALUES ('350782', '武夷山市', '350700');
INSERT INTO `users_areainfo` VALUES ('350783', '建瓯市', '350700');
INSERT INTO `users_areainfo` VALUES ('350784', '建阳市', '350700');
INSERT INTO `users_areainfo` VALUES ('350785', '其它区', '350700');
INSERT INTO `users_areainfo` VALUES ('350800', '龙岩', '350000');
INSERT INTO `users_areainfo` VALUES ('350802', '新罗区', '350800');
INSERT INTO `users_areainfo` VALUES ('350821', '长汀县', '350800');
INSERT INTO `users_areainfo` VALUES ('350822', '永定县', '350800');
INSERT INTO `users_areainfo` VALUES ('350823', '上杭县', '350800');
INSERT INTO `users_areainfo` VALUES ('350824', '武平县', '350800');
INSERT INTO `users_areainfo` VALUES ('350825', '连城县', '350800');
INSERT INTO `users_areainfo` VALUES ('350881', '漳平市', '350800');
INSERT INTO `users_areainfo` VALUES ('350882', '其它区', '350800');
INSERT INTO `users_areainfo` VALUES ('350900', '宁德', '350000');
INSERT INTO `users_areainfo` VALUES ('350902', '蕉城区', '350900');
INSERT INTO `users_areainfo` VALUES ('350921', '霞浦县', '350900');
INSERT INTO `users_areainfo` VALUES ('350922', '古田县', '350900');
INSERT INTO `users_areainfo` VALUES ('350923', '屏南县', '350900');
INSERT INTO `users_areainfo` VALUES ('350924', '寿宁县', '350900');
INSERT INTO `users_areainfo` VALUES ('350925', '周宁县', '350900');
INSERT INTO `users_areainfo` VALUES ('350926', '柘荣县', '350900');
INSERT INTO `users_areainfo` VALUES ('350981', '福安市', '350900');
INSERT INTO `users_areainfo` VALUES ('350982', '福鼎市', '350900');
INSERT INTO `users_areainfo` VALUES ('350983', '其它区', '350900');
INSERT INTO `users_areainfo` VALUES ('360000', '江西', '0');
INSERT INTO `users_areainfo` VALUES ('360100', '南昌', '360000');
INSERT INTO `users_areainfo` VALUES ('360102', '东湖区', '360100');
INSERT INTO `users_areainfo` VALUES ('360103', '西湖区', '360100');
INSERT INTO `users_areainfo` VALUES ('360104', '青云谱区', '360100');
INSERT INTO `users_areainfo` VALUES ('360105', '湾里区', '360100');
INSERT INTO `users_areainfo` VALUES ('360111', '青山湖区', '360100');
INSERT INTO `users_areainfo` VALUES ('360121', '南昌县', '360100');
INSERT INTO `users_areainfo` VALUES ('360122', '新建县', '360100');
INSERT INTO `users_areainfo` VALUES ('360123', '安义县', '360100');
INSERT INTO `users_areainfo` VALUES ('360124', '进贤县', '360100');
INSERT INTO `users_areainfo` VALUES ('360125', '红谷滩新区', '360100');
INSERT INTO `users_areainfo` VALUES ('360126', '经济技术开发区', '360100');
INSERT INTO `users_areainfo` VALUES ('360127', '昌北区', '360100');
INSERT INTO `users_areainfo` VALUES ('360128', '其它区', '360100');
INSERT INTO `users_areainfo` VALUES ('360200', '景德镇', '360000');
INSERT INTO `users_areainfo` VALUES ('360202', '昌江区', '360200');
INSERT INTO `users_areainfo` VALUES ('360203', '珠山区', '360200');
INSERT INTO `users_areainfo` VALUES ('360222', '浮梁县', '360200');
INSERT INTO `users_areainfo` VALUES ('360281', '乐平市', '360200');
INSERT INTO `users_areainfo` VALUES ('360282', '其它区', '360200');
INSERT INTO `users_areainfo` VALUES ('360300', '萍乡', '360000');
INSERT INTO `users_areainfo` VALUES ('360302', '安源区', '360300');
INSERT INTO `users_areainfo` VALUES ('360313', '湘东区', '360300');
INSERT INTO `users_areainfo` VALUES ('360321', '莲花县', '360300');
INSERT INTO `users_areainfo` VALUES ('360322', '上栗县', '360300');
INSERT INTO `users_areainfo` VALUES ('360323', '芦溪县', '360300');
INSERT INTO `users_areainfo` VALUES ('360324', '其它区', '360300');
INSERT INTO `users_areainfo` VALUES ('360400', '九江', '360000');
INSERT INTO `users_areainfo` VALUES ('360402', '庐山区', '360400');
INSERT INTO `users_areainfo` VALUES ('360403', '浔阳区', '360400');
INSERT INTO `users_areainfo` VALUES ('360421', '九江县', '360400');
INSERT INTO `users_areainfo` VALUES ('360423', '武宁县', '360400');
INSERT INTO `users_areainfo` VALUES ('360424', '修水县', '360400');
INSERT INTO `users_areainfo` VALUES ('360425', '永修县', '360400');
INSERT INTO `users_areainfo` VALUES ('360426', '德安县', '360400');
INSERT INTO `users_areainfo` VALUES ('360427', '星子县', '360400');
INSERT INTO `users_areainfo` VALUES ('360428', '都昌县', '360400');
INSERT INTO `users_areainfo` VALUES ('360429', '湖口县', '360400');
INSERT INTO `users_areainfo` VALUES ('360430', '彭泽县', '360400');
INSERT INTO `users_areainfo` VALUES ('360481', '瑞昌市', '360400');
INSERT INTO `users_areainfo` VALUES ('360482', '其它区', '360400');
INSERT INTO `users_areainfo` VALUES ('360500', '新余', '360000');
INSERT INTO `users_areainfo` VALUES ('360502', '渝水区', '360500');
INSERT INTO `users_areainfo` VALUES ('360521', '分宜县', '360500');
INSERT INTO `users_areainfo` VALUES ('360522', '其它区', '360500');
INSERT INTO `users_areainfo` VALUES ('360600', '鹰潭', '360000');
INSERT INTO `users_areainfo` VALUES ('360602', '月湖区', '360600');
INSERT INTO `users_areainfo` VALUES ('360622', '余江县', '360600');
INSERT INTO `users_areainfo` VALUES ('360681', '贵溪市', '360600');
INSERT INTO `users_areainfo` VALUES ('360682', '其它区', '360600');
INSERT INTO `users_areainfo` VALUES ('360700', '赣州', '360000');
INSERT INTO `users_areainfo` VALUES ('360702', '章贡区', '360700');
INSERT INTO `users_areainfo` VALUES ('360721', '赣县', '360700');
INSERT INTO `users_areainfo` VALUES ('360722', '信丰县', '360700');
INSERT INTO `users_areainfo` VALUES ('360723', '大余县', '360700');
INSERT INTO `users_areainfo` VALUES ('360724', '上犹县', '360700');
INSERT INTO `users_areainfo` VALUES ('360725', '崇义县', '360700');
INSERT INTO `users_areainfo` VALUES ('360726', '安远县', '360700');
INSERT INTO `users_areainfo` VALUES ('360727', '龙南县', '360700');
INSERT INTO `users_areainfo` VALUES ('360728', '定南县', '360700');
INSERT INTO `users_areainfo` VALUES ('360729', '全南县', '360700');
INSERT INTO `users_areainfo` VALUES ('360730', '宁都县', '360700');
INSERT INTO `users_areainfo` VALUES ('360731', '于都县', '360700');
INSERT INTO `users_areainfo` VALUES ('360732', '兴国县', '360700');
INSERT INTO `users_areainfo` VALUES ('360733', '会昌县', '360700');
INSERT INTO `users_areainfo` VALUES ('360734', '寻乌县', '360700');
INSERT INTO `users_areainfo` VALUES ('360735', '石城县', '360700');
INSERT INTO `users_areainfo` VALUES ('360751', '黄金区', '360700');
INSERT INTO `users_areainfo` VALUES ('360781', '瑞金市', '360700');
INSERT INTO `users_areainfo` VALUES ('360782', '南康市', '360700');
INSERT INTO `users_areainfo` VALUES ('360783', '其它区', '360700');
INSERT INTO `users_areainfo` VALUES ('360800', '吉安', '360000');
INSERT INTO `users_areainfo` VALUES ('360802', '吉州区', '360800');
INSERT INTO `users_areainfo` VALUES ('360803', '青原区', '360800');
INSERT INTO `users_areainfo` VALUES ('360821', '吉安县', '360800');
INSERT INTO `users_areainfo` VALUES ('360822', '吉水县', '360800');
INSERT INTO `users_areainfo` VALUES ('360823', '峡江县', '360800');
INSERT INTO `users_areainfo` VALUES ('360824', '新干县', '360800');
INSERT INTO `users_areainfo` VALUES ('360825', '永丰县', '360800');
INSERT INTO `users_areainfo` VALUES ('360826', '泰和县', '360800');
INSERT INTO `users_areainfo` VALUES ('360827', '遂川县', '360800');
INSERT INTO `users_areainfo` VALUES ('360828', '万安县', '360800');
INSERT INTO `users_areainfo` VALUES ('360829', '安福县', '360800');
INSERT INTO `users_areainfo` VALUES ('360830', '永新县', '360800');
INSERT INTO `users_areainfo` VALUES ('360881', '井冈山市', '360800');
INSERT INTO `users_areainfo` VALUES ('360882', '其它区', '360800');
INSERT INTO `users_areainfo` VALUES ('360900', '宜春', '360000');
INSERT INTO `users_areainfo` VALUES ('360902', '袁州区', '360900');
INSERT INTO `users_areainfo` VALUES ('360921', '奉新县', '360900');
INSERT INTO `users_areainfo` VALUES ('360922', '万载县', '360900');
INSERT INTO `users_areainfo` VALUES ('360923', '上高县', '360900');
INSERT INTO `users_areainfo` VALUES ('360924', '宜丰县', '360900');
INSERT INTO `users_areainfo` VALUES ('360925', '靖安县', '360900');
INSERT INTO `users_areainfo` VALUES ('360926', '铜鼓县', '360900');
INSERT INTO `users_areainfo` VALUES ('360981', '丰城市', '360900');
INSERT INTO `users_areainfo` VALUES ('360982', '樟树市', '360900');
INSERT INTO `users_areainfo` VALUES ('360983', '高安市', '360900');
INSERT INTO `users_areainfo` VALUES ('360984', '其它区', '360900');
INSERT INTO `users_areainfo` VALUES ('361000', '抚州', '360000');
INSERT INTO `users_areainfo` VALUES ('361002', '临川区', '361000');
INSERT INTO `users_areainfo` VALUES ('361021', '南城县', '361000');
INSERT INTO `users_areainfo` VALUES ('361022', '黎川县', '361000');
INSERT INTO `users_areainfo` VALUES ('361023', '南丰县', '361000');
INSERT INTO `users_areainfo` VALUES ('361024', '崇仁县', '361000');
INSERT INTO `users_areainfo` VALUES ('361025', '乐安县', '361000');
INSERT INTO `users_areainfo` VALUES ('361026', '宜黄县', '361000');
INSERT INTO `users_areainfo` VALUES ('361027', '金溪县', '361000');
INSERT INTO `users_areainfo` VALUES ('361028', '资溪县', '361000');
INSERT INTO `users_areainfo` VALUES ('361029', '东乡县', '361000');
INSERT INTO `users_areainfo` VALUES ('361030', '广昌县', '361000');
INSERT INTO `users_areainfo` VALUES ('361031', '其它区', '361000');
INSERT INTO `users_areainfo` VALUES ('361100', '上饶', '360000');
INSERT INTO `users_areainfo` VALUES ('361102', '信州区', '361100');
INSERT INTO `users_areainfo` VALUES ('361121', '上饶县', '361100');
INSERT INTO `users_areainfo` VALUES ('361122', '广丰县', '361100');
INSERT INTO `users_areainfo` VALUES ('361123', '玉山县', '361100');
INSERT INTO `users_areainfo` VALUES ('361124', '铅山县', '361100');
INSERT INTO `users_areainfo` VALUES ('361125', '横峰县', '361100');
INSERT INTO `users_areainfo` VALUES ('361126', '弋阳县', '361100');
INSERT INTO `users_areainfo` VALUES ('361127', '余干县', '361100');
INSERT INTO `users_areainfo` VALUES ('361128', '鄱阳县', '361100');
INSERT INTO `users_areainfo` VALUES ('361129', '万年县', '361100');
INSERT INTO `users_areainfo` VALUES ('361130', '婺源县', '361100');
INSERT INTO `users_areainfo` VALUES ('361181', '德兴市', '361100');
INSERT INTO `users_areainfo` VALUES ('361182', '其它区', '361100');
INSERT INTO `users_areainfo` VALUES ('370000', '山东', '0');
INSERT INTO `users_areainfo` VALUES ('370100', '济南', '370000');
INSERT INTO `users_areainfo` VALUES ('370102', '历下区', '370100');
INSERT INTO `users_areainfo` VALUES ('370103', '市中区', '370100');
INSERT INTO `users_areainfo` VALUES ('370104', '槐荫区', '370100');
INSERT INTO `users_areainfo` VALUES ('370105', '天桥区', '370100');
INSERT INTO `users_areainfo` VALUES ('370112', '历城区', '370100');
INSERT INTO `users_areainfo` VALUES ('370113', '长清区', '370100');
INSERT INTO `users_areainfo` VALUES ('370124', '平阴县', '370100');
INSERT INTO `users_areainfo` VALUES ('370125', '济阳县', '370100');
INSERT INTO `users_areainfo` VALUES ('370126', '商河县', '370100');
INSERT INTO `users_areainfo` VALUES ('370181', '章丘市', '370100');
INSERT INTO `users_areainfo` VALUES ('370182', '其它区', '370100');
INSERT INTO `users_areainfo` VALUES ('370200', '青岛', '370000');
INSERT INTO `users_areainfo` VALUES ('370202', '市南区', '370200');
INSERT INTO `users_areainfo` VALUES ('370203', '市北区', '370200');
INSERT INTO `users_areainfo` VALUES ('370205', '四方区', '370200');
INSERT INTO `users_areainfo` VALUES ('370211', '黄岛区', '370200');
INSERT INTO `users_areainfo` VALUES ('370212', '崂山区', '370200');
INSERT INTO `users_areainfo` VALUES ('370213', '李沧区', '370200');
INSERT INTO `users_areainfo` VALUES ('370214', '城阳区', '370200');
INSERT INTO `users_areainfo` VALUES ('370251', '开发区', '370200');
INSERT INTO `users_areainfo` VALUES ('370281', '胶州市', '370200');
INSERT INTO `users_areainfo` VALUES ('370282', '即墨市', '370200');
INSERT INTO `users_areainfo` VALUES ('370283', '平度市', '370200');
INSERT INTO `users_areainfo` VALUES ('370284', '胶南市', '370200');
INSERT INTO `users_areainfo` VALUES ('370285', '莱西市', '370200');
INSERT INTO `users_areainfo` VALUES ('370286', '其它区', '370200');
INSERT INTO `users_areainfo` VALUES ('370300', '淄博', '370000');
INSERT INTO `users_areainfo` VALUES ('370302', '淄川区', '370300');
INSERT INTO `users_areainfo` VALUES ('370303', '张店区', '370300');
INSERT INTO `users_areainfo` VALUES ('370304', '博山区', '370300');
INSERT INTO `users_areainfo` VALUES ('370305', '临淄区', '370300');
INSERT INTO `users_areainfo` VALUES ('370306', '周村区', '370300');
INSERT INTO `users_areainfo` VALUES ('370321', '桓台县', '370300');
INSERT INTO `users_areainfo` VALUES ('370322', '高青县', '370300');
INSERT INTO `users_areainfo` VALUES ('370323', '沂源县', '370300');
INSERT INTO `users_areainfo` VALUES ('370324', '其它区', '370300');
INSERT INTO `users_areainfo` VALUES ('370400', '枣庄', '370000');
INSERT INTO `users_areainfo` VALUES ('370402', '市中区', '370400');
INSERT INTO `users_areainfo` VALUES ('370403', '薛城区', '370400');
INSERT INTO `users_areainfo` VALUES ('370404', '峄城区', '370400');
INSERT INTO `users_areainfo` VALUES ('370405', '台儿庄区', '370400');
INSERT INTO `users_areainfo` VALUES ('370406', '山亭区', '370400');
INSERT INTO `users_areainfo` VALUES ('370481', '滕州市', '370400');
INSERT INTO `users_areainfo` VALUES ('370482', '其它区', '370400');
INSERT INTO `users_areainfo` VALUES ('370500', '东营', '370000');
INSERT INTO `users_areainfo` VALUES ('370502', '东营区', '370500');
INSERT INTO `users_areainfo` VALUES ('370503', '河口区', '370500');
INSERT INTO `users_areainfo` VALUES ('370521', '垦利县', '370500');
INSERT INTO `users_areainfo` VALUES ('370522', '利津县', '370500');
INSERT INTO `users_areainfo` VALUES ('370523', '广饶县', '370500');
INSERT INTO `users_areainfo` VALUES ('370589', '西城区', '370500');
INSERT INTO `users_areainfo` VALUES ('370590', '东城区', '370500');
INSERT INTO `users_areainfo` VALUES ('370591', '其它区', '370500');
INSERT INTO `users_areainfo` VALUES ('370600', '烟台', '370000');
INSERT INTO `users_areainfo` VALUES ('370602', '芝罘区', '370600');
INSERT INTO `users_areainfo` VALUES ('370611', '福山区', '370600');
INSERT INTO `users_areainfo` VALUES ('370612', '牟平区', '370600');
INSERT INTO `users_areainfo` VALUES ('370613', '莱山区', '370600');
INSERT INTO `users_areainfo` VALUES ('370634', '长岛县', '370600');
INSERT INTO `users_areainfo` VALUES ('370681', '龙口市', '370600');
INSERT INTO `users_areainfo` VALUES ('370682', '莱阳市', '370600');
INSERT INTO `users_areainfo` VALUES ('370683', '莱州市', '370600');
INSERT INTO `users_areainfo` VALUES ('370684', '蓬莱市', '370600');
INSERT INTO `users_areainfo` VALUES ('370685', '招远市', '370600');
INSERT INTO `users_areainfo` VALUES ('370686', '栖霞市', '370600');
INSERT INTO `users_areainfo` VALUES ('370687', '海阳市', '370600');
INSERT INTO `users_areainfo` VALUES ('370688', '其它区', '370600');
INSERT INTO `users_areainfo` VALUES ('370700', '潍坊', '370000');
INSERT INTO `users_areainfo` VALUES ('370702', '潍城区', '370700');
INSERT INTO `users_areainfo` VALUES ('370703', '寒亭区', '370700');
INSERT INTO `users_areainfo` VALUES ('370704', '坊子区', '370700');
INSERT INTO `users_areainfo` VALUES ('370705', '奎文区', '370700');
INSERT INTO `users_areainfo` VALUES ('370724', '临朐县', '370700');
INSERT INTO `users_areainfo` VALUES ('370725', '昌乐县', '370700');
INSERT INTO `users_areainfo` VALUES ('370751', '开发区', '370700');
INSERT INTO `users_areainfo` VALUES ('370781', '青州市', '370700');
INSERT INTO `users_areainfo` VALUES ('370782', '诸城市', '370700');
INSERT INTO `users_areainfo` VALUES ('370783', '寿光市', '370700');
INSERT INTO `users_areainfo` VALUES ('370784', '安丘市', '370700');
INSERT INTO `users_areainfo` VALUES ('370785', '高密市', '370700');
INSERT INTO `users_areainfo` VALUES ('370786', '昌邑市', '370700');
INSERT INTO `users_areainfo` VALUES ('370787', '其它区', '370700');
INSERT INTO `users_areainfo` VALUES ('370800', '济宁', '370000');
INSERT INTO `users_areainfo` VALUES ('370802', '市中区', '370800');
INSERT INTO `users_areainfo` VALUES ('370811', '任城区', '370800');
INSERT INTO `users_areainfo` VALUES ('370826', '微山县', '370800');
INSERT INTO `users_areainfo` VALUES ('370827', '鱼台县', '370800');
INSERT INTO `users_areainfo` VALUES ('370828', '金乡县', '370800');
INSERT INTO `users_areainfo` VALUES ('370829', '嘉祥县', '370800');
INSERT INTO `users_areainfo` VALUES ('370830', '汶上县', '370800');
INSERT INTO `users_areainfo` VALUES ('370831', '泗水县', '370800');
INSERT INTO `users_areainfo` VALUES ('370832', '梁山县', '370800');
INSERT INTO `users_areainfo` VALUES ('370881', '曲阜市', '370800');
INSERT INTO `users_areainfo` VALUES ('370882', '兖州市', '370800');
INSERT INTO `users_areainfo` VALUES ('370883', '邹城市', '370800');
INSERT INTO `users_areainfo` VALUES ('370884', '其它区', '370800');
INSERT INTO `users_areainfo` VALUES ('370900', '泰安', '370000');
INSERT INTO `users_areainfo` VALUES ('370902', '泰山区', '370900');
INSERT INTO `users_areainfo` VALUES ('370903', '岱岳区', '370900');
INSERT INTO `users_areainfo` VALUES ('370921', '宁阳县', '370900');
INSERT INTO `users_areainfo` VALUES ('370923', '东平县', '370900');
INSERT INTO `users_areainfo` VALUES ('370982', '新泰市', '370900');
INSERT INTO `users_areainfo` VALUES ('370983', '肥城市', '370900');
INSERT INTO `users_areainfo` VALUES ('370984', '其它区', '370900');
INSERT INTO `users_areainfo` VALUES ('371000', '威海', '370000');
INSERT INTO `users_areainfo` VALUES ('371002', '环翠区', '371000');
INSERT INTO `users_areainfo` VALUES ('371081', '文登市', '371000');
INSERT INTO `users_areainfo` VALUES ('371082', '荣成市', '371000');
INSERT INTO `users_areainfo` VALUES ('371083', '乳山市', '371000');
INSERT INTO `users_areainfo` VALUES ('371084', '其它区', '371000');
INSERT INTO `users_areainfo` VALUES ('371100', '日照', '370000');
INSERT INTO `users_areainfo` VALUES ('371102', '东港区', '371100');
INSERT INTO `users_areainfo` VALUES ('371103', '岚山区', '371100');
INSERT INTO `users_areainfo` VALUES ('371121', '五莲县', '371100');
INSERT INTO `users_areainfo` VALUES ('371122', '莒县', '371100');
INSERT INTO `users_areainfo` VALUES ('371123', '其它区', '371100');
INSERT INTO `users_areainfo` VALUES ('371200', '莱芜', '370000');
INSERT INTO `users_areainfo` VALUES ('371202', '莱城区', '371200');
INSERT INTO `users_areainfo` VALUES ('371203', '钢城区', '371200');
INSERT INTO `users_areainfo` VALUES ('371204', '其它区', '371200');
INSERT INTO `users_areainfo` VALUES ('371300', '临沂', '370000');
INSERT INTO `users_areainfo` VALUES ('371302', '兰山区', '371300');
INSERT INTO `users_areainfo` VALUES ('371311', '罗庄区', '371300');
INSERT INTO `users_areainfo` VALUES ('371312', '河东区', '371300');
INSERT INTO `users_areainfo` VALUES ('371321', '沂南县', '371300');
INSERT INTO `users_areainfo` VALUES ('371322', '郯城县', '371300');
INSERT INTO `users_areainfo` VALUES ('371323', '沂水县', '371300');
INSERT INTO `users_areainfo` VALUES ('371324', '苍山县', '371300');
INSERT INTO `users_areainfo` VALUES ('371325', '费县', '371300');
INSERT INTO `users_areainfo` VALUES ('371326', '平邑县', '371300');
INSERT INTO `users_areainfo` VALUES ('371327', '莒南县', '371300');
INSERT INTO `users_areainfo` VALUES ('371328', '蒙阴县', '371300');
INSERT INTO `users_areainfo` VALUES ('371329', '临沭县', '371300');
INSERT INTO `users_areainfo` VALUES ('371330', '其它区', '371300');
INSERT INTO `users_areainfo` VALUES ('371400', '德州', '370000');
INSERT INTO `users_areainfo` VALUES ('371402', '德城区', '371400');
INSERT INTO `users_areainfo` VALUES ('371421', '陵县', '371400');
INSERT INTO `users_areainfo` VALUES ('371422', '宁津县', '371400');
INSERT INTO `users_areainfo` VALUES ('371423', '庆云县', '371400');
INSERT INTO `users_areainfo` VALUES ('371424', '临邑县', '371400');
INSERT INTO `users_areainfo` VALUES ('371425', '齐河县', '371400');
INSERT INTO `users_areainfo` VALUES ('371426', '平原县', '371400');
INSERT INTO `users_areainfo` VALUES ('371427', '夏津县', '371400');
INSERT INTO `users_areainfo` VALUES ('371428', '武城县', '371400');
INSERT INTO `users_areainfo` VALUES ('371451', '开发区', '371400');
INSERT INTO `users_areainfo` VALUES ('371481', '乐陵市', '371400');
INSERT INTO `users_areainfo` VALUES ('371482', '禹城市', '371400');
INSERT INTO `users_areainfo` VALUES ('371483', '其它区', '371400');
INSERT INTO `users_areainfo` VALUES ('371500', '聊城', '370000');
INSERT INTO `users_areainfo` VALUES ('371502', '东昌府区', '371500');
INSERT INTO `users_areainfo` VALUES ('371521', '阳谷县', '371500');
INSERT INTO `users_areainfo` VALUES ('371522', '莘县', '371500');
INSERT INTO `users_areainfo` VALUES ('371523', '茌平县', '371500');
INSERT INTO `users_areainfo` VALUES ('371524', '东阿县', '371500');
INSERT INTO `users_areainfo` VALUES ('371525', '冠县', '371500');
INSERT INTO `users_areainfo` VALUES ('371526', '高唐县', '371500');
INSERT INTO `users_areainfo` VALUES ('371581', '临清市', '371500');
INSERT INTO `users_areainfo` VALUES ('371582', '其它区', '371500');
INSERT INTO `users_areainfo` VALUES ('371600', '滨州', '370000');
INSERT INTO `users_areainfo` VALUES ('371602', '滨城区', '371600');
INSERT INTO `users_areainfo` VALUES ('371621', '惠民县', '371600');
INSERT INTO `users_areainfo` VALUES ('371622', '阳信县', '371600');
INSERT INTO `users_areainfo` VALUES ('371623', '无棣县', '371600');
INSERT INTO `users_areainfo` VALUES ('371624', '沾化县', '371600');
INSERT INTO `users_areainfo` VALUES ('371625', '博兴县', '371600');
INSERT INTO `users_areainfo` VALUES ('371626', '邹平县', '371600');
INSERT INTO `users_areainfo` VALUES ('371627', '其它区', '371600');
INSERT INTO `users_areainfo` VALUES ('371700', '菏泽', '370000');
INSERT INTO `users_areainfo` VALUES ('371702', '牡丹区', '371700');
INSERT INTO `users_areainfo` VALUES ('371721', '曹县', '371700');
INSERT INTO `users_areainfo` VALUES ('371722', '单县', '371700');
INSERT INTO `users_areainfo` VALUES ('371723', '成武县', '371700');
INSERT INTO `users_areainfo` VALUES ('371724', '巨野县', '371700');
INSERT INTO `users_areainfo` VALUES ('371725', '郓城县', '371700');
INSERT INTO `users_areainfo` VALUES ('371726', '鄄城县', '371700');
INSERT INTO `users_areainfo` VALUES ('371727', '定陶县', '371700');
INSERT INTO `users_areainfo` VALUES ('371728', '东明县', '371700');
INSERT INTO `users_areainfo` VALUES ('371729', '其它区', '371700');
INSERT INTO `users_areainfo` VALUES ('410000', '河南', '0');
INSERT INTO `users_areainfo` VALUES ('410100', '郑州', '410000');
INSERT INTO `users_areainfo` VALUES ('410102', '中原区', '410100');
INSERT INTO `users_areainfo` VALUES ('410103', '二七区', '410100');
INSERT INTO `users_areainfo` VALUES ('410104', '管城回族区', '410100');
INSERT INTO `users_areainfo` VALUES ('410105', '金水区', '410100');
INSERT INTO `users_areainfo` VALUES ('410106', '上街区', '410100');
INSERT INTO `users_areainfo` VALUES ('410108', '惠济区', '410100');
INSERT INTO `users_areainfo` VALUES ('410122', '中牟县', '410100');
INSERT INTO `users_areainfo` VALUES ('410181', '巩义市', '410100');
INSERT INTO `users_areainfo` VALUES ('410182', '荥阳市', '410100');
INSERT INTO `users_areainfo` VALUES ('410183', '新密市', '410100');
INSERT INTO `users_areainfo` VALUES ('410184', '新郑市', '410100');
INSERT INTO `users_areainfo` VALUES ('410185', '登封市', '410100');
INSERT INTO `users_areainfo` VALUES ('410186', '郑东新区', '410100');
INSERT INTO `users_areainfo` VALUES ('410187', '高新区', '410100');
INSERT INTO `users_areainfo` VALUES ('410188', '其它区', '410100');
INSERT INTO `users_areainfo` VALUES ('410200', '开封', '410000');
INSERT INTO `users_areainfo` VALUES ('410202', '龙亭区', '410200');
INSERT INTO `users_areainfo` VALUES ('410203', '顺河回族区', '410200');
INSERT INTO `users_areainfo` VALUES ('410204', '鼓楼区', '410200');
INSERT INTO `users_areainfo` VALUES ('410205', '禹王台区', '410200');
INSERT INTO `users_areainfo` VALUES ('410211', '金明区', '410200');
INSERT INTO `users_areainfo` VALUES ('410221', '杞县', '410200');
INSERT INTO `users_areainfo` VALUES ('410222', '通许县', '410200');
INSERT INTO `users_areainfo` VALUES ('410223', '尉氏县', '410200');
INSERT INTO `users_areainfo` VALUES ('410224', '开封县', '410200');
INSERT INTO `users_areainfo` VALUES ('410225', '兰考县', '410200');
INSERT INTO `users_areainfo` VALUES ('410226', '其它区', '410200');
INSERT INTO `users_areainfo` VALUES ('410300', '洛阳', '410000');
INSERT INTO `users_areainfo` VALUES ('410302', '老城区', '410300');
INSERT INTO `users_areainfo` VALUES ('410303', '西工区', '410300');
INSERT INTO `users_areainfo` VALUES ('410304', '廛河回族区', '410300');
INSERT INTO `users_areainfo` VALUES ('410305', '涧西区', '410300');
INSERT INTO `users_areainfo` VALUES ('410306', '吉利区', '410300');
INSERT INTO `users_areainfo` VALUES ('410307', '洛龙区', '410300');
INSERT INTO `users_areainfo` VALUES ('410322', '孟津县', '410300');
INSERT INTO `users_areainfo` VALUES ('410323', '新安县', '410300');
INSERT INTO `users_areainfo` VALUES ('410324', '栾川县', '410300');
INSERT INTO `users_areainfo` VALUES ('410325', '嵩县', '410300');
INSERT INTO `users_areainfo` VALUES ('410326', '汝阳县', '410300');
INSERT INTO `users_areainfo` VALUES ('410327', '宜阳县', '410300');
INSERT INTO `users_areainfo` VALUES ('410328', '洛宁县', '410300');
INSERT INTO `users_areainfo` VALUES ('410329', '伊川县', '410300');
INSERT INTO `users_areainfo` VALUES ('410381', '偃师市', '410300');
INSERT INTO `users_areainfo` VALUES ('410400', '平顶山', '410000');
INSERT INTO `users_areainfo` VALUES ('410402', '新华区', '410400');
INSERT INTO `users_areainfo` VALUES ('410403', '卫东区', '410400');
INSERT INTO `users_areainfo` VALUES ('410404', '石龙区', '410400');
INSERT INTO `users_areainfo` VALUES ('410411', '湛河区', '410400');
INSERT INTO `users_areainfo` VALUES ('410421', '宝丰县', '410400');
INSERT INTO `users_areainfo` VALUES ('410422', '叶县', '410400');
INSERT INTO `users_areainfo` VALUES ('410423', '鲁山县', '410400');
INSERT INTO `users_areainfo` VALUES ('410425', '郏县', '410400');
INSERT INTO `users_areainfo` VALUES ('410481', '舞钢市', '410400');
INSERT INTO `users_areainfo` VALUES ('410482', '汝州市', '410400');
INSERT INTO `users_areainfo` VALUES ('410483', '其它区', '410400');
INSERT INTO `users_areainfo` VALUES ('410500', '安阳', '410000');
INSERT INTO `users_areainfo` VALUES ('410502', '文峰区', '410500');
INSERT INTO `users_areainfo` VALUES ('410503', '北关区', '410500');
INSERT INTO `users_areainfo` VALUES ('410505', '殷都区', '410500');
INSERT INTO `users_areainfo` VALUES ('410506', '龙安区', '410500');
INSERT INTO `users_areainfo` VALUES ('410522', '安阳县', '410500');
INSERT INTO `users_areainfo` VALUES ('410523', '汤阴县', '410500');
INSERT INTO `users_areainfo` VALUES ('410526', '滑县', '410500');
INSERT INTO `users_areainfo` VALUES ('410527', '内黄县', '410500');
INSERT INTO `users_areainfo` VALUES ('410581', '林州市', '410500');
INSERT INTO `users_areainfo` VALUES ('410582', '其它区', '410500');
INSERT INTO `users_areainfo` VALUES ('410600', '鹤壁', '410000');
INSERT INTO `users_areainfo` VALUES ('410602', '鹤山区', '410600');
INSERT INTO `users_areainfo` VALUES ('410603', '山城区', '410600');
INSERT INTO `users_areainfo` VALUES ('410611', '淇滨区', '410600');
INSERT INTO `users_areainfo` VALUES ('410621', '浚县', '410600');
INSERT INTO `users_areainfo` VALUES ('410622', '淇县', '410600');
INSERT INTO `users_areainfo` VALUES ('410623', '其它区', '410600');
INSERT INTO `users_areainfo` VALUES ('410700', '新乡', '410000');
INSERT INTO `users_areainfo` VALUES ('410702', '红旗区', '410700');
INSERT INTO `users_areainfo` VALUES ('410703', '卫滨区', '410700');
INSERT INTO `users_areainfo` VALUES ('410704', '凤泉区', '410700');
INSERT INTO `users_areainfo` VALUES ('410711', '牧野区', '410700');
INSERT INTO `users_areainfo` VALUES ('410721', '新乡县', '410700');
INSERT INTO `users_areainfo` VALUES ('410724', '获嘉县', '410700');
INSERT INTO `users_areainfo` VALUES ('410725', '原阳县', '410700');
INSERT INTO `users_areainfo` VALUES ('410726', '延津县', '410700');
INSERT INTO `users_areainfo` VALUES ('410727', '封丘县', '410700');
INSERT INTO `users_areainfo` VALUES ('410728', '长垣县', '410700');
INSERT INTO `users_areainfo` VALUES ('410781', '卫辉市', '410700');
INSERT INTO `users_areainfo` VALUES ('410782', '辉县市', '410700');
INSERT INTO `users_areainfo` VALUES ('410783', '其它区', '410700');
INSERT INTO `users_areainfo` VALUES ('410800', '焦作', '410000');
INSERT INTO `users_areainfo` VALUES ('410802', '解放区', '410800');
INSERT INTO `users_areainfo` VALUES ('410803', '中站区', '410800');
INSERT INTO `users_areainfo` VALUES ('410804', '马村区', '410800');
INSERT INTO `users_areainfo` VALUES ('410811', '山阳区', '410800');
INSERT INTO `users_areainfo` VALUES ('410821', '修武县', '410800');
INSERT INTO `users_areainfo` VALUES ('410822', '博爱县', '410800');
INSERT INTO `users_areainfo` VALUES ('410823', '武陟县', '410800');
INSERT INTO `users_areainfo` VALUES ('410825', '温县', '410800');
INSERT INTO `users_areainfo` VALUES ('410881', '济源', '410000');
INSERT INTO `users_areainfo` VALUES ('410882', '沁阳市', '410800');
INSERT INTO `users_areainfo` VALUES ('410883', '孟州市', '410800');
INSERT INTO `users_areainfo` VALUES ('410884', '其它区', '410800');
INSERT INTO `users_areainfo` VALUES ('410900', '濮阳', '410000');
INSERT INTO `users_areainfo` VALUES ('410902', '华龙区', '410900');
INSERT INTO `users_areainfo` VALUES ('410922', '清丰县', '410900');
INSERT INTO `users_areainfo` VALUES ('410923', '南乐县', '410900');
INSERT INTO `users_areainfo` VALUES ('410926', '范县', '410900');
INSERT INTO `users_areainfo` VALUES ('410927', '台前县', '410900');
INSERT INTO `users_areainfo` VALUES ('410928', '濮阳县', '410900');
INSERT INTO `users_areainfo` VALUES ('410929', '其它区', '410900');
INSERT INTO `users_areainfo` VALUES ('411000', '许昌', '410000');
INSERT INTO `users_areainfo` VALUES ('411002', '魏都区', '411000');
INSERT INTO `users_areainfo` VALUES ('411023', '许昌县', '411000');
INSERT INTO `users_areainfo` VALUES ('411024', '鄢陵县', '411000');
INSERT INTO `users_areainfo` VALUES ('411025', '襄城县', '411000');
INSERT INTO `users_areainfo` VALUES ('411081', '禹州市', '411000');
INSERT INTO `users_areainfo` VALUES ('411082', '长葛市', '411000');
INSERT INTO `users_areainfo` VALUES ('411083', '其它区', '411000');
INSERT INTO `users_areainfo` VALUES ('411100', '漯河', '410000');
INSERT INTO `users_areainfo` VALUES ('411102', '源汇区', '411100');
INSERT INTO `users_areainfo` VALUES ('411103', '郾城区', '411100');
INSERT INTO `users_areainfo` VALUES ('411104', '召陵区', '411100');
INSERT INTO `users_areainfo` VALUES ('411121', '舞阳县', '411100');
INSERT INTO `users_areainfo` VALUES ('411122', '临颍县', '411100');
INSERT INTO `users_areainfo` VALUES ('411123', '其它区', '411100');
INSERT INTO `users_areainfo` VALUES ('411200', '三门峡', '410000');
INSERT INTO `users_areainfo` VALUES ('411202', '湖滨区', '411200');
INSERT INTO `users_areainfo` VALUES ('411221', '渑池县', '411200');
INSERT INTO `users_areainfo` VALUES ('411222', '陕县', '411200');
INSERT INTO `users_areainfo` VALUES ('411224', '卢氏县', '411200');
INSERT INTO `users_areainfo` VALUES ('411281', '义马市', '411200');
INSERT INTO `users_areainfo` VALUES ('411282', '灵宝市', '411200');
INSERT INTO `users_areainfo` VALUES ('411283', '其它区', '411200');
INSERT INTO `users_areainfo` VALUES ('411300', '南阳', '410000');
INSERT INTO `users_areainfo` VALUES ('411302', '宛城区', '411300');
INSERT INTO `users_areainfo` VALUES ('411303', '卧龙区', '411300');
INSERT INTO `users_areainfo` VALUES ('411321', '南召县', '411300');
INSERT INTO `users_areainfo` VALUES ('411322', '方城县', '411300');
INSERT INTO `users_areainfo` VALUES ('411323', '西峡县', '411300');
INSERT INTO `users_areainfo` VALUES ('411324', '镇平县', '411300');
INSERT INTO `users_areainfo` VALUES ('411325', '内乡县', '411300');
INSERT INTO `users_areainfo` VALUES ('411326', '淅川县', '411300');
INSERT INTO `users_areainfo` VALUES ('411327', '社旗县', '411300');
INSERT INTO `users_areainfo` VALUES ('411328', '唐河县', '411300');
INSERT INTO `users_areainfo` VALUES ('411329', '新野县', '411300');
INSERT INTO `users_areainfo` VALUES ('411330', '桐柏县', '411300');
INSERT INTO `users_areainfo` VALUES ('411381', '邓州市', '411300');
INSERT INTO `users_areainfo` VALUES ('411382', '其它区', '411300');
INSERT INTO `users_areainfo` VALUES ('411400', '商丘', '410000');
INSERT INTO `users_areainfo` VALUES ('411402', '梁园区', '411400');
INSERT INTO `users_areainfo` VALUES ('411403', '睢阳区', '411400');
INSERT INTO `users_areainfo` VALUES ('411421', '民权县', '411400');
INSERT INTO `users_areainfo` VALUES ('411422', '睢县', '411400');
INSERT INTO `users_areainfo` VALUES ('411423', '宁陵县', '411400');
INSERT INTO `users_areainfo` VALUES ('411424', '柘城县', '411400');
INSERT INTO `users_areainfo` VALUES ('411425', '虞城县', '411400');
INSERT INTO `users_areainfo` VALUES ('411426', '夏邑县', '411400');
INSERT INTO `users_areainfo` VALUES ('411481', '永城市', '411400');
INSERT INTO `users_areainfo` VALUES ('411482', '其它区', '411400');
INSERT INTO `users_areainfo` VALUES ('411500', '信阳', '410000');
INSERT INTO `users_areainfo` VALUES ('411502', '浉河区', '411500');
INSERT INTO `users_areainfo` VALUES ('411503', '平桥区', '411500');
INSERT INTO `users_areainfo` VALUES ('411521', '罗山县', '411500');
INSERT INTO `users_areainfo` VALUES ('411522', '光山县', '411500');
INSERT INTO `users_areainfo` VALUES ('411523', '新县', '411500');
INSERT INTO `users_areainfo` VALUES ('411524', '商城县', '411500');
INSERT INTO `users_areainfo` VALUES ('411525', '固始县', '411500');
INSERT INTO `users_areainfo` VALUES ('411526', '潢川县', '411500');
INSERT INTO `users_areainfo` VALUES ('411527', '淮滨县', '411500');
INSERT INTO `users_areainfo` VALUES ('411528', '息县', '411500');
INSERT INTO `users_areainfo` VALUES ('411529', '其它区', '411500');
INSERT INTO `users_areainfo` VALUES ('411600', '周口', '410000');
INSERT INTO `users_areainfo` VALUES ('411602', '川汇区', '411600');
INSERT INTO `users_areainfo` VALUES ('411621', '扶沟县', '411600');
INSERT INTO `users_areainfo` VALUES ('411622', '西华县', '411600');
INSERT INTO `users_areainfo` VALUES ('411623', '商水县', '411600');
INSERT INTO `users_areainfo` VALUES ('411624', '沈丘县', '411600');
INSERT INTO `users_areainfo` VALUES ('411625', '郸城县', '411600');
INSERT INTO `users_areainfo` VALUES ('411626', '淮阳县', '411600');
INSERT INTO `users_areainfo` VALUES ('411627', '太康县', '411600');
INSERT INTO `users_areainfo` VALUES ('411628', '鹿邑县', '411600');
INSERT INTO `users_areainfo` VALUES ('411681', '项城市', '411600');
INSERT INTO `users_areainfo` VALUES ('411682', '其它区', '411600');
INSERT INTO `users_areainfo` VALUES ('411700', '驻马店', '410000');
INSERT INTO `users_areainfo` VALUES ('411702', '驿城区', '411700');
INSERT INTO `users_areainfo` VALUES ('411721', '西平县', '411700');
INSERT INTO `users_areainfo` VALUES ('411722', '上蔡县', '411700');
INSERT INTO `users_areainfo` VALUES ('411723', '平舆县', '411700');
INSERT INTO `users_areainfo` VALUES ('411724', '正阳县', '411700');
INSERT INTO `users_areainfo` VALUES ('411725', '确山县', '411700');
INSERT INTO `users_areainfo` VALUES ('411726', '泌阳县', '411700');
INSERT INTO `users_areainfo` VALUES ('411727', '汝南县', '411700');
INSERT INTO `users_areainfo` VALUES ('411728', '遂平县', '411700');
INSERT INTO `users_areainfo` VALUES ('411729', '新蔡县', '411700');
INSERT INTO `users_areainfo` VALUES ('411730', '其它区', '411700');
INSERT INTO `users_areainfo` VALUES ('420000', '湖北', '0');
INSERT INTO `users_areainfo` VALUES ('420100', '武汉', '420000');
INSERT INTO `users_areainfo` VALUES ('420102', '江岸区', '420100');
INSERT INTO `users_areainfo` VALUES ('420103', '江汉区', '420100');
INSERT INTO `users_areainfo` VALUES ('420104', '硚口区', '420100');
INSERT INTO `users_areainfo` VALUES ('420105', '汉阳区', '420100');
INSERT INTO `users_areainfo` VALUES ('420106', '武昌区', '420100');
INSERT INTO `users_areainfo` VALUES ('420107', '青山区', '420100');
INSERT INTO `users_areainfo` VALUES ('420111', '洪山区', '420100');
INSERT INTO `users_areainfo` VALUES ('420112', '东西湖区', '420100');
INSERT INTO `users_areainfo` VALUES ('420113', '汉南区', '420100');
INSERT INTO `users_areainfo` VALUES ('420114', '蔡甸区', '420100');
INSERT INTO `users_areainfo` VALUES ('420115', '江夏区', '420100');
INSERT INTO `users_areainfo` VALUES ('420116', '黄陂区', '420100');
INSERT INTO `users_areainfo` VALUES ('420117', '新洲区', '420100');
INSERT INTO `users_areainfo` VALUES ('420118', '其它区', '420100');
INSERT INTO `users_areainfo` VALUES ('420200', '黄石', '420000');
INSERT INTO `users_areainfo` VALUES ('420202', '黄石港区', '420200');
INSERT INTO `users_areainfo` VALUES ('420203', '西塞山区', '420200');
INSERT INTO `users_areainfo` VALUES ('420204', '下陆区', '420200');
INSERT INTO `users_areainfo` VALUES ('420205', '铁山区', '420200');
INSERT INTO `users_areainfo` VALUES ('420222', '阳新县', '420200');
INSERT INTO `users_areainfo` VALUES ('420281', '大冶市', '420200');
INSERT INTO `users_areainfo` VALUES ('420282', '其它区', '420200');
INSERT INTO `users_areainfo` VALUES ('420300', '十堰', '420000');
INSERT INTO `users_areainfo` VALUES ('420302', '茅箭区', '420300');
INSERT INTO `users_areainfo` VALUES ('420303', '张湾区', '420300');
INSERT INTO `users_areainfo` VALUES ('420321', '郧县', '420300');
INSERT INTO `users_areainfo` VALUES ('420322', '郧西县', '420300');
INSERT INTO `users_areainfo` VALUES ('420323', '竹山县', '420300');
INSERT INTO `users_areainfo` VALUES ('420324', '竹溪县', '420300');
INSERT INTO `users_areainfo` VALUES ('420325', '房县', '420300');
INSERT INTO `users_areainfo` VALUES ('420381', '丹江口市', '420300');
INSERT INTO `users_areainfo` VALUES ('420382', '城区', '420300');
INSERT INTO `users_areainfo` VALUES ('420383', '其它区', '420300');
INSERT INTO `users_areainfo` VALUES ('420500', '宜昌', '420000');
INSERT INTO `users_areainfo` VALUES ('420502', '西陵区', '420500');
INSERT INTO `users_areainfo` VALUES ('420503', '伍家岗区', '420500');
INSERT INTO `users_areainfo` VALUES ('420504', '点军区', '420500');
INSERT INTO `users_areainfo` VALUES ('420505', '猇亭区', '420500');
INSERT INTO `users_areainfo` VALUES ('420506', '夷陵区', '420500');
INSERT INTO `users_areainfo` VALUES ('420525', '远安县', '420500');
INSERT INTO `users_areainfo` VALUES ('420526', '兴山县', '420500');
INSERT INTO `users_areainfo` VALUES ('420527', '秭归县', '420500');
INSERT INTO `users_areainfo` VALUES ('420528', '长阳土家族自治县', '420500');
INSERT INTO `users_areainfo` VALUES ('420529', '五峰土家族自治县', '420500');
INSERT INTO `users_areainfo` VALUES ('420551', '葛洲坝区', '420500');
INSERT INTO `users_areainfo` VALUES ('420552', '开发区', '420500');
INSERT INTO `users_areainfo` VALUES ('420581', '宜都市', '420500');
INSERT INTO `users_areainfo` VALUES ('420582', '当阳市', '420500');
INSERT INTO `users_areainfo` VALUES ('420583', '枝江市', '420500');
INSERT INTO `users_areainfo` VALUES ('420584', '其它区', '420500');
INSERT INTO `users_areainfo` VALUES ('420600', '襄樊', '420000');
INSERT INTO `users_areainfo` VALUES ('420602', '襄城区', '420600');
INSERT INTO `users_areainfo` VALUES ('420606', '樊城区', '420600');
INSERT INTO `users_areainfo` VALUES ('420607', '襄阳区', '420600');
INSERT INTO `users_areainfo` VALUES ('420624', '南漳县', '420600');
INSERT INTO `users_areainfo` VALUES ('420625', '谷城县', '420600');
INSERT INTO `users_areainfo` VALUES ('420626', '保康县', '420600');
INSERT INTO `users_areainfo` VALUES ('420682', '老河口市', '420600');
INSERT INTO `users_areainfo` VALUES ('420683', '枣阳市', '420600');
INSERT INTO `users_areainfo` VALUES ('420684', '宜城市', '420600');
INSERT INTO `users_areainfo` VALUES ('420685', '其它区', '420600');
INSERT INTO `users_areainfo` VALUES ('420700', '鄂州', '420000');
INSERT INTO `users_areainfo` VALUES ('420702', '梁子湖区', '420700');
INSERT INTO `users_areainfo` VALUES ('420703', '华容区', '420700');
INSERT INTO `users_areainfo` VALUES ('420704', '鄂城区', '420700');
INSERT INTO `users_areainfo` VALUES ('420705', '其它区', '420700');
INSERT INTO `users_areainfo` VALUES ('420800', '荆门', '420000');
INSERT INTO `users_areainfo` VALUES ('420802', '东宝区', '420800');
INSERT INTO `users_areainfo` VALUES ('420804', '掇刀区', '420800');
INSERT INTO `users_areainfo` VALUES ('420821', '京山县', '420800');
INSERT INTO `users_areainfo` VALUES ('420822', '沙洋县', '420800');
INSERT INTO `users_areainfo` VALUES ('420881', '钟祥市', '420800');
INSERT INTO `users_areainfo` VALUES ('420882', '其它区', '420800');
INSERT INTO `users_areainfo` VALUES ('420900', '孝感', '420000');
INSERT INTO `users_areainfo` VALUES ('420902', '孝南区', '420900');
INSERT INTO `users_areainfo` VALUES ('420921', '孝昌县', '420900');
INSERT INTO `users_areainfo` VALUES ('420922', '大悟县', '420900');
INSERT INTO `users_areainfo` VALUES ('420923', '云梦县', '420900');
INSERT INTO `users_areainfo` VALUES ('420981', '应城市', '420900');
INSERT INTO `users_areainfo` VALUES ('420982', '安陆市', '420900');
INSERT INTO `users_areainfo` VALUES ('420984', '汉川市', '420900');
INSERT INTO `users_areainfo` VALUES ('420985', '其它区', '420900');
INSERT INTO `users_areainfo` VALUES ('421000', '荆州', '420000');
INSERT INTO `users_areainfo` VALUES ('421002', '沙市区', '421000');
INSERT INTO `users_areainfo` VALUES ('421003', '荆州区', '421000');
INSERT INTO `users_areainfo` VALUES ('421022', '公安县', '421000');
INSERT INTO `users_areainfo` VALUES ('421023', '监利县', '421000');
INSERT INTO `users_areainfo` VALUES ('421024', '江陵县', '421000');
INSERT INTO `users_areainfo` VALUES ('421081', '石首市', '421000');
INSERT INTO `users_areainfo` VALUES ('421083', '洪湖市', '421000');
INSERT INTO `users_areainfo` VALUES ('421087', '松滋市', '421000');
INSERT INTO `users_areainfo` VALUES ('421088', '其它区', '421000');
INSERT INTO `users_areainfo` VALUES ('421100', '黄冈', '420000');
INSERT INTO `users_areainfo` VALUES ('421102', '黄州区', '421100');
INSERT INTO `users_areainfo` VALUES ('421121', '团风县', '421100');
INSERT INTO `users_areainfo` VALUES ('421122', '红安县', '421100');
INSERT INTO `users_areainfo` VALUES ('421123', '罗田县', '421100');
INSERT INTO `users_areainfo` VALUES ('421124', '英山县', '421100');
INSERT INTO `users_areainfo` VALUES ('421125', '浠水县', '421100');
INSERT INTO `users_areainfo` VALUES ('421126', '蕲春县', '421100');
INSERT INTO `users_areainfo` VALUES ('421127', '黄梅县', '421100');
INSERT INTO `users_areainfo` VALUES ('421181', '麻城市', '421100');
INSERT INTO `users_areainfo` VALUES ('421182', '武穴市', '421100');
INSERT INTO `users_areainfo` VALUES ('421183', '其它区', '421100');
INSERT INTO `users_areainfo` VALUES ('421200', '咸宁', '420000');
INSERT INTO `users_areainfo` VALUES ('421202', '咸安区', '421200');
INSERT INTO `users_areainfo` VALUES ('421221', '嘉鱼县', '421200');
INSERT INTO `users_areainfo` VALUES ('421222', '通城县', '421200');
INSERT INTO `users_areainfo` VALUES ('421223', '崇阳县', '421200');
INSERT INTO `users_areainfo` VALUES ('421224', '通山县', '421200');
INSERT INTO `users_areainfo` VALUES ('421281', '赤壁市', '421200');
INSERT INTO `users_areainfo` VALUES ('421282', '温泉城区', '421200');
INSERT INTO `users_areainfo` VALUES ('421283', '其它区', '421200');
INSERT INTO `users_areainfo` VALUES ('421300', '随州', '420000');
INSERT INTO `users_areainfo` VALUES ('421302', '曾都区', '421300');
INSERT INTO `users_areainfo` VALUES ('421381', '广水市', '421300');
INSERT INTO `users_areainfo` VALUES ('421382', '其它区', '421300');
INSERT INTO `users_areainfo` VALUES ('422800', '恩施', '420000');
INSERT INTO `users_areainfo` VALUES ('422801', '恩施市', '422800');
INSERT INTO `users_areainfo` VALUES ('422802', '利川市', '422800');
INSERT INTO `users_areainfo` VALUES ('422822', '建始县', '422800');
INSERT INTO `users_areainfo` VALUES ('422823', '巴东县', '422800');
INSERT INTO `users_areainfo` VALUES ('422825', '宣恩县', '422800');
INSERT INTO `users_areainfo` VALUES ('422826', '咸丰县', '422800');
INSERT INTO `users_areainfo` VALUES ('422827', '来凤县', '422800');
INSERT INTO `users_areainfo` VALUES ('422828', '鹤峰县', '422800');
INSERT INTO `users_areainfo` VALUES ('422829', '其它区', '422800');
INSERT INTO `users_areainfo` VALUES ('429004', '仙桃', '420000');
INSERT INTO `users_areainfo` VALUES ('429005', '潜江', '420000');
INSERT INTO `users_areainfo` VALUES ('429006', '天门', '420000');
INSERT INTO `users_areainfo` VALUES ('429021', '神农架林区', '420000');
INSERT INTO `users_areainfo` VALUES ('430000', '湖南', '0');
INSERT INTO `users_areainfo` VALUES ('430100', '长沙', '430000');
INSERT INTO `users_areainfo` VALUES ('430102', '芙蓉区', '430100');
INSERT INTO `users_areainfo` VALUES ('430103', '天心区', '430100');
INSERT INTO `users_areainfo` VALUES ('430104', '岳麓区', '430100');
INSERT INTO `users_areainfo` VALUES ('430105', '开福区', '430100');
INSERT INTO `users_areainfo` VALUES ('430111', '雨花区', '430100');
INSERT INTO `users_areainfo` VALUES ('430121', '长沙县', '430100');
INSERT INTO `users_areainfo` VALUES ('430122', '望城县', '430100');
INSERT INTO `users_areainfo` VALUES ('430124', '宁乡县', '430100');
INSERT INTO `users_areainfo` VALUES ('430181', '浏阳市', '430100');
INSERT INTO `users_areainfo` VALUES ('430182', '其它区', '430100');
INSERT INTO `users_areainfo` VALUES ('430200', '株洲', '430000');
INSERT INTO `users_areainfo` VALUES ('430202', '荷塘区', '430200');
INSERT INTO `users_areainfo` VALUES ('430203', '芦淞区', '430200');
INSERT INTO `users_areainfo` VALUES ('430204', '石峰区', '430200');
INSERT INTO `users_areainfo` VALUES ('430211', '天元区', '430200');
INSERT INTO `users_areainfo` VALUES ('430221', '株洲县', '430200');
INSERT INTO `users_areainfo` VALUES ('430223', '攸县', '430200');
INSERT INTO `users_areainfo` VALUES ('430224', '茶陵县', '430200');
INSERT INTO `users_areainfo` VALUES ('430225', '炎陵县', '430200');
INSERT INTO `users_areainfo` VALUES ('430281', '醴陵市', '430200');
INSERT INTO `users_areainfo` VALUES ('430282', '其它区', '430200');
INSERT INTO `users_areainfo` VALUES ('430300', '湘潭', '430000');
INSERT INTO `users_areainfo` VALUES ('430302', '雨湖区', '430300');
INSERT INTO `users_areainfo` VALUES ('430304', '岳塘区', '430300');
INSERT INTO `users_areainfo` VALUES ('430321', '湘潭县', '430300');
INSERT INTO `users_areainfo` VALUES ('430381', '湘乡市', '430300');
INSERT INTO `users_areainfo` VALUES ('430382', '韶山市', '430300');
INSERT INTO `users_areainfo` VALUES ('430383', '其它区', '430300');
INSERT INTO `users_areainfo` VALUES ('430400', '衡阳', '430000');
INSERT INTO `users_areainfo` VALUES ('430405', '珠晖区', '430400');
INSERT INTO `users_areainfo` VALUES ('430406', '雁峰区', '430400');
INSERT INTO `users_areainfo` VALUES ('430407', '石鼓区', '430400');
INSERT INTO `users_areainfo` VALUES ('430408', '蒸湘区', '430400');
INSERT INTO `users_areainfo` VALUES ('430412', '南岳区', '430400');
INSERT INTO `users_areainfo` VALUES ('430421', '衡阳县', '430400');
INSERT INTO `users_areainfo` VALUES ('430422', '衡南县', '430400');
INSERT INTO `users_areainfo` VALUES ('430423', '衡山县', '430400');
INSERT INTO `users_areainfo` VALUES ('430424', '衡东县', '430400');
INSERT INTO `users_areainfo` VALUES ('430426', '祁东县', '430400');
INSERT INTO `users_areainfo` VALUES ('430481', '耒阳市', '430400');
INSERT INTO `users_areainfo` VALUES ('430482', '常宁市', '430400');
INSERT INTO `users_areainfo` VALUES ('430483', '其它区', '430400');
INSERT INTO `users_areainfo` VALUES ('430500', '邵阳', '430000');
INSERT INTO `users_areainfo` VALUES ('430502', '双清区', '430500');
INSERT INTO `users_areainfo` VALUES ('430503', '大祥区', '430500');
INSERT INTO `users_areainfo` VALUES ('430511', '北塔区', '430500');
INSERT INTO `users_areainfo` VALUES ('430521', '邵东县', '430500');
INSERT INTO `users_areainfo` VALUES ('430522', '新邵县', '430500');
INSERT INTO `users_areainfo` VALUES ('430523', '邵阳县', '430500');
INSERT INTO `users_areainfo` VALUES ('430524', '隆回县', '430500');
INSERT INTO `users_areainfo` VALUES ('430525', '洞口县', '430500');
INSERT INTO `users_areainfo` VALUES ('430527', '绥宁县', '430500');
INSERT INTO `users_areainfo` VALUES ('430528', '新宁县', '430500');
INSERT INTO `users_areainfo` VALUES ('430529', '城步苗族自治县', '430500');
INSERT INTO `users_areainfo` VALUES ('430581', '武冈市', '430500');
INSERT INTO `users_areainfo` VALUES ('430582', '其它区', '430500');
INSERT INTO `users_areainfo` VALUES ('430600', '岳阳', '430000');
INSERT INTO `users_areainfo` VALUES ('430602', '岳阳楼区', '430600');
INSERT INTO `users_areainfo` VALUES ('430603', '云溪区', '430600');
INSERT INTO `users_areainfo` VALUES ('430611', '君山区', '430600');
INSERT INTO `users_areainfo` VALUES ('430621', '岳阳县', '430600');
INSERT INTO `users_areainfo` VALUES ('430623', '华容县', '430600');
INSERT INTO `users_areainfo` VALUES ('430624', '湘阴县', '430600');
INSERT INTO `users_areainfo` VALUES ('430626', '平江县', '430600');
INSERT INTO `users_areainfo` VALUES ('430681', '汨罗市', '430600');
INSERT INTO `users_areainfo` VALUES ('430682', '临湘市', '430600');
INSERT INTO `users_areainfo` VALUES ('430683', '其它区', '430600');
INSERT INTO `users_areainfo` VALUES ('430700', '常德', '430000');
INSERT INTO `users_areainfo` VALUES ('430702', '武陵区', '430700');
INSERT INTO `users_areainfo` VALUES ('430703', '鼎城区', '430700');
INSERT INTO `users_areainfo` VALUES ('430721', '安乡县', '430700');
INSERT INTO `users_areainfo` VALUES ('430722', '汉寿县', '430700');
INSERT INTO `users_areainfo` VALUES ('430723', '澧县', '430700');
INSERT INTO `users_areainfo` VALUES ('430724', '临澧县', '430700');
INSERT INTO `users_areainfo` VALUES ('430725', '桃源县', '430700');
INSERT INTO `users_areainfo` VALUES ('430726', '石门县', '430700');
INSERT INTO `users_areainfo` VALUES ('430781', '津市市', '430700');
INSERT INTO `users_areainfo` VALUES ('430782', '其它区', '430700');
INSERT INTO `users_areainfo` VALUES ('430800', '张家界', '430000');
INSERT INTO `users_areainfo` VALUES ('430802', '永定区', '430800');
INSERT INTO `users_areainfo` VALUES ('430811', '武陵源区', '430800');
INSERT INTO `users_areainfo` VALUES ('430821', '慈利县', '430800');
INSERT INTO `users_areainfo` VALUES ('430822', '桑植县', '430800');
INSERT INTO `users_areainfo` VALUES ('430823', '其它区', '430800');
INSERT INTO `users_areainfo` VALUES ('430900', '益阳', '430000');
INSERT INTO `users_areainfo` VALUES ('430902', '资阳区', '430900');
INSERT INTO `users_areainfo` VALUES ('430903', '赫山区', '430900');
INSERT INTO `users_areainfo` VALUES ('430921', '南县', '430900');
INSERT INTO `users_areainfo` VALUES ('430922', '桃江县', '430900');
INSERT INTO `users_areainfo` VALUES ('430923', '安化县', '430900');
INSERT INTO `users_areainfo` VALUES ('430981', '沅江市', '430900');
INSERT INTO `users_areainfo` VALUES ('430982', '其它区', '430900');
INSERT INTO `users_areainfo` VALUES ('431000', '郴州', '430000');
INSERT INTO `users_areainfo` VALUES ('431002', '北湖区', '431000');
INSERT INTO `users_areainfo` VALUES ('431003', '苏仙区', '431000');
INSERT INTO `users_areainfo` VALUES ('431021', '桂阳县', '431000');
INSERT INTO `users_areainfo` VALUES ('431022', '宜章县', '431000');
INSERT INTO `users_areainfo` VALUES ('431023', '永兴县', '431000');
INSERT INTO `users_areainfo` VALUES ('431024', '嘉禾县', '431000');
INSERT INTO `users_areainfo` VALUES ('431025', '临武县', '431000');
INSERT INTO `users_areainfo` VALUES ('431026', '汝城县', '431000');
INSERT INTO `users_areainfo` VALUES ('431027', '桂东县', '431000');
INSERT INTO `users_areainfo` VALUES ('431028', '安仁县', '431000');
INSERT INTO `users_areainfo` VALUES ('431081', '资兴市', '431000');
INSERT INTO `users_areainfo` VALUES ('431082', '其它区', '431000');
INSERT INTO `users_areainfo` VALUES ('431100', '永州', '430000');
INSERT INTO `users_areainfo` VALUES ('431102', '零陵区', '431100');
INSERT INTO `users_areainfo` VALUES ('431103', '冷水滩区', '431100');
INSERT INTO `users_areainfo` VALUES ('431121', '祁阳县', '431100');
INSERT INTO `users_areainfo` VALUES ('431122', '东安县', '431100');
INSERT INTO `users_areainfo` VALUES ('431123', '双牌县', '431100');
INSERT INTO `users_areainfo` VALUES ('431124', '道县', '431100');
INSERT INTO `users_areainfo` VALUES ('431125', '江永县', '431100');
INSERT INTO `users_areainfo` VALUES ('431126', '宁远县', '431100');
INSERT INTO `users_areainfo` VALUES ('431127', '蓝山县', '431100');
INSERT INTO `users_areainfo` VALUES ('431128', '新田县', '431100');
INSERT INTO `users_areainfo` VALUES ('431129', '江华瑶族自治县', '431100');
INSERT INTO `users_areainfo` VALUES ('431130', '其它区', '431100');
INSERT INTO `users_areainfo` VALUES ('431200', '怀化', '430000');
INSERT INTO `users_areainfo` VALUES ('431202', '鹤城区', '431200');
INSERT INTO `users_areainfo` VALUES ('431221', '中方县', '431200');
INSERT INTO `users_areainfo` VALUES ('431222', '沅陵县', '431200');
INSERT INTO `users_areainfo` VALUES ('431223', '辰溪县', '431200');
INSERT INTO `users_areainfo` VALUES ('431224', '溆浦县', '431200');
INSERT INTO `users_areainfo` VALUES ('431225', '会同县', '431200');
INSERT INTO `users_areainfo` VALUES ('431226', '麻阳苗族自治县', '431200');
INSERT INTO `users_areainfo` VALUES ('431227', '新晃侗族自治县', '431200');
INSERT INTO `users_areainfo` VALUES ('431228', '芷江侗族自治县', '431200');
INSERT INTO `users_areainfo` VALUES ('431229', '靖州苗族侗族自治县', '431200');
INSERT INTO `users_areainfo` VALUES ('431230', '通道侗族自治县', '431200');
INSERT INTO `users_areainfo` VALUES ('431281', '洪江市', '431200');
INSERT INTO `users_areainfo` VALUES ('431282', '其它区', '431200');
INSERT INTO `users_areainfo` VALUES ('431300', '娄底', '430000');
INSERT INTO `users_areainfo` VALUES ('431302', '娄星区', '431300');
INSERT INTO `users_areainfo` VALUES ('431321', '双峰县', '431300');
INSERT INTO `users_areainfo` VALUES ('431322', '新化县', '431300');
INSERT INTO `users_areainfo` VALUES ('431381', '冷水江市', '431300');
INSERT INTO `users_areainfo` VALUES ('431382', '涟源市', '431300');
INSERT INTO `users_areainfo` VALUES ('431383', '其它区', '431300');
INSERT INTO `users_areainfo` VALUES ('433100', '湘西', '430000');
INSERT INTO `users_areainfo` VALUES ('433101', '吉首市', '433100');
INSERT INTO `users_areainfo` VALUES ('433122', '泸溪县', '433100');
INSERT INTO `users_areainfo` VALUES ('433123', '凤凰县', '433100');
INSERT INTO `users_areainfo` VALUES ('433124', '花垣县', '433100');
INSERT INTO `users_areainfo` VALUES ('433125', '保靖县', '433100');
INSERT INTO `users_areainfo` VALUES ('433126', '古丈县', '433100');
INSERT INTO `users_areainfo` VALUES ('433127', '永顺县', '433100');
INSERT INTO `users_areainfo` VALUES ('433130', '龙山县', '433100');
INSERT INTO `users_areainfo` VALUES ('433131', '其它区', '433100');
INSERT INTO `users_areainfo` VALUES ('440000', '广东', '0');
INSERT INTO `users_areainfo` VALUES ('440100', '广州', '440000');
INSERT INTO `users_areainfo` VALUES ('440103', '荔湾区', '440100');
INSERT INTO `users_areainfo` VALUES ('440104', '越秀区', '440100');
INSERT INTO `users_areainfo` VALUES ('440105', '海珠区', '440100');
INSERT INTO `users_areainfo` VALUES ('440106', '天河区', '440100');
INSERT INTO `users_areainfo` VALUES ('440111', '白云区', '440100');
INSERT INTO `users_areainfo` VALUES ('440112', '黄埔区', '440100');
INSERT INTO `users_areainfo` VALUES ('440113', '番禺区', '440100');
INSERT INTO `users_areainfo` VALUES ('440114', '花都区', '440100');
INSERT INTO `users_areainfo` VALUES ('440115', '南沙区', '440100');
INSERT INTO `users_areainfo` VALUES ('440116', '萝岗区', '440100');
INSERT INTO `users_areainfo` VALUES ('440183', '增城市', '440100');
INSERT INTO `users_areainfo` VALUES ('440184', '从化市', '440100');
INSERT INTO `users_areainfo` VALUES ('440188', '东山区', '440100');
INSERT INTO `users_areainfo` VALUES ('440189', '其它区', '440100');
INSERT INTO `users_areainfo` VALUES ('440200', '韶关', '440000');
INSERT INTO `users_areainfo` VALUES ('440203', '武江区', '440200');
INSERT INTO `users_areainfo` VALUES ('440204', '浈江区', '440200');
INSERT INTO `users_areainfo` VALUES ('440205', '曲江区', '440200');
INSERT INTO `users_areainfo` VALUES ('440222', '始兴县', '440200');
INSERT INTO `users_areainfo` VALUES ('440224', '仁化县', '440200');
INSERT INTO `users_areainfo` VALUES ('440229', '翁源县', '440200');
INSERT INTO `users_areainfo` VALUES ('440232', '乳源瑶族自治县', '440200');
INSERT INTO `users_areainfo` VALUES ('440233', '新丰县', '440200');
INSERT INTO `users_areainfo` VALUES ('440281', '乐昌市', '440200');
INSERT INTO `users_areainfo` VALUES ('440282', '南雄市', '440200');
INSERT INTO `users_areainfo` VALUES ('440283', '其它区', '440200');
INSERT INTO `users_areainfo` VALUES ('440300', '深圳', '440000');
INSERT INTO `users_areainfo` VALUES ('440303', '罗湖区', '440300');
INSERT INTO `users_areainfo` VALUES ('440304', '福田区', '440300');
INSERT INTO `users_areainfo` VALUES ('440305', '南山区', '440300');
INSERT INTO `users_areainfo` VALUES ('440306', '宝安区', '440300');
INSERT INTO `users_areainfo` VALUES ('440307', '龙岗区', '440300');
INSERT INTO `users_areainfo` VALUES ('440308', '盐田区', '440300');
INSERT INTO `users_areainfo` VALUES ('440309', '其它区', '440300');
INSERT INTO `users_areainfo` VALUES ('440400', '珠海', '440000');
INSERT INTO `users_areainfo` VALUES ('440402', '香洲区', '440400');
INSERT INTO `users_areainfo` VALUES ('440403', '斗门区', '440400');
INSERT INTO `users_areainfo` VALUES ('440404', '金湾区', '440400');
INSERT INTO `users_areainfo` VALUES ('440486', '金唐区', '440400');
INSERT INTO `users_areainfo` VALUES ('440487', '南湾区', '440400');
INSERT INTO `users_areainfo` VALUES ('440488', '其它区', '440400');
INSERT INTO `users_areainfo` VALUES ('440500', '汕头', '440000');
INSERT INTO `users_areainfo` VALUES ('440507', '龙湖区', '440500');
INSERT INTO `users_areainfo` VALUES ('440511', '金平区', '440500');
INSERT INTO `users_areainfo` VALUES ('440512', '濠江区', '440500');
INSERT INTO `users_areainfo` VALUES ('440513', '潮阳区', '440500');
INSERT INTO `users_areainfo` VALUES ('440514', '潮南区', '440500');
INSERT INTO `users_areainfo` VALUES ('440515', '澄海区', '440500');
INSERT INTO `users_areainfo` VALUES ('440523', '南澳县', '440500');
INSERT INTO `users_areainfo` VALUES ('440524', '其它区', '440500');
INSERT INTO `users_areainfo` VALUES ('440600', '佛山', '440000');
INSERT INTO `users_areainfo` VALUES ('440604', '禅城区', '440600');
INSERT INTO `users_areainfo` VALUES ('440605', '南海区', '440600');
INSERT INTO `users_areainfo` VALUES ('440606', '顺德区', '440600');
INSERT INTO `users_areainfo` VALUES ('440607', '三水区', '440600');
INSERT INTO `users_areainfo` VALUES ('440608', '高明区', '440600');
INSERT INTO `users_areainfo` VALUES ('440609', '其它区', '440600');
INSERT INTO `users_areainfo` VALUES ('440700', '江门', '440000');
INSERT INTO `users_areainfo` VALUES ('440703', '蓬江区', '440700');
INSERT INTO `users_areainfo` VALUES ('440704', '江海区', '440700');
INSERT INTO `users_areainfo` VALUES ('440705', '新会区', '440700');
INSERT INTO `users_areainfo` VALUES ('440781', '台山市', '440700');
INSERT INTO `users_areainfo` VALUES ('440783', '开平市', '440700');
INSERT INTO `users_areainfo` VALUES ('440784', '鹤山市', '440700');
INSERT INTO `users_areainfo` VALUES ('440785', '恩平市', '440700');
INSERT INTO `users_areainfo` VALUES ('440786', '其它区', '440700');
INSERT INTO `users_areainfo` VALUES ('440800', '湛江', '440000');
INSERT INTO `users_areainfo` VALUES ('440802', '赤坎区', '440800');
INSERT INTO `users_areainfo` VALUES ('440803', '霞山区', '440800');
INSERT INTO `users_areainfo` VALUES ('440804', '坡头区', '440800');
INSERT INTO `users_areainfo` VALUES ('440811', '麻章区', '440800');
INSERT INTO `users_areainfo` VALUES ('440823', '遂溪县', '440800');
INSERT INTO `users_areainfo` VALUES ('440825', '徐闻县', '440800');
INSERT INTO `users_areainfo` VALUES ('440881', '廉江市', '440800');
INSERT INTO `users_areainfo` VALUES ('440882', '雷州市', '440800');
INSERT INTO `users_areainfo` VALUES ('440883', '吴川市', '440800');
INSERT INTO `users_areainfo` VALUES ('440884', '其它区', '440800');
INSERT INTO `users_areainfo` VALUES ('440900', '茂名', '440000');
INSERT INTO `users_areainfo` VALUES ('440902', '茂南区', '440900');
INSERT INTO `users_areainfo` VALUES ('440903', '茂港区', '440900');
INSERT INTO `users_areainfo` VALUES ('440923', '电白县', '440900');
INSERT INTO `users_areainfo` VALUES ('440981', '高州市', '440900');
INSERT INTO `users_areainfo` VALUES ('440982', '化州市', '440900');
INSERT INTO `users_areainfo` VALUES ('440983', '信宜市', '440900');
INSERT INTO `users_areainfo` VALUES ('440984', '其它区', '440900');
INSERT INTO `users_areainfo` VALUES ('441200', '肇庆', '440000');
INSERT INTO `users_areainfo` VALUES ('441202', '端州区', '441200');
INSERT INTO `users_areainfo` VALUES ('441203', '鼎湖区', '441200');
INSERT INTO `users_areainfo` VALUES ('441223', '广宁县', '441200');
INSERT INTO `users_areainfo` VALUES ('441224', '怀集县', '441200');
INSERT INTO `users_areainfo` VALUES ('441225', '封开县', '441200');
INSERT INTO `users_areainfo` VALUES ('441226', '德庆县', '441200');
INSERT INTO `users_areainfo` VALUES ('441283', '高要市', '441200');
INSERT INTO `users_areainfo` VALUES ('441284', '四会市', '441200');
INSERT INTO `users_areainfo` VALUES ('441285', '其它区', '441200');
INSERT INTO `users_areainfo` VALUES ('441300', '惠州', '440000');
INSERT INTO `users_areainfo` VALUES ('441302', '惠城区', '441300');
INSERT INTO `users_areainfo` VALUES ('441303', '惠阳区', '441300');
INSERT INTO `users_areainfo` VALUES ('441322', '博罗县', '441300');
INSERT INTO `users_areainfo` VALUES ('441323', '惠东县', '441300');
INSERT INTO `users_areainfo` VALUES ('441324', '龙门县', '441300');
INSERT INTO `users_areainfo` VALUES ('441325', '其它区', '441300');
INSERT INTO `users_areainfo` VALUES ('441400', '梅州', '440000');
INSERT INTO `users_areainfo` VALUES ('441402', '梅江区', '441400');
INSERT INTO `users_areainfo` VALUES ('441421', '梅县', '441400');
INSERT INTO `users_areainfo` VALUES ('441422', '大埔县', '441400');
INSERT INTO `users_areainfo` VALUES ('441423', '丰顺县', '441400');
INSERT INTO `users_areainfo` VALUES ('441424', '五华县', '441400');
INSERT INTO `users_areainfo` VALUES ('441426', '平远县', '441400');
INSERT INTO `users_areainfo` VALUES ('441427', '蕉岭县', '441400');
INSERT INTO `users_areainfo` VALUES ('441481', '兴宁市', '441400');
INSERT INTO `users_areainfo` VALUES ('441482', '其它区', '441400');
INSERT INTO `users_areainfo` VALUES ('441500', '汕尾', '440000');
INSERT INTO `users_areainfo` VALUES ('441502', '城区', '441500');
INSERT INTO `users_areainfo` VALUES ('441521', '海丰县', '441500');
INSERT INTO `users_areainfo` VALUES ('441523', '陆河县', '441500');
INSERT INTO `users_areainfo` VALUES ('441581', '陆丰市', '441500');
INSERT INTO `users_areainfo` VALUES ('441582', '其它区', '441500');
INSERT INTO `users_areainfo` VALUES ('441600', '河源', '440000');
INSERT INTO `users_areainfo` VALUES ('441602', '源城区', '441600');
INSERT INTO `users_areainfo` VALUES ('441621', '紫金县', '441600');
INSERT INTO `users_areainfo` VALUES ('441622', '龙川县', '441600');
INSERT INTO `users_areainfo` VALUES ('441623', '连平县', '441600');
INSERT INTO `users_areainfo` VALUES ('441624', '和平县', '441600');
INSERT INTO `users_areainfo` VALUES ('441625', '东源县', '441600');
INSERT INTO `users_areainfo` VALUES ('441626', '其它区', '441600');
INSERT INTO `users_areainfo` VALUES ('441700', '阳江', '440000');
INSERT INTO `users_areainfo` VALUES ('441702', '江城区', '441700');
INSERT INTO `users_areainfo` VALUES ('441721', '阳西县', '441700');
INSERT INTO `users_areainfo` VALUES ('441723', '阳东县', '441700');
INSERT INTO `users_areainfo` VALUES ('441781', '阳春市', '441700');
INSERT INTO `users_areainfo` VALUES ('441782', '其它区', '441700');
INSERT INTO `users_areainfo` VALUES ('441800', '清远', '440000');
INSERT INTO `users_areainfo` VALUES ('441802', '清城区', '441800');
INSERT INTO `users_areainfo` VALUES ('441821', '佛冈县', '441800');
INSERT INTO `users_areainfo` VALUES ('441823', '阳山县', '441800');
INSERT INTO `users_areainfo` VALUES ('441825', '连山壮族瑶族自治县', '441800');
INSERT INTO `users_areainfo` VALUES ('441826', '连南瑶族自治县', '441800');
INSERT INTO `users_areainfo` VALUES ('441827', '清新县', '441800');
INSERT INTO `users_areainfo` VALUES ('441881', '英德市', '441800');
INSERT INTO `users_areainfo` VALUES ('441882', '连州市', '441800');
INSERT INTO `users_areainfo` VALUES ('441883', '其它区', '441800');
INSERT INTO `users_areainfo` VALUES ('441900', '东莞', '440000');
INSERT INTO `users_areainfo` VALUES ('442000', '中山', '440000');
INSERT INTO `users_areainfo` VALUES ('445100', '潮州', '440000');
INSERT INTO `users_areainfo` VALUES ('445102', '湘桥区', '445100');
INSERT INTO `users_areainfo` VALUES ('445121', '潮安县', '445100');
INSERT INTO `users_areainfo` VALUES ('445122', '饶平县', '445100');
INSERT INTO `users_areainfo` VALUES ('445185', '枫溪区', '445100');
INSERT INTO `users_areainfo` VALUES ('445186', '其它区', '445100');
INSERT INTO `users_areainfo` VALUES ('445200', '揭阳', '440000');
INSERT INTO `users_areainfo` VALUES ('445202', '榕城区', '445200');
INSERT INTO `users_areainfo` VALUES ('445221', '揭东县', '445200');
INSERT INTO `users_areainfo` VALUES ('445222', '揭西县', '445200');
INSERT INTO `users_areainfo` VALUES ('445224', '惠来县', '445200');
INSERT INTO `users_areainfo` VALUES ('445281', '普宁市', '445200');
INSERT INTO `users_areainfo` VALUES ('445284', '东山区', '445200');
INSERT INTO `users_areainfo` VALUES ('445285', '其它区', '445200');
INSERT INTO `users_areainfo` VALUES ('445300', '云浮', '440000');
INSERT INTO `users_areainfo` VALUES ('445302', '云城区', '445300');
INSERT INTO `users_areainfo` VALUES ('445321', '新兴县', '445300');
INSERT INTO `users_areainfo` VALUES ('445322', '郁南县', '445300');
INSERT INTO `users_areainfo` VALUES ('445323', '云安县', '445300');
INSERT INTO `users_areainfo` VALUES ('445381', '罗定市', '445300');
INSERT INTO `users_areainfo` VALUES ('445382', '其它区', '445300');
INSERT INTO `users_areainfo` VALUES ('450000', '广西', '0');
INSERT INTO `users_areainfo` VALUES ('450100', '南宁', '450000');
INSERT INTO `users_areainfo` VALUES ('450102', '兴宁区', '450100');
INSERT INTO `users_areainfo` VALUES ('450103', '青秀区', '450100');
INSERT INTO `users_areainfo` VALUES ('450105', '江南区', '450100');
INSERT INTO `users_areainfo` VALUES ('450107', '西乡塘区', '450100');
INSERT INTO `users_areainfo` VALUES ('450108', '良庆区', '450100');
INSERT INTO `users_areainfo` VALUES ('450109', '邕宁区', '450100');
INSERT INTO `users_areainfo` VALUES ('450122', '武鸣县', '450100');
INSERT INTO `users_areainfo` VALUES ('450123', '隆安县', '450100');
INSERT INTO `users_areainfo` VALUES ('450124', '马山县', '450100');
INSERT INTO `users_areainfo` VALUES ('450125', '上林县', '450100');
INSERT INTO `users_areainfo` VALUES ('450126', '宾阳县', '450100');
INSERT INTO `users_areainfo` VALUES ('450127', '横县', '450100');
INSERT INTO `users_areainfo` VALUES ('450128', '其它区', '450100');
INSERT INTO `users_areainfo` VALUES ('450200', '柳州', '450000');
INSERT INTO `users_areainfo` VALUES ('450202', '城中区', '450200');
INSERT INTO `users_areainfo` VALUES ('450203', '鱼峰区', '450200');
INSERT INTO `users_areainfo` VALUES ('450204', '柳南区', '450200');
INSERT INTO `users_areainfo` VALUES ('450205', '柳北区', '450200');
INSERT INTO `users_areainfo` VALUES ('450221', '柳江县', '450200');
INSERT INTO `users_areainfo` VALUES ('450222', '柳城县', '450200');
INSERT INTO `users_areainfo` VALUES ('450223', '鹿寨县', '450200');
INSERT INTO `users_areainfo` VALUES ('450224', '融安县', '450200');
INSERT INTO `users_areainfo` VALUES ('450225', '融水苗族自治县', '450200');
INSERT INTO `users_areainfo` VALUES ('450226', '三江侗族自治县', '450200');
INSERT INTO `users_areainfo` VALUES ('450227', '其它区', '450200');
INSERT INTO `users_areainfo` VALUES ('450300', '桂林', '450000');
INSERT INTO `users_areainfo` VALUES ('450302', '秀峰区', '450300');
INSERT INTO `users_areainfo` VALUES ('450303', '叠彩区', '450300');
INSERT INTO `users_areainfo` VALUES ('450304', '象山区', '450300');
INSERT INTO `users_areainfo` VALUES ('450305', '七星区', '450300');
INSERT INTO `users_areainfo` VALUES ('450311', '雁山区', '450300');
INSERT INTO `users_areainfo` VALUES ('450321', '阳朔县', '450300');
INSERT INTO `users_areainfo` VALUES ('450322', '临桂县', '450300');
INSERT INTO `users_areainfo` VALUES ('450323', '灵川县', '450300');
INSERT INTO `users_areainfo` VALUES ('450324', '全州县', '450300');
INSERT INTO `users_areainfo` VALUES ('450325', '兴安县', '450300');
INSERT INTO `users_areainfo` VALUES ('450326', '永福县', '450300');
INSERT INTO `users_areainfo` VALUES ('450327', '灌阳县', '450300');
INSERT INTO `users_areainfo` VALUES ('450328', '龙胜各族自治县', '450300');
INSERT INTO `users_areainfo` VALUES ('450329', '资源县', '450300');
INSERT INTO `users_areainfo` VALUES ('450330', '平乐县', '450300');
INSERT INTO `users_areainfo` VALUES ('450331', '荔蒲县', '450300');
INSERT INTO `users_areainfo` VALUES ('450332', '恭城瑶族自治县', '450300');
INSERT INTO `users_areainfo` VALUES ('450333', '其它区', '450300');
INSERT INTO `users_areainfo` VALUES ('450400', '梧州', '450000');
INSERT INTO `users_areainfo` VALUES ('450403', '万秀区', '450400');
INSERT INTO `users_areainfo` VALUES ('450404', '蝶山区', '450400');
INSERT INTO `users_areainfo` VALUES ('450405', '长洲区', '450400');
INSERT INTO `users_areainfo` VALUES ('450421', '苍梧县', '450400');
INSERT INTO `users_areainfo` VALUES ('450422', '藤县', '450400');
INSERT INTO `users_areainfo` VALUES ('450423', '蒙山县', '450400');
INSERT INTO `users_areainfo` VALUES ('450481', '岑溪市', '450400');
INSERT INTO `users_areainfo` VALUES ('450482', '其它区', '450400');
INSERT INTO `users_areainfo` VALUES ('450500', '北海', '450000');
INSERT INTO `users_areainfo` VALUES ('450502', '海城区', '450500');
INSERT INTO `users_areainfo` VALUES ('450503', '银海区', '450500');
INSERT INTO `users_areainfo` VALUES ('450512', '铁山港区', '450500');
INSERT INTO `users_areainfo` VALUES ('450521', '合浦县', '450500');
INSERT INTO `users_areainfo` VALUES ('450522', '其它区', '450500');
INSERT INTO `users_areainfo` VALUES ('450600', '防城港', '450000');
INSERT INTO `users_areainfo` VALUES ('450602', '港口区', '450600');
INSERT INTO `users_areainfo` VALUES ('450603', '防城区', '450600');
INSERT INTO `users_areainfo` VALUES ('450621', '上思县', '450600');
INSERT INTO `users_areainfo` VALUES ('450681', '东兴市', '450600');
INSERT INTO `users_areainfo` VALUES ('450682', '其它区', '450600');
INSERT INTO `users_areainfo` VALUES ('450700', '钦州', '450000');
INSERT INTO `users_areainfo` VALUES ('450702', '钦南区', '450700');
INSERT INTO `users_areainfo` VALUES ('450703', '钦北区', '450700');
INSERT INTO `users_areainfo` VALUES ('450721', '灵山县', '450700');
INSERT INTO `users_areainfo` VALUES ('450722', '浦北县', '450700');
INSERT INTO `users_areainfo` VALUES ('450723', '其它区', '450700');
INSERT INTO `users_areainfo` VALUES ('450800', '贵港', '450000');
INSERT INTO `users_areainfo` VALUES ('450802', '港北区', '450800');
INSERT INTO `users_areainfo` VALUES ('450803', '港南区', '450800');
INSERT INTO `users_areainfo` VALUES ('450804', '覃塘区', '450800');
INSERT INTO `users_areainfo` VALUES ('450821', '平南县', '450800');
INSERT INTO `users_areainfo` VALUES ('450881', '桂平市', '450800');
INSERT INTO `users_areainfo` VALUES ('450882', '其它区', '450800');
INSERT INTO `users_areainfo` VALUES ('450900', '玉林', '450000');
INSERT INTO `users_areainfo` VALUES ('450902', '玉州区', '450900');
INSERT INTO `users_areainfo` VALUES ('450921', '容县', '450900');
INSERT INTO `users_areainfo` VALUES ('450922', '陆川县', '450900');
INSERT INTO `users_areainfo` VALUES ('450923', '博白县', '450900');
INSERT INTO `users_areainfo` VALUES ('450924', '兴业县', '450900');
INSERT INTO `users_areainfo` VALUES ('450981', '北流市', '450900');
INSERT INTO `users_areainfo` VALUES ('450982', '其它区', '450900');
INSERT INTO `users_areainfo` VALUES ('451000', '百色', '450000');
INSERT INTO `users_areainfo` VALUES ('451002', '右江区', '451000');
INSERT INTO `users_areainfo` VALUES ('451021', '田阳县', '451000');
INSERT INTO `users_areainfo` VALUES ('451022', '田东县', '451000');
INSERT INTO `users_areainfo` VALUES ('451023', '平果县', '451000');
INSERT INTO `users_areainfo` VALUES ('451024', '德保县', '451000');
INSERT INTO `users_areainfo` VALUES ('451025', '靖西县', '451000');
INSERT INTO `users_areainfo` VALUES ('451026', '那坡县', '451000');
INSERT INTO `users_areainfo` VALUES ('451027', '凌云县', '451000');
INSERT INTO `users_areainfo` VALUES ('451028', '乐业县', '451000');
INSERT INTO `users_areainfo` VALUES ('451029', '田林县', '451000');
INSERT INTO `users_areainfo` VALUES ('451030', '西林县', '451000');
INSERT INTO `users_areainfo` VALUES ('451031', '隆林各族自治县', '451000');
INSERT INTO `users_areainfo` VALUES ('451032', '其它区', '451000');
INSERT INTO `users_areainfo` VALUES ('451100', '贺州', '450000');
INSERT INTO `users_areainfo` VALUES ('451102', '八步区', '451100');
INSERT INTO `users_areainfo` VALUES ('451121', '昭平县', '451100');
INSERT INTO `users_areainfo` VALUES ('451122', '钟山县', '451100');
INSERT INTO `users_areainfo` VALUES ('451123', '富川瑶族自治县', '451100');
INSERT INTO `users_areainfo` VALUES ('451124', '其它区', '451100');
INSERT INTO `users_areainfo` VALUES ('451200', '河池', '450000');
INSERT INTO `users_areainfo` VALUES ('451202', '金城江区', '451200');
INSERT INTO `users_areainfo` VALUES ('451221', '南丹县', '451200');
INSERT INTO `users_areainfo` VALUES ('451222', '天峨县', '451200');
INSERT INTO `users_areainfo` VALUES ('451223', '凤山县', '451200');
INSERT INTO `users_areainfo` VALUES ('451224', '东兰县', '451200');
INSERT INTO `users_areainfo` VALUES ('451225', '罗城仫佬族自治县', '451200');
INSERT INTO `users_areainfo` VALUES ('451226', '环江毛南族自治县', '451200');
INSERT INTO `users_areainfo` VALUES ('451227', '巴马瑶族自治县', '451200');
INSERT INTO `users_areainfo` VALUES ('451228', '都安瑶族自治县', '451200');
INSERT INTO `users_areainfo` VALUES ('451229', '大化瑶族自治县', '451200');
INSERT INTO `users_areainfo` VALUES ('451281', '宜州市', '451200');
INSERT INTO `users_areainfo` VALUES ('451282', '其它区', '451200');
INSERT INTO `users_areainfo` VALUES ('451300', '来宾', '450000');
INSERT INTO `users_areainfo` VALUES ('451302', '兴宾区', '451300');
INSERT INTO `users_areainfo` VALUES ('451321', '忻城县', '451300');
INSERT INTO `users_areainfo` VALUES ('451322', '象州县', '451300');
INSERT INTO `users_areainfo` VALUES ('451323', '武宣县', '451300');
INSERT INTO `users_areainfo` VALUES ('451324', '金秀瑶族自治县', '451300');
INSERT INTO `users_areainfo` VALUES ('451381', '合山市', '451300');
INSERT INTO `users_areainfo` VALUES ('451382', '其它区', '451300');
INSERT INTO `users_areainfo` VALUES ('451400', '崇左', '450000');
INSERT INTO `users_areainfo` VALUES ('451402', '江洲区', '451400');
INSERT INTO `users_areainfo` VALUES ('451421', '扶绥县', '451400');
INSERT INTO `users_areainfo` VALUES ('451422', '宁明县', '451400');
INSERT INTO `users_areainfo` VALUES ('451423', '龙州县', '451400');
INSERT INTO `users_areainfo` VALUES ('451424', '大新县', '451400');
INSERT INTO `users_areainfo` VALUES ('451425', '天等县', '451400');
INSERT INTO `users_areainfo` VALUES ('451481', '凭祥市', '451400');
INSERT INTO `users_areainfo` VALUES ('451482', '其它区', '451400');
INSERT INTO `users_areainfo` VALUES ('460000', '海南', '0');
INSERT INTO `users_areainfo` VALUES ('460100', '海口', '460000');
INSERT INTO `users_areainfo` VALUES ('460105', '秀英区', '460100');
INSERT INTO `users_areainfo` VALUES ('460106', '龙华区', '460100');
INSERT INTO `users_areainfo` VALUES ('460107', '琼山区', '460100');
INSERT INTO `users_areainfo` VALUES ('460108', '美兰区', '460100');
INSERT INTO `users_areainfo` VALUES ('460109', '其它区', '460100');
INSERT INTO `users_areainfo` VALUES ('460200', '三亚', '460000');
INSERT INTO `users_areainfo` VALUES ('469001', '五指山', '460000');
INSERT INTO `users_areainfo` VALUES ('469002', '琼海', '460000');
INSERT INTO `users_areainfo` VALUES ('469003', '儋州', '460000');
INSERT INTO `users_areainfo` VALUES ('469005', '文昌', '460000');
INSERT INTO `users_areainfo` VALUES ('469006', '万宁', '460000');
INSERT INTO `users_areainfo` VALUES ('469007', '东方', '460000');
INSERT INTO `users_areainfo` VALUES ('469025', '定安', '460000');
INSERT INTO `users_areainfo` VALUES ('469026', '屯昌', '460000');
INSERT INTO `users_areainfo` VALUES ('469027', '澄迈', '460000');
INSERT INTO `users_areainfo` VALUES ('469028', '临高', '460000');
INSERT INTO `users_areainfo` VALUES ('469030', '白沙', '460000');
INSERT INTO `users_areainfo` VALUES ('469031', '昌江', '460000');
INSERT INTO `users_areainfo` VALUES ('469033', '乐东', '460000');
INSERT INTO `users_areainfo` VALUES ('469034', '陵水', '460000');
INSERT INTO `users_areainfo` VALUES ('469035', '保亭', '460000');
INSERT INTO `users_areainfo` VALUES ('469036', '琼中', '460000');
INSERT INTO `users_areainfo` VALUES ('469037', '西沙', '460000');
INSERT INTO `users_areainfo` VALUES ('469038', '南沙', '460000');
INSERT INTO `users_areainfo` VALUES ('469039', '中沙', '460000');
INSERT INTO `users_areainfo` VALUES ('471004', '高新区', '410300');
INSERT INTO `users_areainfo` VALUES ('471005', '其它区', '410300');
INSERT INTO `users_areainfo` VALUES ('500000', '重庆', '0');
INSERT INTO `users_areainfo` VALUES ('500100', '重庆市', '500100');
INSERT INTO `users_areainfo` VALUES ('500101', '万州', '500100');
INSERT INTO `users_areainfo` VALUES ('500102', '涪陵', '500100');
INSERT INTO `users_areainfo` VALUES ('500103', '渝中', '500100');
INSERT INTO `users_areainfo` VALUES ('500104', '大渡口', '500100');
INSERT INTO `users_areainfo` VALUES ('500105', '江北', '500100');
INSERT INTO `users_areainfo` VALUES ('500106', '沙坪坝', '500100');
INSERT INTO `users_areainfo` VALUES ('500107', '九龙坡', '500100');
INSERT INTO `users_areainfo` VALUES ('500108', '南岸', '500100');
INSERT INTO `users_areainfo` VALUES ('500109', '北碚', '500100');
INSERT INTO `users_areainfo` VALUES ('500110', '万盛', '500100');
INSERT INTO `users_areainfo` VALUES ('500111', '双桥', '500100');
INSERT INTO `users_areainfo` VALUES ('500112', '渝北', '500100');
INSERT INTO `users_areainfo` VALUES ('500113', '巴南', '500100');
INSERT INTO `users_areainfo` VALUES ('500114', '黔江', '500100');
INSERT INTO `users_areainfo` VALUES ('500115', '长寿', '500100');
INSERT INTO `users_areainfo` VALUES ('500222', '綦江', '500100');
INSERT INTO `users_areainfo` VALUES ('500223', '潼南', '500100');
INSERT INTO `users_areainfo` VALUES ('500224', '铜梁', '500100');
INSERT INTO `users_areainfo` VALUES ('500225', '大足', '500100');
INSERT INTO `users_areainfo` VALUES ('500226', '荣昌', '500100');
INSERT INTO `users_areainfo` VALUES ('500227', '璧山', '500100');
INSERT INTO `users_areainfo` VALUES ('500228', '梁平', '500100');
INSERT INTO `users_areainfo` VALUES ('500229', '城口县', '500100');
INSERT INTO `users_areainfo` VALUES ('500230', '丰都县', '500100');
INSERT INTO `users_areainfo` VALUES ('500231', '垫江县', '500100');
INSERT INTO `users_areainfo` VALUES ('500232', '武隆县', '500100');
INSERT INTO `users_areainfo` VALUES ('500233', '忠县', '500100');
INSERT INTO `users_areainfo` VALUES ('500234', '开县', '500100');
INSERT INTO `users_areainfo` VALUES ('500235', '云阳县', '500100');
INSERT INTO `users_areainfo` VALUES ('500236', '奉节县', '500100');
INSERT INTO `users_areainfo` VALUES ('500237', '巫山县', '500100');
INSERT INTO `users_areainfo` VALUES ('500238', '巫溪县', '500100');
INSERT INTO `users_areainfo` VALUES ('500240', '石柱土家族自治县', '500100');
INSERT INTO `users_areainfo` VALUES ('500241', '秀山土家族苗族自治县', '500100');
INSERT INTO `users_areainfo` VALUES ('500242', '酉阳土家族苗族自治县', '500100');
INSERT INTO `users_areainfo` VALUES ('500243', '彭水苗族土家族自治县', '500100');
INSERT INTO `users_areainfo` VALUES ('500381', '江津市', '500100');
INSERT INTO `users_areainfo` VALUES ('500382', '合川区', '500100');
INSERT INTO `users_areainfo` VALUES ('500383', '永川市', '500100');
INSERT INTO `users_areainfo` VALUES ('500384', '南川市', '500100');
INSERT INTO `users_areainfo` VALUES ('500385', '其它区', '500100');
INSERT INTO `users_areainfo` VALUES ('510000', '四川', '0');
INSERT INTO `users_areainfo` VALUES ('510100', '成都', '510000');
INSERT INTO `users_areainfo` VALUES ('510104', '锦江区', '510100');
INSERT INTO `users_areainfo` VALUES ('510105', '青羊区', '510100');
INSERT INTO `users_areainfo` VALUES ('510106', '金牛区', '510100');
INSERT INTO `users_areainfo` VALUES ('510107', '武侯区', '510100');
INSERT INTO `users_areainfo` VALUES ('510108', '成华区', '510100');
INSERT INTO `users_areainfo` VALUES ('510112', '龙泉驿区', '510100');
INSERT INTO `users_areainfo` VALUES ('510113', '青白江区', '510100');
INSERT INTO `users_areainfo` VALUES ('510114', '新都区', '510100');
INSERT INTO `users_areainfo` VALUES ('510115', '温江区', '510100');
INSERT INTO `users_areainfo` VALUES ('510121', '金堂县', '510100');
INSERT INTO `users_areainfo` VALUES ('510122', '双流县', '510100');
INSERT INTO `users_areainfo` VALUES ('510124', '郫县', '510100');
INSERT INTO `users_areainfo` VALUES ('510129', '大邑县', '510100');
INSERT INTO `users_areainfo` VALUES ('510131', '蒲江县', '510100');
INSERT INTO `users_areainfo` VALUES ('510132', '新津县', '510100');
INSERT INTO `users_areainfo` VALUES ('510181', '都江堰市', '510100');
INSERT INTO `users_areainfo` VALUES ('510182', '彭州市', '510100');
INSERT INTO `users_areainfo` VALUES ('510183', '邛崃市', '510100');
INSERT INTO `users_areainfo` VALUES ('510184', '崇州市', '510100');
INSERT INTO `users_areainfo` VALUES ('510185', '其它区', '510100');
INSERT INTO `users_areainfo` VALUES ('510300', '自贡', '510000');
INSERT INTO `users_areainfo` VALUES ('510302', '自流井区', '510300');
INSERT INTO `users_areainfo` VALUES ('510303', '贡井区', '510300');
INSERT INTO `users_areainfo` VALUES ('510304', '大安区', '510300');
INSERT INTO `users_areainfo` VALUES ('510311', '沿滩区', '510300');
INSERT INTO `users_areainfo` VALUES ('510321', '荣县', '510300');
INSERT INTO `users_areainfo` VALUES ('510322', '富顺县', '510300');
INSERT INTO `users_areainfo` VALUES ('510323', '其它区', '510300');
INSERT INTO `users_areainfo` VALUES ('510400', '攀枝花', '510000');
INSERT INTO `users_areainfo` VALUES ('510402', '东区', '510400');
INSERT INTO `users_areainfo` VALUES ('510403', '西区', '510400');
INSERT INTO `users_areainfo` VALUES ('510411', '仁和区', '510400');
INSERT INTO `users_areainfo` VALUES ('510421', '米易县', '510400');
INSERT INTO `users_areainfo` VALUES ('510422', '盐边县', '510400');
INSERT INTO `users_areainfo` VALUES ('510423', '其它区', '510400');
INSERT INTO `users_areainfo` VALUES ('510500', '泸州', '510000');
INSERT INTO `users_areainfo` VALUES ('510502', '江阳区', '510500');
INSERT INTO `users_areainfo` VALUES ('510503', '纳溪区', '510500');
INSERT INTO `users_areainfo` VALUES ('510504', '龙马潭区', '510500');
INSERT INTO `users_areainfo` VALUES ('510521', '泸县', '510500');
INSERT INTO `users_areainfo` VALUES ('510522', '合江县', '510500');
INSERT INTO `users_areainfo` VALUES ('510524', '叙永县', '510500');
INSERT INTO `users_areainfo` VALUES ('510525', '古蔺县', '510500');
INSERT INTO `users_areainfo` VALUES ('510526', '其它区', '510500');
INSERT INTO `users_areainfo` VALUES ('510600', '德阳', '510000');
INSERT INTO `users_areainfo` VALUES ('510603', '旌阳区', '510600');
INSERT INTO `users_areainfo` VALUES ('510623', '中江县', '510600');
INSERT INTO `users_areainfo` VALUES ('510626', '罗江县', '510600');
INSERT INTO `users_areainfo` VALUES ('510681', '广汉市', '510600');
INSERT INTO `users_areainfo` VALUES ('510682', '什邡市', '510600');
INSERT INTO `users_areainfo` VALUES ('510683', '绵竹市', '510600');
INSERT INTO `users_areainfo` VALUES ('510684', '其它区', '510600');
INSERT INTO `users_areainfo` VALUES ('510700', '绵阳', '510000');
INSERT INTO `users_areainfo` VALUES ('510703', '涪城区', '510700');
INSERT INTO `users_areainfo` VALUES ('510704', '游仙区', '510700');
INSERT INTO `users_areainfo` VALUES ('510722', '三台县', '510700');
INSERT INTO `users_areainfo` VALUES ('510723', '盐亭县', '510700');
INSERT INTO `users_areainfo` VALUES ('510724', '安县', '510700');
INSERT INTO `users_areainfo` VALUES ('510725', '梓潼县', '510700');
INSERT INTO `users_areainfo` VALUES ('510726', '北川羌族自治县', '510700');
INSERT INTO `users_areainfo` VALUES ('510727', '平武县', '510700');
INSERT INTO `users_areainfo` VALUES ('510751', '高新区', '510700');
INSERT INTO `users_areainfo` VALUES ('510781', '江油市', '510700');
INSERT INTO `users_areainfo` VALUES ('510782', '其它区', '510700');
INSERT INTO `users_areainfo` VALUES ('510800', '广元', '510000');
INSERT INTO `users_areainfo` VALUES ('510802', '市中区', '510800');
INSERT INTO `users_areainfo` VALUES ('510811', '元坝区', '510800');
INSERT INTO `users_areainfo` VALUES ('510812', '朝天区', '510800');
INSERT INTO `users_areainfo` VALUES ('510821', '旺苍县', '510800');
INSERT INTO `users_areainfo` VALUES ('510822', '青川县', '510800');
INSERT INTO `users_areainfo` VALUES ('510823', '剑阁县', '510800');
INSERT INTO `users_areainfo` VALUES ('510824', '苍溪县', '510800');
INSERT INTO `users_areainfo` VALUES ('510825', '其它区', '510800');
INSERT INTO `users_areainfo` VALUES ('510900', '遂宁', '510000');
INSERT INTO `users_areainfo` VALUES ('510903', '船山区', '510900');
INSERT INTO `users_areainfo` VALUES ('510904', '安居区', '510900');
INSERT INTO `users_areainfo` VALUES ('510921', '蓬溪县', '510900');
INSERT INTO `users_areainfo` VALUES ('510922', '射洪县', '510900');
INSERT INTO `users_areainfo` VALUES ('510923', '大英县', '510900');
INSERT INTO `users_areainfo` VALUES ('510924', '其它区', '510900');
INSERT INTO `users_areainfo` VALUES ('511000', '内江', '510000');
INSERT INTO `users_areainfo` VALUES ('511002', '市中区', '511000');
INSERT INTO `users_areainfo` VALUES ('511011', '东兴区', '511000');
INSERT INTO `users_areainfo` VALUES ('511024', '威远县', '511000');
INSERT INTO `users_areainfo` VALUES ('511025', '资中县', '511000');
INSERT INTO `users_areainfo` VALUES ('511028', '隆昌县', '511000');
INSERT INTO `users_areainfo` VALUES ('511029', '其它区', '511000');
INSERT INTO `users_areainfo` VALUES ('511100', '乐山', '510000');
INSERT INTO `users_areainfo` VALUES ('511102', '市中区', '511100');
INSERT INTO `users_areainfo` VALUES ('511111', '沙湾区', '511100');
INSERT INTO `users_areainfo` VALUES ('511112', '五通桥区', '511100');
INSERT INTO `users_areainfo` VALUES ('511113', '金口河区', '511100');
INSERT INTO `users_areainfo` VALUES ('511123', '犍为县', '511100');
INSERT INTO `users_areainfo` VALUES ('511124', '井研县', '511100');
INSERT INTO `users_areainfo` VALUES ('511126', '夹江县', '511100');
INSERT INTO `users_areainfo` VALUES ('511129', '沐川县', '511100');
INSERT INTO `users_areainfo` VALUES ('511132', '峨边彝族自治县', '511100');
INSERT INTO `users_areainfo` VALUES ('511133', '马边彝族自治县', '511100');
INSERT INTO `users_areainfo` VALUES ('511181', '峨眉山市', '511100');
INSERT INTO `users_areainfo` VALUES ('511182', '其它区', '511100');
INSERT INTO `users_areainfo` VALUES ('511300', '南充', '510000');
INSERT INTO `users_areainfo` VALUES ('511302', '顺庆区', '511300');
INSERT INTO `users_areainfo` VALUES ('511303', '高坪区', '511300');
INSERT INTO `users_areainfo` VALUES ('511304', '嘉陵区', '511300');
INSERT INTO `users_areainfo` VALUES ('511321', '南部县', '511300');
INSERT INTO `users_areainfo` VALUES ('511322', '营山县', '511300');
INSERT INTO `users_areainfo` VALUES ('511323', '蓬安县', '511300');
INSERT INTO `users_areainfo` VALUES ('511324', '仪陇县', '511300');
INSERT INTO `users_areainfo` VALUES ('511325', '西充县', '511300');
INSERT INTO `users_areainfo` VALUES ('511381', '阆中市', '511300');
INSERT INTO `users_areainfo` VALUES ('511382', '其它区', '511300');
INSERT INTO `users_areainfo` VALUES ('511400', '眉山', '510000');
INSERT INTO `users_areainfo` VALUES ('511402', '东坡区', '511400');
INSERT INTO `users_areainfo` VALUES ('511421', '仁寿县', '511400');
INSERT INTO `users_areainfo` VALUES ('511422', '彭山县', '511400');
INSERT INTO `users_areainfo` VALUES ('511423', '洪雅县', '511400');
INSERT INTO `users_areainfo` VALUES ('511424', '丹棱县', '511400');
INSERT INTO `users_areainfo` VALUES ('511425', '青神县', '511400');
INSERT INTO `users_areainfo` VALUES ('511426', '其它区', '511400');
INSERT INTO `users_areainfo` VALUES ('511500', '宜宾', '510000');
INSERT INTO `users_areainfo` VALUES ('511502', '翠屏区', '511500');
INSERT INTO `users_areainfo` VALUES ('511521', '宜宾县', '511500');
INSERT INTO `users_areainfo` VALUES ('511522', '南溪县', '511500');
INSERT INTO `users_areainfo` VALUES ('511523', '江安县', '511500');
INSERT INTO `users_areainfo` VALUES ('511524', '长宁县', '511500');
INSERT INTO `users_areainfo` VALUES ('511525', '高县', '511500');
INSERT INTO `users_areainfo` VALUES ('511526', '珙县', '511500');
INSERT INTO `users_areainfo` VALUES ('511527', '筠连县', '511500');
INSERT INTO `users_areainfo` VALUES ('511528', '兴文县', '511500');
INSERT INTO `users_areainfo` VALUES ('511529', '屏山县', '511500');
INSERT INTO `users_areainfo` VALUES ('511530', '其它区', '511500');
INSERT INTO `users_areainfo` VALUES ('511600', '广安', '510000');
INSERT INTO `users_areainfo` VALUES ('511602', '广安区', '511600');
INSERT INTO `users_areainfo` VALUES ('511621', '岳池县', '511600');
INSERT INTO `users_areainfo` VALUES ('511622', '武胜县', '511600');
INSERT INTO `users_areainfo` VALUES ('511623', '邻水县', '511600');
INSERT INTO `users_areainfo` VALUES ('511681', '华蓥市', '511600');
INSERT INTO `users_areainfo` VALUES ('511682', '市辖区', '511600');
INSERT INTO `users_areainfo` VALUES ('511683', '其它区', '511600');
INSERT INTO `users_areainfo` VALUES ('511700', '达州', '510000');
INSERT INTO `users_areainfo` VALUES ('511702', '通川区', '511700');
INSERT INTO `users_areainfo` VALUES ('511721', '达县', '511700');
INSERT INTO `users_areainfo` VALUES ('511722', '宣汉县', '511700');
INSERT INTO `users_areainfo` VALUES ('511723', '开江县', '511700');
INSERT INTO `users_areainfo` VALUES ('511724', '大竹县', '511700');
INSERT INTO `users_areainfo` VALUES ('511725', '渠县', '511700');
INSERT INTO `users_areainfo` VALUES ('511781', '万源市', '511700');
INSERT INTO `users_areainfo` VALUES ('511782', '其它区', '511700');
INSERT INTO `users_areainfo` VALUES ('511800', '雅安', '510000');
INSERT INTO `users_areainfo` VALUES ('511802', '雨城区', '511800');
INSERT INTO `users_areainfo` VALUES ('511821', '名山县', '511800');
INSERT INTO `users_areainfo` VALUES ('511822', '荥经县', '511800');
INSERT INTO `users_areainfo` VALUES ('511823', '汉源县', '511800');
INSERT INTO `users_areainfo` VALUES ('511824', '石棉县', '511800');
INSERT INTO `users_areainfo` VALUES ('511825', '天全县', '511800');
INSERT INTO `users_areainfo` VALUES ('511826', '芦山县', '511800');
INSERT INTO `users_areainfo` VALUES ('511827', '宝兴县', '511800');
INSERT INTO `users_areainfo` VALUES ('511828', '其它区', '511800');
INSERT INTO `users_areainfo` VALUES ('511900', '巴中', '510000');
INSERT INTO `users_areainfo` VALUES ('511902', '巴州区', '511900');
INSERT INTO `users_areainfo` VALUES ('511921', '通江县', '511900');
INSERT INTO `users_areainfo` VALUES ('511922', '南江县', '511900');
INSERT INTO `users_areainfo` VALUES ('511923', '平昌县', '511900');
INSERT INTO `users_areainfo` VALUES ('511924', '其它区', '511900');
INSERT INTO `users_areainfo` VALUES ('512000', '资阳', '510000');
INSERT INTO `users_areainfo` VALUES ('512002', '雁江区', '512000');
INSERT INTO `users_areainfo` VALUES ('512021', '安岳县', '512000');
INSERT INTO `users_areainfo` VALUES ('512022', '乐至县', '512000');
INSERT INTO `users_areainfo` VALUES ('512081', '简阳市', '512000');
INSERT INTO `users_areainfo` VALUES ('512082', '其它区', '512000');
INSERT INTO `users_areainfo` VALUES ('513200', '阿坝', '510000');
INSERT INTO `users_areainfo` VALUES ('513221', '汶川县', '513200');
INSERT INTO `users_areainfo` VALUES ('513222', '理县', '513200');
INSERT INTO `users_areainfo` VALUES ('513223', '茂县', '513200');
INSERT INTO `users_areainfo` VALUES ('513224', '松潘县', '513200');
INSERT INTO `users_areainfo` VALUES ('513225', '九寨沟县', '513200');
INSERT INTO `users_areainfo` VALUES ('513226', '金川县', '513200');
INSERT INTO `users_areainfo` VALUES ('513227', '小金县', '513200');
INSERT INTO `users_areainfo` VALUES ('513228', '黑水县', '513200');
INSERT INTO `users_areainfo` VALUES ('513229', '马尔康县', '513200');
INSERT INTO `users_areainfo` VALUES ('513230', '壤塘县', '513200');
INSERT INTO `users_areainfo` VALUES ('513231', '阿坝县', '513200');
INSERT INTO `users_areainfo` VALUES ('513232', '若尔盖县', '513200');
INSERT INTO `users_areainfo` VALUES ('513233', '红原县', '513200');
INSERT INTO `users_areainfo` VALUES ('513234', '其它区', '513200');
INSERT INTO `users_areainfo` VALUES ('513300', '甘孜', '510000');
INSERT INTO `users_areainfo` VALUES ('513321', '康定县', '513300');
INSERT INTO `users_areainfo` VALUES ('513322', '泸定县', '513300');
INSERT INTO `users_areainfo` VALUES ('513323', '丹巴县', '513300');
INSERT INTO `users_areainfo` VALUES ('513324', '九龙县', '513300');
INSERT INTO `users_areainfo` VALUES ('513325', '雅江县', '513300');
INSERT INTO `users_areainfo` VALUES ('513326', '道孚县', '513300');
INSERT INTO `users_areainfo` VALUES ('513327', '炉霍县', '513300');
INSERT INTO `users_areainfo` VALUES ('513328', '甘孜县', '513300');
INSERT INTO `users_areainfo` VALUES ('513329', '新龙县', '513300');
INSERT INTO `users_areainfo` VALUES ('513330', '德格县', '513300');
INSERT INTO `users_areainfo` VALUES ('513331', '白玉县', '513300');
INSERT INTO `users_areainfo` VALUES ('513332', '石渠县', '513300');
INSERT INTO `users_areainfo` VALUES ('513333', '色达县', '513300');
INSERT INTO `users_areainfo` VALUES ('513334', '理塘县', '513300');
INSERT INTO `users_areainfo` VALUES ('513335', '巴塘县', '513300');
INSERT INTO `users_areainfo` VALUES ('513336', '乡城县', '513300');
INSERT INTO `users_areainfo` VALUES ('513337', '稻城县', '513300');
INSERT INTO `users_areainfo` VALUES ('513338', '得荣县', '513300');
INSERT INTO `users_areainfo` VALUES ('513339', '其它区', '513300');
INSERT INTO `users_areainfo` VALUES ('513400', '凉山', '510000');
INSERT INTO `users_areainfo` VALUES ('513401', '西昌市', '513400');
INSERT INTO `users_areainfo` VALUES ('513422', '木里藏族自治县', '513400');
INSERT INTO `users_areainfo` VALUES ('513423', '盐源县', '513400');
INSERT INTO `users_areainfo` VALUES ('513424', '德昌县', '513400');
INSERT INTO `users_areainfo` VALUES ('513425', '会理县', '513400');
INSERT INTO `users_areainfo` VALUES ('513426', '会东县', '513400');
INSERT INTO `users_areainfo` VALUES ('513427', '宁南县', '513400');
INSERT INTO `users_areainfo` VALUES ('513428', '普格县', '513400');
INSERT INTO `users_areainfo` VALUES ('513429', '布拖县', '513400');
INSERT INTO `users_areainfo` VALUES ('513430', '金阳县', '513400');
INSERT INTO `users_areainfo` VALUES ('513431', '昭觉县', '513400');
INSERT INTO `users_areainfo` VALUES ('513432', '喜德县', '513400');
INSERT INTO `users_areainfo` VALUES ('513433', '冕宁县', '513400');
INSERT INTO `users_areainfo` VALUES ('513434', '越西县', '513400');
INSERT INTO `users_areainfo` VALUES ('513435', '甘洛县', '513400');
INSERT INTO `users_areainfo` VALUES ('513436', '美姑县', '513400');
INSERT INTO `users_areainfo` VALUES ('513437', '雷波县', '513400');
INSERT INTO `users_areainfo` VALUES ('513438', '其它区', '513400');
INSERT INTO `users_areainfo` VALUES ('520000', '贵州', '0');
INSERT INTO `users_areainfo` VALUES ('520100', '贵阳', '520000');
INSERT INTO `users_areainfo` VALUES ('520102', '南明区', '520100');
INSERT INTO `users_areainfo` VALUES ('520103', '云岩区', '520100');
INSERT INTO `users_areainfo` VALUES ('520111', '花溪区', '520100');
INSERT INTO `users_areainfo` VALUES ('520112', '乌当区', '520100');
INSERT INTO `users_areainfo` VALUES ('520113', '白云区', '520100');
INSERT INTO `users_areainfo` VALUES ('520114', '小河区', '520100');
INSERT INTO `users_areainfo` VALUES ('520121', '开阳县', '520100');
INSERT INTO `users_areainfo` VALUES ('520122', '息烽县', '520100');
INSERT INTO `users_areainfo` VALUES ('520123', '修文县', '520100');
INSERT INTO `users_areainfo` VALUES ('520151', '金阳开发区', '520100');
INSERT INTO `users_areainfo` VALUES ('520181', '清镇市', '520100');
INSERT INTO `users_areainfo` VALUES ('520182', '其它区', '520100');
INSERT INTO `users_areainfo` VALUES ('520200', '六盘水', '520000');
INSERT INTO `users_areainfo` VALUES ('520201', '钟山区', '520200');
INSERT INTO `users_areainfo` VALUES ('520203', '六枝特区', '520200');
INSERT INTO `users_areainfo` VALUES ('520221', '水城县', '520200');
INSERT INTO `users_areainfo` VALUES ('520222', '盘县', '520200');
INSERT INTO `users_areainfo` VALUES ('520223', '其它区', '520200');
INSERT INTO `users_areainfo` VALUES ('520300', '遵义', '520000');
INSERT INTO `users_areainfo` VALUES ('520302', '红花岗区', '520300');
INSERT INTO `users_areainfo` VALUES ('520303', '汇川区', '520300');
INSERT INTO `users_areainfo` VALUES ('520321', '遵义县', '520300');
INSERT INTO `users_areainfo` VALUES ('520322', '桐梓县', '520300');
INSERT INTO `users_areainfo` VALUES ('520323', '绥阳县', '520300');
INSERT INTO `users_areainfo` VALUES ('520324', '正安县', '520300');
INSERT INTO `users_areainfo` VALUES ('520325', '道真仡佬族苗族自治县', '520300');
INSERT INTO `users_areainfo` VALUES ('520326', '务川仡佬族苗族自治县', '520300');
INSERT INTO `users_areainfo` VALUES ('520327', '凤冈县', '520300');
INSERT INTO `users_areainfo` VALUES ('520328', '湄潭县', '520300');
INSERT INTO `users_areainfo` VALUES ('520329', '余庆县', '520300');
INSERT INTO `users_areainfo` VALUES ('520330', '习水县', '520300');
INSERT INTO `users_areainfo` VALUES ('520381', '赤水市', '520300');
INSERT INTO `users_areainfo` VALUES ('520382', '仁怀市', '520300');
INSERT INTO `users_areainfo` VALUES ('520383', '其它区', '520300');
INSERT INTO `users_areainfo` VALUES ('520400', '安顺', '520000');
INSERT INTO `users_areainfo` VALUES ('520402', '西秀区', '520400');
INSERT INTO `users_areainfo` VALUES ('520421', '平坝县', '520400');
INSERT INTO `users_areainfo` VALUES ('520422', '普定县', '520400');
INSERT INTO `users_areainfo` VALUES ('520423', '镇宁布依族苗族自治县', '520400');
INSERT INTO `users_areainfo` VALUES ('520424', '关岭布依族苗族自治县', '520400');
INSERT INTO `users_areainfo` VALUES ('520425', '紫云苗族布依族自治县', '520400');
INSERT INTO `users_areainfo` VALUES ('520426', '其它区', '520400');
INSERT INTO `users_areainfo` VALUES ('522200', '铜仁', '520000');
INSERT INTO `users_areainfo` VALUES ('522201', '铜仁市', '522200');
INSERT INTO `users_areainfo` VALUES ('522222', '江口县', '522200');
INSERT INTO `users_areainfo` VALUES ('522223', '玉屏侗族自治县', '522200');
INSERT INTO `users_areainfo` VALUES ('522224', '石阡县', '522200');
INSERT INTO `users_areainfo` VALUES ('522225', '思南县', '522200');
INSERT INTO `users_areainfo` VALUES ('522226', '印江土家族苗族自治县', '522200');
INSERT INTO `users_areainfo` VALUES ('522227', '德江县', '522200');
INSERT INTO `users_areainfo` VALUES ('522228', '沿河土家族自治县', '522200');
INSERT INTO `users_areainfo` VALUES ('522229', '松桃苗族自治县', '522200');
INSERT INTO `users_areainfo` VALUES ('522230', '万山特区', '522200');
INSERT INTO `users_areainfo` VALUES ('522231', '其它区', '522200');
INSERT INTO `users_areainfo` VALUES ('522300', '黔西', '520000');
INSERT INTO `users_areainfo` VALUES ('522301', '兴义市', '522300');
INSERT INTO `users_areainfo` VALUES ('522322', '兴仁县', '522300');
INSERT INTO `users_areainfo` VALUES ('522323', '普安县', '522300');
INSERT INTO `users_areainfo` VALUES ('522324', '晴隆县', '522300');
INSERT INTO `users_areainfo` VALUES ('522325', '贞丰县', '522300');
INSERT INTO `users_areainfo` VALUES ('522326', '望谟县', '522300');
INSERT INTO `users_areainfo` VALUES ('522327', '册亨县', '522300');
INSERT INTO `users_areainfo` VALUES ('522328', '安龙县', '522300');
INSERT INTO `users_areainfo` VALUES ('522329', '其它区', '522300');
INSERT INTO `users_areainfo` VALUES ('522400', '毕节', '520000');
INSERT INTO `users_areainfo` VALUES ('522401', '毕节市', '522400');
INSERT INTO `users_areainfo` VALUES ('522422', '大方县', '522400');
INSERT INTO `users_areainfo` VALUES ('522423', '黔西县', '522400');
INSERT INTO `users_areainfo` VALUES ('522424', '金沙县', '522400');
INSERT INTO `users_areainfo` VALUES ('522425', '织金县', '522400');
INSERT INTO `users_areainfo` VALUES ('522426', '纳雍县', '522400');
INSERT INTO `users_areainfo` VALUES ('522427', '威宁彝族回族苗族自治县', '522400');
INSERT INTO `users_areainfo` VALUES ('522428', '赫章县', '522400');
INSERT INTO `users_areainfo` VALUES ('522429', '其它区', '522400');
INSERT INTO `users_areainfo` VALUES ('522600', '黔东', '520000');
INSERT INTO `users_areainfo` VALUES ('522601', '凯里市', '522600');
INSERT INTO `users_areainfo` VALUES ('522622', '黄平县', '522600');
INSERT INTO `users_areainfo` VALUES ('522623', '施秉县', '522600');
INSERT INTO `users_areainfo` VALUES ('522624', '三穗县', '522600');
INSERT INTO `users_areainfo` VALUES ('522625', '镇远县', '522600');
INSERT INTO `users_areainfo` VALUES ('522626', '岑巩县', '522600');
INSERT INTO `users_areainfo` VALUES ('522627', '天柱县', '522600');
INSERT INTO `users_areainfo` VALUES ('522628', '锦屏县', '522600');
INSERT INTO `users_areainfo` VALUES ('522629', '剑河县', '522600');
INSERT INTO `users_areainfo` VALUES ('522630', '台江县', '522600');
INSERT INTO `users_areainfo` VALUES ('522631', '黎平县', '522600');
INSERT INTO `users_areainfo` VALUES ('522632', '榕江县', '522600');
INSERT INTO `users_areainfo` VALUES ('522633', '从江县', '522600');
INSERT INTO `users_areainfo` VALUES ('522634', '雷山县', '522600');
INSERT INTO `users_areainfo` VALUES ('522635', '麻江县', '522600');
INSERT INTO `users_areainfo` VALUES ('522636', '丹寨县', '522600');
INSERT INTO `users_areainfo` VALUES ('522637', '其它区', '522600');
INSERT INTO `users_areainfo` VALUES ('522700', '黔南', '520000');
INSERT INTO `users_areainfo` VALUES ('522701', '都匀市', '522700');
INSERT INTO `users_areainfo` VALUES ('522702', '福泉市', '522700');
INSERT INTO `users_areainfo` VALUES ('522722', '荔波县', '522700');
INSERT INTO `users_areainfo` VALUES ('522723', '贵定县', '522700');
INSERT INTO `users_areainfo` VALUES ('522725', '瓮安县', '522700');
INSERT INTO `users_areainfo` VALUES ('522726', '独山县', '522700');
INSERT INTO `users_areainfo` VALUES ('522727', '平塘县', '522700');
INSERT INTO `users_areainfo` VALUES ('522728', '罗甸县', '522700');
INSERT INTO `users_areainfo` VALUES ('522729', '长顺县', '522700');
INSERT INTO `users_areainfo` VALUES ('522730', '龙里县', '522700');
INSERT INTO `users_areainfo` VALUES ('522731', '惠水县', '522700');
INSERT INTO `users_areainfo` VALUES ('522732', '三都水族自治县', '522700');
INSERT INTO `users_areainfo` VALUES ('522733', '其它区', '522700');
INSERT INTO `users_areainfo` VALUES ('530000', '云南', '0');
INSERT INTO `users_areainfo` VALUES ('530100', '昆明', '530000');
INSERT INTO `users_areainfo` VALUES ('530102', '五华区', '530100');
INSERT INTO `users_areainfo` VALUES ('530103', '盘龙区', '530100');
INSERT INTO `users_areainfo` VALUES ('530111', '官渡区', '530100');
INSERT INTO `users_areainfo` VALUES ('530112', '西山区', '530100');
INSERT INTO `users_areainfo` VALUES ('530113', '东川区', '530100');
INSERT INTO `users_areainfo` VALUES ('530121', '呈贡县', '530100');
INSERT INTO `users_areainfo` VALUES ('530122', '晋宁县', '530100');
INSERT INTO `users_areainfo` VALUES ('530124', '富民县', '530100');
INSERT INTO `users_areainfo` VALUES ('530125', '宜良县', '530100');
INSERT INTO `users_areainfo` VALUES ('530126', '石林彝族自治县', '530100');
INSERT INTO `users_areainfo` VALUES ('530127', '嵩明县', '530100');
INSERT INTO `users_areainfo` VALUES ('530128', '禄劝彝族苗族自治县', '530100');
INSERT INTO `users_areainfo` VALUES ('530129', '寻甸回族彝族自治县', '530100');
INSERT INTO `users_areainfo` VALUES ('530181', '安宁市', '530100');
INSERT INTO `users_areainfo` VALUES ('530182', '其它区', '530100');
INSERT INTO `users_areainfo` VALUES ('530300', '曲靖', '530000');
INSERT INTO `users_areainfo` VALUES ('530302', '麒麟区', '530300');
INSERT INTO `users_areainfo` VALUES ('530321', '马龙县', '530300');
INSERT INTO `users_areainfo` VALUES ('530322', '陆良县', '530300');
INSERT INTO `users_areainfo` VALUES ('530323', '师宗县', '530300');
INSERT INTO `users_areainfo` VALUES ('530324', '罗平县', '530300');
INSERT INTO `users_areainfo` VALUES ('530325', '富源县', '530300');
INSERT INTO `users_areainfo` VALUES ('530326', '会泽县', '530300');
INSERT INTO `users_areainfo` VALUES ('530328', '沾益县', '530300');
INSERT INTO `users_areainfo` VALUES ('530381', '宣威市', '530300');
INSERT INTO `users_areainfo` VALUES ('530382', '其它区', '530300');
INSERT INTO `users_areainfo` VALUES ('530400', '玉溪', '530000');
INSERT INTO `users_areainfo` VALUES ('530402', '红塔区', '530400');
INSERT INTO `users_areainfo` VALUES ('530421', '江川县', '530400');
INSERT INTO `users_areainfo` VALUES ('530422', '澄江县', '530400');
INSERT INTO `users_areainfo` VALUES ('530423', '通海县', '530400');
INSERT INTO `users_areainfo` VALUES ('530424', '华宁县', '530400');
INSERT INTO `users_areainfo` VALUES ('530425', '易门县', '530400');
INSERT INTO `users_areainfo` VALUES ('530426', '峨山彝族自治县', '530400');
INSERT INTO `users_areainfo` VALUES ('530427', '新平彝族傣族自治县', '530400');
INSERT INTO `users_areainfo` VALUES ('530428', '元江哈尼族彝族傣族自治县', '530400');
INSERT INTO `users_areainfo` VALUES ('530429', '其它区', '530400');
INSERT INTO `users_areainfo` VALUES ('530500', '保山', '530000');
INSERT INTO `users_areainfo` VALUES ('530502', '隆阳区', '530500');
INSERT INTO `users_areainfo` VALUES ('530521', '施甸县', '530500');
INSERT INTO `users_areainfo` VALUES ('530522', '腾冲县', '530500');
INSERT INTO `users_areainfo` VALUES ('530523', '龙陵县', '530500');
INSERT INTO `users_areainfo` VALUES ('530524', '昌宁县', '530500');
INSERT INTO `users_areainfo` VALUES ('530525', '其它区', '530500');
INSERT INTO `users_areainfo` VALUES ('530600', '昭通', '530000');
INSERT INTO `users_areainfo` VALUES ('530602', '昭阳区', '530600');
INSERT INTO `users_areainfo` VALUES ('530621', '鲁甸县', '530600');
INSERT INTO `users_areainfo` VALUES ('530622', '巧家县', '530600');
INSERT INTO `users_areainfo` VALUES ('530623', '盐津县', '530600');
INSERT INTO `users_areainfo` VALUES ('530624', '大关县', '530600');
INSERT INTO `users_areainfo` VALUES ('530625', '永善县', '530600');
INSERT INTO `users_areainfo` VALUES ('530626', '绥江县', '530600');
INSERT INTO `users_areainfo` VALUES ('530627', '镇雄县', '530600');
INSERT INTO `users_areainfo` VALUES ('530628', '彝良县', '530600');
INSERT INTO `users_areainfo` VALUES ('530629', '威信县', '530600');
INSERT INTO `users_areainfo` VALUES ('530630', '水富县', '530600');
INSERT INTO `users_areainfo` VALUES ('530631', '其它区', '530600');
INSERT INTO `users_areainfo` VALUES ('530700', '丽江', '530000');
INSERT INTO `users_areainfo` VALUES ('530702', '古城区', '530700');
INSERT INTO `users_areainfo` VALUES ('530721', '玉龙纳西族自治县', '530700');
INSERT INTO `users_areainfo` VALUES ('530722', '永胜县', '530700');
INSERT INTO `users_areainfo` VALUES ('530723', '华坪县', '530700');
INSERT INTO `users_areainfo` VALUES ('530724', '宁蒗彝族自治县', '530700');
INSERT INTO `users_areainfo` VALUES ('530725', '其它区', '530700');
INSERT INTO `users_areainfo` VALUES ('530800', '思茅', '530000');
INSERT INTO `users_areainfo` VALUES ('530802', '翠云区', '530800');
INSERT INTO `users_areainfo` VALUES ('530821', '普洱哈尼族彝族自治县', '530800');
INSERT INTO `users_areainfo` VALUES ('530822', '墨江哈尼族自治县', '530800');
INSERT INTO `users_areainfo` VALUES ('530823', '景东彝族自治县', '530800');
INSERT INTO `users_areainfo` VALUES ('530824', '景谷傣族彝族自治县', '530800');
INSERT INTO `users_areainfo` VALUES ('530825', '镇沅彝族哈尼族拉祜族自治县', '530800');
INSERT INTO `users_areainfo` VALUES ('530826', '江城哈尼族彝族自治县', '530800');
INSERT INTO `users_areainfo` VALUES ('530827', '孟连傣族拉祜族佤族自治县', '530800');
INSERT INTO `users_areainfo` VALUES ('530828', '澜沧拉祜族自治县', '530800');
INSERT INTO `users_areainfo` VALUES ('530829', '西盟佤族自治县', '530800');
INSERT INTO `users_areainfo` VALUES ('530830', '其它区', '530800');
INSERT INTO `users_areainfo` VALUES ('530900', '临沧', '530000');
INSERT INTO `users_areainfo` VALUES ('530902', '临翔区', '530900');
INSERT INTO `users_areainfo` VALUES ('530921', '凤庆县', '530900');
INSERT INTO `users_areainfo` VALUES ('530922', '云县', '530900');
INSERT INTO `users_areainfo` VALUES ('530923', '永德县', '530900');
INSERT INTO `users_areainfo` VALUES ('530924', '镇康县', '530900');
INSERT INTO `users_areainfo` VALUES ('530925', '双江拉祜族佤族布朗族傣族自治县', '530900');
INSERT INTO `users_areainfo` VALUES ('530926', '耿马傣族佤族自治县', '530900');
INSERT INTO `users_areainfo` VALUES ('530927', '沧源佤族自治县', '530900');
INSERT INTO `users_areainfo` VALUES ('530928', '其它区', '530900');
INSERT INTO `users_areainfo` VALUES ('532300', '楚雄', '530000');
INSERT INTO `users_areainfo` VALUES ('532301', '楚雄市', '532300');
INSERT INTO `users_areainfo` VALUES ('532322', '双柏县', '532300');
INSERT INTO `users_areainfo` VALUES ('532323', '牟定县', '532300');
INSERT INTO `users_areainfo` VALUES ('532324', '南华县', '532300');
INSERT INTO `users_areainfo` VALUES ('532325', '姚安县', '532300');
INSERT INTO `users_areainfo` VALUES ('532326', '大姚县', '532300');
INSERT INTO `users_areainfo` VALUES ('532327', '永仁县', '532300');
INSERT INTO `users_areainfo` VALUES ('532328', '元谋县', '532300');
INSERT INTO `users_areainfo` VALUES ('532329', '武定县', '532300');
INSERT INTO `users_areainfo` VALUES ('532331', '禄丰县', '532300');
INSERT INTO `users_areainfo` VALUES ('532332', '其它区', '532300');
INSERT INTO `users_areainfo` VALUES ('532500', '红河', '530000');
INSERT INTO `users_areainfo` VALUES ('532501', '个旧市', '532500');
INSERT INTO `users_areainfo` VALUES ('532502', '开远市', '532500');
INSERT INTO `users_areainfo` VALUES ('532522', '蒙自县', '532500');
INSERT INTO `users_areainfo` VALUES ('532523', '屏边苗族自治县', '532500');
INSERT INTO `users_areainfo` VALUES ('532524', '建水县', '532500');
INSERT INTO `users_areainfo` VALUES ('532525', '石屏县', '532500');
INSERT INTO `users_areainfo` VALUES ('532526', '弥勒县', '532500');
INSERT INTO `users_areainfo` VALUES ('532527', '泸西县', '532500');
INSERT INTO `users_areainfo` VALUES ('532528', '元阳县', '532500');
INSERT INTO `users_areainfo` VALUES ('532529', '红河县', '532500');
INSERT INTO `users_areainfo` VALUES ('532530', '金平苗族瑶族傣族自治县', '532500');
INSERT INTO `users_areainfo` VALUES ('532531', '绿春县', '532500');
INSERT INTO `users_areainfo` VALUES ('532532', '河口瑶族自治县', '532500');
INSERT INTO `users_areainfo` VALUES ('532533', '其它区', '532500');
INSERT INTO `users_areainfo` VALUES ('532600', '文山', '530000');
INSERT INTO `users_areainfo` VALUES ('532621', '文山县', '532600');
INSERT INTO `users_areainfo` VALUES ('532622', '砚山县', '532600');
INSERT INTO `users_areainfo` VALUES ('532623', '西畴县', '532600');
INSERT INTO `users_areainfo` VALUES ('532624', '麻栗坡县', '532600');
INSERT INTO `users_areainfo` VALUES ('532625', '马关县', '532600');
INSERT INTO `users_areainfo` VALUES ('532626', '丘北县', '532600');
INSERT INTO `users_areainfo` VALUES ('532627', '广南县', '532600');
INSERT INTO `users_areainfo` VALUES ('532628', '富宁县', '532600');
INSERT INTO `users_areainfo` VALUES ('532629', '其它区', '532600');
INSERT INTO `users_areainfo` VALUES ('532800', '西双版纳', '530000');
INSERT INTO `users_areainfo` VALUES ('532801', '景洪市', '532800');
INSERT INTO `users_areainfo` VALUES ('532822', '勐海县', '532800');
INSERT INTO `users_areainfo` VALUES ('532823', '勐腊县', '532800');
INSERT INTO `users_areainfo` VALUES ('532824', '其它区', '532800');
INSERT INTO `users_areainfo` VALUES ('532900', '大理', '530000');
INSERT INTO `users_areainfo` VALUES ('532901', '大理市', '532900');
INSERT INTO `users_areainfo` VALUES ('532922', '漾濞彝族自治县', '532900');
INSERT INTO `users_areainfo` VALUES ('532923', '祥云县', '532900');
INSERT INTO `users_areainfo` VALUES ('532924', '宾川县', '532900');
INSERT INTO `users_areainfo` VALUES ('532925', '弥渡县', '532900');
INSERT INTO `users_areainfo` VALUES ('532926', '南涧彝族自治县', '532900');
INSERT INTO `users_areainfo` VALUES ('532927', '巍山彝族回族自治县', '532900');
INSERT INTO `users_areainfo` VALUES ('532928', '永平县', '532900');
INSERT INTO `users_areainfo` VALUES ('532929', '云龙县', '532900');
INSERT INTO `users_areainfo` VALUES ('532930', '洱源县', '532900');
INSERT INTO `users_areainfo` VALUES ('532931', '剑川县', '532900');
INSERT INTO `users_areainfo` VALUES ('532932', '鹤庆县', '532900');
INSERT INTO `users_areainfo` VALUES ('532933', '其它区', '532900');
INSERT INTO `users_areainfo` VALUES ('533100', '德宏', '530000');
INSERT INTO `users_areainfo` VALUES ('533102', '瑞丽市', '533100');
INSERT INTO `users_areainfo` VALUES ('533103', '潞西市', '533100');
INSERT INTO `users_areainfo` VALUES ('533122', '梁河县', '533100');
INSERT INTO `users_areainfo` VALUES ('533123', '盈江县', '533100');
INSERT INTO `users_areainfo` VALUES ('533124', '陇川县', '533100');
INSERT INTO `users_areainfo` VALUES ('533125', '其它区', '533100');
INSERT INTO `users_areainfo` VALUES ('533300', '怒江', '530000');
INSERT INTO `users_areainfo` VALUES ('533321', '泸水县', '533300');
INSERT INTO `users_areainfo` VALUES ('533323', '福贡县', '533300');
INSERT INTO `users_areainfo` VALUES ('533324', '贡山独龙族怒族自治县', '533300');
INSERT INTO `users_areainfo` VALUES ('533325', '兰坪白族普米族自治县', '533300');
INSERT INTO `users_areainfo` VALUES ('533326', '其它区', '533300');
INSERT INTO `users_areainfo` VALUES ('533400', '迪庆', '530000');
INSERT INTO `users_areainfo` VALUES ('533421', '香格里拉县', '533400');
INSERT INTO `users_areainfo` VALUES ('533422', '德钦县', '533400');
INSERT INTO `users_areainfo` VALUES ('533423', '维西傈僳族自治县', '533400');
INSERT INTO `users_areainfo` VALUES ('533424', '其它区', '533400');
INSERT INTO `users_areainfo` VALUES ('540000', '西藏', '0');
INSERT INTO `users_areainfo` VALUES ('540100', '拉萨', '540000');
INSERT INTO `users_areainfo` VALUES ('540102', '城关区', '540100');
INSERT INTO `users_areainfo` VALUES ('540121', '林周县', '540100');
INSERT INTO `users_areainfo` VALUES ('540122', '当雄县', '540100');
INSERT INTO `users_areainfo` VALUES ('540123', '尼木县', '540100');
INSERT INTO `users_areainfo` VALUES ('540124', '曲水县', '540100');
INSERT INTO `users_areainfo` VALUES ('540125', '堆龙德庆县', '540100');
INSERT INTO `users_areainfo` VALUES ('540126', '达孜县', '540100');
INSERT INTO `users_areainfo` VALUES ('540127', '墨竹工卡县', '540100');
INSERT INTO `users_areainfo` VALUES ('540128', '其它区', '540100');
INSERT INTO `users_areainfo` VALUES ('542100', '昌都', '540000');
INSERT INTO `users_areainfo` VALUES ('542121', '昌都县', '542100');
INSERT INTO `users_areainfo` VALUES ('542122', '江达县', '542100');
INSERT INTO `users_areainfo` VALUES ('542123', '贡觉县', '542100');
INSERT INTO `users_areainfo` VALUES ('542124', '类乌齐县', '542100');
INSERT INTO `users_areainfo` VALUES ('542125', '丁青县', '542100');
INSERT INTO `users_areainfo` VALUES ('542126', '察雅县', '542100');
INSERT INTO `users_areainfo` VALUES ('542127', '八宿县', '542100');
INSERT INTO `users_areainfo` VALUES ('542128', '左贡县', '542100');
INSERT INTO `users_areainfo` VALUES ('542129', '芒康县', '542100');
INSERT INTO `users_areainfo` VALUES ('542132', '洛隆县', '542100');
INSERT INTO `users_areainfo` VALUES ('542133', '边坝县', '542100');
INSERT INTO `users_areainfo` VALUES ('542134', '其它区', '542100');
INSERT INTO `users_areainfo` VALUES ('542200', '山南', '540000');
INSERT INTO `users_areainfo` VALUES ('542221', '乃东县', '542200');
INSERT INTO `users_areainfo` VALUES ('542222', '扎囊县', '542200');
INSERT INTO `users_areainfo` VALUES ('542223', '贡嘎县', '542200');
INSERT INTO `users_areainfo` VALUES ('542224', '桑日县', '542200');
INSERT INTO `users_areainfo` VALUES ('542225', '琼结县', '542200');
INSERT INTO `users_areainfo` VALUES ('542226', '曲松县', '542200');
INSERT INTO `users_areainfo` VALUES ('542227', '措美县', '542200');
INSERT INTO `users_areainfo` VALUES ('542228', '洛扎县', '542200');
INSERT INTO `users_areainfo` VALUES ('542229', '加查县', '542200');
INSERT INTO `users_areainfo` VALUES ('542231', '隆子县', '542200');
INSERT INTO `users_areainfo` VALUES ('542232', '错那县', '542200');
INSERT INTO `users_areainfo` VALUES ('542233', '浪卡子县', '542200');
INSERT INTO `users_areainfo` VALUES ('542234', '其它区', '542200');
INSERT INTO `users_areainfo` VALUES ('542300', '日喀则', '540000');
INSERT INTO `users_areainfo` VALUES ('542301', '日喀则市', '542300');
INSERT INTO `users_areainfo` VALUES ('542322', '南木林县', '542300');
INSERT INTO `users_areainfo` VALUES ('542323', '江孜县', '542300');
INSERT INTO `users_areainfo` VALUES ('542324', '定日县', '542300');
INSERT INTO `users_areainfo` VALUES ('542325', '萨迦县', '542300');
INSERT INTO `users_areainfo` VALUES ('542326', '拉孜县', '542300');
INSERT INTO `users_areainfo` VALUES ('542327', '昂仁县', '542300');
INSERT INTO `users_areainfo` VALUES ('542328', '谢通门县', '542300');
INSERT INTO `users_areainfo` VALUES ('542329', '白朗县', '542300');
INSERT INTO `users_areainfo` VALUES ('542330', '仁布县', '542300');
INSERT INTO `users_areainfo` VALUES ('542331', '康马县', '542300');
INSERT INTO `users_areainfo` VALUES ('542332', '定结县', '542300');
INSERT INTO `users_areainfo` VALUES ('542333', '仲巴县', '542300');
INSERT INTO `users_areainfo` VALUES ('542334', '亚东县', '542300');
INSERT INTO `users_areainfo` VALUES ('542335', '吉隆县', '542300');
INSERT INTO `users_areainfo` VALUES ('542336', '聂拉木县', '542300');
INSERT INTO `users_areainfo` VALUES ('542337', '萨嘎县', '542300');
INSERT INTO `users_areainfo` VALUES ('542338', '岗巴县', '542300');
INSERT INTO `users_areainfo` VALUES ('542339', '其它区', '542300');
INSERT INTO `users_areainfo` VALUES ('542400', '那曲', '540000');
INSERT INTO `users_areainfo` VALUES ('542421', '那曲县', '542400');
INSERT INTO `users_areainfo` VALUES ('542422', '嘉黎县', '542400');
INSERT INTO `users_areainfo` VALUES ('542423', '比如县', '542400');
INSERT INTO `users_areainfo` VALUES ('542424', '聂荣县', '542400');
INSERT INTO `users_areainfo` VALUES ('542425', '安多县', '542400');
INSERT INTO `users_areainfo` VALUES ('542426', '申扎县', '542400');
INSERT INTO `users_areainfo` VALUES ('542427', '索县', '542400');
INSERT INTO `users_areainfo` VALUES ('542428', '班戈县', '542400');
INSERT INTO `users_areainfo` VALUES ('542429', '巴青县', '542400');
INSERT INTO `users_areainfo` VALUES ('542430', '尼玛县', '542400');
INSERT INTO `users_areainfo` VALUES ('542431', '其它区', '542400');
INSERT INTO `users_areainfo` VALUES ('542500', '阿里', '540000');
INSERT INTO `users_areainfo` VALUES ('542521', '普兰县', '542500');
INSERT INTO `users_areainfo` VALUES ('542522', '札达县', '542500');
INSERT INTO `users_areainfo` VALUES ('542523', '噶尔县', '542500');
INSERT INTO `users_areainfo` VALUES ('542524', '日土县', '542500');
INSERT INTO `users_areainfo` VALUES ('542525', '革吉县', '542500');
INSERT INTO `users_areainfo` VALUES ('542526', '改则县', '542500');
INSERT INTO `users_areainfo` VALUES ('542527', '措勤县', '542500');
INSERT INTO `users_areainfo` VALUES ('542528', '其它区', '542500');
INSERT INTO `users_areainfo` VALUES ('542600', '林芝', '540000');
INSERT INTO `users_areainfo` VALUES ('542621', '林芝县', '542600');
INSERT INTO `users_areainfo` VALUES ('542622', '工布江达县', '542600');
INSERT INTO `users_areainfo` VALUES ('542623', '米林县', '542600');
INSERT INTO `users_areainfo` VALUES ('542624', '墨脱县', '542600');
INSERT INTO `users_areainfo` VALUES ('542625', '波密县', '542600');
INSERT INTO `users_areainfo` VALUES ('542626', '察隅县', '542600');
INSERT INTO `users_areainfo` VALUES ('542627', '朗县', '542600');
INSERT INTO `users_areainfo` VALUES ('542628', '其它区', '542600');
INSERT INTO `users_areainfo` VALUES ('610000', '陕西', '0');
INSERT INTO `users_areainfo` VALUES ('610100', '西安', '610000');
INSERT INTO `users_areainfo` VALUES ('610102', '新城区', '610100');
INSERT INTO `users_areainfo` VALUES ('610103', '碑林区', '610100');
INSERT INTO `users_areainfo` VALUES ('610104', '莲湖区', '610100');
INSERT INTO `users_areainfo` VALUES ('610111', '灞桥区', '610100');
INSERT INTO `users_areainfo` VALUES ('610112', '未央区', '610100');
INSERT INTO `users_areainfo` VALUES ('610113', '雁塔区', '610100');
INSERT INTO `users_areainfo` VALUES ('610114', '阎良区', '610100');
INSERT INTO `users_areainfo` VALUES ('610115', '临潼区', '610100');
INSERT INTO `users_areainfo` VALUES ('610116', '长安区', '610100');
INSERT INTO `users_areainfo` VALUES ('610122', '蓝田县', '610100');
INSERT INTO `users_areainfo` VALUES ('610124', '周至县', '610100');
INSERT INTO `users_areainfo` VALUES ('610125', '户县', '610100');
INSERT INTO `users_areainfo` VALUES ('610126', '高陵县', '610100');
INSERT INTO `users_areainfo` VALUES ('610127', '其它区', '610100');
INSERT INTO `users_areainfo` VALUES ('610200', '铜川', '610000');
INSERT INTO `users_areainfo` VALUES ('610202', '王益区', '610200');
INSERT INTO `users_areainfo` VALUES ('610203', '印台区', '610200');
INSERT INTO `users_areainfo` VALUES ('610204', '耀州区', '610200');
INSERT INTO `users_areainfo` VALUES ('610222', '宜君县', '610200');
INSERT INTO `users_areainfo` VALUES ('610223', '其它区', '610200');
INSERT INTO `users_areainfo` VALUES ('610300', '宝鸡', '610000');
INSERT INTO `users_areainfo` VALUES ('610302', '渭滨区', '610300');
INSERT INTO `users_areainfo` VALUES ('610303', '金台区', '610300');
INSERT INTO `users_areainfo` VALUES ('610304', '陈仓区', '610300');
INSERT INTO `users_areainfo` VALUES ('610322', '凤翔县', '610300');
INSERT INTO `users_areainfo` VALUES ('610323', '岐山县', '610300');
INSERT INTO `users_areainfo` VALUES ('610324', '扶风县', '610300');
INSERT INTO `users_areainfo` VALUES ('610326', '眉县', '610300');
INSERT INTO `users_areainfo` VALUES ('610327', '陇县', '610300');
INSERT INTO `users_areainfo` VALUES ('610328', '千阳县', '610300');
INSERT INTO `users_areainfo` VALUES ('610329', '麟游县', '610300');
INSERT INTO `users_areainfo` VALUES ('610330', '凤县', '610300');
INSERT INTO `users_areainfo` VALUES ('610331', '太白县', '610300');
INSERT INTO `users_areainfo` VALUES ('610332', '其它区', '610300');
INSERT INTO `users_areainfo` VALUES ('610400', '咸阳', '610000');
INSERT INTO `users_areainfo` VALUES ('610402', '秦都区', '610400');
INSERT INTO `users_areainfo` VALUES ('610403', '杨凌区', '610400');
INSERT INTO `users_areainfo` VALUES ('610404', '渭城区', '610400');
INSERT INTO `users_areainfo` VALUES ('610422', '三原县', '610400');
INSERT INTO `users_areainfo` VALUES ('610423', '泾阳县', '610400');
INSERT INTO `users_areainfo` VALUES ('610424', '乾县', '610400');
INSERT INTO `users_areainfo` VALUES ('610425', '礼泉县', '610400');
INSERT INTO `users_areainfo` VALUES ('610426', '永寿县', '610400');
INSERT INTO `users_areainfo` VALUES ('610427', '彬县', '610400');
INSERT INTO `users_areainfo` VALUES ('610428', '长武县', '610400');
INSERT INTO `users_areainfo` VALUES ('610429', '旬邑县', '610400');
INSERT INTO `users_areainfo` VALUES ('610430', '淳化县', '610400');
INSERT INTO `users_areainfo` VALUES ('610431', '武功县', '610400');
INSERT INTO `users_areainfo` VALUES ('610481', '兴平市', '610400');
INSERT INTO `users_areainfo` VALUES ('610482', '其它区', '610400');
INSERT INTO `users_areainfo` VALUES ('610500', '渭南', '610000');
INSERT INTO `users_areainfo` VALUES ('610502', '临渭区', '610500');
INSERT INTO `users_areainfo` VALUES ('610521', '华县', '610500');
INSERT INTO `users_areainfo` VALUES ('610522', '潼关县', '610500');
INSERT INTO `users_areainfo` VALUES ('610523', '大荔县', '610500');
INSERT INTO `users_areainfo` VALUES ('610524', '合阳县', '610500');
INSERT INTO `users_areainfo` VALUES ('610525', '澄城县', '610500');
INSERT INTO `users_areainfo` VALUES ('610526', '蒲城县', '610500');
INSERT INTO `users_areainfo` VALUES ('610527', '白水县', '610500');
INSERT INTO `users_areainfo` VALUES ('610528', '富平县', '610500');
INSERT INTO `users_areainfo` VALUES ('610581', '韩城市', '610500');
INSERT INTO `users_areainfo` VALUES ('610582', '华阴市', '610500');
INSERT INTO `users_areainfo` VALUES ('610583', '其它区', '610500');
INSERT INTO `users_areainfo` VALUES ('610600', '延安', '610000');
INSERT INTO `users_areainfo` VALUES ('610602', '宝塔区', '610600');
INSERT INTO `users_areainfo` VALUES ('610621', '延长县', '610600');
INSERT INTO `users_areainfo` VALUES ('610622', '延川县', '610600');
INSERT INTO `users_areainfo` VALUES ('610623', '子长县', '610600');
INSERT INTO `users_areainfo` VALUES ('610624', '安塞县', '610600');
INSERT INTO `users_areainfo` VALUES ('610625', '志丹县', '610600');
INSERT INTO `users_areainfo` VALUES ('610626', '吴起县', '610600');
INSERT INTO `users_areainfo` VALUES ('610627', '甘泉县', '610600');
INSERT INTO `users_areainfo` VALUES ('610628', '富县', '610600');
INSERT INTO `users_areainfo` VALUES ('610629', '洛川县', '610600');
INSERT INTO `users_areainfo` VALUES ('610630', '宜川县', '610600');
INSERT INTO `users_areainfo` VALUES ('610631', '黄龙县', '610600');
INSERT INTO `users_areainfo` VALUES ('610632', '黄陵县', '610600');
INSERT INTO `users_areainfo` VALUES ('610633', '其它区', '610600');
INSERT INTO `users_areainfo` VALUES ('610700', '汉中', '610000');
INSERT INTO `users_areainfo` VALUES ('610702', '汉台区', '610700');
INSERT INTO `users_areainfo` VALUES ('610721', '南郑县', '610700');
INSERT INTO `users_areainfo` VALUES ('610722', '城固县', '610700');
INSERT INTO `users_areainfo` VALUES ('610723', '洋县', '610700');
INSERT INTO `users_areainfo` VALUES ('610724', '西乡县', '610700');
INSERT INTO `users_areainfo` VALUES ('610725', '勉县', '610700');
INSERT INTO `users_areainfo` VALUES ('610726', '宁强县', '610700');
INSERT INTO `users_areainfo` VALUES ('610727', '略阳县', '610700');
INSERT INTO `users_areainfo` VALUES ('610728', '镇巴县', '610700');
INSERT INTO `users_areainfo` VALUES ('610729', '留坝县', '610700');
INSERT INTO `users_areainfo` VALUES ('610730', '佛坪县', '610700');
INSERT INTO `users_areainfo` VALUES ('610731', '其它区', '610700');
INSERT INTO `users_areainfo` VALUES ('610800', '榆林', '610000');
INSERT INTO `users_areainfo` VALUES ('610802', '榆阳区', '610800');
INSERT INTO `users_areainfo` VALUES ('610821', '神木县', '610800');
INSERT INTO `users_areainfo` VALUES ('610822', '府谷县', '610800');
INSERT INTO `users_areainfo` VALUES ('610823', '横山县', '610800');
INSERT INTO `users_areainfo` VALUES ('610824', '靖边县', '610800');
INSERT INTO `users_areainfo` VALUES ('610825', '定边县', '610800');
INSERT INTO `users_areainfo` VALUES ('610826', '绥德县', '610800');
INSERT INTO `users_areainfo` VALUES ('610827', '米脂县', '610800');
INSERT INTO `users_areainfo` VALUES ('610828', '佳县', '610800');
INSERT INTO `users_areainfo` VALUES ('610829', '吴堡县', '610800');
INSERT INTO `users_areainfo` VALUES ('610830', '清涧县', '610800');
INSERT INTO `users_areainfo` VALUES ('610831', '子洲县', '610800');
INSERT INTO `users_areainfo` VALUES ('610832', '其它区', '610800');
INSERT INTO `users_areainfo` VALUES ('610900', '安康', '610000');
INSERT INTO `users_areainfo` VALUES ('610902', '汉滨区', '610900');
INSERT INTO `users_areainfo` VALUES ('610921', '汉阴县', '610900');
INSERT INTO `users_areainfo` VALUES ('610922', '石泉县', '610900');
INSERT INTO `users_areainfo` VALUES ('610923', '宁陕县', '610900');
INSERT INTO `users_areainfo` VALUES ('610924', '紫阳县', '610900');
INSERT INTO `users_areainfo` VALUES ('610925', '岚皋县', '610900');
INSERT INTO `users_areainfo` VALUES ('610926', '平利县', '610900');
INSERT INTO `users_areainfo` VALUES ('610927', '镇坪县', '610900');
INSERT INTO `users_areainfo` VALUES ('610928', '旬阳县', '610900');
INSERT INTO `users_areainfo` VALUES ('610929', '白河县', '610900');
INSERT INTO `users_areainfo` VALUES ('610930', '其它区', '610900');
INSERT INTO `users_areainfo` VALUES ('611000', '商洛', '610000');
INSERT INTO `users_areainfo` VALUES ('611002', '商州区', '611000');
INSERT INTO `users_areainfo` VALUES ('611021', '洛南县', '611000');
INSERT INTO `users_areainfo` VALUES ('611022', '丹凤县', '611000');
INSERT INTO `users_areainfo` VALUES ('611023', '商南县', '611000');
INSERT INTO `users_areainfo` VALUES ('611024', '山阳县', '611000');
INSERT INTO `users_areainfo` VALUES ('611025', '镇安县', '611000');
INSERT INTO `users_areainfo` VALUES ('611026', '柞水县', '611000');
INSERT INTO `users_areainfo` VALUES ('611027', '其它区', '611000');
INSERT INTO `users_areainfo` VALUES ('620000', '甘肃', '0');
INSERT INTO `users_areainfo` VALUES ('620100', '兰州', '620000');
INSERT INTO `users_areainfo` VALUES ('620102', '城关区', '620100');
INSERT INTO `users_areainfo` VALUES ('620103', '七里河区', '620100');
INSERT INTO `users_areainfo` VALUES ('620104', '西固区', '620100');
INSERT INTO `users_areainfo` VALUES ('620105', '安宁区', '620100');
INSERT INTO `users_areainfo` VALUES ('620111', '红古区', '620100');
INSERT INTO `users_areainfo` VALUES ('620121', '永登县', '620100');
INSERT INTO `users_areainfo` VALUES ('620122', '皋兰县', '620100');
INSERT INTO `users_areainfo` VALUES ('620123', '榆中县', '620100');
INSERT INTO `users_areainfo` VALUES ('620124', '其它区', '620100');
INSERT INTO `users_areainfo` VALUES ('620200', '嘉峪关', '620000');
INSERT INTO `users_areainfo` VALUES ('620300', '金昌', '620000');
INSERT INTO `users_areainfo` VALUES ('620302', '金川区', '620300');
INSERT INTO `users_areainfo` VALUES ('620321', '永昌县', '620300');
INSERT INTO `users_areainfo` VALUES ('620322', '其它区', '620300');
INSERT INTO `users_areainfo` VALUES ('620400', '白银', '620000');
INSERT INTO `users_areainfo` VALUES ('620402', '白银区', '620400');
INSERT INTO `users_areainfo` VALUES ('620403', '平川区', '620400');
INSERT INTO `users_areainfo` VALUES ('620421', '靖远县', '620400');
INSERT INTO `users_areainfo` VALUES ('620422', '会宁县', '620400');
INSERT INTO `users_areainfo` VALUES ('620423', '景泰县', '620400');
INSERT INTO `users_areainfo` VALUES ('620424', '其它区', '620400');
INSERT INTO `users_areainfo` VALUES ('620500', '天水', '620000');
INSERT INTO `users_areainfo` VALUES ('620502', '秦州区', '620500');
INSERT INTO `users_areainfo` VALUES ('620503', '麦积区', '620500');
INSERT INTO `users_areainfo` VALUES ('620521', '清水县', '620500');
INSERT INTO `users_areainfo` VALUES ('620522', '秦安县', '620500');
INSERT INTO `users_areainfo` VALUES ('620523', '甘谷县', '620500');
INSERT INTO `users_areainfo` VALUES ('620524', '武山县', '620500');
INSERT INTO `users_areainfo` VALUES ('620525', '张家川回族自治县', '620500');
INSERT INTO `users_areainfo` VALUES ('620526', '其它区', '620500');
INSERT INTO `users_areainfo` VALUES ('620600', '武威', '620000');
INSERT INTO `users_areainfo` VALUES ('620602', '凉州区', '620600');
INSERT INTO `users_areainfo` VALUES ('620621', '民勤县', '620600');
INSERT INTO `users_areainfo` VALUES ('620622', '古浪县', '620600');
INSERT INTO `users_areainfo` VALUES ('620623', '天祝藏族自治县', '620600');
INSERT INTO `users_areainfo` VALUES ('620624', '其它区', '620600');
INSERT INTO `users_areainfo` VALUES ('620700', '张掖', '620000');
INSERT INTO `users_areainfo` VALUES ('620702', '甘州区', '620700');
INSERT INTO `users_areainfo` VALUES ('620721', '肃南裕固族自治县', '620700');
INSERT INTO `users_areainfo` VALUES ('620722', '民乐县', '620700');
INSERT INTO `users_areainfo` VALUES ('620723', '临泽县', '620700');
INSERT INTO `users_areainfo` VALUES ('620724', '高台县', '620700');
INSERT INTO `users_areainfo` VALUES ('620725', '山丹县', '620700');
INSERT INTO `users_areainfo` VALUES ('620726', '其它区', '620700');
INSERT INTO `users_areainfo` VALUES ('620800', '平凉', '620000');
INSERT INTO `users_areainfo` VALUES ('620802', '崆峒区', '620800');
INSERT INTO `users_areainfo` VALUES ('620821', '泾川县', '620800');
INSERT INTO `users_areainfo` VALUES ('620822', '灵台县', '620800');
INSERT INTO `users_areainfo` VALUES ('620823', '崇信县', '620800');
INSERT INTO `users_areainfo` VALUES ('620824', '华亭县', '620800');
INSERT INTO `users_areainfo` VALUES ('620825', '庄浪县', '620800');
INSERT INTO `users_areainfo` VALUES ('620826', '静宁县', '620800');
INSERT INTO `users_areainfo` VALUES ('620827', '其它区', '620800');
INSERT INTO `users_areainfo` VALUES ('620900', '酒泉', '620000');
INSERT INTO `users_areainfo` VALUES ('620902', '肃州区', '620900');
INSERT INTO `users_areainfo` VALUES ('620921', '金塔县', '620900');
INSERT INTO `users_areainfo` VALUES ('620922', '安西县', '620900');
INSERT INTO `users_areainfo` VALUES ('620923', '肃北蒙古族自治县', '620900');
INSERT INTO `users_areainfo` VALUES ('620924', '阿克塞哈萨克族自治县', '620900');
INSERT INTO `users_areainfo` VALUES ('620981', '玉门市', '620900');
INSERT INTO `users_areainfo` VALUES ('620982', '敦煌市', '620900');
INSERT INTO `users_areainfo` VALUES ('620983', '其它区', '620900');
INSERT INTO `users_areainfo` VALUES ('621000', '庆阳', '620000');
INSERT INTO `users_areainfo` VALUES ('621002', '西峰区', '621000');
INSERT INTO `users_areainfo` VALUES ('621021', '庆城县', '621000');
INSERT INTO `users_areainfo` VALUES ('621022', '环县', '621000');
INSERT INTO `users_areainfo` VALUES ('621023', '华池县', '621000');
INSERT INTO `users_areainfo` VALUES ('621024', '合水县', '621000');
INSERT INTO `users_areainfo` VALUES ('621025', '正宁县', '621000');
INSERT INTO `users_areainfo` VALUES ('621026', '宁县', '621000');
INSERT INTO `users_areainfo` VALUES ('621027', '镇原县', '621000');
INSERT INTO `users_areainfo` VALUES ('621028', '其它区', '621000');
INSERT INTO `users_areainfo` VALUES ('621100', '定西', '620000');
INSERT INTO `users_areainfo` VALUES ('621102', '安定区', '621100');
INSERT INTO `users_areainfo` VALUES ('621121', '通渭县', '621100');
INSERT INTO `users_areainfo` VALUES ('621122', '陇西县', '621100');
INSERT INTO `users_areainfo` VALUES ('621123', '渭源县', '621100');
INSERT INTO `users_areainfo` VALUES ('621124', '临洮县', '621100');
INSERT INTO `users_areainfo` VALUES ('621125', '漳县', '621100');
INSERT INTO `users_areainfo` VALUES ('621126', '岷县', '621100');
INSERT INTO `users_areainfo` VALUES ('621127', '其它区', '621100');
INSERT INTO `users_areainfo` VALUES ('621200', '陇南', '620000');
INSERT INTO `users_areainfo` VALUES ('621202', '武都区', '621200');
INSERT INTO `users_areainfo` VALUES ('621221', '成县', '621200');
INSERT INTO `users_areainfo` VALUES ('621222', '文县', '621200');
INSERT INTO `users_areainfo` VALUES ('621223', '宕昌县', '621200');
INSERT INTO `users_areainfo` VALUES ('621224', '康县', '621200');
INSERT INTO `users_areainfo` VALUES ('621225', '西和县', '621200');
INSERT INTO `users_areainfo` VALUES ('621226', '礼县', '621200');
INSERT INTO `users_areainfo` VALUES ('621227', '徽县', '621200');
INSERT INTO `users_areainfo` VALUES ('621228', '两当县', '621200');
INSERT INTO `users_areainfo` VALUES ('621229', '其它区', '621200');
INSERT INTO `users_areainfo` VALUES ('622900', '临夏', '620000');
INSERT INTO `users_areainfo` VALUES ('622901', '临夏市', '622900');
INSERT INTO `users_areainfo` VALUES ('622921', '临夏县', '622900');
INSERT INTO `users_areainfo` VALUES ('622922', '康乐县', '622900');
INSERT INTO `users_areainfo` VALUES ('622923', '永靖县', '622900');
INSERT INTO `users_areainfo` VALUES ('622924', '广河县', '622900');
INSERT INTO `users_areainfo` VALUES ('622925', '和政县', '622900');
INSERT INTO `users_areainfo` VALUES ('622926', '东乡族自治县', '622900');
INSERT INTO `users_areainfo` VALUES ('622927', '积石山保安族东乡族撒拉族自治县', '622900');
INSERT INTO `users_areainfo` VALUES ('622928', '其它区', '622900');
INSERT INTO `users_areainfo` VALUES ('623000', '甘南', '620000');
INSERT INTO `users_areainfo` VALUES ('623001', '合作市', '623000');
INSERT INTO `users_areainfo` VALUES ('623021', '临潭县', '623000');
INSERT INTO `users_areainfo` VALUES ('623022', '卓尼县', '623000');
INSERT INTO `users_areainfo` VALUES ('623023', '舟曲县', '623000');
INSERT INTO `users_areainfo` VALUES ('623024', '迭部县', '623000');
INSERT INTO `users_areainfo` VALUES ('623025', '玛曲县', '623000');
INSERT INTO `users_areainfo` VALUES ('623026', '碌曲县', '623000');
INSERT INTO `users_areainfo` VALUES ('623027', '夏河县', '623000');
INSERT INTO `users_areainfo` VALUES ('623028', '其它区', '623000');
INSERT INTO `users_areainfo` VALUES ('630000', '青海', '0');
INSERT INTO `users_areainfo` VALUES ('630100', '西宁', '630000');
INSERT INTO `users_areainfo` VALUES ('630102', '城东区', '630100');
INSERT INTO `users_areainfo` VALUES ('630103', '城中区', '630100');
INSERT INTO `users_areainfo` VALUES ('630104', '城西区', '630100');
INSERT INTO `users_areainfo` VALUES ('630105', '城北区', '630100');
INSERT INTO `users_areainfo` VALUES ('630121', '大通回族土族自治县', '630100');
INSERT INTO `users_areainfo` VALUES ('630122', '湟中县', '630100');
INSERT INTO `users_areainfo` VALUES ('630123', '湟源县', '630100');
INSERT INTO `users_areainfo` VALUES ('630124', '其它区', '630100');
INSERT INTO `users_areainfo` VALUES ('632100', '海东', '630000');
INSERT INTO `users_areainfo` VALUES ('632121', '平安县', '632100');
INSERT INTO `users_areainfo` VALUES ('632122', '民和回族土族自治县', '632100');
INSERT INTO `users_areainfo` VALUES ('632123', '乐都县', '632100');
INSERT INTO `users_areainfo` VALUES ('632126', '互助土族自治县', '632100');
INSERT INTO `users_areainfo` VALUES ('632127', '化隆回族自治县', '632100');
INSERT INTO `users_areainfo` VALUES ('632128', '循化撒拉族自治县', '632100');
INSERT INTO `users_areainfo` VALUES ('632129', '其它区', '632100');
INSERT INTO `users_areainfo` VALUES ('632200', '海北', '630000');
INSERT INTO `users_areainfo` VALUES ('632221', '门源回族自治县', '632200');
INSERT INTO `users_areainfo` VALUES ('632222', '祁连县', '632200');
INSERT INTO `users_areainfo` VALUES ('632223', '海晏县', '632200');
INSERT INTO `users_areainfo` VALUES ('632224', '刚察县', '632200');
INSERT INTO `users_areainfo` VALUES ('632225', '其它区', '632200');
INSERT INTO `users_areainfo` VALUES ('632300', '黄南', '630000');
INSERT INTO `users_areainfo` VALUES ('632321', '同仁县', '632300');
INSERT INTO `users_areainfo` VALUES ('632322', '尖扎县', '632300');
INSERT INTO `users_areainfo` VALUES ('632323', '泽库县', '632300');
INSERT INTO `users_areainfo` VALUES ('632324', '河南蒙古族自治县', '632300');
INSERT INTO `users_areainfo` VALUES ('632325', '其它区', '632300');
INSERT INTO `users_areainfo` VALUES ('632500', '海南', '630000');
INSERT INTO `users_areainfo` VALUES ('632521', '共和县', '632500');
INSERT INTO `users_areainfo` VALUES ('632522', '同德县', '632500');
INSERT INTO `users_areainfo` VALUES ('632523', '贵德县', '632500');
INSERT INTO `users_areainfo` VALUES ('632524', '兴海县', '632500');
INSERT INTO `users_areainfo` VALUES ('632525', '贵南县', '632500');
INSERT INTO `users_areainfo` VALUES ('632526', '其它区', '632500');
INSERT INTO `users_areainfo` VALUES ('632600', '果洛', '630000');
INSERT INTO `users_areainfo` VALUES ('632621', '玛沁县', '632600');
INSERT INTO `users_areainfo` VALUES ('632622', '班玛县', '632600');
INSERT INTO `users_areainfo` VALUES ('632623', '甘德县', '632600');
INSERT INTO `users_areainfo` VALUES ('632624', '达日县', '632600');
INSERT INTO `users_areainfo` VALUES ('632625', '久治县', '632600');
INSERT INTO `users_areainfo` VALUES ('632626', '玛多县', '632600');
INSERT INTO `users_areainfo` VALUES ('632627', '其它区', '632600');
INSERT INTO `users_areainfo` VALUES ('632700', '玉树', '630000');
INSERT INTO `users_areainfo` VALUES ('632721', '玉树县', '632700');
INSERT INTO `users_areainfo` VALUES ('632722', '杂多县', '632700');
INSERT INTO `users_areainfo` VALUES ('632723', '称多县', '632700');
INSERT INTO `users_areainfo` VALUES ('632724', '治多县', '632700');
INSERT INTO `users_areainfo` VALUES ('632725', '囊谦县', '632700');
INSERT INTO `users_areainfo` VALUES ('632726', '曲麻莱县', '632700');
INSERT INTO `users_areainfo` VALUES ('632727', '其它区', '632700');
INSERT INTO `users_areainfo` VALUES ('632800', '海西', '630000');
INSERT INTO `users_areainfo` VALUES ('632801', '格尔木市', '632800');
INSERT INTO `users_areainfo` VALUES ('632802', '德令哈市', '632800');
INSERT INTO `users_areainfo` VALUES ('632821', '乌兰县', '632800');
INSERT INTO `users_areainfo` VALUES ('632822', '都兰县', '632800');
INSERT INTO `users_areainfo` VALUES ('632823', '天峻县', '632800');
INSERT INTO `users_areainfo` VALUES ('632824', '其它区', '632800');
INSERT INTO `users_areainfo` VALUES ('640000', '宁夏', '0');
INSERT INTO `users_areainfo` VALUES ('640100', '银川', '640000');
INSERT INTO `users_areainfo` VALUES ('640104', '兴庆区', '640100');
INSERT INTO `users_areainfo` VALUES ('640105', '西夏区', '640100');
INSERT INTO `users_areainfo` VALUES ('640106', '金凤区', '640100');
INSERT INTO `users_areainfo` VALUES ('640121', '永宁县', '640100');
INSERT INTO `users_areainfo` VALUES ('640122', '贺兰县', '640100');
INSERT INTO `users_areainfo` VALUES ('640181', '灵武市', '640100');
INSERT INTO `users_areainfo` VALUES ('640182', '其它区', '640100');
INSERT INTO `users_areainfo` VALUES ('640200', '石嘴山', '640000');
INSERT INTO `users_areainfo` VALUES ('640202', '大武口区', '640200');
INSERT INTO `users_areainfo` VALUES ('640205', '惠农区', '640200');
INSERT INTO `users_areainfo` VALUES ('640221', '平罗县', '640200');
INSERT INTO `users_areainfo` VALUES ('640222', '其它区', '640200');
INSERT INTO `users_areainfo` VALUES ('640300', '吴忠', '640000');
INSERT INTO `users_areainfo` VALUES ('640302', '利通区', '640300');
INSERT INTO `users_areainfo` VALUES ('640323', '盐池县', '640300');
INSERT INTO `users_areainfo` VALUES ('640324', '同心县', '640300');
INSERT INTO `users_areainfo` VALUES ('640381', '青铜峡市', '640300');
INSERT INTO `users_areainfo` VALUES ('640382', '其它区', '640300');
INSERT INTO `users_areainfo` VALUES ('640400', '固原', '640000');
INSERT INTO `users_areainfo` VALUES ('640402', '原州区', '640400');
INSERT INTO `users_areainfo` VALUES ('640422', '西吉县', '640400');
INSERT INTO `users_areainfo` VALUES ('640423', '隆德县', '640400');
INSERT INTO `users_areainfo` VALUES ('640424', '泾源县', '640400');
INSERT INTO `users_areainfo` VALUES ('640425', '彭阳县', '640400');
INSERT INTO `users_areainfo` VALUES ('640426', '其它区', '640400');
INSERT INTO `users_areainfo` VALUES ('640500', '中卫', '640000');
INSERT INTO `users_areainfo` VALUES ('640502', '沙坡头区', '640500');
INSERT INTO `users_areainfo` VALUES ('640521', '中宁县', '640500');
INSERT INTO `users_areainfo` VALUES ('640522', '海原县', '640500');
INSERT INTO `users_areainfo` VALUES ('640523', '其它区', '640500');
INSERT INTO `users_areainfo` VALUES ('650000', '新疆', '0');
INSERT INTO `users_areainfo` VALUES ('650100', '乌鲁木齐', '650000');
INSERT INTO `users_areainfo` VALUES ('650102', '天山区', '650100');
INSERT INTO `users_areainfo` VALUES ('650103', '沙依巴克区', '650100');
INSERT INTO `users_areainfo` VALUES ('650104', '新市区', '650100');
INSERT INTO `users_areainfo` VALUES ('650105', '水磨沟区', '650100');
INSERT INTO `users_areainfo` VALUES ('650106', '头屯河区', '650100');
INSERT INTO `users_areainfo` VALUES ('650107', '达坂城区', '650100');
INSERT INTO `users_areainfo` VALUES ('650108', '东山区', '650100');
INSERT INTO `users_areainfo` VALUES ('650121', '乌鲁木齐县', '650100');
INSERT INTO `users_areainfo` VALUES ('650122', '其它区', '650100');
INSERT INTO `users_areainfo` VALUES ('650200', '克拉玛依', '650000');
INSERT INTO `users_areainfo` VALUES ('650202', '独山子区', '650200');
INSERT INTO `users_areainfo` VALUES ('650203', '克拉玛依区', '650200');
INSERT INTO `users_areainfo` VALUES ('650204', '白碱滩区', '650200');
INSERT INTO `users_areainfo` VALUES ('650205', '乌尔禾区', '650200');
INSERT INTO `users_areainfo` VALUES ('650206', '其它区', '650200');
INSERT INTO `users_areainfo` VALUES ('652100', '吐鲁番', '650000');
INSERT INTO `users_areainfo` VALUES ('652101', '吐鲁番市', '652100');
INSERT INTO `users_areainfo` VALUES ('652122', '鄯善县', '652100');
INSERT INTO `users_areainfo` VALUES ('652123', '托克逊县', '652100');
INSERT INTO `users_areainfo` VALUES ('652124', '其它区', '652100');
INSERT INTO `users_areainfo` VALUES ('652200', '哈密', '650000');
INSERT INTO `users_areainfo` VALUES ('652201', '哈密市', '652200');
INSERT INTO `users_areainfo` VALUES ('652222', '巴里坤哈萨克自治县', '652200');
INSERT INTO `users_areainfo` VALUES ('652223', '伊吾县', '652200');
INSERT INTO `users_areainfo` VALUES ('652224', '其它区', '652200');
INSERT INTO `users_areainfo` VALUES ('652300', '昌吉', '650000');
INSERT INTO `users_areainfo` VALUES ('652301', '昌吉市', '652300');
INSERT INTO `users_areainfo` VALUES ('652302', '阜康市', '652300');
INSERT INTO `users_areainfo` VALUES ('652303', '米泉市', '652300');
INSERT INTO `users_areainfo` VALUES ('652323', '呼图壁县', '652300');
INSERT INTO `users_areainfo` VALUES ('652324', '玛纳斯县', '652300');
INSERT INTO `users_areainfo` VALUES ('652325', '奇台县', '652300');
INSERT INTO `users_areainfo` VALUES ('652327', '吉木萨尔县', '652300');
INSERT INTO `users_areainfo` VALUES ('652328', '木垒哈萨克自治县', '652300');
INSERT INTO `users_areainfo` VALUES ('652329', '其它区', '652300');
INSERT INTO `users_areainfo` VALUES ('652700', '博尔塔拉', '650000');
INSERT INTO `users_areainfo` VALUES ('652701', '博乐市', '652700');
INSERT INTO `users_areainfo` VALUES ('652722', '精河县', '652700');
INSERT INTO `users_areainfo` VALUES ('652723', '温泉县', '652700');
INSERT INTO `users_areainfo` VALUES ('652724', '其它区', '652700');
INSERT INTO `users_areainfo` VALUES ('652800', '巴音郭楞', '650000');
INSERT INTO `users_areainfo` VALUES ('652801', '库尔勒市', '652800');
INSERT INTO `users_areainfo` VALUES ('652822', '轮台县', '652800');
INSERT INTO `users_areainfo` VALUES ('652823', '尉犁县', '652800');
INSERT INTO `users_areainfo` VALUES ('652824', '若羌县', '652800');
INSERT INTO `users_areainfo` VALUES ('652825', '且末县', '652800');
INSERT INTO `users_areainfo` VALUES ('652826', '焉耆回族自治县', '652800');
INSERT INTO `users_areainfo` VALUES ('652827', '和静县', '652800');
INSERT INTO `users_areainfo` VALUES ('652828', '和硕县', '652800');
INSERT INTO `users_areainfo` VALUES ('652829', '博湖县', '652800');
INSERT INTO `users_areainfo` VALUES ('652830', '其它区', '652800');
INSERT INTO `users_areainfo` VALUES ('652900', '阿克苏', '650000');
INSERT INTO `users_areainfo` VALUES ('652901', '阿克苏市', '652900');
INSERT INTO `users_areainfo` VALUES ('652922', '温宿县', '652900');
INSERT INTO `users_areainfo` VALUES ('652923', '库车县', '652900');
INSERT INTO `users_areainfo` VALUES ('652924', '沙雅县', '652900');
INSERT INTO `users_areainfo` VALUES ('652925', '新和县', '652900');
INSERT INTO `users_areainfo` VALUES ('652926', '拜城县', '652900');
INSERT INTO `users_areainfo` VALUES ('652927', '乌什县', '652900');
INSERT INTO `users_areainfo` VALUES ('652928', '阿瓦提县', '652900');
INSERT INTO `users_areainfo` VALUES ('652929', '柯坪县', '652900');
INSERT INTO `users_areainfo` VALUES ('652930', '其它区', '652900');
INSERT INTO `users_areainfo` VALUES ('653000', '克孜勒苏柯尔克孜', '650000');
INSERT INTO `users_areainfo` VALUES ('653001', '阿图什市', '653000');
INSERT INTO `users_areainfo` VALUES ('653022', '阿克陶县', '653000');
INSERT INTO `users_areainfo` VALUES ('653023', '阿合奇县', '653000');
INSERT INTO `users_areainfo` VALUES ('653024', '乌恰县', '653000');
INSERT INTO `users_areainfo` VALUES ('653025', '其它区', '653000');
INSERT INTO `users_areainfo` VALUES ('653100', '喀什', '650000');
INSERT INTO `users_areainfo` VALUES ('653101', '喀什市', '653100');
INSERT INTO `users_areainfo` VALUES ('653121', '疏附县', '653100');
INSERT INTO `users_areainfo` VALUES ('653122', '疏勒县', '653100');
INSERT INTO `users_areainfo` VALUES ('653123', '英吉沙县', '653100');
INSERT INTO `users_areainfo` VALUES ('653124', '泽普县', '653100');
INSERT INTO `users_areainfo` VALUES ('653125', '莎车县', '653100');
INSERT INTO `users_areainfo` VALUES ('653126', '叶城县', '653100');
INSERT INTO `users_areainfo` VALUES ('653127', '麦盖提县', '653100');
INSERT INTO `users_areainfo` VALUES ('653128', '岳普湖县', '653100');
INSERT INTO `users_areainfo` VALUES ('653129', '伽师县', '653100');
INSERT INTO `users_areainfo` VALUES ('653130', '巴楚县', '653100');
INSERT INTO `users_areainfo` VALUES ('653131', '塔什库尔干塔吉克自治县', '653100');
INSERT INTO `users_areainfo` VALUES ('653132', '其它区', '653100');
INSERT INTO `users_areainfo` VALUES ('653200', '和田', '650000');
INSERT INTO `users_areainfo` VALUES ('653201', '和田市', '653200');
INSERT INTO `users_areainfo` VALUES ('653221', '和田县', '653200');
INSERT INTO `users_areainfo` VALUES ('653222', '墨玉县', '653200');
INSERT INTO `users_areainfo` VALUES ('653223', '皮山县', '653200');
INSERT INTO `users_areainfo` VALUES ('653224', '洛浦县', '653200');
INSERT INTO `users_areainfo` VALUES ('653225', '策勒县', '653200');
INSERT INTO `users_areainfo` VALUES ('653226', '于田县', '653200');
INSERT INTO `users_areainfo` VALUES ('653227', '民丰县', '653200');
INSERT INTO `users_areainfo` VALUES ('653228', '其它区', '653200');
INSERT INTO `users_areainfo` VALUES ('654000', '伊犁', '650000');
INSERT INTO `users_areainfo` VALUES ('654002', '伊宁市', '654000');
INSERT INTO `users_areainfo` VALUES ('654003', '奎屯市', '654000');
INSERT INTO `users_areainfo` VALUES ('654021', '伊宁县', '654000');
INSERT INTO `users_areainfo` VALUES ('654022', '察布查尔锡伯自治县', '654000');
INSERT INTO `users_areainfo` VALUES ('654023', '霍城县', '654000');
INSERT INTO `users_areainfo` VALUES ('654024', '巩留县', '654000');
INSERT INTO `users_areainfo` VALUES ('654025', '新源县', '654000');
INSERT INTO `users_areainfo` VALUES ('654026', '昭苏县', '654000');
INSERT INTO `users_areainfo` VALUES ('654027', '特克斯县', '654000');
INSERT INTO `users_areainfo` VALUES ('654028', '尼勒克县', '654000');
INSERT INTO `users_areainfo` VALUES ('654029', '其它区', '654000');
INSERT INTO `users_areainfo` VALUES ('654200', '塔城', '650000');
INSERT INTO `users_areainfo` VALUES ('654201', '塔城市', '654200');
INSERT INTO `users_areainfo` VALUES ('654202', '乌苏市', '654200');
INSERT INTO `users_areainfo` VALUES ('654221', '额敏县', '654200');
INSERT INTO `users_areainfo` VALUES ('654223', '沙湾县', '654200');
INSERT INTO `users_areainfo` VALUES ('654224', '托里县', '654200');
INSERT INTO `users_areainfo` VALUES ('654225', '裕民县', '654200');
INSERT INTO `users_areainfo` VALUES ('654226', '和布克赛尔蒙古自治县', '654200');
INSERT INTO `users_areainfo` VALUES ('654227', '其它区', '654200');
INSERT INTO `users_areainfo` VALUES ('654300', '阿勒泰', '650000');
INSERT INTO `users_areainfo` VALUES ('654301', '阿勒泰市', '654300');
INSERT INTO `users_areainfo` VALUES ('654321', '布尔津县', '654300');
INSERT INTO `users_areainfo` VALUES ('654322', '富蕴县', '654300');
INSERT INTO `users_areainfo` VALUES ('654323', '福海县', '654300');
INSERT INTO `users_areainfo` VALUES ('654324', '哈巴河县', '654300');
INSERT INTO `users_areainfo` VALUES ('654325', '青河县', '654300');
INSERT INTO `users_areainfo` VALUES ('654326', '吉木乃县', '654300');
INSERT INTO `users_areainfo` VALUES ('654327', '其它区', '654300');
INSERT INTO `users_areainfo` VALUES ('659001', '石河子', '650000');
INSERT INTO `users_areainfo` VALUES ('659002', '阿拉尔', '650000');
INSERT INTO `users_areainfo` VALUES ('659003', '图木舒克', '650000');
INSERT INTO `users_areainfo` VALUES ('659004', '五家渠', '650000');
INSERT INTO `users_areainfo` VALUES ('710000', '台湾', '0');
INSERT INTO `users_areainfo` VALUES ('710100', '台北', '710000');
INSERT INTO `users_areainfo` VALUES ('710101', '中正区', '710100');
INSERT INTO `users_areainfo` VALUES ('710102', '大同区', '710100');
INSERT INTO `users_areainfo` VALUES ('710103', '中山区', '710100');
INSERT INTO `users_areainfo` VALUES ('710104', '松山区', '710100');
INSERT INTO `users_areainfo` VALUES ('710105', '大安区', '710100');
INSERT INTO `users_areainfo` VALUES ('710106', '万华区', '710100');
INSERT INTO `users_areainfo` VALUES ('710107', '信义区', '710100');
INSERT INTO `users_areainfo` VALUES ('710108', '士林区', '710100');
INSERT INTO `users_areainfo` VALUES ('710109', '北投区', '710100');
INSERT INTO `users_areainfo` VALUES ('710110', '内湖区', '710100');
INSERT INTO `users_areainfo` VALUES ('710111', '南港区', '710100');
INSERT INTO `users_areainfo` VALUES ('710112', '文山区', '710100');
INSERT INTO `users_areainfo` VALUES ('710113', '其它区', '710100');
INSERT INTO `users_areainfo` VALUES ('710200', '高雄', '710000');
INSERT INTO `users_areainfo` VALUES ('710201', '新兴区', '710200');
INSERT INTO `users_areainfo` VALUES ('710202', '前金区', '710200');
INSERT INTO `users_areainfo` VALUES ('710203', '芩雅区', '710200');
INSERT INTO `users_areainfo` VALUES ('710204', '盐埕区', '710200');
INSERT INTO `users_areainfo` VALUES ('710205', '鼓山区', '710200');
INSERT INTO `users_areainfo` VALUES ('710206', '旗津区', '710200');
INSERT INTO `users_areainfo` VALUES ('710207', '前镇区', '710200');
INSERT INTO `users_areainfo` VALUES ('710208', '三民区', '710200');
INSERT INTO `users_areainfo` VALUES ('710209', '左营区', '710200');
INSERT INTO `users_areainfo` VALUES ('710210', '楠梓区', '710200');
INSERT INTO `users_areainfo` VALUES ('710211', '小港区', '710200');
INSERT INTO `users_areainfo` VALUES ('710212', '其它区', '710200');
INSERT INTO `users_areainfo` VALUES ('710300', '台南', '710000');
INSERT INTO `users_areainfo` VALUES ('710301', '中西区', '710300');
INSERT INTO `users_areainfo` VALUES ('710302', '东区', '710300');
INSERT INTO `users_areainfo` VALUES ('710303', '南区', '710300');
INSERT INTO `users_areainfo` VALUES ('710304', '北区', '710300');
INSERT INTO `users_areainfo` VALUES ('710305', '安平区', '710300');
INSERT INTO `users_areainfo` VALUES ('710306', '安南区', '710300');
INSERT INTO `users_areainfo` VALUES ('710307', '其它区', '710300');
INSERT INTO `users_areainfo` VALUES ('710400', '台中', '710000');
INSERT INTO `users_areainfo` VALUES ('710401', '中区', '710400');
INSERT INTO `users_areainfo` VALUES ('710402', '东区', '710400');
INSERT INTO `users_areainfo` VALUES ('710403', '南区', '710400');
INSERT INTO `users_areainfo` VALUES ('710404', '西区', '710400');
INSERT INTO `users_areainfo` VALUES ('710405', '北区', '710400');
INSERT INTO `users_areainfo` VALUES ('710406', '北屯区', '710400');
INSERT INTO `users_areainfo` VALUES ('710407', '西屯区', '710400');
INSERT INTO `users_areainfo` VALUES ('710408', '南屯区', '710400');
INSERT INTO `users_areainfo` VALUES ('710409', '其它区', '710400');
INSERT INTO `users_areainfo` VALUES ('710500', '金门', '710000');
INSERT INTO `users_areainfo` VALUES ('710600', '南投', '710000');
INSERT INTO `users_areainfo` VALUES ('710700', '基隆', '710000');
INSERT INTO `users_areainfo` VALUES ('710701', '仁爱区', '710700');
INSERT INTO `users_areainfo` VALUES ('710702', '信义区', '710700');
INSERT INTO `users_areainfo` VALUES ('710703', '中正区', '710700');
INSERT INTO `users_areainfo` VALUES ('710704', '中山区', '710700');
INSERT INTO `users_areainfo` VALUES ('710705', '安乐区', '710700');
INSERT INTO `users_areainfo` VALUES ('710706', '暖暖区', '710700');
INSERT INTO `users_areainfo` VALUES ('710707', '七堵区', '710700');
INSERT INTO `users_areainfo` VALUES ('710708', '其它区', '710700');
INSERT INTO `users_areainfo` VALUES ('710800', '新竹', '710000');
INSERT INTO `users_areainfo` VALUES ('710801', '东区', '710800');
INSERT INTO `users_areainfo` VALUES ('710802', '北区', '710800');
INSERT INTO `users_areainfo` VALUES ('710803', '香山区', '710800');
INSERT INTO `users_areainfo` VALUES ('710804', '其它区', '710800');
INSERT INTO `users_areainfo` VALUES ('710900', '嘉义', '710000');
INSERT INTO `users_areainfo` VALUES ('710901', '东区', '710900');
INSERT INTO `users_areainfo` VALUES ('710902', '西区', '710900');
INSERT INTO `users_areainfo` VALUES ('710903', '其它区', '710900');
INSERT INTO `users_areainfo` VALUES ('711100', '台北', '710000');
INSERT INTO `users_areainfo` VALUES ('711200', '宜兰', '710000');
INSERT INTO `users_areainfo` VALUES ('711300', '新竹', '710000');
INSERT INTO `users_areainfo` VALUES ('711400', '桃园', '710000');
INSERT INTO `users_areainfo` VALUES ('711500', '苗栗', '710000');
INSERT INTO `users_areainfo` VALUES ('711600', '台中', '710000');
INSERT INTO `users_areainfo` VALUES ('711700', '彰化', '710000');
INSERT INTO `users_areainfo` VALUES ('711900', '嘉义', '710000');
INSERT INTO `users_areainfo` VALUES ('712100', '云林', '710000');
INSERT INTO `users_areainfo` VALUES ('712200', '台南', '710000');
INSERT INTO `users_areainfo` VALUES ('712300', '高雄', '710000');
INSERT INTO `users_areainfo` VALUES ('712400', '屏东', '710000');
INSERT INTO `users_areainfo` VALUES ('712500', '台东', '710000');
INSERT INTO `users_areainfo` VALUES ('712600', '花莲', '710000');
INSERT INTO `users_areainfo` VALUES ('712700', '澎湖', '710000');
INSERT INTO `users_areainfo` VALUES ('810000', '香港', '0');
INSERT INTO `users_areainfo` VALUES ('810100', '香港岛', '810000');
INSERT INTO `users_areainfo` VALUES ('810200', '九龙', '810000');
INSERT INTO `users_areainfo` VALUES ('810300', '新界', '810000');
INSERT INTO `users_areainfo` VALUES ('820000', '澳门', '0');
INSERT INTO `users_areainfo` VALUES ('820100', '澳门', '820000');
INSERT INTO `users_areainfo` VALUES ('820200', '离岛', '820000');
INSERT INTO `users_areainfo` VALUES ('990000', '海外', '0');
INSERT INTO `users_areainfo` VALUES ('990100', '海外', '990000');

-- ----------------------------
-- Table structure for users_banner
-- ----------------------------
DROP TABLE IF EXISTS `users_banner`;
CREATE TABLE `users_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_banner
-- ----------------------------
INSERT INTO `users_banner` VALUES ('1', '白马寺', 'banner/2018/11/b1.png', '/scenicspots/scenic_detail/4/', '2018-11-20 13:50:00.000000');
INSERT INTO `users_banner` VALUES ('2', '美丽洛阳', 'banner/2018/11/b2.png', '/diarys/details/3/', '2018-11-20 13:55:00.000000');
INSERT INTO `users_banner` VALUES ('3', 'youzi', 'banner/2018/11/b3.jpg', '/shop/detail/1/', '2018-11-20 13:56:00.000000');

-- ----------------------------
-- Table structure for users_emailverifyrecord
-- ----------------------------
DROP TABLE IF EXISTS `users_emailverifyrecord`;
CREATE TABLE `users_emailverifyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(80) NOT NULL,
  `email` varchar(50) NOT NULL,
  `send_type` varchar(10) NOT NULL,
  `send_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_emailverifyrecord
-- ----------------------------
INSERT INTO `users_emailverifyrecord` VALUES ('2', 'FhKltgTmB0IFpVYe3mq7', '935939006@qq.com', 'register', '2018-10-12 10:58:20.393510');
INSERT INTO `users_emailverifyrecord` VALUES ('3', 'Hbx0u30QZ7hrtCM0MLCR', '935939006@qq.com', 'register', '2018-10-12 11:01:32.911492');
INSERT INTO `users_emailverifyrecord` VALUES ('4', 'R4mYGWKdqQmcdHt84hQ3', '935939006@qq.com', 'register', '2018-10-12 11:02:25.343682');
INSERT INTO `users_emailverifyrecord` VALUES ('5', '11YpSjUjGDtDwE9AonqF', '1@1.com', 'register', '2018-10-12 14:12:48.749721');
INSERT INTO `users_emailverifyrecord` VALUES ('6', 'RXGbtPvMSDNlKPYxlDBC', '2@1.com', 'register', '2018-10-12 14:15:25.970193');
INSERT INTO `users_emailverifyrecord` VALUES ('7', 'yzBoPmX2VtCauCYOCWJQ', '935939006@qq.com', 'register', '2018-10-12 14:31:17.878597');
INSERT INTO `users_emailverifyrecord` VALUES ('8', 'AZoRMJTlZ1rzgKOXdU9g', '1@1.com', 'register', '2018-10-12 14:33:45.703143');
INSERT INTO `users_emailverifyrecord` VALUES ('9', 'iFdkJCRUUovbYsuAQ7Y5', '935939006@qq.com', 'find', '2018-10-15 13:36:52.762858');
INSERT INTO `users_emailverifyrecord` VALUES ('10', 'vz08FIcYuCUQBl9TdDE1', '935939006@qq.com', 'find', '2018-10-15 13:37:53.242152');
INSERT INTO `users_emailverifyrecord` VALUES ('11', 'V4ypMWg6xPdV8ZtnHigE', '935939006@qq.com', 'find', '2018-10-15 13:43:54.909407');
INSERT INTO `users_emailverifyrecord` VALUES ('12', 'nTHpST6trK0glMOFu65F', '935939006@qq.com', 'find', '2018-10-15 13:46:46.473060');
INSERT INTO `users_emailverifyrecord` VALUES ('13', '2jmJsCpbV1WsrEnqpePz', '2@1.com', 'register', '2018-10-18 16:29:45.154697');

-- ----------------------------
-- Table structure for users_myuser
-- ----------------------------
DROP TABLE IF EXISTS `users_myuser`;
CREATE TABLE `users_myuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nickname` varchar(15) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `city_addr` varchar(6) NOT NULL,
  `birthday` date NOT NULL,
  `signature` varchar(300) NOT NULL,
  `portrait` varchar(100) NOT NULL,
  `integral` int(11) NOT NULL,
  `check_time` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_myuser
-- ----------------------------
INSERT INTO `users_myuser` VALUES ('1', 'pbkdf2_sha256$120000$lgrsOUiN0y9W$m+UypvhsNMwMvJgyMfaPWL5MmmVuO+rRc9bi64CkeBU=', '2018-11-15 13:40:34.936141', '1', 'zhiqi', '', '', 'zhiqi1028@gmail.com', '1', '1', '2018-10-10 10:07:45.065131', '稚琦', 'male', '410302', '1994-10-28', '不爱学习，怎么减肥', 'image/1/aacbada759.jpg', '6360', '2018-11-15');
INSERT INTO `users_myuser` VALUES ('19', 'pbkdf2_sha256$120000$yaIep6YtvmEF$7fmilUxBJE96NsrriKoV3JqKDdjIx3dRdcXf5To3koA=', '2018-10-15 14:57:24.975493', '0', '935939006@qq.com', '', '', '935939006@qq.com', '0', '1', '2018-10-12 14:31:17.785275', '小稚', 'secret', '410302', '2018-10-18', '', 'image/default.jpg', '0', '1970-01-01');
INSERT INTO `users_myuser` VALUES ('20', 'pbkdf2_sha256$120000$b2519v3EBvQU$R+ci38zE1Y7vsz/k7T2gn1/cVrIeF2h4o21BwHgcylA=', null, '0', '1@1.com', '', '', '1@1.com', '0', '0', '2018-10-12 14:33:45.596982', '', 'secret', '410302', '2018-10-18', '', 'image/default.jpg', '0', '1970-01-01');

-- ----------------------------
-- Table structure for users_myuser_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_myuser_groups`;
CREATE TABLE `users_myuser_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `myuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_myuser_groups_myuser_id_group_id_701de95c_uniq` (`myuser_id`,`group_id`),
  KEY `users_myuser_groups_group_id_320a3e7b_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_myuser_groups_group_id_320a3e7b_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `users_myuser_groups_myuser_id_6c79e2c5_fk_users_myuser_id` FOREIGN KEY (`myuser_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_myuser_groups
-- ----------------------------

-- ----------------------------
-- Table structure for users_myuser_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_myuser_user_permissions`;
CREATE TABLE `users_myuser_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `myuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_myuser_user_permis_myuser_id_permission_id_bfff4a24_uniq` (`myuser_id`,`permission_id`),
  KEY `users_myuser_user_pe_permission_id_6f8831ec_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_myuser_user_pe_myuser_id_7135c2f9_fk_users_myu` FOREIGN KEY (`myuser_id`) REFERENCES `users_myuser` (`id`),
  CONSTRAINT `users_myuser_user_pe_permission_id_6f8831ec_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_myuser_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for users_thecontact
-- ----------------------------
DROP TABLE IF EXISTS `users_thecontact`;
CREATE TABLE `users_thecontact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `city_addr` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `zip_code` varchar(6) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users_thecontact_user_id_41dc7913_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `users_thecontact_user_id_41dc7913_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_thecontact
-- ----------------------------
INSERT INTO `users_thecontact` VALUES ('1', '鲁迅', '410307', '洛龙区123123', '12345678910', '000000', '1', '1');
INSERT INTO `users_thecontact` VALUES ('4', '李白', '410103', '二七区123', '13345678910', '000000', '0', '1');
INSERT INTO `users_thecontact` VALUES ('5', '黄鹤', '330303', '江南皮革厂', '18888888888', '123456', '0', '1');

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES ('1', '2018-10-10 10:42:35.823103', '127.0.0.1', '1', '河南90后运动员摘得亚残会金牌', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('2', '2018-10-10 11:07:15.972568', '127.0.0.1', '2', '洛阳市将沿瀍河建隋唐大运河文化公园', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('3', '2018-10-10 11:08:29.798125', '127.0.0.1', '3', '河洛典故：前倨后恭', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('4', '2018-10-10 13:32:06.467754', '127.0.0.1', '2', 'zhiqi chart widget', 'delete', '', '21', '1');
INSERT INTO `xadmin_log` VALUES ('5', '2018-10-11 10:48:23.914436', '127.0.0.1', '4', '洛阳：描绘“诗和远方”新画卷', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('6', '2018-10-11 11:00:37.924868', '127.0.0.1', '5', '30多个国家300余位知名摄影家用镜头推介洛阳', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('7', '2018-10-11 11:02:02.661968', '127.0.0.1', '6', '首届中原文化旅游产业博览会圆满落幕', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('8', '2018-10-11 11:03:28.794515', '127.0.0.1', '7', '洛阳地铁1号线又有两个隧洞单线贯通', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('9', '2018-10-15 09:58:37.800837', '127.0.0.1', '8', '“双创”英才 洛城探秘', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('10', '2018-10-15 10:28:41.605389', '127.0.0.1', '9', '洛阳牡丹', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('11', '2018-10-15 10:32:33.179213', '127.0.0.1', '10', '孟津黄河鲤鱼', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('12', '2018-10-15 10:34:23.406899', '127.0.0.1', '11', '洛阳唐三彩', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('13', '2018-10-15 10:36:37.421265', '127.0.0.1', '12', '不翻汤', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('14', '2018-10-16 09:56:03.518954', '127.0.0.1', '1', '龙门石窟', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('15', '2018-10-16 09:59:59.531402', '127.0.0.1', '2', '洛阳白云山', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('16', '2018-10-16 10:03:37.853497', '127.0.0.1', '3', '鸡冠洞', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('17', '2018-10-16 10:05:52.755536', '127.0.0.1', '4', '洛阳白马寺', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('18', '2018-10-16 10:07:06.080483', '127.0.0.1', '2', '洛阳白云山', 'change', '修改 content，image，picture 和 classification', '14', '1');
INSERT INTO `xadmin_log` VALUES ('19', '2018-10-16 10:11:52.041962', '127.0.0.1', '5', '中国国花园', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('20', '2018-10-16 14:32:54.486516', '127.0.0.1', '1', '往事越千年', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('21', '2018-10-16 14:33:55.159881', '127.0.0.1', '2', '远景', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('22', '2018-10-16 14:34:15.115077', '127.0.0.1', '3', '庐舍那大佛', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('23', '2018-10-16 14:34:55.054430', '127.0.0.1', '4', '奉先寺', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('24', '2018-10-16 14:35:08.536700', '127.0.0.1', '5', '全景', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('25', '2018-10-16 14:37:24.587301', '127.0.0.1', '6', '白云山风光1', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('26', '2018-10-16 14:37:42.227205', '127.0.0.1', '7', '白云山风光2', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('27', '2018-10-16 14:37:54.152295', '127.0.0.1', '8', '白云山风光3', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('28', '2018-10-16 14:39:12.403774', '127.0.0.1', '9', '全景', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('29', '2018-10-16 14:39:28.089317', '127.0.0.1', '10', '东门', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('30', '2018-10-16 14:39:41.139562', '127.0.0.1', '11', '西门', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('31', '2018-10-16 14:41:17.375594', '127.0.0.1', '12', '马寺钟声', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('32', '2018-10-16 14:41:30.340473', '127.0.0.1', '13', '白马寺', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('33', '2018-10-16 14:41:51.657849', '127.0.0.1', '14', '马寺印象', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('34', '2018-10-16 14:43:59.118645', '127.0.0.1', '15', '鸡冠洞1', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('35', '2018-10-16 14:44:07.845410', '127.0.0.1', '16', '鸡冠洞2', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('36', '2018-10-16 14:44:16.499789', '127.0.0.1', '17', '鸡冠洞3', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('37', '2018-10-16 14:44:25.098913', '127.0.0.1', '18', '鸡冠洞4', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('38', '2018-10-16 14:44:33.903883', '127.0.0.1', '19', '鸡冠洞5', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('39', '2018-10-16 16:14:30.251302', '127.0.0.1', '5', '中国国花园', 'change', '修改 content，image，picture，x 和 y', '14', '1');
INSERT INTO `xadmin_log` VALUES ('40', '2018-10-16 16:15:48.876657', '127.0.0.1', '4', '洛阳白马寺', 'change', '修改 content，image，picture，x 和 y', '14', '1');
INSERT INTO `xadmin_log` VALUES ('41', '2018-10-16 16:16:42.937816', '127.0.0.1', '3', '鸡冠洞', 'change', '修改 content，image，picture，x 和 y', '14', '1');
INSERT INTO `xadmin_log` VALUES ('42', '2018-10-16 16:18:20.202226', '127.0.0.1', '2', '洛阳白云山', 'change', '修改 image，picture，x 和 y', '14', '1');
INSERT INTO `xadmin_log` VALUES ('43', '2018-10-16 16:19:44.533005', '127.0.0.1', '1', '龙门石窟', 'change', '修改 content，image，picture，x 和 y', '14', '1');
INSERT INTO `xadmin_log` VALUES ('44', '2018-10-16 16:37:05.185580', '127.0.0.1', '5', '中国国花园', 'change', '修改 content，image 和 picture', '14', '1');
INSERT INTO `xadmin_log` VALUES ('45', '2018-10-29 14:05:41.290457', '127.0.0.1', null, '', 'delete', '批量删除 1 个 用户小组件', null, '1');
INSERT INTO `xadmin_log` VALUES ('46', '2018-11-01 14:19:53.941579', '127.0.0.1', '1', '红心柚子10斤整箱福建平和管溪蜜柚新鲜水果包邮红肉密柚', 'create', '已添加。', '23', '1');
INSERT INTO `xadmin_log` VALUES ('47', '2018-11-01 14:20:53.163427', '127.0.0.1', '2', '无籽青柠檬 皮薄汁多新鲜水果 500g', 'create', '已添加。', '23', '1');
INSERT INTO `xadmin_log` VALUES ('48', '2018-11-01 14:33:57.437645', '127.0.0.1', '1', 'ProPic object (1)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('49', '2018-11-01 14:34:10.720440', '127.0.0.1', '2', 'ProPic object (2)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('50', '2018-11-01 14:34:22.422460', '127.0.0.1', '3', 'ProPic object (3)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('51', '2018-11-01 14:34:30.303034', '127.0.0.1', '4', 'ProPic object (4)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('52', '2018-11-01 14:34:44.124106', '127.0.0.1', '5', 'ProPic object (5)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('53', '2018-11-01 14:36:16.843383', '127.0.0.1', '6', 'ProPic object (6)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('54', '2018-11-01 14:36:24.104535', '127.0.0.1', '7', 'ProPic object (7)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('55', '2018-11-01 14:36:28.589285', '127.0.0.1', '8', 'ProPic object (8)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('56', '2018-11-01 14:39:04.526280', '127.0.0.1', '3', '新鲜有机水果大红寒富苹果农场现摘红富士甜脆可口1斤包邮', 'create', '已添加。', '23', '1');
INSERT INTO `xadmin_log` VALUES ('57', '2018-11-01 14:39:22.406704', '127.0.0.1', '3', '新鲜有机水果大红寒富苹果农场现摘红富士甜脆可口1斤包邮', 'change', '修改 details', '23', '1');
INSERT INTO `xadmin_log` VALUES ('58', '2018-11-01 14:40:12.015319', '127.0.0.1', '9', 'ProPic object (9)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('59', '2018-11-01 14:40:15.797181', '127.0.0.1', '10', 'ProPic object (10)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('60', '2018-11-01 14:40:20.244996', '127.0.0.1', '11', 'ProPic object (11)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('61', '2018-11-01 14:40:49.722989', '127.0.0.1', '3', '新鲜有机水果大红寒富苹果农场现摘红富士甜脆可口1斤包邮', 'change', '修改 pro_type', '23', '1');
INSERT INTO `xadmin_log` VALUES ('62', '2018-11-01 14:40:55.974585', '127.0.0.1', '2', '无籽青柠檬 皮薄汁多新鲜水果 500g', 'change', '修改 pro_type 和 details', '23', '1');
INSERT INTO `xadmin_log` VALUES ('63', '2018-11-01 14:41:01.198019', '127.0.0.1', '1', '红心柚子10斤整箱福建平和管溪蜜柚新鲜水果包邮红肉密柚', 'change', '修改 pro_type 和 details', '23', '1');
INSERT INTO `xadmin_log` VALUES ('64', '2018-11-01 14:46:35.120417', '127.0.0.1', '4', '东北大米新米 农家自产长粒香大米5kg精选不抛光散装粳米10', 'create', '已添加。', '23', '1');
INSERT INTO `xadmin_log` VALUES ('65', '2018-11-01 14:47:27.019271', '127.0.0.1', '12', 'ProPic object (12)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('66', '2018-11-01 14:47:31.842376', '127.0.0.1', '13', 'ProPic object (13)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('67', '2018-11-01 14:49:38.204423', '127.0.0.1', '5', '黄豆江西农家非转基因自种 5斤打豆浆生豆芽专用散装小黄豆', 'create', '已添加。', '23', '1');
INSERT INTO `xadmin_log` VALUES ('68', '2018-11-01 14:50:35.260407', '127.0.0.1', '14', 'ProPic object (14)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('69', '2018-11-01 14:50:40.252648', '127.0.0.1', '15', 'ProPic object (15)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('70', '2018-11-01 14:50:45.123673', '127.0.0.1', '16', 'ProPic object (16)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('71', '2018-11-01 14:50:49.454072', '127.0.0.1', '17', 'ProPic object (17)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('72', '2018-11-01 14:53:17.453270', '127.0.0.1', '6', '纯铜梅花鹿摆件新中式家居客厅装饰品玄关茶几电视柜创意艺术工艺', 'create', '已添加。', '23', '1');
INSERT INTO `xadmin_log` VALUES ('73', '2018-11-01 14:53:48.313405', '127.0.0.1', '18', 'ProPic object (18)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('74', '2018-11-01 14:53:52.339299', '127.0.0.1', '19', 'ProPic object (19)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('75', '2018-11-01 14:55:15.474960', '127.0.0.1', '7', '木制帆船33cm深蓝色2050 客厅酒柜电视柜摆件家居装饰品', 'create', '已添加。', '23', '1');
INSERT INTO `xadmin_log` VALUES ('76', '2018-11-01 14:55:45.674437', '127.0.0.1', '20', 'ProPic object (20)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('77', '2018-11-01 14:57:13.843137', '127.0.0.1', '8', '德芙 Dove巧克力分享碗装 丝滑牛奶巧克力 糖果巧克力 休', 'create', '已添加。', '23', '1');
INSERT INTO `xadmin_log` VALUES ('78', '2018-11-01 14:58:01.594255', '127.0.0.1', '8', '德芙 Dove巧克力分享碗装 丝滑牛奶巧克力 糖果巧克力', 'change', '修改 name 和 details', '23', '1');
INSERT INTO `xadmin_log` VALUES ('79', '2018-11-01 14:59:13.923915', '127.0.0.1', '21', 'ProPic object (21)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('80', '2018-11-01 14:59:17.940797', '127.0.0.1', '22', 'ProPic object (22)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('81', '2018-11-01 14:59:21.902896', '127.0.0.1', '23', 'ProPic object (23)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('82', '2018-11-01 15:59:23.511235', '127.0.0.1', '8', '德芙 Dove巧克力分享碗装 丝滑牛奶巧克力 糖果巧克力', 'change', '修改 mainimg', '23', '1');
INSERT INTO `xadmin_log` VALUES ('83', '2018-11-01 16:00:06.752761', '127.0.0.1', '7', '木制帆船33cm深蓝色2050 客厅酒柜电视柜摆件家居装饰品', 'change', '修改 details 和 mainimg', '23', '1');
INSERT INTO `xadmin_log` VALUES ('84', '2018-11-01 16:00:53.593375', '127.0.0.1', '6', '纯铜梅花鹿摆件新中式家居客厅装饰品玄关茶几电视柜创意艺术工艺', 'change', '修改 details 和 mainimg', '23', '1');
INSERT INTO `xadmin_log` VALUES ('85', '2018-11-01 16:01:30.828847', '127.0.0.1', '5', '黄豆江西农家非转基因自种 5斤打豆浆生豆芽专用散装小黄豆', 'change', '修改 details 和 mainimg', '23', '1');
INSERT INTO `xadmin_log` VALUES ('86', '2018-11-01 16:01:59.984094', '127.0.0.1', '4', '东北大米新米 农家自产长粒香大米5kg精选不抛光散装粳米10', 'change', '修改 mainimg', '23', '1');
INSERT INTO `xadmin_log` VALUES ('87', '2018-11-01 16:02:46.976466', '127.0.0.1', '3', '新鲜有机水果大红寒富苹果农场现摘红富士甜脆可口1斤包邮', 'change', '修改 mainimg', '23', '1');
INSERT INTO `xadmin_log` VALUES ('88', '2018-11-01 16:03:43.478598', '127.0.0.1', '2', '无籽青柠檬 皮薄汁多新鲜水果 500g', 'change', '修改 mainimg 和 add_time', '23', '1');
INSERT INTO `xadmin_log` VALUES ('89', '2018-11-01 16:04:43.679259', '127.0.0.1', '1', '红心柚子10斤整箱福建平和管溪蜜柚新鲜水果包邮红肉密柚', 'change', '修改 mainimg 和 add_time', '23', '1');
INSERT INTO `xadmin_log` VALUES ('90', '2018-11-19 11:02:10.604128', '127.0.0.1', '1', '洛阳龙门石窟+白马寺院+少林寺+龙潭大峡谷3日2晚跟团游', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('91', '2018-11-19 11:06:21.945606', '127.0.0.1', '2', '洛阳2日1晚跟团游·龙门石窟-白马寺-少林寺纯玩2日游', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('92', '2018-11-19 11:15:25.527280', '127.0.0.1', '3', '洛阳+云台山4日私家团(4钻)·『独立成团·私家享受』', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('93', '2018-11-19 14:45:02.192425', '127.0.0.1', '2', '洛阳2日1晚跟团游·龙门石窟-白马寺-少林寺纯玩2日游', 'change', '修改 introduce 和 image', '12', '1');
INSERT INTO `xadmin_log` VALUES ('94', '2018-11-19 14:45:02.298082', '127.0.0.1', '2', '洛阳2日1晚跟团游·龙门石窟-白马寺-少林寺纯玩2日游', 'change', '修改 introduce 和 image', '12', '1');
INSERT INTO `xadmin_log` VALUES ('95', '2018-11-20 11:37:47.323011', '127.0.0.1', '13', '双11，洛阳人花了8亿多元 收发快件1390万件', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('96', '2018-11-20 11:39:04.021108', '127.0.0.1', '14', '央视纪录片《大戏记忆》在洛拍摄', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('97', '2018-11-20 11:40:40.703685', '127.0.0.1', '15', '第五届龙门诗会举行', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('98', '2018-11-20 13:55:02.845494', '127.0.0.1', '1', 'Banner object (1)', 'create', '已添加。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('99', '2018-11-20 13:56:26.135289', '127.0.0.1', '2', 'Banner object (2)', 'create', '已添加。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('100', '2018-11-20 13:57:14.195599', '127.0.0.1', '3', 'Banner object (3)', 'create', '已添加。', '16', '1');

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------
