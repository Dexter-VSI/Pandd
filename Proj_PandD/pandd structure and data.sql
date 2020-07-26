/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50730
 Source Host           : localhost:3306
 Source Schema         : pandd

 Target Server Type    : MySQL
 Target Server Version : 50730
 File Encoding         : 65001

 Date: 26/07/2020 23:09:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for link
-- ----------------------------
DROP TABLE IF EXISTS `link`;
CREATE TABLE `link`  (
  `Id` int(20) NOT NULL AUTO_INCREMENT,
  `link_heading` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `link_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of link
-- ----------------------------
INSERT INTO `link` VALUES (22, 'YouTube', 'https://youtube.com/');

-- ----------------------------
-- Table structure for photo
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo`  (
  `Id` int(255) NOT NULL,
  `photo_heading` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `image` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `folder_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date` date NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for up
-- ----------------------------
DROP TABLE IF EXISTS `up`;
CREATE TABLE `up`  (
  `Id` int(20) NOT NULL AUTO_INCREMENT,
  `up_heading` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `up_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of up
-- ----------------------------
INSERT INTO `up` VALUES (7, 'YouTube', 'https://youtube.com/');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `Id` int(20) NOT NULL AUTO_INCREMENT,
  `video_heading` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `video_embed_link` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `video_description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES (6, 'Terms used for Income Tax Return for Salaried employees', 'https://www.youtube.com/embed/zuEemF824Xs', 'Terms used in video Income Tax Return for Salaried employees are explained in this video.', '2020-05-21');
INSERT INTO `video` VALUES (7, 'Income tax return for salaried employees', 'https://www.youtube.com/embed/OkFRev1n5qo', ' Income Tax Return For Salaried employees <br>\r\nIncome Tax Return FY 18-19 or Income Tax Return AY 19-20 <br>\r\nIncome Tax Return FY 19-20 or Income Tax Return AY 20-21<br>\r\nIncome Tax Return FY 20-21 or Income Tax Return AY 21-22<br>\r\nDue dates for Income tax return<br>\r\nChanges in due date of return<br>\r\nRecent changes in Income tax due dates for filing returns<br>\r\nWhen to file Income Tax Return<br>\r\nHow to file Income Tax Returns<br>\r\nPersonal Finance <br>\r\nITR Filing due dateS<br>', '2020-05-21');
INSERT INTO `video` VALUES (8, 'Lift Your business from Covid 19 Crisis.\r\n', 'https://www.youtube.com/embed/A8jDRI6emac', 'Automatic Loan of Rs. 3 Lac Cr. new scheme Announce by FM.', '2020-06-16');

SET FOREIGN_KEY_CHECKS = 1;
