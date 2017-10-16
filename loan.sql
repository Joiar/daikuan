/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : loan

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2017-09-30 11:27:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for yd_admin
-- ----------------------------
DROP TABLE IF EXISTS `yd_admin`;
CREATE TABLE `yd_admin` (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL COMMENT '账号名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `reg_time` int(11) NOT NULL DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yd_admin
-- ----------------------------
INSERT INTO `yd_admin` VALUES ('1', 'admin', 'd9b1d7db4cd6e70935368a1efb10e377', '13123112');

-- ----------------------------
-- Table structure for yd_config
-- ----------------------------
DROP TABLE IF EXISTS `yd_config`;
CREATE TABLE `yd_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(30) NOT NULL DEFAULT '' COMMENT '关键字',
  `describtion` char(20) NOT NULL DEFAULT '' COMMENT '描述',
  `tel` char(20) NOT NULL DEFAULT '' COMMENT '7*24小时服务热线',
  `phone` char(20) NOT NULL DEFAULT '' COMMENT '咨询热线',
  `copyright` varchar(100) NOT NULL DEFAULT '' COMMENT '版权',
  `record_no` varchar(100) NOT NULL DEFAULT '' COMMENT '备案号',
  `address` varchar(100) NOT NULL DEFAULT '' COMMENT '地址',
  `title1` varchar(20) NOT NULL,
  `title2` varchar(20) NOT NULL,
  `title3` varchar(20) NOT NULL,
  `title4` varchar(20) NOT NULL,
  `addtime` int(11) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yd_config
-- ----------------------------
INSERT INTO `yd_config` VALUES ('1', '213', '', '', '', '', '', '', '', '', '', '', '1506682377');
INSERT INTO `yd_config` VALUES ('2', '213', '231', '132', '312', '132', '321', '132', '', '', '', '', '1506682384');
INSERT INTO `yd_config` VALUES ('3', '213', '231', '132', '312', 'Copyright 1996-2017 某某某网络科技有限公司 版权所有', '321', '132', '', '', '', '', '1506682825');
INSERT INTO `yd_config` VALUES ('4', '213', '231', '132', '312', 'Copyright 1996-2017 某某某网络科技有限公司 版权所有', 'CP许可证 粤ICP备案06118290号', '', '', '', '', '', '1506682893');
INSERT INTO `yd_config` VALUES ('5', '213', '231', '132', '312', 'Copyright 1996-2017 某某某网络科技有限公司 版权所有', 'CP许可证 粤ICP备案06118290号', '东莞市南城街道莞太大道南城段1号', '', '', '', '', '1506682897');
INSERT INTO `yd_config` VALUES ('6', '领先易贷', '领先易贷', '400-0000-002', '13692054172', 'Copyright 1996-2017 某某某网络科技有限公司 版权所有', 'CP许可证 粤ICP备案06118290号', '东莞市南城街道莞太大道南城段1号', '', '', '', '', '1506683012');
INSERT INTO `yd_config` VALUES ('7', '领先易贷', '领先易贷', '400-0000-002', '13692054172', 'Copyright 1996-2017 某某某网络科技有限公司 版权所有', 'CP许可证 粤ICP备案06118290号', '东莞市南城街道莞太大道南城段1号', '', '', '', '', '1506741139');
INSERT INTO `yd_config` VALUES ('8', '领先易贷', '领先易贷', '400-0000-002', '13692054172', 'Copyright 1996-2017 某某某网络科技有限公司 版权所有', 'CP许可证 粤ICP备案06118290号', '东莞市南城街道莞太大道南城段1号', '', '', '', '', '1506741139');
INSERT INTO `yd_config` VALUES ('9', '领先易贷', '领先易贷', '400-0000-002', '13692054172', 'Copyright 1996-2017 某某某网络科技有限公司 版权所有', 'CP许可证 粤ICP备案06118290号', '东莞市南城街道莞太大道南城段1号', '', '', '', '', '1506741140');
INSERT INTO `yd_config` VALUES ('10', '领先易贷', '领先易贷', '400-0000-002', '13692054172', 'Copyright 1996-2017 某某某网络科技有限公司 版权所有', 'CP许可证 粤ICP备案06118290号', '东莞市南城街道莞太大道南城段1号', '首页', '公司介绍', '关于我们', '', '1506741278');
INSERT INTO `yd_config` VALUES ('11', '领先易贷', '领先易贷', '400-0000-002', '13692054172', 'Copyright 1996-2017 某某某网络科技有限公司 版权所有', 'CP许可证 粤ICP备案06118290号', '东莞市南城街道莞太大道南城段1号', '首页', '公司介绍', '关于我们', '申请贷款', '1506741543');

-- ----------------------------
-- Table structure for yd_mobile_loan
-- ----------------------------
DROP TABLE IF EXISTS `yd_mobile_loan`;
CREATE TABLE `yd_mobile_loan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(30) NOT NULL DEFAULT '' COMMENT '用户名',
  `mobile` char(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `addtime` int(11) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yd_mobile_loan
-- ----------------------------
INSERT INTO `yd_mobile_loan` VALUES ('1', 'kacl', '18026200987', '1506588496');
INSERT INTO `yd_mobile_loan` VALUES ('2', 'asdada', '18026200987', '1506588522');
INSERT INTO `yd_mobile_loan` VALUES ('30', 'joiar', '18026208292', '1506648538');
INSERT INTO `yd_mobile_loan` VALUES ('31', 'll', '1505282645', '1506653391');
INSERT INTO `yd_mobile_loan` VALUES ('46', 'kk', '18026208292', '1506653451');

-- ----------------------------
-- Table structure for yd_pc_loan
-- ----------------------------
DROP TABLE IF EXISTS `yd_pc_loan`;
CREATE TABLE `yd_pc_loan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL,
  `mobile` char(20) NOT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `product` tinyint(1) DEFAULT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yd_pc_loan
-- ----------------------------
INSERT INTO `yd_pc_loan` VALUES ('6', 'joiar', '18026208292', '1', null, '1506648491');
INSERT INTO `yd_pc_loan` VALUES ('7', 'joiar', '18026208292', null, '1', '1506648516');
INSERT INTO `yd_pc_loan` VALUES ('8', 'll', '18026208292', null, '4', '1506652886');
INSERT INTO `yd_pc_loan` VALUES ('9', 'joiar', '18026208292', null, '3', '1506654332');
INSERT INTO `yd_pc_loan` VALUES ('11', 'll', '18026208292', '1', null, '1506663773');
INSERT INTO `yd_pc_loan` VALUES ('12', 'ee', '18026208292', null, '2', '1506663811');
INSERT INTO `yd_pc_loan` VALUES ('13', 'wq', '18026208292', '0', null, '1506665212');
INSERT INTO `yd_pc_loan` VALUES ('14', '12', '18026208292', null, '3', '1506665222');
INSERT INTO `yd_pc_loan` VALUES ('15', '周诶', '13539993040', '0', null, '1506677502');

-- ----------------------------
-- Table structure for yd_picture
-- ----------------------------
DROP TABLE IF EXISTS `yd_picture`;
CREATE TABLE `yd_picture` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8_bin NOT NULL,
  `path` varchar(255) COLLATE utf8_bin NOT NULL,
  `addtime` int(11) NOT NULL,
  `updatetime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of yd_picture
-- ----------------------------
INSERT INTO `yd_picture` VALUES ('2', 'wechatIco', '/Public/Admin/uploads/2017-09-30/59cef70a12ce5.png', '1506735882', '1506735882');

-- ----------------------------
-- Table structure for yd_xcx_loan
-- ----------------------------
DROP TABLE IF EXISTS `yd_xcx_loan`;
CREATE TABLE `yd_xcx_loan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(30) NOT NULL DEFAULT '' COMMENT '用户名',
  `mobile` char(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `addtime` int(11) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yd_xcx_loan
-- ----------------------------
INSERT INTO `yd_xcx_loan` VALUES ('23', 'joiar', '18026208292', '1506735750');
INSERT INTO `yd_xcx_loan` VALUES ('24', 'aa', '18026208292', '1506736376');
INSERT INTO `yd_xcx_loan` VALUES ('25', 'cv', '18026208292', '1506737732');
INSERT INTO `yd_xcx_loan` VALUES ('26', 'qw', '18026202562', '1506737758');
INSERT INTO `yd_xcx_loan` VALUES ('27', 'qwe', '13892757321', '1506737811');
INSERT INTO `yd_xcx_loan` VALUES ('28', 'ewq', '18026208292', '1506738186');
INSERT INTO `yd_xcx_loan` VALUES ('29', '234', '18026208292', '1506738259');
INSERT INTO `yd_xcx_loan` VALUES ('30', '4555', '13539993010', '1506738534');
INSERT INTO `yd_xcx_loan` VALUES ('31', 'ssss', '13539993010', '1506738712');
INSERT INTO `yd_xcx_loan` VALUES ('32', 'zhoufei', '13539993040', '1506738816');
INSERT INTO `yd_xcx_loan` VALUES ('33', 'sss', '13539993040', '1506739170');
INSERT INTO `yd_xcx_loan` VALUES ('34', '588585', '13539993040', '1506739771');
INSERT INTO `yd_xcx_loan` VALUES ('36', '21', '18026208292', '1506740640');
