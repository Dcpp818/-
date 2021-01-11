/*
MySQL Data Transfer
Source Host: localhost
Source Database: test
Target Host: localhost
Target Database: test
Date: 2020/10/30 16:16:40
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` varchar(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `company` VALUES ('01', '蜀国分公司');
INSERT INTO `company` VALUES ('02', '吴国分公司');
INSERT INTO `company` VALUES ('03', '魏国分公司');
INSERT INTO `company` VALUES ('04', '西南夷分公司');
