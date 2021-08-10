/*
 Navicat Premium Data Transfer

 Source Server         : SmartAn
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : 127.0.0.1:3306
 Source Schema         : SmartAn

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 10/08/2021 17:04:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for medicine_type
-- ----------------------------
DROP TABLE IF EXISTS `medicine_type`;
CREATE TABLE `medicine_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of medicine_type
-- ----------------------------
BEGIN;
INSERT INTO `medicine_type` VALUES (1, 0, '丙泊酚');
INSERT INTO `medicine_type` VALUES (2, 1, '舒芬太尼');
COMMIT;

-- ----------------------------
-- Table structure for patient
-- ----------------------------
DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `sex` int DEFAULT NULL,
  `height` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `age` int DEFAULT NULL,
  `create_date` date NOT NULL COMMENT '记录日期',
  `create_time` datetime DEFAULT NULL COMMENT '记录时间',
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`number`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of patient
-- ----------------------------
BEGIN;
INSERT INTO `patient` VALUES (1, '0', 0, 0, 0, 0, '2021-08-08', '2021-08-08 09:39:49', '2021-08-08 09:39:55');
COMMIT;

-- ----------------------------
-- Table structure for patient_medicine
-- ----------------------------
DROP TABLE IF EXISTS `patient_medicine`;
CREATE TABLE `patient_medicine` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` int NOT NULL,
  `type` int DEFAULT NULL,
  `value` double(255,0) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of patient_medicine
-- ----------------------------
BEGIN;
INSERT INTO `patient_medicine` VALUES (1, 0, 0, 0, '2021-08-08 08:22:52');
COMMIT;

-- ----------------------------
-- Table structure for patient_value
-- ----------------------------
DROP TABLE IF EXISTS `patient_value`;
CREATE TABLE `patient_value` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `RATE` int DEFAULT NULL,
  `DIAP` int DEFAULT NULL,
  `SYSP` int DEFAULT NULL,
  `SpO2` int DEFAULT NULL,
  `BIS` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of patient_value
-- ----------------------------
BEGIN;
INSERT INTO `patient_value` VALUES (1, '0', '2021-08-10 17:02:55', -1, -1, -1, -1, -1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
