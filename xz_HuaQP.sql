/*
Navicat MySQL Data Transfer

Source Server         : localhost_xampp
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : xz

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-04-30 19:13:54
*/

SET NAMES UTF8;
DROP DATABASE IF EXISTS xz;
CREATE DATABASE xz CHARSET=UTF8;
USE xz;


SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for xz_index_carousel
-- ----------------------------
DROP TABLE IF EXISTS `xz_index_carousel`;
CREATE TABLE `xz_index_carousel` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xz_index_carousel
-- ----------------------------
INSERT INTO `xz_index_carousel` VALUES ('1', 'img/index/banner1.png', '轮播广告商品1', 'product_details.html?lid=28');
INSERT INTO `xz_index_carousel` VALUES ('2', 'img/index/banner2.png', '轮播广告商品2', 'product_details.html?lid=19');
INSERT INTO `xz_index_carousel` VALUES ('3', 'img/index/banner3.png', '轮播广告商品3', 'lookforward.html');
INSERT INTO `xz_index_carousel` VALUES ('4', 'img/index/banner4.png', '轮播广告商品4', 'lookforward.html');

-- ----------------------------
-- Table structure for xz_index_product
-- ----------------------------
DROP TABLE IF EXISTS `xz_index_product`;
CREATE TABLE `xz_index_product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL,
  `seq_recommended` tinyint(4) DEFAULT NULL,
  `seq_new_arrival` tinyint(4) DEFAULT NULL,
  `seq_top_sale` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xz_index_product
-- ----------------------------
INSERT INTO `xz_index_product` VALUES ('1', 'Apple MacBook Air系列', '酷睿双核i5处理器|256GB SSD|8GB内存|英特尔HD显卡620含共享显卡内存', 'img/index/study_computer_img1.png', '6988.00', 'product_details.html?lid=1', '1', '1', '1');
INSERT INTO `xz_index_product` VALUES ('2', '小米Air 金属超轻薄', '酷睿双核i5处理器|512GB SSD|2GB内存|英特尔HD独立显卡', 'img/index/study_computer_img2.png', '3488.00', 'product_details.html?lid=5', '2', '2', '2');
INSERT INTO `xz_index_product` VALUES ('3', '联想E480C 轻薄系列', '酷睿双核i7处理器|256GB SSD|4GB内存|英特尔HD显卡680M', 'img/index/study_computer_img3.png', '5399.00', 'product_details.html?lid=9', '3', '3', '3');
INSERT INTO `xz_index_product` VALUES ('4', '华硕RX310 金属超极本', '酷睿双核i5处理器|512GB SSD|4GB内存|英特尔HD游戏级显卡', 'img/index/study_computer_img4.png', '4966.00', 'product_details.html?lid=13', '4', '4', '4');
INSERT INTO `xz_index_product` VALUES ('5', '联想小新700 电竞版游戏本', '酷睿双核i7处理器|1TGB SSD|8GB内存|英特尔HD显卡620含共享显卡内存', 'img/index/study_computer_img5.png', '6299.00', 'product_details.html?lid=17', '5', '5', '5');
INSERT INTO `xz_index_product` VALUES ('6', '戴尔灵越燃7000 轻薄窄边', '酷睿双核i5处理器|512GB SSD|2GB内存|英特尔HD显卡', 'img/index/study_computer_img3.png', '5199.00', 'product_details.html?lid=19', '6', '6', '6');
INSERT INTO `xz_index_product` VALUES ('7', '神州战神Z7M 高性价比游戏本', '酷睿双核i7处理器|1TGB SSD|8GB内存|英特尔HD游戏机独立显卡', 'img/index/study_computer_img4.png', '5799.00', 'product_details.html?lid=38', '0', '0', '0');

-- ----------------------------
-- Table structure for xz_laptop
-- ----------------------------
DROP TABLE IF EXISTS `xz_laptop`;
CREATE TABLE `xz_laptop` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `family_id` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `subtitle` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `promise` varchar(64) DEFAULT NULL,
  `spec` varchar(64) DEFAULT NULL,
  `lname` varchar(32) DEFAULT NULL,
  `os` varchar(32) DEFAULT NULL,
  `memory` varchar(32) DEFAULT NULL,
  `resolution` varchar(32) DEFAULT NULL,
  `video_card` varchar(32) DEFAULT NULL,
  `cpu` varchar(32) DEFAULT NULL,
  `video_memory` varchar(32) DEFAULT NULL,
  `category` varchar(32) DEFAULT NULL,
  `disk` varchar(32) DEFAULT NULL,
  `details` varchar(1024) DEFAULT NULL,
  `shelf_time` bigint(20) DEFAULT NULL,
  `sold_count` int(11) DEFAULT NULL,
  `is_onsale` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xz_laptop
-- ----------------------------
INSERT INTO `xz_laptop` VALUES ('1', '1', 'Apple MacBook Air 13.3英寸笔记本 银色(Core i5 处理器/8GB内存/128GB SSD闪存 MMGF2CH/A)', '5月焕新季，领券买新机！神券满6000减600！一体成型金属机身，纤薄轻巧，长达12小时续航', '6988.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '双核i5/8GB内存/128GB闪存', 'AppleMacBook Air', 'MacOS', '8G', '1920*1080', '集成显卡', 'Intel i5低功耗版', '其它', '轻薄本', '128G固态', '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', '150123456789', '2968', '1');
INSERT INTO `xz_laptop` VALUES ('2', '1', 'Apple MacBook Air 13.3英寸笔记本 银色(Core i5 处理器/8GB内存/256GB SSD闪存 MMGG2CH/A)', '5月焕新季，领券买新机！神券满8000减800！一体成型金属机身，纤薄轻巧，长达12小时续航', '8268.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '双核i5/8GB内存/256GB闪存', 'AppleMacBook Air', 'MacOS', '8G', '1920*1080', '集成显卡', 'Intel i5低功耗版', '其它', '轻薄本', '256G固态', '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', '150223456789', '1922', '0');
INSERT INTO `xz_laptop` VALUES ('3', '1', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(Core i7 处理器/8GB内存/128GB SSD闪存 Z0TA0002L)', 'i7处理器在此！依旧纤薄轻盈，续航持久，能胜任更多高强度工作，办公利器！', '7488.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '定制款：双核i7/8G内存/128G闪存', 'AppleMacBook Air', 'MacOS', '8G', '1920*1080', '集成显卡', 'Intel i7低功耗版', '其它', '轻薄本', '128G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t3034/151/748569500/226790/d6cd86a2/57b15612N81dc489d.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_text\">技术规格 请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', '150323456789', '733', '0');
INSERT INTO `xz_laptop` VALUES ('4', '1', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(Core i7 处理器/8GB内存/256GB SSD闪存 Z0TA0002L)', 'i7处理器在此！依旧纤薄轻盈，续航持久，能胜任更多高强度工作，办公利器！', '7888.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '定制款：双核i7/8G内存/256G闪存', 'AppleMacBook Air', 'MacOS', '8G', '1920*1080', '集成显卡', 'Intel i7低功耗版', '其它', '轻薄本', '256G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t3034/151/748569500/226790/d6cd86a2/57b15612N81dc489d.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_text\">技术规格 请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', '150323456789', '105', '0');
INSERT INTO `xz_laptop` VALUES ('5', '2', '小米(MI)Air 13.3英寸全金属超轻薄笔记本(i5-6200U 8G 256G PCIE固态 940MX独显 FHD WIN10)银', '【i5 独立显卡】全高清窄边框 8G内存 256G固态硬盘 支持SSD硬盘扩容 薄至14.8mm 轻至1.28kg！AKG扬声器！', '4999.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【13.3英寸】I5-6200U 8G 256G', '小米Air', 'Windows 10', '8G', '全高清屏(1920*1080)', '入门级游戏独立显卡', 'Intel i5低功耗版', '1G', '轻薄本', '256G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/5886e317Nbc52a580.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f747eNfdc5f737.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7483N695168a2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7486Nf809b915.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748bN28dbcbb2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748fNd2861229.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7493N5a3758af.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7497N20aac53e.jpg\"></div></div><div class=\"formwork\"><div clas', '154123456789', '1527', '1');
INSERT INTO `xz_laptop` VALUES ('6', '2', '小米(MI)Air 12.5英寸全金属超轻薄笔记本(Core M-7Y30 4G 128G固态硬盘 全高清屏 背光键盘 Win10)银', '【FHD窄边框】第七代处理器 128G SSD支持M.2接口SSD硬盘扩容 薄至12.9mm 轻至1.07kg！AKG扬声器！', '3599.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【12.5银色】 M-7Y30 4G 128G', '小米Air', 'Windows 10', '4G', '全高清屏(1920*1080)', '集成显卡', 'Intel CoreM', '其它', '轻薄本', '128G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/5886e317Nbc52a580.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f747eNfdc5f737.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7483N695168a2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7486Nf809b915.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748bN28dbcbb2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748fNd2861229.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7493N5a3758af.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7497N20aac53e.jpg\"></div></div><div class=\"formwork\"><div clas', '153123456789', '115', '0');
INSERT INTO `xz_laptop` VALUES ('7', '2', '小米(MI)Air 12.5英寸全金属超轻薄笔记本(Core M-7Y30 4G 128G固态硬盘 全高清屏 背光键盘 Win10)金', '【FHD窄边框】第七代处理器 128G SSD支持M.2接口SSD硬盘扩容 薄至12.9mm 轻至1.07kg！AKG扬声器！', '3599.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【12.5金色】 M-7Y30 4G 128G', '小米Air', 'Windows 10', '4G', '全高清屏(1920*1080)', '集成显卡', 'Intel CoreM', '其它', '轻薄本', '128G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/5886e317Nbc52a580.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f747eNfdc5f737.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7483N695168a2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7486Nf809b915.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748bN28dbcbb2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748fNd2861229.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7493N5a3758af.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7497N20aac53e.jpg\"></div></div><div class=\"formwork\"><div clas', '156123456789', '812', '1');
INSERT INTO `xz_laptop` VALUES ('8', '2', '小米(MI)Air 12.5英寸全金属超轻薄笔记本(Core M-6Y30 4G 128G SSD固态硬盘 全高清屏 WIN10) 银', '【FHD窄边框】库存紧张 128G固态硬盘 支持M.2接口SSD硬盘扩容 薄至12.9mm 轻至1.07kg！', '3499.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【12.5英寸】M-6Y30 4G 128G', '小米Air', 'Windows 10', '4G', '全高清屏(1920*1080)', '集成显卡', 'Intel CoreM', '其它', '轻薄本', '128G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/5886e317Nbc52a580.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f747eNfdc5f737.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7483N695168a2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7486Nf809b915.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748bN28dbcbb2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748fNd2861229.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7493N5a3758af.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7497N20aac53e.jpg\"></div></div><div class=\"formwork\"><div clas', '157123456789', '1081', '0');
INSERT INTO `xz_laptop` VALUES ('9', '3', '联想(ThinkPad)轻薄系列E480c(20H3A00GCD)14英寸笔记本(i3-6006U 4G 500G 2G独显 Win10)黑色', '2017年经典款新！精致小黑！22.3mm轻薄体验，180度开合灵活耐用，高效稳健办公最长可达5小时！', '3499.00', ' *退货补运费 *30天无忧退货 *48小时快速退款', '【E480C-2017新】i3 4G 500G独显', 'ThinkPadE480c', 'Windows10', '4G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i3', '2G', '常规笔记本', '500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58745160N7de01df6.jpg\"></div></div></div>', '150423456789', '1461', '1');
INSERT INTO `xz_laptop` VALUES ('10', '3', '联想(ThinkPad)轻薄系列E480c(20H3A000CD)14英寸笔记本(i5-6200U 4G 500G 2G独显 Win10)黑色', '2017年经典款新！精致小黑！22.3mm轻薄体验，180度开合灵活耐用，高效稳健办公最长可达5小时！', '4499.00', ' *退货补运费 *30天无忧退货 *48小时快速退款', '【E480C-2017新】i5 4G 500G', 'ThinkPadE480c', 'Windows10', '4G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规笔记本', '500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58745160N7de01df6.jpg\"></div></div></div>', '151423456789', '733', '0');
INSERT INTO `xz_laptop` VALUES ('11', '3', '联想(ThinkPad)轻薄系列E480c(20H3A002CD)14英寸笔记本(i5-6200U 4G 256G SSD 2G独显 Win10)黑色', '2017年经典款新！精致小黑！22.3mm轻薄体验，180度开合灵活耐用，高效稳健办公最长可达5小时！', '5399.00', ' *退货补运费 *30天无忧退货 *48小时快速退款', '【E480C-2017新】i5 4G 256GSSD', 'ThinkPadE480c', 'Windows10', '4G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规笔记本', '256G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58745160N7de01df6.jpg\"></div></div></div>', '152423456789', '913', '1');
INSERT INTO `xz_laptop` VALUES ('12', '3', '联想(ThinkPad)轻薄系列E480c(20H3A001CD)14英寸笔记本电脑(i5-6200U 8G 256G SSD 2G独显 Win10)黑色', '2017年经典款新！精致小黑！22.3mm轻薄体验，180度开合灵活耐用，高效稳健办公最长可达5小时！', '5999.00', ' *退货补运费 *30天无忧退货 *48小时快速退款', '【E480C-2017新】i5 8G 256GSSD', 'ThinkPadE480c', 'Windows10', '8G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规笔记本', '256G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58745160N7de01df6.jpg\"></div></div></div>', '153423456789', '112', '0');
INSERT INTO `xz_laptop` VALUES ('13', '4', '华硕(ASUS)13.3英寸RX310UQ金属超极本 学生 商务手提轻薄便携超薄笔记本电脑 玫瑰金 13.3英寸I3-7100U/4G/128G固态', '【铝镁合金 纯固态 轻至1.45kg 金属超极本 】双尺寸可选', '4299.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '13.3英寸I3-7100U/4G/128G固态', '华硕(ASUS)13.3英寸RX310UQ金属超极本 学生 商务', 'Windows 10', '8G', '全高清屏(1920×1080)', '高性能游戏独立显卡', 'Intel i5低功耗版', '2G', '轻薄本', '128G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59190fe7N6a9fb112.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfceNc0694135.jpg\"><img class=\"\" src=\"img/product/detail/59143b58N0f24f48d.jpg\"><img class=\"\" src=\"img/product/detail/58f9de03Nd67611dc.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfcbNc96d061c.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfd1Nea212a7a.jpg\"></div></div></div>', '151123456789', '1197', '1');
INSERT INTO `xz_laptop` VALUES ('14', '4', '华硕(ASUS)13.3英寸RX310UQ金属超极本 学生 商务手提轻薄便携超薄笔记本电脑 玫瑰金 13.3英寸I5/4G/128G固态', '【铝镁合金 纯固态 轻至1.45kg 金属超极本 】双尺寸可选', '4999.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '13.3英寸I5/4G/128G固态', '华硕(ASUS)13.3英寸RX310UQ金属超极本 学生 商务', 'Windows 10', '8G', '全高清屏(1920×1080)', '高性能游戏独立显卡', 'Intel i5低功耗版', '2G', '轻薄本', '128G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59190fe7N6a9fb112.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfceNc0694135.jpg\"><img class=\"\" src=\"img/product/detail/59143b58N0f24f48d.jpg\"><img class=\"\" src=\"img/product/detail/58f9de03Nd67611dc.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfcbNc96d061c.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfd1Nea212a7a.jpg\"></div></div></div>', '152123456789', '137', '0');
INSERT INTO `xz_laptop` VALUES ('15', '4', '华硕(ASUS)13.3英寸RX310UQ金属超极本 学生 商务手提轻薄便携超薄笔记本电脑 玫瑰金 13.3英寸I5/4G/256G/2G独显', '【铝镁合金 纯固态 轻至1.45kg 金属超极本 】双尺寸可选', '5499.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '13.3英寸I5/4G/256G/2G独显', '华硕(ASUS)13.3英寸RX310UQ金属超极本 学生 商务', 'Windows 10', '4G', '全高清屏(1920×1080)', '高性能游戏独立显卡', 'Intel i5低功耗版', '2G', '轻薄本', '128G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59190fe7N6a9fb112.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfceNc0694135.jpg\"><img class=\"\" src=\"img/product/detail/59143b58N0f24f48d.jpg\"><img class=\"\" src=\"img/product/detail/58f9de03Nd67611dc.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfcbNc96d061c.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfd1Nea212a7a.jpg\"></div></div></div>', '153123456789', '21', '0');
INSERT INTO `xz_laptop` VALUES ('16', '4', '华硕(ASUS)13.3英寸RX310UQ金属超极本 学生 商务手提轻薄便携超薄笔记本电脑 玫瑰金 13.3英寸I5/8G/256G/2G独显', '【铝镁合金 纯固态 轻至1.45kg 金属超极本 】双尺寸可选', '5699.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '13.3英寸I5/8G/256G/2G独显', '华硕(ASUS)13.3英寸RX310UQ金属超极本 学生 商务', 'Windows 10', '8G', '全高清屏(1920×1080)', '高性能游戏独立显卡', 'Intel i5低功耗版', '2G', '轻薄本', '128G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59190fe7N6a9fb112.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfceNc0694135.jpg\"><img class=\"\" src=\"img/product/detail/59143b58N0f24f48d.jpg\"><img class=\"\" src=\"img/product/detail/58f9de03Nd67611dc.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfcbNc96d061c.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfd1Nea212a7a.jpg\"></div></div></div>', '152423456789', '981', '0');
INSERT INTO `xz_laptop` VALUES ('17', '5', '联想(Lenovo)小新700电竞版 15.6英寸游戏笔记本电脑(i5-6300HQ 8G 500G+128G SSD GTX950M 4G IPS)黑', '【小新家族2017闪耀换新！晒单得E卡！12期免息！】小新700电竞版！经典之选', '5199.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '小新700【i5 双硬盘 GTX950M】', '联想小新700', 'Windows 10', '8G', '分辨率：全高清屏(1920×1080)', 'GTX950M', 'Intel i5标准电压版', '4G', '游戏本', '128G+500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58ca2b14Nd5c09fcd.jpg\"><img class=\"\" src=\"img/product/detail/58ca2b28Na5a22f83.jpg\"><img class=\"\" src=\"img/product/detail/58ca3012Nc99ab61f.jpg\"><img class=\"\" src=\"img/product/detail/58ca2b51Nbf258c3b.jpg\"><img class=\"\" src=\"img/product/detail/58ca2b67N436e60de.jpg\"></div></div></div>', '149123456789', '192', '1');
INSERT INTO `xz_laptop` VALUES ('18', '5', '联想(Lenovo)小新700电竞版 15.6英寸游戏笔记本电脑(i7-6700HQ 8G 500G GTX950M 4G FHD IPS Office)黑', '【小新家族2017闪耀换新！晒单得E卡！12期免息！】小新700电竞版！经典之选', '5499.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '小新700【i7 8G 500G GTX950M】', '联想小新700', 'Windows 10', '8G', '分辨率：全高清屏(1920×1080)', 'GTX950M', 'Intel i7标准电压版', '4G', '游戏本', '128G+500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58ca2b14Nd5c09fcd.jpg\"><img class=\"\" src=\"img/product/detail/58ca2b28Na5a22f83.jpg\"><img class=\"\" src=\"img/product/detail/58ca3012Nc99ab61f.jpg\"><img class=\"\" src=\"img/product/detail/58ca2b51Nbf258c3b.jpg\"><img class=\"\" src=\"img/product/detail/58ca2b67N436e60de.jpg\"></div></div></div>', '151523456789', '260', '0');
INSERT INTO `xz_laptop` VALUES ('19', '6', '戴尔DELL灵越燃7000 R1525S 14.0英寸轻薄窄边框笔记本电脑(i5-7200U 4G 128GSSD+500G 940MX 2G独显 FHD)银', '【轻薄微边框、燃7000】七代i5双核CPU、128GSSD+500G双硬盘、IPS全高清显示屏，动力强劲性能澎湃！', '5299.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【流光银】i5-7200u 4G 128 500G', '戴尔燃7000', 'Windows 10', '4G', '全高清屏(1920×1080)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '轻薄本', '128G+500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58d87221Na033954c.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58e5e4b5N862f8aa1.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/57bfa672N20953b71.jpg\"></div></div></div>', '151923456789', '911', '0');
INSERT INTO `xz_laptop` VALUES ('20', '6', '戴尔DELL灵越燃7000 R1725G 14.0英寸轻薄窄边框笔记本电脑(i7-7500U 8G 128GSSD+1T 940MX 2G独显 FHD)金', '【轻薄微边框、燃7000】七代i7双核CPU、128GSSD+500G双硬盘、IPS全高清显示屏，动力强劲性能澎湃！', '6599.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【溢彩金】i7-7500u 8G 128 1T', '戴尔燃7000', 'Windows 10', '8G', '全高清屏(1920×1080)', '入门级游戏独立显卡', 'Intel i7低功耗版', '2G', '轻薄本', '128G+500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58d87221Na033954c.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58e5e4b5N862f8aa1.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/57bfa672N20953b71.jpg\"></div></div></div>', '150823456789', '1930', '1');
INSERT INTO `xz_laptop` VALUES ('21', '6', '戴尔DELL灵越燃7000 R1525P 14.0英寸轻薄窄边框笔记本电脑(i5-7200U 4G 128GSSD+500G 2G独显 FHD)元気粉', '【轻薄微边框、燃7000元気粉】七代i5双核CPU、128GSSD+500G双硬盘、IPS全高清显示屏，动力强劲性能澎湃！', '5299.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【元気粉】i5-7200u 4G 128 500G', '戴尔燃7000', 'Windows 10', '4G', '全高清屏(1920×1080)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '轻薄本', '128G+500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58d87221Na033954c.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58e5e4b5N862f8aa1.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/57bfa672N20953b71.jpg\"></div></div></div>', '151023456789', '987', '1');
INSERT INTO `xz_laptop` VALUES ('22', '7', '戴尔DELL灵越游匣15PR-5745B 15.6英寸游戏笔记本电脑(i7-7700HQ 8G 128GSSD+1T GTX1050 4G独显 FHD)黑', '【白条6期免息 游匣“10”力出击】七代四核CPU ,GTX1050 4G独显,FHD全高清屏,热血出击！', '6999.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '宗师版 i7-7700HQ 8G GTX1050 4G', '戴尔灵越游匣15PR-5745B', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX960M', 'Intel i7标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d3fNd4e6c74e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d49Nd9aa8623.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d53N79717f17.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003db4N5441df2e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003afdN7d9208b8.jpg\"></div></div></div>', '148123456789', '1901', '1');
INSERT INTO `xz_laptop` VALUES ('23', '7', '戴尔DELL灵越游匣15PR-5645SE 15.6英寸游戏笔记本电脑(i5-7300HQ 8G 128GSSD+1T GTX1050 4G独显 FHD)枪弹版', '游匣枪弹版精装上市 3D立体喷涂画面 机身更酷炫 七代四核CPU ,GTX1050 4G独显,FHD全高清屏,热血出击！', '6699.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '枪弹版 i5-7300HQ 8G GTX1050 4G', '戴尔灵越游匣15PR-5645SE', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX960M', 'Intel i5标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d3fNd4e6c74e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d49Nd9aa8623.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d53N79717f17.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003db4N5441df2e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003afdN7d9208b8.jpg\"></div></div></div>', '153123456789', '1231', '0');
INSERT INTO `xz_laptop` VALUES ('24', '7', '戴尔DELL灵越游匣15PR-5745SE 15.6英寸游戏笔记本电脑(i7-7700HQ 8G 128GSSD+1T GTX1050 4G独显 FHD)枪弹版', '游匣枪弹版精装上市 3D立体喷涂画面 机身更酷炫 七代四核CPU ,GTX1050 4G独显,FHD全高清屏,热血出击！', '7999.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '枪弹版 i7-7700HQ 8G GTX1050 4G', '戴尔灵越游匣15PR-5645SE', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX960M', 'Intel i7标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d3fNd4e6c74e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d49Nd9aa8623.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d53N79717f17.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003db4N5441df2e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003afdN7d9208b8.jpg\"></div></div></div>', '1539923456789', '221', '0');
INSERT INTO `xz_laptop` VALUES ('25', '7', '戴尔DELL灵越游匣15PR-3848B 15.6英寸游戏笔记本电脑(i7-6700HQ 4G 128GSSD+500G GTX960M 4G FHD)黑', '【强力散热保性能】 960M 4G独显 预装128SSD 双硬盘游戏更劲爽 我们比大多数产品 散热好一些', '6099.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '精锐版 i7-6700HQ 4G GTX960 4G', '戴尔游匣', 'Windows 10', '4G', '全高清屏(1920×1080)', 'GTX960M', 'Intel i7标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d3fNd4e6c74e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d49Nd9aa8623.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d53N79717f17.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003db4N5441df2e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003afdN7d9208b8.jpg\"></div></div></div>', '1519123456789', '711', '1');
INSERT INTO `xz_laptop` VALUES ('26', '7', '戴尔DELL灵越游匣15PR-2648B 15.6英寸游戏笔记本电脑(i5-6300HQ 4G 128SSD+500G GTX960M 4G独显 FHD)黑', '【选游戏本还得看散热】960M 4G独显 预装128SSD 双硬盘游戏更劲爽 ！', '5299.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '精锐版 i5-6300HQ 4G GTX960 4G', '戴尔游匣', 'Windows 10', '4G', '全高清屏(1920×1080)', 'GTX960M', 'Intel i5标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d3fNd4e6c74e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d49Nd9aa8623.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d53N79717f17.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003db4N5441df2e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003afdN7d9208b8.jpg\"></div></div></div>', '1529123456789', '319', '0');
INSERT INTO `xz_laptop` VALUES ('27', '7', '戴尔DELL灵越游匣15PR-5645B 15.6英寸游戏笔记本电脑(i5-7300HQ 8G 128GSSD+1T GTX1050 4G独显 FHD)黑', '【白条6期免息 游匣“10”力出击】七代四核CPU ,GTX1050 4G独显,FHD全高清屏,热血出击！', '5999.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '宗师版 i5-7300HQ 8G GTX1050 4G', '戴尔灵越游匣15PR-5645B', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX1050', 'Intel i7标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d3fNd4e6c74e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d49Nd9aa8623.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d53N79717f17.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003db4N5441df2e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003afdN7d9208b8.jpg\"></div></div></div>', '1511123456789', '2110', '0');
INSERT INTO `xz_laptop` VALUES ('28', '8', '联想(ThinkPad)轻薄系列E470c(20H3A000CD)14英寸笔记本电脑(i5-6200U 4G 500G 2G独显 Win10)黑色', '点击进入5月大促，超值满千减百品牌周', '3998.00', '*30天无忧退货 *48小时快速退款', '【E470C-2017新】i5 4G 500G', 'ThinkPadE470 c', 'Linux', '4G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规本', '500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58119b8aNb84f1e22.jpg\"></div></div></div>', '150123456789', '117', '1');
INSERT INTO `xz_laptop` VALUES ('29', '8', '联想(ThinkPad)轻薄系列E470c(20H3A004CD)14英寸笔记本电脑(i5-6200U 8G 500G 2G独显 Win10)黑色', '点击进入5月大促，超值满千减百品牌周', '4699.00', '*30天无忧退货 *48小时快速退款', '【E470C-2017新】i5 8G 500G', 'ThinkPadE470 c', 'Linux', '8G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规本', '500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58119b8aNb84f1e22.jpg\"></div></div></div>', '151123456789', '1862', '0');
INSERT INTO `xz_laptop` VALUES ('30', '8', '联想(ThinkPad)轻薄系列E470c(20H3A003CD)14英寸笔记本电脑(i5-6200U 8G 1T 2G独显 Win10)黑色', '点击进入5月大促，超值满千减百品牌周', '5499.00', '*30天无忧退货 *48小时快速退款', '【E470C-2017新】i5 8G 1TB', 'ThinkPadE470 c', 'Linux', '8G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规本', '1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58119b8aNb84f1e22.jpg\"></div></div></div>', '152123456789', '812', '1');
INSERT INTO `xz_laptop` VALUES ('31', '8', '联想(ThinkPad)轻薄系列E470c(20H3A002CD)14英寸笔记本电脑(i5-6200U 4G 256G SSD 2G独显 Win10)黑色', '点击进入5月大促，超值满千减百品牌周', '5399.00', '*30天无忧退货 *48小时快速退款', '【E470C-2017新】i5 4G 256GSSD', 'ThinkPadE470 c', 'Linux', '4G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规本', '256G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58119b8aNb84f1e22.jpg\"></div></div></div>', '153123456789', '162', '0');
INSERT INTO `xz_laptop` VALUES ('32', '8', '联想(ThinkPad)轻薄系列E470c(20H3A001CD)14英寸笔记本电脑(i5-6200U 8G 256G SSD 2G独显 Win10)黑色', '点击进入5月大促，超值满千减百品牌周', '5499.00', '*30天无忧退货 *48小时快速退款', '【E470C-2017新】i5 8G 256GSSD', 'ThinkPadE470 c', 'Linux', '8G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规本', '256G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58119b8aNb84f1e22.jpg\"></div></div></div>', '154123456789', '1180', '0');
INSERT INTO `xz_laptop` VALUES ('33', '9', '华硕(ASUS)顽石电竞版FH5900 15.6英寸游戏笔记本电脑(i7-6700HQ 4G 1TB +128G SSD NV940MX 2G 独显 FHD)', '顽石血统 标压电竞版 强劲动力带你畅快遨游', '4999.00', ' *退货补运费 *30天无忧退货 *72小时发货', '【高速】顽石游戏本i74G1T128SSD', '华硕FH5900V', 'Windows 10', '4G', '全高清屏(1920*1080)', '入门级游戏独立显卡', 'Intel i7标准电压版', '2G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/583d2fb0N44aa29cf.jpg\"><img class=\"\" src=\"img/product/detail/583d2fd5N33db758b.jpg\"><img class=\"\" src=\"img/product/detail/583d359aN47f3276b.jpg\"><img class=\"\" src=\"img/product/detail/583d3036Nef20d28f.jpg\"><img class=\"\" src=\"img/product/detail/583d304aN4722f8d5.jpg\"></div></div></div>', '1450123456789', '1231', '0');
INSERT INTO `xz_laptop` VALUES ('34', '9', '华硕(ASUS) 顽石四代尊享版 15.6英寸笔记本电脑(i7-7500U 8G 1TB NV940MX 2G独显 深蓝 FHD )', '第七代i7处理器，8G超大内存与1T硬盘，快无止境、大无止境', '4699.00', ' *退货补运费 *30天无忧退货 *72小时发货', '顽石经典【高配i7 8G 1T 深蓝】', '华硕FL5900UQ', 'Windows 10', '8G', '全高清屏(1920*1080)', '入门级游戏独立显卡', 'Intel i7低功耗版', '2G', '游戏本', '1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/583d2fb0N44aa29cf.jpg\"><img class=\"\" src=\"img/product/detail/583d2fd5N33db758b.jpg\"><img class=\"\" src=\"img/product/detail/583d359aN47f3276b.jpg\"><img class=\"\" src=\"img/product/detail/583d3036Nef20d28f.jpg\"><img class=\"\" src=\"img/product/detail/583d304aN4722f8d5.jpg\"></div></div></div>', '1550123456789', '1231', '1');
INSERT INTO `xz_laptop` VALUES ('35', '9', '华硕(ASUS) 顽石四代旗舰版FL5900 15.6英寸笔记本电脑(i7-7500U 4G 1TB +128GBSSD NV940MX 深蓝 FHD)', '混合硬盘，1T搭载128G固态，读取速度更快，智能散热不烫手！！', '4999.00', ' *退货补运费 *30天无忧退货 *72小时发货', '顽石双盘【i7 4G 1t加128SSD】', '华硕FL5900UQ', 'Windows 10', '4G', '全高清屏(1920*1080)', '入门级游戏独立显卡', 'Intel i7低功耗版', '2G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/583d2fb0N44aa29cf.jpg\"><img class=\"\" src=\"img/product/detail/583d2fd5N33db758b.jpg\"><img class=\"\" src=\"img/product/detail/583d359aN47f3276b.jpg\"><img class=\"\" src=\"img/product/detail/583d3036Nef20d28f.jpg\"><img class=\"\" src=\"img/product/detail/583d304aN4722f8d5.jpg\"></div></div></div>', '1531023456789', '221', '0');
INSERT INTO `xz_laptop` VALUES ('36', '9', '华硕(ASUS)顽石四代疾速版 FL5900 15.6英寸笔记本电脑(i7-6500U 4G 512GB SSD NV940M 2G独显 红色)', '【同样配置看主板，搭配华硕主板让您放心，屏幕无坏点保证】办公，游戏无压力！！！', '4799.00', ' *退货补运费 *30天无忧退货 *72小时发货', '顽石高速【i7-4G 512SSD 炫红】', '华硕FL5900U', 'Windows 10', '4G', '全高清屏(1920*1080)', 'GT940M', 'Intel i7低功耗版', '2G', '游戏本', '512G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/583d2fb0N44aa29cf.jpg\"><img class=\"\" src=\"img/product/detail/583d2fd5N33db758b.jpg\"><img class=\"\" src=\"img/product/detail/583d359aN47f3276b.jpg\"><img class=\"\" src=\"img/product/detail/583d3036Nef20d28f.jpg\"><img class=\"\" src=\"img/product/detail/583d304aN4722f8d5.jpg\"></div></div></div>', '1510123456789', '103', '1');
INSERT INTO `xz_laptop` VALUES ('37', '9', '华硕(ASUS) 顽石四代疾速版FL5900 15.6英寸笔记本电脑(i7-6500U 4G 512G SSD NV940MX 2G独显 红色 FHD)', '疾速版，就是要你快！512G固态硬盘，第六代i7处理器搭载2G独显！', '4799.00', ' *退货补运费 *30天无忧退货 *72小时发货', '顽石高速【i74G512SSD NV940MX】', '华硕FL5900UQ', 'Windows 10', '4G', '全高清屏(1920*1080)', '入门级游戏独立显卡', 'Intel i7低功耗版', '2G', '游戏本', '512G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/583d2fb0N44aa29cf.jpg\"><img class=\"\" src=\"img/product/detail/583d2fd5N33db758b.jpg\"><img class=\"\" src=\"img/product/detail/583d359aN47f3276b.jpg\"><img class=\"\" src=\"img/product/detail/583d3036Nef20d28f.jpg\"><img class=\"\" src=\"img/product/detail/583d304aN4722f8d5.jpg\"></div></div></div>', '1450123456789', '341', '0');
INSERT INTO `xz_laptop` VALUES ('38', '10', '神舟(HASEE)战神Z7M-KP7GT 15.6英寸游戏本笔记本电脑(i7-7700HQ 8G 1T+128G SSD GTX1050Ti 1080P)IPS屏', '超强性价比！！', '6199.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', 'Z7M GT【i7 128G+1T GTX1050Ti】', '神舟战神Z7M-KP7GT', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX1050Ti', 'Intel i7标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58c67b22Ned66fcb8.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b23Nfffc2f8b.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N04b18388.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N6d5ce71c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24Nac3dc074.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N8aa1905c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N9aa8a252.jpg\"></div></div></div>', '151123456789', '441', '0');
INSERT INTO `xz_laptop` VALUES ('39', '10', '神舟(HASEE)战神Z7M-SL7D2 15.6英寸游戏本笔记本电脑(i7-6700HQ 8G 1T+128GB SSD GTX965M 1080P)IPS', '六代i7 SSD GTX965M还预装WIN10，一步到位，你赢了！', '5499.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '战神Z7M【四核i7 GTX965M】', '神舟战神Z7M', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX965M', 'Intel i7标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58c67b22Ned66fcb8.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b23Nfffc2f8b.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N04b18388.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N6d5ce71c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24Nac3dc074.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N8aa1905c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N9aa8a252.jpg\"></div></div></div>', '152123456789', '1289', '1');
INSERT INTO `xz_laptop` VALUES ('40', '10', '神舟(HASEE)战神Z7M-SL5D1 15.6英寸游戏本笔记本电脑(i5-6300HQ 8G 1TB GTX965M 1080P)IPS屏', '超强性价比！！', '4499.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '战神Z7M【四核i5 GTX965M】', '神舟战神Z7M-SL5D1', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX965M', 'Intel i7标准电压版', '2G', '游戏本', '1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58c67b22Ned66fcb8.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b23Nfffc2f8b.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N04b18388.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N6d5ce71c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24Nac3dc074.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N8aa1905c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N9aa8a252.jpg\"></div></div></div>', '153123456789', '231', '0');
INSERT INTO `xz_laptop` VALUES ('41', '10', '神舟(HASEE)战神Z6-KP5GT 15.6英寸游戏本笔记本电脑(i5-7300HQ 8G 1T+128G SSD GTX1050 1080P)黑色', '超强性价比！！', '5199.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', 'Z6 GT【i5 128G+1T GTX1050】', '神舟战神Z6-KP5GT', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX1050', 'Intel i5标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58c67b22Ned66fcb8.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b23Nfffc2f8b.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N04b18388.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N6d5ce71c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24Nac3dc074.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N8aa1905c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N9aa8a252.jpg\"></div></div></div>', '154123456789', '469', '1');
INSERT INTO `xz_laptop` VALUES ('42', '10', '神舟(HASEE) 战神G6-SL7S2 17.3英寸游戏笔记本(i7-6700HQ 8G 256G SSD GTX960M 2G独显 1080P)黑色', '17.3英寸大屏游戏本，纯固态硬盘，秒速开启超神之路！', '5499.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '战神G6【17.3英寸 GTX960M】', '神舟战神G6', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX960M', 'Intel i7标准电压版', '4G', '游戏本', '256固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58c67b22Ned66fcb8.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b23Nfffc2f8b.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N04b18388.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N6d5ce71c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24Nac3dc074.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N8aa1905c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N9aa8a252.jpg\"></div></div></div>', '155123456789', '1223', '0');
INSERT INTO `xz_laptop` VALUES ('43', '10', '神舟(HASEE)战神Z6-KP7GT 15.6英寸游戏本笔记本电脑(i7-7700HQ 8G 1T+128G SSD GTX1050 1080P)黑色', '预约享5499抢！【128G SSD+1T HDD】双硬盘，春风“十”里，期待是你！', '5699.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', 'Z6 GT【i7 128G+1T GTX1050】', '神舟战神Z6-KP7GT', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX1050', 'Intel i7标准电压版', '2G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58c67b22Ned66fcb8.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b23Nfffc2f8b.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N04b18388.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N6d5ce71c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24Nac3dc074.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N8aa1905c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N9aa8a252.jpg\"></div></div></div>', '156123456789', '1844', '1');
INSERT INTO `xz_laptop` VALUES ('44', null, 'title11111111111111111111111111', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `xz_laptop` VALUES ('45', null, 'title11111111111111111111111111', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `xz_laptop` VALUES ('46', null, 'title1222222222222', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `xz_laptop` VALUES ('48', null, 'title12222222222224343', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for xz_laptop_family
-- ----------------------------
DROP TABLE IF EXISTS `xz_laptop_family`;
CREATE TABLE `xz_laptop_family` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xz_laptop_family
-- ----------------------------
INSERT INTO `xz_laptop_family` VALUES ('1', 'AppleMacBookAir');
INSERT INTO `xz_laptop_family` VALUES ('2', '小米Air');
INSERT INTO `xz_laptop_family` VALUES ('3', 'ThinkPadE480C');
INSERT INTO `xz_laptop_family` VALUES ('4', '华硕RX310UQ');
INSERT INTO `xz_laptop_family` VALUES ('5', '联想小新700');
INSERT INTO `xz_laptop_family` VALUES ('6', '戴尔燃7000');
INSERT INTO `xz_laptop_family` VALUES ('7', '戴尔灵越15PR-5745B');
INSERT INTO `xz_laptop_family` VALUES ('8', 'ThinkPadE470 C');
INSERT INTO `xz_laptop_family` VALUES ('9', '华硕FH5900V');
INSERT INTO `xz_laptop_family` VALUES ('10', '神舟战神Z7M-KP7GT');

-- ----------------------------
-- Table structure for xz_laptop_pic
-- ----------------------------
DROP TABLE IF EXISTS `xz_laptop_pic`;
CREATE TABLE `xz_laptop_pic` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `laptop_id` int(11) DEFAULT NULL,
  `sm` varchar(128) DEFAULT NULL,
  `md` varchar(128) DEFAULT NULL,
  `lg` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xz_laptop_pic
-- ----------------------------
INSERT INTO `xz_laptop_pic` VALUES ('1', '1', 'img/product/sm/57b12a31N8f4f75a3.jpg', 'img/product/md/57b12a31N8f4f75a3.jpg', 'img/product/lg/57b12a31N8f4f75a3.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('2', '1', 'img/product/sm/57ad359dNd4a6f130.jpg', 'img/product/md/57ad359dNd4a6f130.jpg', 'img/product/lg/57ad359dNd4a6f130.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('3', '1', 'img/product/sm/57ad8846N64ac3c79.jpg', 'img/product/md/57ad8846N64ac3c79.jpg', 'img/product/lg/57ad8846N64ac3c79.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('4', '2', 'img/product/sm/57b12a31N8f4f75a3.jpg', 'img/product/md/57b12a31N8f4f75a3.jpg', 'img/product/lg/57b12a31N8f4f75a3.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('5', '2', 'img/product/sm/57ad359dNd4a6f130.jpg', 'img/product/md/57ad359dNd4a6f130.jpg', 'img/product/lg/57ad359dNd4a6f130.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('6', '2', 'img/product/sm/57ad8846N64ac3c79.jpg', 'img/product/md/57ad8846N64ac3c79.jpg', 'img/product/lg/57ad8846N64ac3c79.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('7', '3', 'img/product/sm/57b12a31N8f4f75a3.jpg', 'img/product/md/57b12a31N8f4f75a3.jpg', 'img/product/lg/57b12a31N8f4f75a3.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('8', '3', 'img/product/sm/57ad359dNd4a6f130.jpg', 'img/product/md/57ad359dNd4a6f130.jpg', 'img/product/lg/57ad359dNd4a6f130.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('9', '3', 'img/product/sm/57ad8846N64ac3c79.jpg', 'img/product/md/57ad8846N64ac3c79.jpg', 'img/product/lg/57ad8846N64ac3c79.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('10', '4', 'img/product/sm/57b12a31N8f4f75a3.jpg', 'img/product/md/57b12a31N8f4f75a3.jpg', 'img/product/lg/57b12a31N8f4f75a3.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('11', '4', 'img/product/sm/57ad359dNd4a6f130.jpg', 'img/product/md/57ad359dNd4a6f130.jpg', 'img/product/lg/57ad359dNd4a6f130.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('12', '4', 'img/product/sm/57ad8846N64ac3c79.jpg', 'img/product/md/57ad8846N64ac3c79.jpg', 'img/product/lg/57ad8846N64ac3c79.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('13', '5', 'img/product/sm/57e3b072N661cd00d.jpg', 'img/product/md/57e3b072N661cd00d.jpg', 'img/product/lg/57e3b072N661cd00d.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('14', '5', 'img/product/sm/57e1ff09Nf610fea3.jpg', 'img/product/md/57e1ff09Nf610fea3.jpg', 'img/product/lg/57e1ff09Nf610fea3.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('15', '5', 'img/product/sm/57e1ff17N286390a9.jpg', 'img/product/md/57e1ff17N286390a9.jpg', 'img/product/lg/57e1ff17N286390a9.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('16', '5', 'img/product/sm/57e1ff2fN8a36d0fe.jpg', 'img/product/md/57e1ff2fN8a36d0fe.jpg', 'img/product/lg/57e1ff2fN8a36d0fe.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('17', '5', 'img/product/sm/57e52dffNa4d8ce2c.jpg', 'img/product/md/57e52dffNa4d8ce2c.jpg', 'img/product/lg/57e52dffNa4d8ce2c.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('18', '5', 'img/product/sm/57e52e03N4ec367dd.jpg', 'img/product/md/57e52e03N4ec367dd.jpg', 'img/product/lg/57e52e03N4ec367dd.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('19', '5', 'img/product/sm/57e52e06N116974f7.jpg', 'img/product/md/57e52e06N116974f7.jpg', 'img/product/lg/57e52e06N116974f7.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('20', '6', 'img/product/sm/57e3b072N661cd00d.jpg', 'img/product/md/57e3b072N661cd00d.jpg', 'img/product/lg/57e3b072N661cd00d.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('21', '6', 'img/product/sm/57e1ff09Nf610fea3.jpg', 'img/product/md/57e1ff09Nf610fea3.jpg', 'img/product/lg/57e1ff09Nf610fea3.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('22', '6', 'img/product/sm/57e1ff17N286390a9.jpg', 'img/product/md/57e1ff17N286390a9.jpg', 'img/product/lg/57e1ff17N286390a9.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('23', '6', 'img/product/sm/57e1ff2fN8a36d0fe.jpg', 'img/product/md/57e1ff2fN8a36d0fe.jpg', 'img/product/lg/57e1ff2fN8a36d0fe.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('24', '6', 'img/product/sm/57e52dffNa4d8ce2c.jpg', 'img/product/md/57e52dffNa4d8ce2c.jpg', 'img/product/lg/57e52dffNa4d8ce2c.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('25', '6', 'img/product/sm/57e52e03N4ec367dd.jpg', 'img/product/md/57e52e03N4ec367dd.jpg', 'img/product/lg/57e52e03N4ec367dd.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('26', '6', 'img/product/sm/57e52e06N116974f7.jpg', 'img/product/md/57e52e06N116974f7.jpg', 'img/product/lg/57e52e06N116974f7.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('27', '7', 'img/product/sm/57e3b072N661cd00d.jpg', 'img/product/md/57e3b072N661cd00d.jpg', 'img/product/lg/57e3b072N661cd00d.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('28', '7', 'img/product/sm/57e1ff09Nf610fea3.jpg', 'img/product/md/57e1ff09Nf610fea3.jpg', 'img/product/lg/57e1ff09Nf610fea3.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('29', '7', 'img/product/sm/57e1ff17N286390a9.jpg', 'img/product/md/57e1ff17N286390a9.jpg', 'img/product/lg/57e1ff17N286390a9.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('30', '7', 'img/product/sm/57e1ff2fN8a36d0fe.jpg', 'img/product/md/57e1ff2fN8a36d0fe.jpg', 'img/product/lg/57e1ff2fN8a36d0fe.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('31', '7', 'img/product/sm/57e52dffNa4d8ce2c.jpg', 'img/product/md/57e52dffNa4d8ce2c.jpg', 'img/product/lg/57e52dffNa4d8ce2c.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('32', '7', 'img/product/sm/57e52e03N4ec367dd.jpg', 'img/product/md/57e52e03N4ec367dd.jpg', 'img/product/lg/57e52e03N4ec367dd.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('33', '7', 'img/product/sm/57e52e06N116974f7.jpg', 'img/product/md/57e52e06N116974f7.jpg', 'img/product/lg/57e52e06N116974f7.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('34', '8', 'img/product/sm/57e3b072N661cd00d.jpg', 'img/product/md/57e3b072N661cd00d.jpg', 'img/product/lg/57e3b072N661cd00d.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('35', '8', 'img/product/sm/57e1ff09Nf610fea3.jpg', 'img/product/md/57e1ff09Nf610fea3.jpg', 'img/product/lg/57e1ff09Nf610fea3.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('36', '8', 'img/product/sm/57e1ff17N286390a9.jpg', 'img/product/md/57e1ff17N286390a9.jpg', 'img/product/lg/57e1ff17N286390a9.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('37', '8', 'img/product/sm/57e1ff2fN8a36d0fe.jpg', 'img/product/md/57e1ff2fN8a36d0fe.jpg', 'img/product/lg/57e1ff2fN8a36d0fe.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('38', '8', 'img/product/sm/57e52dffNa4d8ce2c.jpg', 'img/product/md/57e52dffNa4d8ce2c.jpg', 'img/product/lg/57e52dffNa4d8ce2c.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('39', '8', 'img/product/sm/57e52e03N4ec367dd.jpg', 'img/product/md/57e52e03N4ec367dd.jpg', 'img/product/lg/57e52e03N4ec367dd.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('40', '8', 'img/product/sm/57e52e06N116974f7.jpg', 'img/product/md/57e52e06N116974f7.jpg', 'img/product/lg/57e52e06N116974f7.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('41', '9', 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('42', '9', 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('43', '9', 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('44', '9', 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('45', '9', 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('46', '9', 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('47', '9', 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('48', '9', 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('49', '10', 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('50', '10', 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('51', '10', 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('52', '10', 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('53', '10', 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('54', '10', 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('55', '10', 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('56', '10', 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('57', '11', 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('58', '11', 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('59', '11', 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('60', '11', 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('61', '11', 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('62', '11', 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('63', '11', 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('64', '11', 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('65', '12', 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('66', '12', 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('67', '12', 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('68', '12', 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('69', '12', 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('70', '12', 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('71', '12', 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('72', '12', 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('73', '13', 'img/product/sm/590a98f9N8039f132.jpg', 'img/product/md/590a98f9N8039f132.jpg', 'img/product/lg/590a98f9N8039f132.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('74', '13', 'img/product/sm/58f46de7N0dafbae3.jpg', 'img/product/md/58f46de7N0dafbae3.jpg', 'img/product/lg/58f46de7N0dafbae3.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('75', '13', 'img/product/sm/58e5c226N4836a223.jpg', 'img/product/md/58e5c226N4836a223.jpg', 'img/product/lg/58e5c226N4836a223.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('76', '13', 'img/product/sm/58dc76d5N8a0947a3.jpg', 'img/product/md/58dc76d5N8a0947a3.jpg', 'img/product/lg/58dc76d5N8a0947a3.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('77', '13', 'img/product/sm/58fd9c54Nec723d68.jpg', 'img/product/md/58fd9c54Nec723d68.jpg', 'img/product/lg/58fd9c54Nec723d68.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('78', '13', 'img/product/sm/58bfc2afNd44b4135.jpg', 'img/product/md/58bfc2afNd44b4135.jpg', 'img/product/lg/58bfc2afNd44b4135.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('79', '14', 'img/product/sm/590a98f9N8039f132.jpg', 'img/product/md/590a98f9N8039f132.jpg', 'img/product/lg/590a98f9N8039f132.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('80', '14', 'img/product/sm/58f46de7N0dafbae3.jpg', 'img/product/md/58f46de7N0dafbae3.jpg', 'img/product/lg/58f46de7N0dafbae3.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('81', '14', 'img/product/sm/58e5c226N4836a223.jpg', 'img/product/md/58e5c226N4836a223.jpg', 'img/product/lg/58e5c226N4836a223.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('82', '14', 'img/product/sm/58dc76d5N8a0947a3.jpg', 'img/product/md/58dc76d5N8a0947a3.jpg', 'img/product/lg/58dc76d5N8a0947a3.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('83', '14', 'img/product/sm/58fd9c54Nec723d68.jpg', 'img/product/md/58fd9c54Nec723d68.jpg', 'img/product/lg/58fd9c54Nec723d68.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('84', '14', 'img/product/sm/58bfc2afNd44b4135.jpg', 'img/product/md/58bfc2afNd44b4135.jpg', 'img/product/lg/58bfc2afNd44b4135.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('85', '15', 'img/product/sm/590a98f9N8039f132.jpg', 'img/product/md/590a98f9N8039f132.jpg', 'img/product/lg/590a98f9N8039f132.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('86', '15', 'img/product/sm/58f46de7N0dafbae3.jpg', 'img/product/md/58f46de7N0dafbae3.jpg', 'img/product/lg/58f46de7N0dafbae3.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('87', '15', 'img/product/sm/58e5c226N4836a223.jpg', 'img/product/md/58e5c226N4836a223.jpg', 'img/product/lg/58e5c226N4836a223.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('88', '15', 'img/product/sm/58dc76d5N8a0947a3.jpg', 'img/product/md/58dc76d5N8a0947a3.jpg', 'img/product/lg/58dc76d5N8a0947a3.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('89', '15', 'img/product/sm/58fd9c54Nec723d68.jpg', 'img/product/md/58fd9c54Nec723d68.jpg', 'img/product/lg/58fd9c54Nec723d68.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('90', '15', 'img/product/sm/58bfc2afNd44b4135.jpg', 'img/product/md/58bfc2afNd44b4135.jpg', 'img/product/lg/58bfc2afNd44b4135.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('91', '16', 'img/product/sm/590a98f9N8039f132.jpg', 'img/product/md/590a98f9N8039f132.jpg', 'img/product/lg/590a98f9N8039f132.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('92', '16', 'img/product/sm/58f46de7N0dafbae3.jpg', 'img/product/md/58f46de7N0dafbae3.jpg', 'img/product/lg/58f46de7N0dafbae3.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('93', '16', 'img/product/sm/58e5c226N4836a223.jpg', 'img/product/md/58e5c226N4836a223.jpg', 'img/product/lg/58e5c226N4836a223.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('94', '16', 'img/product/sm/58dc76d5N8a0947a3.jpg', 'img/product/md/58dc76d5N8a0947a3.jpg', 'img/product/lg/58dc76d5N8a0947a3.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('95', '16', 'img/product/sm/58fd9c54Nec723d68.jpg', 'img/product/md/58fd9c54Nec723d68.jpg', 'img/product/lg/58fd9c54Nec723d68.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('96', '16', 'img/product/sm/58bfc2afNd44b4135.jpg', 'img/product/md/58bfc2afNd44b4135.jpg', 'img/product/lg/58bfc2afNd44b4135.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('97', '17', 'img/product/sm/587f476aNcfbf7869.jpg', 'img/product/md/587f476aNcfbf7869.jpg', 'img/product/lg/587f476aNcfbf7869.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('98', '17', 'img/product/sm/57871083Nefe2d3d6.jpg', 'img/product/md/57871083Nefe2d3d6.jpg', 'img/product/lg/57871083Nefe2d3d6.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('99', '17', 'img/product/sm/57871086N86c8f0ab.jpg', 'img/product/md/57871086N86c8f0ab.jpg', 'img/product/lg/57871086N86c8f0ab.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('100', '17', 'img/product/sm/5787107bN73d05ad5.jpg', 'img/product/md/5787107bN73d05ad5.jpg', 'img/product/lg/5787107bN73d05ad5.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('101', '17', 'img/product/sm/5787109cNaf26e3b0.jpg', 'img/product/md/5787109cNaf26e3b0.jpg', 'img/product/lg/5787109cNaf26e3b0.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('102', '17', 'img/product/sm/578710a0N07795fe5.jpg', 'img/product/md/578710a0N07795fe5.jpg', 'img/product/lg/578710a0N07795fe5.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('103', '17', 'img/product/sm/578710a3Nc498e3ea.jpg', 'img/product/md/578710a3Nc498e3ea.jpg', 'img/product/lg/578710a3Nc498e3ea.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('104', '18', 'img/product/sm/587f476aNcfbf7869.jpg', 'img/product/md/587f476aNcfbf7869.jpg', 'img/product/lg/587f476aNcfbf7869.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('105', '18', 'img/product/sm/57871083Nefe2d3d6.jpg', 'img/product/md/57871083Nefe2d3d6.jpg', 'img/product/lg/57871083Nefe2d3d6.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('106', '18', 'img/product/sm/57871086N86c8f0ab.jpg', 'img/product/md/57871086N86c8f0ab.jpg', 'img/product/lg/57871086N86c8f0ab.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('107', '18', 'img/product/sm/5787107bN73d05ad5.jpg', 'img/product/md/5787107bN73d05ad5.jpg', 'img/product/lg/5787107bN73d05ad5.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('108', '18', 'img/product/sm/5787109cNaf26e3b0.jpg', 'img/product/md/5787109cNaf26e3b0.jpg', 'img/product/lg/5787109cNaf26e3b0.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('109', '18', 'img/product/sm/578710a0N07795fe5.jpg', 'img/product/md/578710a0N07795fe5.jpg', 'img/product/lg/578710a0N07795fe5.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('110', '18', 'img/product/sm/578710a3Nc498e3ea.jpg', 'img/product/md/578710a3Nc498e3ea.jpg', 'img/product/lg/578710a3Nc498e3ea.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('111', '19', 'img/product/sm/57bbc38eN9def8042.jpg', 'img/product/md/57bbc38eN9def8042.jpg', 'img/product/lg/57bbc38eN9def8042.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('112', '19', 'img/product/sm/57ba6a27Nbb8d2dcf.jpg', 'img/product/md/57ba6a27Nbb8d2dcf.jpg', 'img/product/lg/57ba6a27Nbb8d2dcf.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('113', '19', 'img/product/sm/57ba6a38N4f4670bd.jpg', 'img/product/md/57ba6a38N4f4670bd.jpg', 'img/product/lg/57ba6a38N4f4670bd.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('114', '19', 'img/product/sm/57ba6a3dN54779e6a.jpg', 'img/product/md/57ba6a3dN54779e6a.jpg', 'img/product/lg/57ba6a3dN54779e6a.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('115', '19', 'img/product/sm/57ba6a47N19af9c97.jpg', 'img/product/md/57ba6a47N19af9c97.jpg', 'img/product/lg/57ba6a47N19af9c97.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('116', '19', 'img/product/sm/57ba6a4cNb83e292a.jpg', 'img/product/md/57ba6a4cNb83e292a.jpg', 'img/product/lg/57ba6a4cNb83e292a.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('117', '19', 'img/product/sm/57ba6a56N1e3e3d63.jpg', 'img/product/md/57ba6a56N1e3e3d63.jpg', 'img/product/lg/57ba6a56N1e3e3d63.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('118', '20', 'img/product/sm/57bbc38eN9def8042.jpg', 'img/product/md/57bbc38eN9def8042.jpg', 'img/product/lg/57bbc38eN9def8042.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('119', '20', 'img/product/sm/57ba6a27Nbb8d2dcf.jpg', 'img/product/md/57ba6a27Nbb8d2dcf.jpg', 'img/product/lg/57ba6a27Nbb8d2dcf.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('120', '20', 'img/product/sm/57ba6a38N4f4670bd.jpg', 'img/product/md/57ba6a38N4f4670bd.jpg', 'img/product/lg/57ba6a38N4f4670bd.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('121', '20', 'img/product/sm/57ba6a3dN54779e6a.jpg', 'img/product/md/57ba6a3dN54779e6a.jpg', 'img/product/lg/57ba6a3dN54779e6a.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('122', '20', 'img/product/sm/57ba6a47N19af9c97.jpg', 'img/product/md/57ba6a47N19af9c97.jpg', 'img/product/lg/57ba6a47N19af9c97.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('123', '20', 'img/product/sm/57ba6a4cNb83e292a.jpg', 'img/product/md/57ba6a4cNb83e292a.jpg', 'img/product/lg/57ba6a4cNb83e292a.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('124', '20', 'img/product/sm/57ba6a56N1e3e3d63.jpg', 'img/product/md/57ba6a56N1e3e3d63.jpg', 'img/product/lg/57ba6a56N1e3e3d63.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('125', '21', 'img/product/sm/57bbc38eN9def8042.jpg', 'img/product/md/57bbc38eN9def8042.jpg', 'img/product/lg/57bbc38eN9def8042.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('126', '21', 'img/product/sm/57ba6a27Nbb8d2dcf.jpg', 'img/product/md/57ba6a27Nbb8d2dcf.jpg', 'img/product/lg/57ba6a27Nbb8d2dcf.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('127', '21', 'img/product/sm/57ba6a38N4f4670bd.jpg', 'img/product/md/57ba6a38N4f4670bd.jpg', 'img/product/lg/57ba6a38N4f4670bd.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('128', '21', 'img/product/sm/57ba6a3dN54779e6a.jpg', 'img/product/md/57ba6a3dN54779e6a.jpg', 'img/product/lg/57ba6a3dN54779e6a.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('129', '21', 'img/product/sm/57ba6a47N19af9c97.jpg', 'img/product/md/57ba6a47N19af9c97.jpg', 'img/product/lg/57ba6a47N19af9c97.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('130', '21', 'img/product/sm/57ba6a4cNb83e292a.jpg', 'img/product/md/57ba6a4cNb83e292a.jpg', 'img/product/lg/57ba6a4cNb83e292a.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('131', '21', 'img/product/sm/57ba6a56N1e3e3d63.jpg', 'img/product/md/57ba6a56N1e3e3d63.jpg', 'img/product/lg/57ba6a56N1e3e3d63.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('132', '22', 'img/product/sm/5913f8ffN49fa143c.jpg', 'img/product/md/5913f8ffN49fa143c.jpg', 'img/product/lg/5913f8ffN49fa143c.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('133', '22', 'img/product/sm/5913f903Nbffaa4fd.jpg', 'img/product/md/5913f903Nbffaa4fd.jpg', 'img/product/lg/5913f903Nbffaa4fd.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('134', '22', 'img/product/sm/5913f907Ncbc65469.jpg', 'img/product/md/5913f907Ncbc65469.jpg', 'img/product/lg/5913f907Ncbc65469.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('135', '22', 'img/product/sm/5913f90bN1b563f42.jpg', 'img/product/md/5913f90bN1b563f42.jpg', 'img/product/lg/5913f90bN1b563f42.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('136', '22', 'img/product/sm/5913f90fN99370675.jpg', 'img/product/md/5913f90fN99370675.jpg', 'img/product/lg/5913f90fN99370675.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('137', '22', 'img/product/sm/5913f93bNe4d2b3e5.jpg', 'img/product/md/5913f93bNe4d2b3e5.jpg', 'img/product/lg/5913f93bNe4d2b3e5.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('138', '22', 'img/product/sm/5913f93fNfd79b4fc.jpg', 'img/product/md/5913f93fNfd79b4fc.jpg', 'img/product/lg/5913f93fNfd79b4fc.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('139', '23', 'img/product/sm/5913f8ffN49fa143c.jpg', 'img/product/md/5913f8ffN49fa143c.jpg', 'img/product/lg/5913f8ffN49fa143c.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('140', '23', 'img/product/sm/5913f903Nbffaa4fd.jpg', 'img/product/md/5913f903Nbffaa4fd.jpg', 'img/product/lg/5913f903Nbffaa4fd.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('141', '23', 'img/product/sm/5913f907Ncbc65469.jpg', 'img/product/md/5913f907Ncbc65469.jpg', 'img/product/lg/5913f907Ncbc65469.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('142', '23', 'img/product/sm/5913f90bN1b563f42.jpg', 'img/product/md/5913f90bN1b563f42.jpg', 'img/product/lg/5913f90bN1b563f42.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('143', '23', 'img/product/sm/5913f90fN99370675.jpg', 'img/product/md/5913f90fN99370675.jpg', 'img/product/lg/5913f90fN99370675.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('144', '23', 'img/product/sm/5913f93bNe4d2b3e5.jpg', 'img/product/md/5913f93bNe4d2b3e5.jpg', 'img/product/lg/5913f93bNe4d2b3e5.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('145', '23', 'img/product/sm/5913f93fNfd79b4fc.jpg', 'img/product/md/5913f93fNfd79b4fc.jpg', 'img/product/lg/5913f93fNfd79b4fc.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('146', '24', 'img/product/sm/5913f8ffN49fa143c.jpg', 'img/product/md/5913f8ffN49fa143c.jpg', 'img/product/lg/5913f8ffN49fa143c.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('147', '24', 'img/product/sm/5913f903Nbffaa4fd.jpg', 'img/product/md/5913f903Nbffaa4fd.jpg', 'img/product/lg/5913f903Nbffaa4fd.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('148', '24', 'img/product/sm/5913f907Ncbc65469.jpg', 'img/product/md/5913f907Ncbc65469.jpg', 'img/product/lg/5913f907Ncbc65469.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('149', '24', 'img/product/sm/5913f90bN1b563f42.jpg', 'img/product/md/5913f90bN1b563f42.jpg', 'img/product/lg/5913f90bN1b563f42.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('150', '24', 'img/product/sm/5913f90fN99370675.jpg', 'img/product/md/5913f90fN99370675.jpg', 'img/product/lg/5913f90fN99370675.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('151', '24', 'img/product/sm/5913f93bNe4d2b3e5.jpg', 'img/product/md/5913f93bNe4d2b3e5.jpg', 'img/product/lg/5913f93bNe4d2b3e5.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('152', '24', 'img/product/sm/5913f93fNfd79b4fc.jpg', 'img/product/md/5913f93fNfd79b4fc.jpg', 'img/product/lg/5913f93fNfd79b4fc.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('153', '25', 'img/product/sm/5913f8ffN49fa143c.jpg', 'img/product/md/5913f8ffN49fa143c.jpg', 'img/product/lg/5913f8ffN49fa143c.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('154', '25', 'img/product/sm/5913f903Nbffaa4fd.jpg', 'img/product/md/5913f903Nbffaa4fd.jpg', 'img/product/lg/5913f903Nbffaa4fd.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('155', '25', 'img/product/sm/5913f907Ncbc65469.jpg', 'img/product/md/5913f907Ncbc65469.jpg', 'img/product/lg/5913f907Ncbc65469.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('156', '25', 'img/product/sm/5913f90bN1b563f42.jpg', 'img/product/md/5913f90bN1b563f42.jpg', 'img/product/lg/5913f90bN1b563f42.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('157', '25', 'img/product/sm/5913f90fN99370675.jpg', 'img/product/md/5913f90fN99370675.jpg', 'img/product/lg/5913f90fN99370675.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('158', '25', 'img/product/sm/5913f93bNe4d2b3e5.jpg', 'img/product/md/5913f93bNe4d2b3e5.jpg', 'img/product/lg/5913f93bNe4d2b3e5.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('159', '25', 'img/product/sm/5913f93fNfd79b4fc.jpg', 'img/product/md/5913f93fNfd79b4fc.jpg', 'img/product/lg/5913f93fNfd79b4fc.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('160', '26', 'img/product/sm/5913f8ffN49fa143c.jpg', 'img/product/md/5913f8ffN49fa143c.jpg', 'img/product/lg/5913f8ffN49fa143c.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('161', '26', 'img/product/sm/5913f903Nbffaa4fd.jpg', 'img/product/md/5913f903Nbffaa4fd.jpg', 'img/product/lg/5913f903Nbffaa4fd.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('162', '26', 'img/product/sm/5913f907Ncbc65469.jpg', 'img/product/md/5913f907Ncbc65469.jpg', 'img/product/lg/5913f907Ncbc65469.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('163', '26', 'img/product/sm/5913f90bN1b563f42.jpg', 'img/product/md/5913f90bN1b563f42.jpg', 'img/product/lg/5913f90bN1b563f42.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('164', '26', 'img/product/sm/5913f90fN99370675.jpg', 'img/product/md/5913f90fN99370675.jpg', 'img/product/lg/5913f90fN99370675.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('165', '26', 'img/product/sm/5913f93bNe4d2b3e5.jpg', 'img/product/md/5913f93bNe4d2b3e5.jpg', 'img/product/lg/5913f93bNe4d2b3e5.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('166', '26', 'img/product/sm/5913f93fNfd79b4fc.jpg', 'img/product/md/5913f93fNfd79b4fc.jpg', 'img/product/lg/5913f93fNfd79b4fc.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('167', '27', 'img/product/sm/5913f8ffN49fa143c.jpg', 'img/product/md/5913f8ffN49fa143c.jpg', 'img/product/lg/5913f8ffN49fa143c.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('168', '27', 'img/product/sm/5913f903Nbffaa4fd.jpg', 'img/product/md/5913f903Nbffaa4fd.jpg', 'img/product/lg/5913f903Nbffaa4fd.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('169', '27', 'img/product/sm/5913f907Ncbc65469.jpg', 'img/product/md/5913f907Ncbc65469.jpg', 'img/product/lg/5913f907Ncbc65469.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('170', '27', 'img/product/sm/5913f90bN1b563f42.jpg', 'img/product/md/5913f90bN1b563f42.jpg', 'img/product/lg/5913f90bN1b563f42.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('171', '27', 'img/product/sm/5913f90fN99370675.jpg', 'img/product/md/5913f90fN99370675.jpg', 'img/product/lg/5913f90fN99370675.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('172', '27', 'img/product/sm/5913f93bNe4d2b3e5.jpg', 'img/product/md/5913f93bNe4d2b3e5.jpg', 'img/product/lg/5913f93bNe4d2b3e5.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('173', '27', 'img/product/sm/5913f93fNfd79b4fc.jpg', 'img/product/md/5913f93fNfd79b4fc.jpg', 'img/product/lg/5913f93fNfd79b4fc.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('174', '28', 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('175', '28', 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('176', '28', 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('177', '28', 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('178', '28', 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('179', '28', 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('180', '28', 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('181', '28', 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('182', '29', 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('183', '29', 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('184', '29', 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('185', '29', 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('186', '29', 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('187', '29', 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('188', '29', 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('189', '29', 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('190', '30', 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('191', '30', 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('192', '30', 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('193', '30', 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('194', '30', 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('195', '30', 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('196', '30', 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('197', '30', 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('198', '31', 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('199', '31', 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('200', '31', 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('201', '31', 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('202', '31', 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('203', '31', 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('204', '31', 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('205', '31', 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('206', '32', 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('207', '32', 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('208', '32', 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('209', '32', 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('210', '32', 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('211', '32', 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('212', '32', 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('213', '32', 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('214', '33', 'img/product/sm/58985861N615a3581.jpg', 'img/product/md/58985861N615a3581.jpg', 'img/product/lg/58985861N615a3581.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('215', '33', 'img/product/sm/58985867Nf8909d49.jpg', 'img/product/md/58985867Nf8909d49.jpg', 'img/product/lg/58985867Nf8909d49.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('216', '33', 'img/product/sm/5898586cNe235284b.jpg', 'img/product/md/5898586cNe235284b.jpg', 'img/product/lg/5898586cNe235284b.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('217', '33', 'img/product/sm/58985881N0a78dea2.jpg', 'img/product/md/58985881N0a78dea2.jpg', 'img/product/lg/58985881N0a78dea2.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('218', '33', 'img/product/sm/58985883Nd4aec745.jpg', 'img/product/md/58985883Nd4aec745.jpg', 'img/product/lg/58985883Nd4aec745.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('219', '33', 'img/product/sm/5836b979N85c3852b.jpg', 'img/product/md/5836b979N85c3852b.jpg', 'img/product/lg/5836b979N85c3852b.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('220', '33', 'img/product/sm/5836b981Nd60fd02a.jpg', 'img/product/md/5836b981Nd60fd02a.jpg', 'img/product/lg/5836b981Nd60fd02a.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('221', '34', 'img/product/sm/58985861N615a3581.jpg', 'img/product/md/58985861N615a3581.jpg', 'img/product/lg/58985861N615a3581.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('222', '34', 'img/product/sm/58985867Nf8909d49.jpg', 'img/product/md/58985867Nf8909d49.jpg', 'img/product/lg/58985867Nf8909d49.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('223', '34', 'img/product/sm/5898586cNe235284b.jpg', 'img/product/md/5898586cNe235284b.jpg', 'img/product/lg/5898586cNe235284b.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('224', '34', 'img/product/sm/58985881N0a78dea2.jpg', 'img/product/md/58985881N0a78dea2.jpg', 'img/product/lg/58985881N0a78dea2.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('225', '34', 'img/product/sm/58985883Nd4aec745.jpg', 'img/product/md/58985883Nd4aec745.jpg', 'img/product/lg/58985883Nd4aec745.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('226', '34', 'img/product/sm/5836b979N85c3852b.jpg', 'img/product/md/5836b979N85c3852b.jpg', 'img/product/lg/5836b979N85c3852b.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('227', '34', 'img/product/sm/5836b981Nd60fd02a.jpg', 'img/product/md/5836b981Nd60fd02a.jpg', 'img/product/lg/5836b981Nd60fd02a.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('228', '35', 'img/product/sm/58985861N615a3581.jpg', 'img/product/md/58985861N615a3581.jpg', 'img/product/lg/58985861N615a3581.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('229', '35', 'img/product/sm/58985867Nf8909d49.jpg', 'img/product/md/58985867Nf8909d49.jpg', 'img/product/lg/58985867Nf8909d49.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('230', '35', 'img/product/sm/5898586cNe235284b.jpg', 'img/product/md/5898586cNe235284b.jpg', 'img/product/lg/5898586cNe235284b.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('231', '35', 'img/product/sm/58985881N0a78dea2.jpg', 'img/product/md/58985881N0a78dea2.jpg', 'img/product/lg/58985881N0a78dea2.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('232', '35', 'img/product/sm/58985883Nd4aec745.jpg', 'img/product/md/58985883Nd4aec745.jpg', 'img/product/lg/58985883Nd4aec745.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('233', '35', 'img/product/sm/5836b979N85c3852b.jpg', 'img/product/md/5836b979N85c3852b.jpg', 'img/product/lg/5836b979N85c3852b.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('234', '35', 'img/product/sm/5836b981Nd60fd02a.jpg', 'img/product/md/5836b981Nd60fd02a.jpg', 'img/product/lg/5836b981Nd60fd02a.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('235', '36', 'img/product/sm/58985861N615a3581.jpg', 'img/product/md/58985861N615a3581.jpg', 'img/product/lg/58985861N615a3581.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('236', '36', 'img/product/sm/58985867Nf8909d49.jpg', 'img/product/md/58985867Nf8909d49.jpg', 'img/product/lg/58985867Nf8909d49.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('237', '36', 'img/product/sm/5898586cNe235284b.jpg', 'img/product/md/5898586cNe235284b.jpg', 'img/product/lg/5898586cNe235284b.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('238', '36', 'img/product/sm/58985881N0a78dea2.jpg', 'img/product/md/58985881N0a78dea2.jpg', 'img/product/lg/58985881N0a78dea2.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('239', '36', 'img/product/sm/58985883Nd4aec745.jpg', 'img/product/md/58985883Nd4aec745.jpg', 'img/product/lg/58985883Nd4aec745.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('240', '36', 'img/product/sm/5836b979N85c3852b.jpg', 'img/product/md/5836b979N85c3852b.jpg', 'img/product/lg/5836b979N85c3852b.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('241', '36', 'img/product/sm/5836b981Nd60fd02a.jpg', 'img/product/md/5836b981Nd60fd02a.jpg', 'img/product/lg/5836b981Nd60fd02a.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('242', '37', 'img/product/sm/58985861N615a3581.jpg', 'img/product/md/58985861N615a3581.jpg', 'img/product/lg/58985861N615a3581.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('243', '37', 'img/product/sm/58985867Nf8909d49.jpg', 'img/product/md/58985867Nf8909d49.jpg', 'img/product/lg/58985867Nf8909d49.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('244', '37', 'img/product/sm/5898586cNe235284b.jpg', 'img/product/md/5898586cNe235284b.jpg', 'img/product/lg/5898586cNe235284b.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('245', '37', 'img/product/sm/58985881N0a78dea2.jpg', 'img/product/md/58985881N0a78dea2.jpg', 'img/product/lg/58985881N0a78dea2.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('246', '37', 'img/product/sm/58985883Nd4aec745.jpg', 'img/product/md/58985883Nd4aec745.jpg', 'img/product/lg/58985883Nd4aec745.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('247', '37', 'img/product/sm/5836b979N85c3852b.jpg', 'img/product/md/5836b979N85c3852b.jpg', 'img/product/lg/5836b979N85c3852b.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('248', '37', 'img/product/sm/5836b981Nd60fd02a.jpg', 'img/product/md/5836b981Nd60fd02a.jpg', 'img/product/lg/5836b981Nd60fd02a.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('249', '38', 'img/product/sm/58a2c667Ne2b5cb73.jpg', 'img/product/md/58a2c667Ne2b5cb73.jpg', 'img/product/lg/58a2c667Ne2b5cb73.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('250', '38', 'img/product/sm/58a2c668N800be261.jpg', 'img/product/md/58a2c668N800be261.jpg', 'img/product/lg/58a2c668N800be261.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('251', '38', 'img/product/sm/58a2c668N0159a26f.jpg', 'img/product/md/58a2c668N0159a26f.jpg', 'img/product/lg/58a2c668N0159a26f.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('252', '38', 'img/product/sm/58a2c669Nf884ac31.jpg', 'img/product/md/58a2c669Nf884ac31.jpg', 'img/product/lg/58a2c669Nf884ac31.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('253', '38', 'img/product/sm/58a2c668N7293a0d1.jpg', 'img/product/md/58a2c668N7293a0d1.jpg', 'img/product/lg/58a2c668N7293a0d1.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('254', '38', 'img/product/sm/58a2c669N4f92f8cb.jpg', 'img/product/md/58a2c669N4f92f8cb.jpg', 'img/product/lg/58a2c669N4f92f8cb.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('255', '38', 'img/product/sm/58a2c668N0be41fb0.jpg', 'img/product/md/58a2c668N0be41fb0.jpg', 'img/product/lg/58a2c668N0be41fb0.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('256', '38', 'img/product/sm/58a2c66aNcd10ee32.jpg', 'img/product/md/58a2c66aNcd10ee32.jpg', 'img/product/lg/58a2c66aNcd10ee32.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('257', '39', 'img/product/sm/58a2c667Ne2b5cb73.jpg', 'img/product/md/58a2c667Ne2b5cb73.jpg', 'img/product/lg/58a2c667Ne2b5cb73.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('258', '39', 'img/product/sm/58a2c668N800be261.jpg', 'img/product/md/58a2c668N800be261.jpg', 'img/product/lg/58a2c668N800be261.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('259', '39', 'img/product/sm/58a2c668N0159a26f.jpg', 'img/product/md/58a2c668N0159a26f.jpg', 'img/product/lg/58a2c668N0159a26f.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('260', '39', 'img/product/sm/58a2c669Nf884ac31.jpg', 'img/product/md/58a2c669Nf884ac31.jpg', 'img/product/lg/58a2c669Nf884ac31.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('261', '39', 'img/product/sm/58a2c668N7293a0d1.jpg', 'img/product/md/58a2c668N7293a0d1.jpg', 'img/product/lg/58a2c668N7293a0d1.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('262', '39', 'img/product/sm/58a2c669N4f92f8cb.jpg', 'img/product/md/58a2c669N4f92f8cb.jpg', 'img/product/lg/58a2c669N4f92f8cb.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('263', '39', 'img/product/sm/58a2c668N0be41fb0.jpg', 'img/product/md/58a2c668N0be41fb0.jpg', 'img/product/lg/58a2c668N0be41fb0.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('264', '39', 'img/product/sm/58a2c66aNcd10ee32.jpg', 'img/product/md/58a2c66aNcd10ee32.jpg', 'img/product/lg/58a2c66aNcd10ee32.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('265', '40', 'img/product/sm/58a2c667Ne2b5cb73.jpg', 'img/product/md/58a2c667Ne2b5cb73.jpg', 'img/product/lg/58a2c667Ne2b5cb73.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('266', '40', 'img/product/sm/58a2c668N800be261.jpg', 'img/product/md/58a2c668N800be261.jpg', 'img/product/lg/58a2c668N800be261.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('267', '40', 'img/product/sm/58a2c668N0159a26f.jpg', 'img/product/md/58a2c668N0159a26f.jpg', 'img/product/lg/58a2c668N0159a26f.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('268', '40', 'img/product/sm/58a2c669Nf884ac31.jpg', 'img/product/md/58a2c669Nf884ac31.jpg', 'img/product/lg/58a2c669Nf884ac31.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('269', '40', 'img/product/sm/58a2c668N7293a0d1.jpg', 'img/product/md/58a2c668N7293a0d1.jpg', 'img/product/lg/58a2c668N7293a0d1.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('270', '40', 'img/product/sm/58a2c669N4f92f8cb.jpg', 'img/product/md/58a2c669N4f92f8cb.jpg', 'img/product/lg/58a2c669N4f92f8cb.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('271', '40', 'img/product/sm/58a2c668N0be41fb0.jpg', 'img/product/md/58a2c668N0be41fb0.jpg', 'img/product/lg/58a2c668N0be41fb0.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('272', '40', 'img/product/sm/58a2c66aNcd10ee32.jpg', 'img/product/md/58a2c66aNcd10ee32.jpg', 'img/product/lg/58a2c66aNcd10ee32.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('273', '41', 'img/product/sm/58a2c667Ne2b5cb73.jpg', 'img/product/md/58a2c667Ne2b5cb73.jpg', 'img/product/lg/58a2c667Ne2b5cb73.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('274', '41', 'img/product/sm/58a2c668N800be261.jpg', 'img/product/md/58a2c668N800be261.jpg', 'img/product/lg/58a2c668N800be261.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('275', '41', 'img/product/sm/58a2c668N0159a26f.jpg', 'img/product/md/58a2c668N0159a26f.jpg', 'img/product/lg/58a2c668N0159a26f.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('276', '41', 'img/product/sm/58a2c669Nf884ac31.jpg', 'img/product/md/58a2c669Nf884ac31.jpg', 'img/product/lg/58a2c669Nf884ac31.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('277', '41', 'img/product/sm/58a2c668N7293a0d1.jpg', 'img/product/md/58a2c668N7293a0d1.jpg', 'img/product/lg/58a2c668N7293a0d1.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('278', '41', 'img/product/sm/58a2c669N4f92f8cb.jpg', 'img/product/md/58a2c669N4f92f8cb.jpg', 'img/product/lg/58a2c669N4f92f8cb.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('279', '41', 'img/product/sm/58a2c668N0be41fb0.jpg', 'img/product/md/58a2c668N0be41fb0.jpg', 'img/product/lg/58a2c668N0be41fb0.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('280', '41', 'img/product/sm/58a2c66aNcd10ee32.jpg', 'img/product/md/58a2c66aNcd10ee32.jpg', 'img/product/lg/58a2c66aNcd10ee32.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('281', '42', 'img/product/sm/58a2c667Ne2b5cb73.jpg', 'img/product/md/58a2c667Ne2b5cb73.jpg', 'img/product/lg/58a2c667Ne2b5cb73.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('282', '42', 'img/product/sm/58a2c668N800be261.jpg', 'img/product/md/58a2c668N800be261.jpg', 'img/product/lg/58a2c668N800be261.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('283', '42', 'img/product/sm/58a2c668N0159a26f.jpg', 'img/product/md/58a2c668N0159a26f.jpg', 'img/product/lg/58a2c668N0159a26f.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('284', '42', 'img/product/sm/58a2c669Nf884ac31.jpg', 'img/product/md/58a2c669Nf884ac31.jpg', 'img/product/lg/58a2c669Nf884ac31.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('285', '42', 'img/product/sm/58a2c668N7293a0d1.jpg', 'img/product/md/58a2c668N7293a0d1.jpg', 'img/product/lg/58a2c668N7293a0d1.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('286', '42', 'img/product/sm/58a2c669N4f92f8cb.jpg', 'img/product/md/58a2c669N4f92f8cb.jpg', 'img/product/lg/58a2c669N4f92f8cb.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('287', '42', 'img/product/sm/58a2c668N0be41fb0.jpg', 'img/product/md/58a2c668N0be41fb0.jpg', 'img/product/lg/58a2c668N0be41fb0.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('288', '42', 'img/product/sm/58a2c66aNcd10ee32.jpg', 'img/product/md/58a2c66aNcd10ee32.jpg', 'img/product/lg/58a2c66aNcd10ee32.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('289', '43', 'img/product/sm/58a2c667Ne2b5cb73.jpg', 'img/product/md/58a2c667Ne2b5cb73.jpg', 'img/product/lg/58a2c667Ne2b5cb73.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('290', '43', 'img/product/sm/58a2c668N800be261.jpg', 'img/product/md/58a2c668N800be261.jpg', 'img/product/lg/58a2c668N800be261.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('291', '43', 'img/product/sm/58a2c668N0159a26f.jpg', 'img/product/md/58a2c668N0159a26f.jpg', 'img/product/lg/58a2c668N0159a26f.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('292', '43', 'img/product/sm/58a2c669Nf884ac31.jpg', 'img/product/md/58a2c669Nf884ac31.jpg', 'img/product/lg/58a2c669Nf884ac31.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('293', '43', 'img/product/sm/58a2c668N7293a0d1.jpg', 'img/product/md/58a2c668N7293a0d1.jpg', 'img/product/lg/58a2c668N7293a0d1.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('294', '43', 'img/product/sm/58a2c669N4f92f8cb.jpg', 'img/product/md/58a2c669N4f92f8cb.jpg', 'img/product/lg/58a2c669N4f92f8cb.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('295', '43', 'img/product/sm/58a2c668N0be41fb0.jpg', 'img/product/md/58a2c668N0be41fb0.jpg', 'img/product/lg/58a2c668N0be41fb0.jpg');
INSERT INTO `xz_laptop_pic` VALUES ('296', '43', 'img/product/sm/58a2c66aNcd10ee32.jpg', 'img/product/md/58a2c66aNcd10ee32.jpg', 'img/product/lg/58a2c66aNcd10ee32.jpg');

-- ----------------------------
-- Table structure for xz_order
-- ----------------------------
DROP TABLE IF EXISTS `xz_order`;
CREATE TABLE `xz_order` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `order_time` bigint(20) DEFAULT NULL,
  `pay_time` bigint(20) DEFAULT NULL,
  `deliver_time` bigint(20) DEFAULT NULL,
  `received_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xz_order
