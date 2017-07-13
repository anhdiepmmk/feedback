/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : feedback

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-07-13 14:31:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1', 'HA NOI', '2017-07-13 11:31:01', '2017-07-13 11:31:13');
INSERT INTO `city` VALUES ('2', 'DA NANG', '2017-07-13 11:31:29', '2017-07-13 11:33:47');
INSERT INTO `city` VALUES ('3', 'TP HCM', '2017-07-13 11:31:38', '2017-07-13 11:33:51');

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci COMMENT 'Mô tả ngắn về công ty',
  `full_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '1 là outousrcing, 2 là product',
  `work_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `over_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT 'OT và các chế độ',
  `skills` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Danh sách các kĩ năng mà công ty yêu cầu (ví dụ: php, nodejs, mysql), mỗi skill cách nhau bởi dấu ,',
  `total_review` int(10) unsigned DEFAULT '0',
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Số lượng nhân viên',
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `crawler_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Đường dẫn tới trang lấy dữ liệu',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of company
-- ----------------------------

-- ----------------------------
-- Table structure for review
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of review
-- ----------------------------
