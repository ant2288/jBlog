/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : jblog

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-11-28 17:50:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(90) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '分类1');
INSERT INTO `category` VALUES ('2', '分类2');
INSERT INTO `category` VALUES ('3', '分类3');
INSERT INTO `category` VALUES ('4', '分类4');

-- ----------------------------
-- Table structure for `page`
-- ----------------------------
DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `ptitle` char(200) DEFAULT NULL,
  `pdate` date NOT NULL,
  `puser` int(11) NOT NULL,
  `pcontext` text,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of page
-- ----------------------------
INSERT INTO `page` VALUES ('1', '第一个测试文章', '2017-10-18', '1', '这是文章内容这是文章内容这是文章内容这是文章内容这是文章内容这是文章内容这是文章内容这是文章内容这是文章内容这是文章内容这是文章内容这是文章内容这是文章内容这是文章内容这是文章内容这是文章内容', '1');
INSERT INTO `page` VALUES ('2', '第二个测试文章', '2017-10-18', '1', '这是文章内容这是文章内容这是文章内容这是文章内容这是文章内容这是文章内容这是文章内容这是文章内容这是文章内容这是文章内容', '1');
INSERT INTO `page` VALUES ('3', '这是标题', '2017-10-18', '1', '这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容', '1');
INSERT INTO `page` VALUES ('4', '这个是标题', '2017-10-18', '1', '这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容', '1');
INSERT INTO `page` VALUES ('5', '这个是标题', '2017-10-18', '1', '这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容', '1');
INSERT INTO `page` VALUES ('6', '这个是标题', '2017-10-18', '1', '这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容', '1');
INSERT INTO `page` VALUES ('7', '这个是标题', '2017-10-18', '1', '这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容', '1');
INSERT INTO `page` VALUES ('8', '这个是标题', '2017-10-18', '1', '这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容这个是文章内容', '1');
INSERT INTO `page` VALUES ('9', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('10', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('11', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('12', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('13', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('14', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('15', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('16', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('17', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('18', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('19', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('20', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('21', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('22', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('23', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('24', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('25', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('26', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('27', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('28', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('29', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('30', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('31', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('32', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('33', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('34', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('35', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('37', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('38', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('40', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('43', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('44', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('45', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('46', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('47', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('48', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('50', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('51', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('52', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('53', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('54', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('55', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('57', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('58', '这个是标题', '2017-10-18', '1', '这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容', '1');
INSERT INTO `page` VALUES ('64', '表格测试', '2017-10-20', '1', '<table><tbody><tr class=\"firstRow\"><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">1</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">1</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">1</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">1</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\"><br/></td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">tyfhgfh</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">uh</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">gh</td><td width=\"78\" valign=\"top\">jg</td><td width=\"78\" valign=\"top\">hjg</td></tr><tr><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">jk</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">g</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">tu</td><td width=\"78\" valign=\"top\">t7</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">7</td><td width=\"78\" valign=\"top\">h87t</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">t76h</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\"><br/></td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">yt</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">i</td></tr><tr><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">y</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">y</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">utu</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">t</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\"><br/></td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">bv</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">c</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\"><br/></td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">xz</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\"><br/></td></tr><tr><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">d</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">d</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">f</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">f</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">uy</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">yf</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">yt</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">yt</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">ut</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">ututu</td></tr><tr><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">t</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">uyt</td><td width=\"78\" valign=\"top\">uy</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">tuy</td><td width=\"78\" valign=\"top\">tuy</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">tu</td><td width=\"78\" valign=\"top\">t</td><td width=\"78\" valign=\"top\">ut</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">t</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">yt</td></tr><tr><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">uy</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">tyu</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">t</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">t</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">yt</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">ytutu</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">y</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">tut</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">t</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\"><br/></td></tr><tr><td width=\"78\" valign=\"top\">786</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">78</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">5</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">67</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">5</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">765</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">765</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\"><br/></td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">765</td><td width=\"78\" valign=\"top\">76</td></tr><tr><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">576</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">5</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">765</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">67</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\"><br/></td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\"><br/></td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\"><br/></td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">67</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">5</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">75</td></tr><tr><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">87</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">6</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">76</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">yu</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">tyu</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\"><br/></td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">ut</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">uy</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">tuyt</td><td width=\"78\" valign=\"top\">uyt</td></tr><tr><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">uyt</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">uy</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\"><br/></td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">ih</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">ij</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">ojk</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">lk</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">l</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">kpo</td><td width=\"78\" valign=\"top\" style=\"word-break: break-all;\">okp</td></tr><tr><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break: break-all;\">o<br/></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\"><br/></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\"><br/></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\"><br/></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\"><br/></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\"><br/></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\"><br/></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\"><br/></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\"><br/></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\"><br/></td></tr></tbody></table><p><br/></p>', '1');
INSERT INTO `page` VALUES ('66', '10/24分类测试', '2017-10-24', '1', '<p>这是一个分类测试<span style=\"border: 1px solid rgb(0, 0, 0);\">的大苏打</span></p>', '3');
INSERT INTO `page` VALUES ('67', '10/26测试', '2017-10-26', '1', '<p style=\"text-align: left;\">今天星期几?</p><p style=\"display:none;\"><br/></p>', '4');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uusername` char(50) NOT NULL,
  `upassword` char(50) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'test', '81dc9bdb52d04dc20036dbd8313ed055');

-- ----------------------------
-- Table structure for `webinfo`
-- ----------------------------
DROP TABLE IF EXISTS `webinfo`;
CREATE TABLE `webinfo` (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `wtitle` char(200) DEFAULT NULL,
  `wkeyword` char(200) DEFAULT NULL,
  `wdescribe` char(200) DEFAULT NULL,
  `wFirstTitle` char(200) DEFAULT NULL,
  `wSecTitle` char(200) DEFAULT NULL,
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of webinfo
-- ----------------------------
INSERT INTO `webinfo` VALUES ('1', '测试标题2', '测试关键字', '测试描述', 'JBlog一级标题1', 'JBlog二级标题2');

-- ----------------------------
-- Procedure structure for `ADDS`
-- ----------------------------
DROP PROCEDURE IF EXISTS `ADDS`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ADDS`()
BEGIN
		DECLARE i int;
		set i=1;
		WHILE i <= 50 DO
			insert into page(ptitle,pdate,puser,pcontext) VALUE('这个是标题',NOW(),1,'这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容这个是内容');
			set i=i+1;
		end WHILE;
		SELECT i;
	END
;;
DELIMITER ;
