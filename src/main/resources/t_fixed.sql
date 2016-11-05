/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50715
Source Host           : localhost:3306
Source Database       : jbpm

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2016-10-22 00:09:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_fixed
-- ----------------------------
DROP TABLE IF EXISTS `t_fixed`;
CREATE TABLE `t_fixed` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `used` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_fixed
-- ----------------------------
INSERT INTO `t_fixed` VALUES ('01', '车辆', '02');
INSERT INTO `t_fixed` VALUES ('02', '特种设备', '02');
INSERT INTO `t_fixed` VALUES ('03', '标识', '02');
INSERT INTO `t_fixed` VALUES ('04', '电气', '02');
INSERT INTO `t_fixed` VALUES ('05', '消防', '02');
INSERT INTO `t_fixed` VALUES ('admin', '管理员', '01');
INSERT INTO `t_fixed` VALUES ('cityofficer', '市局', '01');
INSERT INTO `t_fixed` VALUES ('geofficer', '综合办', '01');
INSERT INTO `t_fixed` VALUES ('leader', '部门负责人', '01');
INSERT INTO `t_fixed` VALUES ('manager', '分管副经理', '01');
INSERT INTO `t_fixed` VALUES ('peisongku', '01.peisongku.pdf', '04');
INSERT INTO `t_fixed` VALUES ('rectitype_option_car', '车辆隐患', '03');
INSERT INTO `t_fixed` VALUES ('rectitype_option_electric', '电气隐患', '03');
INSERT INTO `t_fixed` VALUES ('rectitype_option_fire_control', '消防隐患', '03');
INSERT INTO `t_fixed` VALUES ('rectitype_option_mark', '标识隐患', '03');
INSERT INTO `t_fixed` VALUES ('rectitype_option_special_equipment', '特种设备', '03');
INSERT INTO `t_fixed` VALUES ('safetymanager', '安管员', '01');
INSERT INTO `t_fixed` VALUES ('securitycheck', '01modelfile.pdf', '05');
INSERT INTO `t_fixed` VALUES ('shixianju', '02.shixianju.pdf', '04');
INSERT INTO `t_fixed` VALUES ('tongyong', '03.tongyong.pdf', '04');
INSERT INTO `t_fixed` VALUES ('townofficer', '县局主要负责人', '01');
INSERT INTO `t_fixed` VALUES ('yuangong', '员工', '01');
SET FOREIGN_KEY_CHECKS=1;
