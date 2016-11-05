/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50715
Source Host           : localhost:3306
Source Database       : jbpm

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2016-10-12 08:33:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_danwei
-- ----------------------------
DROP TABLE IF EXISTS `t_danwei`;
CREATE TABLE `t_danwei` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `orderid` varchar(100) DEFAULT NULL,
  `orderbyzuzhitu` varchar(100) DEFAULT NULL,
  `orgchartname` varchar(100) DEFAULT NULL,
  `pdfurl` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_danwei
-- ----------------------------
INSERT INTO `t_danwei` VALUES ('任城区局', '济宁市任城区烟草专卖局（营销部）', '06', '02', '任城烟草', 'rencheng.pdf');
INSERT INTO `t_danwei` VALUES ('兖州区局', '济宁市兖州区兖州专卖局（分公司）', '10', '03', '兖州烟草', 'yanzhou.pdf');
INSERT INTO `t_danwei` VALUES ('嘉祥县局', '济宁烟草嘉祥县局（营销部）', '02', '10', '嘉祥烟草', 'jiaxiang.pdf');
INSERT INTO `t_danwei` VALUES ('市局', '市局公司', '01', '01', null, null);
INSERT INTO `t_danwei` VALUES ('微山县局', '济宁烟草微山县局（营销部）', '08', '07', '微山烟草', 'weishan.pdf');
INSERT INTO `t_danwei` VALUES ('曲阜市局', '济宁烟草曲阜市局（营销部）', '05', '04', '曲阜烟草', 'qufu.pdf');
INSERT INTO `t_danwei` VALUES ('梁山县局', '济宁市梁山县烟草专卖局（营销部）', '04', '12', '梁山烟草', 'liangshan.pdf');
INSERT INTO `t_danwei` VALUES ('汶上县局', '济宁烟草汶上县局（营销部）', '09', '11', '汶上烟草', 'wenshang.pdf');
INSERT INTO `t_danwei` VALUES ('泗水县局', '济宁烟草泗水县局（营销部）', '07', '05', '泗水烟草', 'sishui.pdf');
INSERT INTO `t_danwei` VALUES ('济宁泰山1532公司', '济宁泰山1532物联商贸有限公司', '14', '14', '1532', 'blank.pdf');
INSERT INTO `t_danwei` VALUES ('海川物流', '济宁海川物流有限责任公司', '15', '15', '海川物流', 'blank.pdf');
INSERT INTO `t_danwei` VALUES ('邹城市局', '济宁烟草邹城市局（营销部）', '12', '06', '邹城烟草', 'zoucheng.pdf');
INSERT INTO `t_danwei` VALUES ('配送分公司', '山东济宁烟草有限公司配送分公司', '13', '13', '配送公司', 'blank.pdf');
INSERT INTO `t_danwei` VALUES ('金乡县局', '济宁烟草金乡县局（营销部）', '03', '09', '金乡烟草', 'jinxiang.pdf');
INSERT INTO `t_danwei` VALUES ('鱼台县局', '济宁烟草鱼台县局（营销部）', '11', '08', '鱼台烟草', 'yutai.pdf');
SET FOREIGN_KEY_CHECKS=1;