-- ----------------------------

-- ----------------------------
-- Table structure for xz_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `xz_order_detail`;
CREATE TABLE `xz_order_detail` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xz_order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for xz_receiver_address
-- ----------------------------
DROP TABLE IF EXISTS `xz_receiver_address`;
CREATE TABLE `xz_receiver_address` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `receiver` varchar(16) DEFAULT NULL,
  `province` varchar(16) DEFAULT NULL,
  `city` varchar(16) DEFAULT NULL,
  `county` varchar(16) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `cellphone` varchar(16) DEFAULT NULL,
  `fixedphone` varchar(16) DEFAULT NULL,
  `postcode` char(6) DEFAULT NULL,
  `tag` varchar(16) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xz_receiver_address
-- ----------------------------

-- ----------------------------
-- Table structure for xz_shoppingcart_item
-- ----------------------------
DROP TABLE IF EXISTS `xz_shoppingcart_item`;
CREATE TABLE `xz_shoppingcart_item` (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `is_checked` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xz_shoppingcart_item
-- ----------------------------
INSERT INTO `xz_shoppingcart_item` VALUES ('3', '0', '3', '2', '1');
INSERT INTO `xz_shoppingcart_item` VALUES ('4', '0', '4', '4', '1');
INSERT INTO `xz_shoppingcart_item` VALUES ('5', '12', '4', '11', '0');
INSERT INTO `xz_shoppingcart_item` VALUES ('6', '12', '2', '5', '0');

-- ----------------------------
-- Table structure for xz_user
-- ----------------------------
DROP TABLE IF EXISTS `xz_user`;
CREATE TABLE `xz_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `idkey` (`phone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xz_user
-- ----------------------------
INSERT INTO `xz_user` VALUES ('1', 'dingding', '123456', 'ding@qq.com', '13501234567', 'img/avatar/default.png', '丁伟', '1');
INSERT INTO `xz_user` VALUES ('2', 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '林当', '1');
INSERT INTO `xz_user` VALUES ('3', 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', '1');
INSERT INTO `xz_user` VALUES ('4', 'yaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', '0');
INSERT INTO `xz_user` VALUES ('5', 'u1', '123456', 'wary@173.com', '13968290133', 'img/avatar/default.png', null, '1');
INSERT INTO `xz_user` VALUES ('9', 'u2', '123456', 'watchping@163.com', '13968230224', 'img/avatar/default.png', null, '1');
INSERT INTO `xz_user` VALUES ('10', 'u3', '123456', '321@133.43', '13968290223', 'img/avatar/default.png', null, '1');
INSERT INTO `xz_user` VALUES ('12', 'hello', '123456', 'hekllp@133.43', '13968290111', 'img/avatar/default.png', null, '1');
INSERT INTO `xz_user` VALUES ('23', 'dingding1', '123456', 'wary@173.com', '13968290123', 'img/avatar/default.png', null, '1');
INSERT INTO `xz_user` VALUES ('25', 'dingding2', '123456', 'wary@173.com', '13968290125', 'img/avatar/default.png', null, '1');
INSERT INTO `xz_user` VALUES ('29', 'dingding3', '123456', 'wary@173.com', '13968290126', 'img/avatar/default.png', null, '1');
INSERT INTO `xz_user` VALUES ('30', 'hello', '123456', 'wwwada@163.com', '1238498989', null, '张三', '1');
