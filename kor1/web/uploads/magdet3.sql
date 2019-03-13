/*
Navicat MySQL Data Transfer

Source Server         : localhost_3307
Source Server Version : 50523
Source Host           : localhost:3306
Source Database       : magdet

Target Server Type    : MYSQL
Target Server Version : 50523
File Encoding         : 65001

Date: 2018-05-04 16:27:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `qrhqt_assets`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_assets`;
CREATE TABLE `qrhqt_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_assets
-- ----------------------------
INSERT INTO `qrhqt_assets` VALUES ('1', '0', '0', '135', '0', 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}');
INSERT INTO `qrhqt_assets` VALUES ('2', '1', '1', '2', '1', 'com_admin', 'com_admin', '{}');
INSERT INTO `qrhqt_assets` VALUES ('3', '1', '3', '6', '1', 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `qrhqt_assets` VALUES ('4', '1', '7', '8', '1', 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `qrhqt_assets` VALUES ('5', '1', '9', '10', '1', 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `qrhqt_assets` VALUES ('6', '1', '11', '12', '1', 'com_config', 'com_config', '{}');
INSERT INTO `qrhqt_assets` VALUES ('7', '1', '13', '16', '1', 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `qrhqt_assets` VALUES ('8', '1', '17', '24', '1', 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}');
INSERT INTO `qrhqt_assets` VALUES ('9', '1', '25', '26', '1', 'com_cpanel', 'com_cpanel', '{}');
INSERT INTO `qrhqt_assets` VALUES ('10', '1', '27', '28', '1', 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}');
INSERT INTO `qrhqt_assets` VALUES ('11', '1', '29', '32', '1', 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}');
INSERT INTO `qrhqt_assets` VALUES ('12', '1', '33', '34', '1', 'com_login', 'com_login', '{}');
INSERT INTO `qrhqt_assets` VALUES ('13', '1', '35', '36', '1', 'com_mailto', 'com_mailto', '{}');
INSERT INTO `qrhqt_assets` VALUES ('14', '1', '37', '38', '1', 'com_massmail', 'com_massmail', '{}');
INSERT INTO `qrhqt_assets` VALUES ('15', '1', '39', '40', '1', 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}');
INSERT INTO `qrhqt_assets` VALUES ('16', '1', '41', '44', '1', 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}');
INSERT INTO `qrhqt_assets` VALUES ('17', '1', '45', '46', '1', 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `qrhqt_assets` VALUES ('18', '1', '47', '98', '1', 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}');
INSERT INTO `qrhqt_assets` VALUES ('19', '1', '99', '102', '1', 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `qrhqt_assets` VALUES ('20', '1', '103', '104', '1', 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}');
INSERT INTO `qrhqt_assets` VALUES ('21', '1', '105', '106', '1', 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}');
INSERT INTO `qrhqt_assets` VALUES ('22', '1', '107', '108', '1', 'com_search', 'com_search', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `qrhqt_assets` VALUES ('23', '1', '109', '110', '1', 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}');
INSERT INTO `qrhqt_assets` VALUES ('24', '1', '111', '114', '1', 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}');
INSERT INTO `qrhqt_assets` VALUES ('26', '1', '115', '116', '1', 'com_wrapper', 'com_wrapper', '{}');
INSERT INTO `qrhqt_assets` VALUES ('27', '8', '18', '19', '2', 'com_content.category.2', 'Uncategorised', '{}');
INSERT INTO `qrhqt_assets` VALUES ('28', '3', '4', '5', '2', 'com_banners.category.3', 'Uncategorised', '{}');
INSERT INTO `qrhqt_assets` VALUES ('29', '7', '14', '15', '2', 'com_contact.category.4', 'Uncategorised', '{}');
INSERT INTO `qrhqt_assets` VALUES ('30', '19', '100', '101', '2', 'com_newsfeeds.category.5', 'Uncategorised', '{}');
INSERT INTO `qrhqt_assets` VALUES ('32', '24', '112', '113', '2', 'com_users.category.7', 'Uncategorised', '{}');
INSERT INTO `qrhqt_assets` VALUES ('33', '1', '117', '118', '1', 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `qrhqt_assets` VALUES ('34', '1', '119', '120', '1', 'com_joomlaupdate', 'com_joomlaupdate', '{}');
INSERT INTO `qrhqt_assets` VALUES ('35', '1', '121', '122', '1', 'com_tags', 'com_tags', '{}');
INSERT INTO `qrhqt_assets` VALUES ('36', '1', '123', '124', '1', 'com_contenthistory', 'com_contenthistory', '{}');
INSERT INTO `qrhqt_assets` VALUES ('37', '1', '125', '126', '1', 'com_ajax', 'com_ajax', '{}');
INSERT INTO `qrhqt_assets` VALUES ('38', '1', '127', '128', '1', 'com_postinstall', 'com_postinstall', '{}');
INSERT INTO `qrhqt_assets` VALUES ('39', '18', '48', '49', '2', 'com_modules.module.1', 'Main Menu', '{}');
INSERT INTO `qrhqt_assets` VALUES ('40', '18', '50', '51', '2', 'com_modules.module.2', 'Login', '{}');
INSERT INTO `qrhqt_assets` VALUES ('41', '18', '52', '53', '2', 'com_modules.module.3', 'Popular Articles', '{}');
INSERT INTO `qrhqt_assets` VALUES ('42', '18', '54', '55', '2', 'com_modules.module.4', 'Recently Added Articles', '{}');
INSERT INTO `qrhqt_assets` VALUES ('43', '18', '56', '57', '2', 'com_modules.module.8', 'Toolbar', '{}');
INSERT INTO `qrhqt_assets` VALUES ('44', '18', '58', '59', '2', 'com_modules.module.9', 'Quick Icons', '{}');
INSERT INTO `qrhqt_assets` VALUES ('45', '18', '60', '61', '2', 'com_modules.module.10', 'Logged-in Users', '{}');
INSERT INTO `qrhqt_assets` VALUES ('46', '18', '62', '63', '2', 'com_modules.module.12', 'Admin Menu', '{}');
INSERT INTO `qrhqt_assets` VALUES ('47', '18', '64', '65', '2', 'com_modules.module.13', 'Admin Submenu', '{}');
INSERT INTO `qrhqt_assets` VALUES ('48', '18', '66', '67', '2', 'com_modules.module.14', 'User Status', '{}');
INSERT INTO `qrhqt_assets` VALUES ('49', '18', '68', '69', '2', 'com_modules.module.15', 'Title', '{}');
INSERT INTO `qrhqt_assets` VALUES ('50', '18', '70', '71', '2', 'com_modules.module.16', 'Login Form', '{}');
INSERT INTO `qrhqt_assets` VALUES ('51', '18', '72', '73', '2', 'com_modules.module.17', 'Breadcrumbs', '{}');
INSERT INTO `qrhqt_assets` VALUES ('52', '18', '74', '75', '2', 'com_modules.module.79', 'Multilanguage status', '{}');
INSERT INTO `qrhqt_assets` VALUES ('53', '18', '76', '77', '2', 'com_modules.module.86', 'Joomla Version', '{}');
INSERT INTO `qrhqt_assets` VALUES ('54', '16', '42', '43', '2', 'com_menus.menu.1', 'Main Menu', '{}');
INSERT INTO `qrhqt_assets` VALUES ('55', '18', '78', '79', '2', 'com_modules.module.87', 'Sample Data', '{}');
INSERT INTO `qrhqt_assets` VALUES ('56', '11', '30', '31', '2', 'com_languages.language.2', 'Русский (Россия)', '{}');
INSERT INTO `qrhqt_assets` VALUES ('57', '18', '80', '81', '2', 'com_modules.module.88', 'Srizon Image Slider', '{}');
INSERT INTO `qrhqt_assets` VALUES ('58', '18', '82', '83', '2', 'com_modules.module.89', 'SJ Extra Slider for Content', '{}');
INSERT INTO `qrhqt_assets` VALUES ('59', '18', '84', '85', '2', 'com_modules.module.90', 'SJ Extra Slider for VirtueMart', '{}');
INSERT INTO `qrhqt_assets` VALUES ('60', '1', '129', '130', '1', 'com_fields', 'com_fields', '{}');
INSERT INTO `qrhqt_assets` VALUES ('61', '1', '131', '132', '1', 'com_associations', 'com_associations', '{}');
INSERT INTO `qrhqt_assets` VALUES ('62', '18', '86', '87', '2', 'com_modules.module.91', 'слайдер', '{}');
INSERT INTO `qrhqt_assets` VALUES ('63', '18', '88', '89', '2', 'com_modules.module.92', 'Slideshow CK', '{}');
INSERT INTO `qrhqt_assets` VALUES ('64', '18', '90', '91', '2', 'com_modules.module.93', 'слайдер2', '{}');
INSERT INTO `qrhqt_assets` VALUES ('65', '1', '133', '134', '1', 'com_jshopping', 'jshopping', '{}');
INSERT INTO `qrhqt_assets` VALUES ('66', '18', '92', '93', '2', 'com_modules.module.94', 'Jshopping Cart', '{}');
INSERT INTO `qrhqt_assets` VALUES ('67', '18', '94', '95', '2', 'com_modules.module.95', 'Jshopping Cart Ext.', '{}');
INSERT INTO `qrhqt_assets` VALUES ('68', '18', '96', '97', '2', 'com_modules.module.96', 'Категории', '{}');
INSERT INTO `qrhqt_assets` VALUES ('69', '8', '20', '23', '2', 'com_content.category.8', 'главная', '{}');
INSERT INTO `qrhqt_assets` VALUES ('70', '69', '21', '22', '3', 'com_content.article.1', 'главная', '{}');

-- ----------------------------
-- Table structure for `qrhqt_associations`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_associations`;
CREATE TABLE `qrhqt_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_associations
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_banners`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_banners`;
CREATE TABLE `qrhqt_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_banners
-- ----------------------------
INSERT INTO `qrhqt_banners` VALUES ('1', '0', '0', 'банер1', 'baner1', '0', '0', '0', '', '1', '3', '', '', '1', '1', '', '{\"imageurl\":\"images\\/banners\\/toys-2938508_1280.jpg\",\"width\":\"\",\"height\":\"\",\"alt\":\"\"}', '0', '', '-1', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-05-27 00:00:00', '2018-04-27 12:08:40', '*', '562', '', '2018-04-29 16:16:57', '562', '2');

-- ----------------------------
-- Table structure for `qrhqt_banner_clients`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_banner_clients`;
CREATE TABLE `qrhqt_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_banner_clients
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_banner_tracks`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_banner_tracks`;
CREATE TABLE `qrhqt_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_banner_tracks
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_categories`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_categories`;
CREATE TABLE `qrhqt_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_categories
-- ----------------------------
INSERT INTO `qrhqt_categories` VALUES ('1', '0', '0', '0', '13', '0', '', 'system', 'ROOT', 'root', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{}', '', '', '{}', '562', '2018-04-27 09:26:31', '0', '0000-00-00 00:00:00', '0', '*', '1');
INSERT INTO `qrhqt_categories` VALUES ('2', '27', '1', '1', '2', '1', 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '562', '2018-04-27 09:26:31', '0', '0000-00-00 00:00:00', '0', '*', '1');
INSERT INTO `qrhqt_categories` VALUES ('3', '28', '1', '3', '4', '1', 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '562', '2018-04-27 09:26:31', '0', '0000-00-00 00:00:00', '0', '*', '1');
INSERT INTO `qrhqt_categories` VALUES ('4', '29', '1', '5', '6', '1', 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '562', '2018-04-27 09:26:31', '0', '0000-00-00 00:00:00', '0', '*', '1');
INSERT INTO `qrhqt_categories` VALUES ('5', '30', '1', '7', '8', '1', 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '562', '2018-04-27 09:26:31', '0', '0000-00-00 00:00:00', '0', '*', '1');
INSERT INTO `qrhqt_categories` VALUES ('7', '32', '1', '9', '10', '1', 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '562', '2018-04-27 09:26:31', '0', '0000-00-00 00:00:00', '0', '*', '1');
INSERT INTO `qrhqt_categories` VALUES ('8', '69', '1', '11', '12', '1', 'glavnaya', 'com_content', 'главная', 'glavnaya', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '562', '2018-05-02 07:44:42', '0', '2018-05-02 07:44:42', '0', '*', '1');

-- ----------------------------
-- Table structure for `qrhqt_contact_details`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_contact_details`;
CREATE TABLE `qrhqt_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_contact_details
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_content`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_content`;
CREATE TABLE `qrhqt_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`),
  KEY `idx_alias` (`alias`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_content
-- ----------------------------
INSERT INTO `qrhqt_content` VALUES ('1', '70', 'главная', 'glavnaya', '<div class=\"caption\" style=\"text-align: center;\"><span style=\"font-size: 14pt; font-family: georgia, palatino, serif;\"><strong>Сегодня в магазинах представлен большой ассортимент игрушек, благодаря чему каждый родитель может подобрать товар в соответствии с возрастом, полом и развитием ребенка. Но, к сожалению, не все детские игрушки соответствуют нормам безопасности, а некоторые и вовсе могут нанести вред малышу. Наш крупнейший интернет магазин детских игрушек в России. Здесь вы всегда сможете найти качественные игрушки по доступной цене. Не важно, для какого возраста вы ищите игрушку - для грудничка или для школьника. Все товары, представленные в нашем каталоге, выполнены из качественных материалов и соответствуют требованиям мировых стандартов. В наших каталогах вы всегда сможете найти:</strong></span></div>', '', '1', '8', '2018-05-02 07:47:35', '562', '', '2018-05-02 07:54:31', '562', '562', '2018-05-02 07:54:31', '2018-05-02 07:47:35', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', '3', '0', '', '', '1', '0', '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', '0', '*', '');

-- ----------------------------
-- Table structure for `qrhqt_contentitem_tag_map`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_contentitem_tag_map`;
CREATE TABLE `qrhqt_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- ----------------------------
-- Records of qrhqt_contentitem_tag_map
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_content_frontpage`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_content_frontpage`;
CREATE TABLE `qrhqt_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_content_frontpage
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_content_rating`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_content_rating`;
CREATE TABLE `qrhqt_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_content_rating
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_content_types`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_content_types`;
CREATE TABLE `qrhqt_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_content_types
-- ----------------------------
INSERT INTO `qrhqt_content_types` VALUES ('1', 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `qrhqt_content_types` VALUES ('2', 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }');
INSERT INTO `qrhqt_content_types` VALUES ('3', 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `qrhqt_content_types` VALUES ('4', 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', 'UsersHelperRoute::getUserRoute', '');
INSERT INTO `qrhqt_content_types` VALUES ('5', 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `qrhqt_content_types` VALUES ('6', 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `qrhqt_content_types` VALUES ('7', 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `qrhqt_content_types` VALUES ('8', 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}');
INSERT INTO `qrhqt_content_types` VALUES ('9', 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `qrhqt_content_types` VALUES ('10', 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `qrhqt_content_types` VALUES ('11', 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}');
INSERT INTO `qrhqt_content_types` VALUES ('12', 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}');
INSERT INTO `qrhqt_content_types` VALUES ('13', 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

-- ----------------------------
-- Table structure for `qrhqt_core_log_searches`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_core_log_searches`;
CREATE TABLE `qrhqt_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_core_log_searches
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_extensions`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_extensions`;
CREATE TABLE `qrhqt_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10016 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_extensions
-- ----------------------------
INSERT INTO `qrhqt_extensions` VALUES ('1', '0', 'com_mailto', 'component', 'com_mailto', '', '0', '1', '1', '1', '{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('2', '0', 'com_wrapper', 'component', 'com_wrapper', '', '0', '1', '1', '1', '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('3', '0', 'com_admin', 'component', 'com_admin', '', '1', '1', '1', '1', '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('4', '0', 'com_banners', 'component', 'com_banners', '', '1', '1', '1', '0', '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('5', '0', 'com_cache', 'component', 'com_cache', '', '1', '1', '1', '1', '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('6', '0', 'com_categories', 'component', 'com_categories', '', '1', '1', '1', '1', '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('7', '0', 'com_checkin', 'component', 'com_checkin', '', '1', '1', '1', '1', '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('8', '0', 'com_contact', 'component', 'com_contact', '', '1', '1', '1', '0', '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('9', '0', 'com_cpanel', 'component', 'com_cpanel', '', '1', '1', '1', '1', '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('10', '0', 'com_installer', 'component', 'com_installer', '', '1', '1', '1', '1', '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}', '{\"show_jed_info\":\"1\",\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('11', '0', 'com_languages', 'component', 'com_languages', '', '1', '1', '1', '1', '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"administrator\":\"en-GB\",\"site\":\"ru-RU\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('12', '0', 'com_login', 'component', 'com_login', '', '1', '1', '1', '1', '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('13', '0', 'com_media', 'component', 'com_media', '', '1', '1', '0', '1', '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('14', '0', 'com_menus', 'component', 'com_menus', '', '1', '1', '1', '1', '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('15', '0', 'com_messages', 'component', 'com_messages', '', '1', '1', '1', '1', '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('16', '0', 'com_modules', 'component', 'com_modules', '', '1', '1', '1', '1', '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('17', '0', 'com_newsfeeds', 'component', 'com_newsfeeds', '', '1', '1', '1', '0', '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('18', '0', 'com_plugins', 'component', 'com_plugins', '', '1', '1', '1', '1', '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('19', '0', 'com_search', 'component', 'com_search', '', '1', '1', '1', '0', '{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}', '{\"enabled\":\"0\",\"search_phrases\":\"1\",\"search_areas\":\"1\",\"show_date\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('20', '0', 'com_templates', 'component', 'com_templates', '', '1', '1', '1', '1', '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"template_positions_display\":\"1\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('22', '0', 'com_content', 'component', 'com_content', '', '1', '1', '0', '1', '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"0\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"info_block_show_title\":\"0\",\"show_category\":\"0\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"0\",\"flags\":\"1\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_tags\":\"1\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"captcha\":\"\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_heading_title_text\":\"1\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"show\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('23', '0', 'com_config', 'component', 'com_config', '', '1', '1', '0', '1', '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"10\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"12\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('24', '0', 'com_redirect', 'component', 'com_redirect', '', '1', '1', '0', '1', '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('25', '0', 'com_users', 'component', 'com_users', '', '1', '1', '0', '1', '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('27', '0', 'com_finder', 'component', 'com_finder', '', '1', '1', '0', '0', '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('28', '0', 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', '1', '1', '0', '1', '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"updatesource\":\"default\",\"customurl\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('29', '0', 'com_tags', 'component', 'com_tags', '', '1', '1', '1', '1', '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('30', '0', 'com_contenthistory', 'component', 'com_contenthistory', '', '1', '1', '1', '0', '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('31', '0', 'com_ajax', 'component', 'com_ajax', '', '1', '1', '1', '1', '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('32', '0', 'com_postinstall', 'component', 'com_postinstall', '', '1', '1', '1', '1', '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('33', '0', 'com_fields', 'component', 'com_fields', '', '1', '1', '1', '0', '{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('34', '0', 'com_associations', 'component', 'com_associations', '', '1', '1', '1', '0', '{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"Januar 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('102', '0', 'LIB_PHPUTF8', 'library', 'phputf8', '', '0', '1', '1', '1', '{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('103', '0', 'LIB_JOOMLA', 'library', 'joomla', '', '0', '1', '1', '1', '{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"mediaversion\":\"13a72c6fbaeae0bc17b8b5e1244289b0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('104', '0', 'LIB_IDNA', 'library', 'idna_convert', '', '0', '1', '1', '1', '{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('105', '0', 'FOF', 'library', 'fof', '', '0', '1', '1', '1', '{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('106', '0', 'LIB_PHPASS', 'library', 'phpass', '', '0', '1', '1', '1', '{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('200', '0', 'mod_articles_archive', 'module', 'mod_articles_archive', '', '0', '1', '1', '0', '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('201', '0', 'mod_articles_latest', 'module', 'mod_articles_latest', '', '0', '1', '1', '0', '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('202', '0', 'mod_articles_popular', 'module', 'mod_articles_popular', '', '0', '1', '1', '0', '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('203', '0', 'mod_banners', 'module', 'mod_banners', '', '0', '1', '1', '0', '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('204', '0', 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', '0', '1', '1', '1', '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('205', '0', 'mod_custom', 'module', 'mod_custom', '', '0', '1', '1', '1', '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('206', '0', 'mod_feed', 'module', 'mod_feed', '', '0', '1', '1', '0', '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('207', '0', 'mod_footer', 'module', 'mod_footer', '', '0', '1', '1', '0', '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('208', '0', 'mod_login', 'module', 'mod_login', '', '0', '1', '1', '1', '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('209', '0', 'mod_menu', 'module', 'mod_menu', '', '0', '1', '1', '1', '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('210', '0', 'mod_articles_news', 'module', 'mod_articles_news', '', '0', '1', '1', '0', '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('211', '0', 'mod_random_image', 'module', 'mod_random_image', '', '0', '1', '1', '0', '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('212', '0', 'mod_related_items', 'module', 'mod_related_items', '', '0', '1', '1', '0', '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('213', '0', 'mod_search', 'module', 'mod_search', '', '0', '1', '1', '0', '{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('214', '0', 'mod_stats', 'module', 'mod_stats', '', '0', '1', '1', '0', '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('215', '0', 'mod_syndicate', 'module', 'mod_syndicate', '', '0', '1', '1', '1', '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('216', '0', 'mod_users_latest', 'module', 'mod_users_latest', '', '0', '1', '1', '0', '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('218', '0', 'mod_whosonline', 'module', 'mod_whosonline', '', '0', '1', '1', '0', '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('219', '0', 'mod_wrapper', 'module', 'mod_wrapper', '', '0', '1', '1', '0', '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('220', '0', 'mod_articles_category', 'module', 'mod_articles_category', '', '0', '1', '1', '0', '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('221', '0', 'mod_articles_categories', 'module', 'mod_articles_categories', '', '0', '1', '1', '0', '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('222', '0', 'mod_languages', 'module', 'mod_languages', '', '0', '1', '1', '1', '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('223', '0', 'mod_finder', 'module', 'mod_finder', '', '0', '1', '0', '0', '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('300', '0', 'mod_custom', 'module', 'mod_custom', '', '1', '1', '1', '1', '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('301', '0', 'mod_feed', 'module', 'mod_feed', '', '1', '1', '1', '0', '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('302', '0', 'mod_latest', 'module', 'mod_latest', '', '1', '1', '1', '0', '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('303', '0', 'mod_logged', 'module', 'mod_logged', '', '1', '1', '1', '0', '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('304', '0', 'mod_login', 'module', 'mod_login', '', '1', '1', '1', '1', '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('305', '0', 'mod_menu', 'module', 'mod_menu', '', '1', '1', '1', '0', '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('307', '0', 'mod_popular', 'module', 'mod_popular', '', '1', '1', '1', '0', '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('308', '0', 'mod_quickicon', 'module', 'mod_quickicon', '', '1', '1', '1', '1', '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('309', '0', 'mod_status', 'module', 'mod_status', '', '1', '1', '1', '0', '{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('310', '0', 'mod_submenu', 'module', 'mod_submenu', '', '1', '1', '1', '0', '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('311', '0', 'mod_title', 'module', 'mod_title', '', '1', '1', '1', '0', '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('312', '0', 'mod_toolbar', 'module', 'mod_toolbar', '', '1', '1', '1', '1', '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('313', '0', 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', '1', '1', '1', '0', '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('314', '0', 'mod_version', 'module', 'mod_version', '', '1', '1', '1', '0', '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}', '{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('315', '0', 'mod_stats_admin', 'module', 'mod_stats_admin', '', '1', '1', '1', '0', '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('316', '0', 'mod_tags_popular', 'module', 'mod_tags_popular', '', '0', '1', '1', '0', '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('317', '0', 'mod_tags_similar', 'module', 'mod_tags_similar', '', '0', '1', '1', '0', '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('318', '0', 'mod_sampledata', 'module', 'mod_sampledata', '', '1', '1', '1', '0', '{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sampledata\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('400', '0', 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', '0', '0', '1', '0', '{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}', '{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `qrhqt_extensions` VALUES ('401', '0', 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', '0', '1', '1', '1', '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('402', '0', 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', '0', '0', '1', '0', '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', '', '0', '0000-00-00 00:00:00', '3', '0');
INSERT INTO `qrhqt_extensions` VALUES ('403', '0', 'plg_content_contact', 'plugin', 'contact', 'content', '0', '1', '1', '0', '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `qrhqt_extensions` VALUES ('404', '0', 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', '0', '1', '1', '0', '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `qrhqt_extensions` VALUES ('406', '0', 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', '0', '1', '1', '0', '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', '', '0', '2011-09-18 15:22:50', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('407', '0', 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', '0', '1', '1', '0', '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '4', '0');
INSERT INTO `qrhqt_extensions` VALUES ('408', '0', 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', '0', '1', '1', '0', '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '5', '0');
INSERT INTO `qrhqt_extensions` VALUES ('409', '0', 'plg_content_vote', 'plugin', 'vote', 'content', '0', '0', '1', '0', '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}', '', '', '', '0', '0000-00-00 00:00:00', '6', '0');
INSERT INTO `qrhqt_extensions` VALUES ('410', '0', 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', '0', '1', '1', '1', '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.35.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `qrhqt_extensions` VALUES ('411', '0', 'plg_editors_none', 'plugin', 'none', 'editors', '0', '1', '1', '1', '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}', '', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `qrhqt_extensions` VALUES ('412', '0', 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', '0', '1', '1', '0', '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2017\",\"author\":\"Ephox Corporation\",\"copyright\":\"Ephox Corporation\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"http:\\/\\/www.tinymce.com\",\"version\":\"4.5.8\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}', '{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}', '', '', '0', '0000-00-00 00:00:00', '3', '0');
INSERT INTO `qrhqt_extensions` VALUES ('413', '0', 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', '0', '1', '1', '0', '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}', '', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `qrhqt_extensions` VALUES ('414', '0', 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', '0', '1', '1', '0', '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}', '', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `qrhqt_extensions` VALUES ('415', '0', 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', '0', '1', '1', '0', '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '', '', '', '0', '0000-00-00 00:00:00', '3', '0');
INSERT INTO `qrhqt_extensions` VALUES ('416', '0', 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', '0', '1', '1', '0', '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}', '', '', '', '0', '0000-00-00 00:00:00', '4', '0');
INSERT INTO `qrhqt_extensions` VALUES ('417', '0', 'plg_search_categories', 'plugin', 'categories', 'search', '0', '1', '1', '0', '{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('418', '0', 'plg_search_contacts', 'plugin', 'contacts', 'search', '0', '1', '1', '0', '{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('419', '0', 'plg_search_content', 'plugin', 'content', 'search', '0', '1', '1', '0', '{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('420', '0', 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', '0', '1', '1', '0', '{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('422', '0', 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', '0', '0', '1', '1', '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}', '', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `qrhqt_extensions` VALUES ('423', '0', 'plg_system_p3p', 'plugin', 'p3p', 'system', '0', '0', '1', '0', '{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}', '{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `qrhqt_extensions` VALUES ('424', '0', 'plg_system_cache', 'plugin', 'cache', 'system', '0', '0', '1', '1', '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', '', '0', '0000-00-00 00:00:00', '9', '0');
INSERT INTO `qrhqt_extensions` VALUES ('425', '0', 'plg_system_debug', 'plugin', 'debug', 'system', '0', '1', '1', '0', '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '4', '0');
INSERT INTO `qrhqt_extensions` VALUES ('426', '0', 'plg_system_log', 'plugin', 'log', 'system', '0', '1', '1', '1', '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}', '', '', '', '0', '0000-00-00 00:00:00', '5', '0');
INSERT INTO `qrhqt_extensions` VALUES ('427', '0', 'plg_system_redirect', 'plugin', 'redirect', 'system', '0', '0', '1', '1', '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}', '', '', '', '0', '0000-00-00 00:00:00', '3', '0');
INSERT INTO `qrhqt_extensions` VALUES ('428', '0', 'plg_system_remember', 'plugin', 'remember', 'system', '0', '1', '1', '1', '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}', '', '', '', '0', '0000-00-00 00:00:00', '7', '0');
INSERT INTO `qrhqt_extensions` VALUES ('429', '0', 'plg_system_sef', 'plugin', 'sef', 'system', '0', '1', '1', '0', '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}', '', '', '', '0', '0000-00-00 00:00:00', '8', '0');
INSERT INTO `qrhqt_extensions` VALUES ('430', '0', 'plg_system_logout', 'plugin', 'logout', 'system', '0', '1', '1', '1', '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}', '', '', '', '0', '0000-00-00 00:00:00', '6', '0');
INSERT INTO `qrhqt_extensions` VALUES ('431', '0', 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', '0', '0', '1', '0', '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `qrhqt_extensions` VALUES ('432', '0', 'plg_user_joomla', 'plugin', 'joomla', 'user', '0', '1', '1', '0', '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `qrhqt_extensions` VALUES ('433', '0', 'plg_user_profile', 'plugin', 'profile', 'user', '0', '0', '1', '0', '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('434', '0', 'plg_extension_joomla', 'plugin', 'joomla', 'extension', '0', '1', '1', '1', '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `qrhqt_extensions` VALUES ('435', '0', 'plg_content_joomla', 'plugin', 'joomla', 'content', '0', '1', '1', '0', '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('436', '0', 'plg_system_languagecode', 'plugin', 'languagecode', 'system', '0', '0', '1', '0', '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}', '', '', '', '0', '0000-00-00 00:00:00', '10', '0');
INSERT INTO `qrhqt_extensions` VALUES ('437', '0', 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', '0', '1', '1', '1', '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('438', '0', 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', '0', '1', '1', '1', '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('439', '0', 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', '0', '0', '1', '0', '{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('440', '0', 'plg_system_highlight', 'plugin', 'highlight', 'system', '0', '1', '1', '0', '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}', '', '', '', '0', '0000-00-00 00:00:00', '7', '0');
INSERT INTO `qrhqt_extensions` VALUES ('441', '0', 'plg_content_finder', 'plugin', 'finder', 'content', '0', '0', '1', '0', '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('442', '0', 'plg_finder_categories', 'plugin', 'categories', 'finder', '0', '1', '1', '0', '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `qrhqt_extensions` VALUES ('443', '0', 'plg_finder_contacts', 'plugin', 'contacts', 'finder', '0', '1', '1', '0', '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `qrhqt_extensions` VALUES ('444', '0', 'plg_finder_content', 'plugin', 'content', 'finder', '0', '1', '1', '0', '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '', '', '', '0', '0000-00-00 00:00:00', '3', '0');
INSERT INTO `qrhqt_extensions` VALUES ('445', '0', 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', '0', '1', '1', '0', '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '', '', '', '0', '0000-00-00 00:00:00', '4', '0');
INSERT INTO `qrhqt_extensions` VALUES ('447', '0', 'plg_finder_tags', 'plugin', 'tags', 'finder', '0', '1', '1', '0', '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('448', '0', 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', '0', '0', '1', '0', '{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('449', '0', 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', '0', '1', '1', '0', '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('450', '0', 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', '0', '0', '1', '0', '{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('451', '0', 'plg_search_tags', 'plugin', 'tags', 'search', '0', '1', '1', '0', '{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('452', '0', 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', '0', '1', '1', '0', '{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}', '{\"lastrun\":1525438140}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('453', '0', 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', '0', '1', '1', '0', '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('454', '0', 'plg_system_stats', 'plugin', 'stats', 'system', '0', '1', '1', '0', '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}', 'null', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('455', '0', 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', '0', '1', '1', '1', '{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}', '', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `qrhqt_extensions` VALUES ('456', '0', 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', '0', '1', '1', '1', '{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}', '', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `qrhqt_extensions` VALUES ('457', '0', 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', '0', '1', '1', '1', '{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}', '', '', '', '0', '0000-00-00 00:00:00', '3', '0');
INSERT INTO `qrhqt_extensions` VALUES ('458', '0', 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', '0', '1', '1', '1', '{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('459', '0', 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', '0', '1', '1', '0', '{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('460', '0', 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', '0', '1', '1', '0', '{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('461', '0', 'plg_system_fields', 'plugin', 'fields', 'system', '0', '1', '1', '0', '{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('462', '0', 'plg_fields_calendar', 'plugin', 'calendar', 'fields', '0', '1', '1', '0', '{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('463', '0', 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', '0', '1', '1', '0', '{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('464', '0', 'plg_fields_color', 'plugin', 'color', 'fields', '0', '1', '1', '0', '{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('465', '0', 'plg_fields_editor', 'plugin', 'editor', 'fields', '0', '1', '1', '0', '{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('466', '0', 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', '0', '1', '1', '0', '{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('467', '0', 'plg_fields_integer', 'plugin', 'integer', 'fields', '0', '1', '1', '0', '{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}', '{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('468', '0', 'plg_fields_list', 'plugin', 'list', 'fields', '0', '1', '1', '0', '{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('469', '0', 'plg_fields_media', 'plugin', 'media', 'fields', '0', '1', '1', '0', '{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('470', '0', 'plg_fields_radio', 'plugin', 'radio', 'fields', '0', '1', '1', '0', '{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('471', '0', 'plg_fields_sql', 'plugin', 'sql', 'fields', '0', '1', '1', '0', '{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('472', '0', 'plg_fields_text', 'plugin', 'text', 'fields', '0', '1', '1', '0', '{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('473', '0', 'plg_fields_textarea', 'plugin', 'textarea', 'fields', '0', '1', '1', '0', '{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('474', '0', 'plg_fields_url', 'plugin', 'url', 'fields', '0', '1', '1', '0', '{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('475', '0', 'plg_fields_user', 'plugin', 'user', 'fields', '0', '1', '1', '0', '{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('476', '0', 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', '0', '1', '1', '0', '{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('477', '0', 'plg_content_fields', 'plugin', 'fields', 'content', '0', '1', '1', '0', '{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('478', '0', 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', '0', '1', '1', '0', '{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('479', '0', 'plg_sampledata_blog', 'plugin', 'blog', 'sampledata', '0', '1', '1', '0', '{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"blog\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('480', '0', 'plg_system_sessiongc', 'plugin', 'sessiongc', 'system', '0', '1', '1', '0', '{\"name\":\"plg_system_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"February 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.6\",\"description\":\"PLG_SYSTEM_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sessiongc\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('503', '0', 'beez3', 'template', 'beez3', '', '0', '1', '1', '0', '{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('504', '0', 'hathor', 'template', 'hathor', '', '1', '1', '1', '0', '{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('506', '0', 'protostar', 'template', 'protostar', '', '0', '1', '1', '0', '{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('507', '0', 'isis', 'template', 'isis', '', '1', '1', '1', '0', '{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('600', '802', 'English (en-GB)', 'language', 'en-GB', '', '0', '1', '1', '1', '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.7\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('601', '802', 'English (en-GB)', 'language', 'en-GB', '', '1', '1', '1', '1', '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.7\",\"description\":\"en-GB administrator language\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('700', '0', 'files_joomla', 'file', 'joomla', '', '0', '1', '1', '1', '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.7\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('802', '0', 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', '0', '1', '1', '1', '{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.7.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('10000', '10002', 'Russian', 'language', 'ru-RU', '', '0', '1', '0', '0', '{\"name\":\"Russian\",\"type\":\"language\",\"creationDate\":\"2017-11-07\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"3.8.2.1\",\"description\":\"Russian language pack (site) for Joomla! 3.8.2\",\"group\":\"\",\"filename\":\"install\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('10001', '10002', 'ru-RU', 'language', 'ru-RU', '', '1', '1', '0', '0', '{\"name\":\"\\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439 (ru-RU)\",\"type\":\"language\",\"creationDate\":\"2017-11-07\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"3.8.2.1\",\"description\":\"Russian language pack (administrator) for Joomla! 3.8.2\",\"group\":\"\",\"filename\":\"install\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('10002', '0', 'Russian (ru-RU) Language Pack', 'package', 'pkg_ru-RU', '', '0', '1', '1', '0', '{\"name\":\"Russian (ru-RU) Language Pack\",\"type\":\"package\",\"creationDate\":\"2017-11-07\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"3.8.2.1\",\"description\":\"Joomla 3.8 Russian Language Package\",\"group\":\"\",\"filename\":\"pkg_ru-RU\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('10003', '0', 'PLG_SYSTEM_SRIZONIMAGESLIDER', 'plugin', 'srizonimageslider', 'system', '0', '1', '1', '0', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('10004', '0', 'MOD_SRIZONIMAGESLIDER', 'module', 'mod_srizonimageslider', '', '0', '1', '1', '0', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('10005', '10008', 'YT Framework', 'plugin', 'yt', 'system', '0', '1', '1', '0', '{\"name\":\"YT Framework\",\"type\":\"plugin\",\"creationDate\":\"15\\/5\\/2014\",\"author\":\"YouTech Company\",\"copyright\":\"\",\"authorEmail\":\"contact@ytcvn.com\",\"authorUrl\":\"http:\\/\\/www.smartaddons.com\",\"version\":\"3.0.2\",\"description\":\"YT_DESC\",\"group\":\"\",\"filename\":\"yt\"}', '{\"show_sjhelp\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('10006', '10008', 'YT Shortcodes', 'plugin', 'ytshortcodes', 'system', '0', '0', '1', '0', '{\"name\":\"YT Shortcodes\",\"type\":\"plugin\",\"creationDate\":\"10 March 2015\",\"author\":\"YouTech Company\",\"copyright\":\"Copyright (C) 2015 YouTech Company\",\"authorEmail\":\"contact@ytcvn.com\",\"authorUrl\":\"http:\\/\\/www.smartaddons.com\",\"version\":\"3.0.0\",\"description\":\"YT_DESC\",\"group\":\"\",\"filename\":\"ytshortcodes\"}', '{\"show_sjbootstrap\":\"0\",\"show_sjfont-awesome\":\"1\",\"show_sjjquery\":\"0\",\"show_sjprettify\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('10007', '10008', 'sj_shoppystore', 'template', 'sj_shoppystore', '', '0', '1', '1', '0', '{\"name\":\"sj_shoppystore\",\"type\":\"template\",\"creationDate\":\"01\\/11\\/2015\",\"author\":\"YouTech Company\",\"copyright\":\"\",\"authorEmail\":\"contact@ytcvn.com\",\"authorUrl\":\"http:\\/\\/www.smartaddons.com\",\"version\":\"1.0.0\",\"description\":\"\\n        \\n            <div style=\\\"text-align:left;margin:0 0px 50px;\\\">\\n            <h2>SJ Shoppystore - Responsive eCommerce Joomla 3.x Template for VirtueMart<\\/h2>\\n            <p>This template has all the in built functionality of YT Framework v3 . SJ Market comes with use shortcode such for video, gallery, slideshow, tabs, accordion etc.\\n            YT Framework 3.0 especially comes with rich administration features such as logo settings, layout builder,\\n            mega menu, unlimited fonts control.<\\/p>\\n\\n            <h3 class=\\\"clear\\\">Key Features<\\/h3>\\n            <ul class=\\\"yt-list type-check\\\">\\n                <li>Responsive Design supporting Phone, Tablets and Desktops<\\/li>\\n                <li>Powered by Bootstrap and compatible with Joomla 3.0<\\/li>\\n                <li>Sixed (6) styling with styling manager<\\/li>\\n                <li>Uses latest web technologies like html5 and css3<\\/li>\\n                <li>Uses shortcodes in built<\\/li>\\n                <li>Built with LESS CSS<\\/li>\\n                <li>Megamenu, RTL Support, CSS and JS compression and many more...<\\/li>\\n            <\\/ul>\\n            <\\/div>\\n        \\n    \",\"group\":\"yt_framework\",\"filename\":\"templateDetails\"}', '{\"hideComponentHomePage\":\"0\",\"favicon\":\"images\\/favicon.ico\",\"logoType\":\"image\",\"logoText\":\"SmartAddons.Com\",\"sloganText\":\"The high quality products\",\"logoWidth\":\"140\",\"logoHeight\":\"57\",\"copyright\":\"1\",\"ytcopyright\":\"Copyright \\u00a9 {year} Sj Shoppystore. All Rights Reserved\",\"joomla_create\":\"1\",\"layouttype\":\"res\",\"layoutFixed\":\"980\",\"layoutFloat\":\"90\",\"layoutRes\":\"1200\",\"typelayout\":\"wide\",\"bgbox\":\"pattern8\",\"bgframed\":\"pattern8\",\"bgrounded\":\"pattern8\",\"templateLayout\":\"layout1\",\"overrideLayouts\":\"786:variations\",\"themecolor\":\"red\",\"menutype\":\"mainmenu\",\"menustyle\":\"mega\",\"moofx\":\"easeInOutCirc\",\"moofxtimeout\":\"150\",\"keepMenu\":\"1\",\"fancyMenu\":\"0\",\"bodyFont\":\"Arial, Helvetica, sans-serif\",\"bodySelectors\":\"body\",\"menuFont\":\"Open+Sans\",\"menuSelectors\":\"#menu a\",\"headingFont\":\"Open+Sans\",\"headingSelectors\":\"h1,h2,h3\",\"otherSelectors\":\"\",\"leading_width\":\"540\",\"leading_height\":\"290\",\"intro_width\":\"540\",\"intro_height\":\"290\",\"thumbnail_background\":\"#000000\",\"thumbnail_mode\":\"fill\",\"showCpanel\":\"0\",\"showBacktotop\":\"1\",\"animateScroll\":\"0\",\"disableMootool\":\"1\",\"stickyPanel\":\"right\",\"stickyBar\":\"no\",\"developing\":\"0\",\"optimizeMergeFile\":\"0\",\"optimizeCSS\":\"0\",\"optimizeCSSExclude\":\"\",\"optimizeJS\":\"0\",\"optimizeJSExclude\":\"\",\"optimizeFolder\":\"yt-assets\",\"setGeneratorTag\":\"SmartAddons.Com - the high quality products!\",\"enableGoogleAnalytics\":\"0\",\"googleAnalyticsTrackingID\":\"\",\"headAfter\":\"\",\"headBefore\":\"\",\"bodyAfter\":\"\",\"bodyBefore\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('10008', '0', 'Package - Sj Shoppystore', 'package', 'pkg_sj_shoppystore', '', '0', '1', '1', '0', '{\"name\":\"Package - Sj Shoppystore\",\"type\":\"package\",\"creationDate\":\"Mar 08, 2015\",\"author\":\" YouTech Company \",\"copyright\":\"Smartaddons\",\"authorEmail\":\"support@Smartaddons.com\",\"authorUrl\":\"www.Smartaddons.com\",\"version\":\"1.0.0\",\"description\":\"    \\t\\n\\t\\t\\t\\t\\t<div class=\\\"alert\\\" style=\\\"margin: 10px 0px 30px; padding:20px; \\\">\\n\\t\\t\\t\\t\\t\\t<a style=\\\"display:block;padding-bottom:30px; text-align:center;\\\" href=\\\"http:\\/\\/www.smartaddons.com\\\"><img src=\\\"http:\\/\\/www.smartaddons.com\\/images\\/smartaddons\\/logoSmartaddons.png\\\" ><\\/a>\\n\\t\\t\\t\\t\\t\\t<div class=\\\"alert alert-success \\\">\\t<i class=\\\"fa fa-check\\\"><\\/i> Sj Shoppystore Templates 1.0.0 installation was successful<\\/div>\\n\\t\\t\\t\\t\\t\\t<div class=\\\"alert alert-success \\\">\\t<i class=\\\"fa fa-check\\\"><\\/i> YT Framework plugin v3.0.2 installation was successful<\\/div>\\n\\t\\t\\t\\t\\t\\t<div class=\\\"alert alert-success \\\">\\t<i class=\\\"fa fa-check\\\"><\\/i> YT Shortcode plugin v3.0.0 installation was successful<\\/div>\\n\\t\\t\\t\\t\\t<\\/div>\\t\\n\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\",\"group\":\"\",\"filename\":\"pkg_sj_shoppystore\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('10009', '0', 'SJ Extra Slider for Content', 'module', 'mod_sj_extraslider', '', '0', '1', '0', '0', '{\"name\":\"SJ Extra Slider for Content\",\"type\":\"module\",\"creationDate\":\"Feb 2014\",\"author\":\"YouTech Company\",\"copyright\":\"Copyright (c) 2014 YouTech Company\",\"authorEmail\":\"contact@ytcvn.com\",\"authorUrl\":\"http:\\/\\/www.smartaddons.com\",\"version\":\"3.1.0\",\"description\":\"TPL_YTFRAMEWORK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sj_extraslider\"}', '{\"item_link_target\":\"_self\",\"button_page\":\"\",\"theme\":\"style4\",\"nb-column1\":\"3\",\"nb-column2\":\"3\",\"nb-column3\":\"2\",\"nb-column4\":\"1\",\"items_page\":\"6\",\"catid\":\"\",\"show_child_category_articles\":\"0\",\"levels\":\"1\",\"show_front\":\"show\",\"article_ordering\":\"a.title\",\"article_ordering_direction\":\"ASC\",\"count\":\"10\",\"title_slider_display\":\"1\",\"title_slider\":\"Latest News\",\"item_title_display\":\"1\",\"item_title_max_characs\":\"20\",\"show_introtext\":\"1\",\"introtext_limit\":\"100\",\"item_tag_display\":\"1\",\"item_readmore_display\":\"1\",\"item_readmore_text\":\"Readmore\",\"imgcfg_from_image_intro\":\"1\",\"imgcfg_from_image_fulltext\":\"1\",\"imgcfg_from_inline_introtext\":\"1\",\"imgcfg_from_inline_fulltext\":\"1\",\"imgcfg_from_external\":\"1\",\"imgcfg_external_url\":\"\\/images\",\"imgcfg_order\":\"image_intro\",\"imgcfg_type\":\"\",\"imgcfg_transparency\":\"1\",\"imgcfg_width\":\"\",\"imgcfg_height\":\"\",\"imgcfg_background\":\"\",\"imgcfg_cache\":\"\",\"imgcfg_cache_url\":\"\",\"imgcfg_placeholder\":\"1\",\"imgcfg_placeholder_path\":\"modules\\/mod_sj_extraslider\\/assets\\/images\\/nophoto.jpg\",\"play\":\"0\",\"pause_hover\":\"hover\",\"duration\":\"800\",\"swipe_enable\":\"1\",\"effect\":\"slide\",\"include_jquery\":\"0\",\"layout\":\"basic\",\"moduleclass_sfx\":\"\",\"pretext\":\"\",\"posttext\":\"\",\"owncache\":\"1\",\"cache_time\":\"900\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('10010', '0', 'SJ Extra Slider for VirtueMart', 'module', 'mod_sj_vm_extra_slider', '', '0', '1', '0', '0', '{\"name\":\"SJ Extra Slider for VirtueMart\",\"type\":\"module\",\"creationDate\":\"Octorber 2015\",\"author\":\"YouTech Company\",\"copyright\":\"Copyright (c) 2015 YouTech Company\",\"authorEmail\":\"contact@ytcvn.com\",\"authorUrl\":\"http:\\/\\/www.smartaddons.com\",\"version\":\"3.0.0\",\"description\":\"TPL_YTFRAMEWORK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sj_vm_extra_slider\"}', '{\"item_link_target\":\"_self\",\"button_page\":\"\",\"theme\":\"style4\",\"nb-column0\":\"4\",\"nb-column1\":\"3\",\"nb-column2\":\"3\",\"nb-column3\":\"2\",\"nb-column4\":\"1\",\"nb_rows\":\"1\",\"show_child_category_products\":\"0\",\"levels\":\"1\",\"show_front\":\"show\",\"source_order\":\"product_name\",\"product_ordering_direction\":\"ASC\",\"source_limit\":\"20\",\"title_slider_display\":\"1\",\"title_slider\":\"Latest News\",\"item_title_display\":\"1\",\"item_title_max_characs\":\"20\",\"item_desc_display\":\"1\",\"item_desc_max_characs\":\"50\",\"item_price_display\":\"1\",\"item_addtocart_display\":\"1\",\"item_readmore_display\":\"1\",\"item_readmore_text\":\"Read more\",\"imgcfg_from_image_product\":\"1\",\"imgcfg_from_description\":\"1\",\"imgcfg_from_external\":\"1\",\"imgcfg_external_url\":\"images\\/vm\\/{id}.jpg\",\"imgcfg_order\":\"image_product, description, external\",\"imgcfg_function\":\"resize_stretch\",\"imgcfg_type\":\"\",\"imgcfg_transparency\":\"1\",\"imgcfg_width\":\"180\",\"imgcfg_height\":\"180\",\"imgcfg_background\":\"#FFFFFF\",\"imgcfg_placeholder_path\":\"modules\\/mod_sj_vm_extra_slider\\/assets\\/images\\/nophoto.jpg\",\"margin\":\"5\",\"slideBy\":\"1\",\"autoplay\":\"1\",\"autoplay_timeout\":\"5000\",\"pausehover\":\"1\",\"autoplay_speed\":\"2000\",\"startPosition\":\"0\",\"mousedrag\":\"1\",\"touchdrag\":\"1\",\"effect\":\"starwars\",\"dots\":\"1\",\"dotsSpeed\":\"500\",\"navs\":\"1\",\"navSpeed\":\"500\",\"duration\":\"600\",\"delay\":\"300\",\"include_jquery\":\"0\",\"pretext\":\"\",\"posttext\":\"\",\"owncache\":\"1\",\"cache_time\":\"900\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('10011', '0', 'Slideshow CK', 'module', 'mod_slideshowck', '', '0', '1', '0', '0', '{\"name\":\"Slideshow CK\",\"type\":\"module\",\"creationDate\":\"Avril 2012\",\"author\":\"C\\u00e9dric KEIFLIN\",\"copyright\":\"C\\u00e9dric KEIFLIN\",\"authorEmail\":\"ced1870@gmail.com\",\"authorUrl\":\"http:\\/\\/www.joomlack.fr\",\"version\":\"1.4.52\",\"description\":\"MOD_SLIDESHOWCK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_slideshowck\"}', '{\"slidesssource\":\"slidesmanager\",\"slides\":\"[{|qq|imgname|qq|:|qq|modules\\/mod_slideshowck\\/images\\/slides\\/bridge.jpg|qq|,|qq|imgcaption|qq|:|qq|This bridge is very long|qq|,|qq|imgtitle|qq|:|qq|This is a bridge|qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_slideshowck\\/images\\/slides\\/bridge.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|modules\\/mod_slideshowck\\/images\\/slides\\/road.jpg|qq|,|qq|imgcaption|qq|:|qq|This slideshow uses a JQuery script adapted from <a href=|dq|http:\\/\\/www.pixedelic.com\\/plugins\\/camera\\/|dq|>Pixedelic<\\/a>|qq|,|qq|imgtitle|qq|:|qq|On the road again|qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_slideshowck\\/images\\/slides\\/road.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|modules\\/mod_slideshowck\\/images\\/slides\\/big_bunny_fake.jpg|qq|,|qq|imgcaption|qq|:|qq||qq|,|qq|imgtitle|qq|:|qq||qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_slideshowck\\/images\\/slides\\/big_bunny_fake.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq|http:\\/\\/player.vimeo.com\\/video\\/2203727|qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|}]\",\"skin\":\"camera_amber_skin\",\"alignment\":\"center\",\"loader\":\"pie\",\"width\":\"auto\",\"height\":\"62%\",\"minheight\":\"150\",\"navigation\":\"2\",\"thumbnails\":\"1\",\"thumbnailwidth\":\"100\",\"thumbnailheight\":\"75\",\"pagination\":\"1\",\"effect\":\"random\",\"time\":\"7000\",\"transperiod\":\"1500\",\"captioneffect\":\"random\",\"portrait\":\"0\",\"autoAdvance\":\"1\",\"hover\":\"1\",\"displayorder\":\"normal\",\"limitslides\":\"\",\"fullpage\":\"0\",\"imagetarget\":\"_parent\",\"container\":\"\",\"usemobileimage\":\"0\",\"mobileimageresolution\":\"640\",\"loadjquery\":\"1\",\"loadjqueryeasing\":\"1\",\"autocreatethumbs\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"articlelength\":\"150\",\"articlelink\":\"readmore\",\"articletitle\":\"h3\",\"showarticletitle\":\"1\",\"usecaption\":\"1\",\"usecaptiondesc\":\"1\",\"usecaptionresponsive\":\"1\",\"captionresponsiveresolution\":\"480\",\"captionresponsivefontsize\":\"0.6em\",\"captionresponsivehidecaption\":\"0\",\"captionstylesusefont\":\"1\",\"captionstylestextgfont\":\"Droid Sans\",\"captionstylesfontsize\":\"1.1em\",\"captionstylesfontcolor\":\"\",\"captionstylesfontweight\":\"normal\",\"captionstylesdescfontsize\":\"0.8em\",\"captionstylesdescfontcolor\":\"\",\"captionstylesusemargin\":\"1\",\"captionstylesmargintop\":\"0\",\"captionstylesmarginright\":\"0\",\"captionstylesmarginbottom\":\"0\",\"captionstylesmarginleft\":\"0\",\"captionstylespaddingtop\":\"0\",\"captionstylespaddingright\":\"0\",\"captionstylespaddingbottom\":\"0\",\"captionstylespaddingleft\":\"0\",\"captionstylesusebackground\":\"1\",\"captionstylesbgcolor1\":\"\",\"captionstylesbgopacity\":\"0.6\",\"captionstylesbgpositionx\":\"left\",\"captionstylesbgpositiony\":\"top\",\"captionstylesbgimagerepeat\":\"repeat\",\"captionstylesusegradient\":\"1\",\"captionstylesbgcolor2\":\"\",\"captionstylesuseroundedcorners\":\"1\",\"captionstylesroundedcornerstl\":\"5\",\"captionstylesroundedcornerstr\":\"5\",\"captionstylesroundedcornersbr\":\"5\",\"captionstylesroundedcornersbl\":\"5\",\"captionstylesuseshadow\":\"1\",\"captionstylesshadowcolor\":\"\",\"captionstylesshadowblur\":\"3\",\"captionstylesshadowspread\":\"0\",\"captionstylesshadowoffsetx\":\"0\",\"captionstylesshadowoffsety\":\"0\",\"captionstylesshadowinset\":\"0\",\"captionstylesuseborders\":\"1\",\"captionstylesbordercolor\":\"\",\"captionstylesborderwidth\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('10012', '0', 'jshopping', 'component', 'com_jshopping', '', '1', '1', '0', '0', '{\"name\":\"jshopping\",\"type\":\"component\",\"creationDate\":\"23.08.2013\",\"author\":\"MAXXmarketing GmbH\",\"copyright\":\"\",\"authorEmail\":\"marketing@maxx-marketing.net\",\"authorUrl\":\"http:\\/\\/www.webdesigner-profi.de\",\"version\":\"4.3.3\",\"description\":\"Joomshopping - shop component. Note: JoomShopping code files are named as jshopping\",\"group\":\"\",\"filename\":\"jshopping\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('10013', '0', 'Jshopping Cart', 'module', 'mod_jshopping_cart', '', '0', '1', '0', '0', '{\"name\":\"Jshopping Cart\",\"type\":\"module\",\"creationDate\":\"20.12.2012\",\"author\":\"MAXXmarketing GmbH\",\"copyright\":\"\",\"authorEmail\":\"marketing@maxx-marketing.net\",\"authorUrl\":\"http:\\/\\/www.webdesigner-profi.de\",\"version\":\"4.0.1\",\"description\":\"Displays a JoomShopping cart\",\"group\":\"\",\"filename\":\"mod_jshopping_cart\"}', '[]', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('10014', '0', 'Jshopping Cart Ext.', 'module', 'mod_jshopping_cart_ext', '', '0', '1', '0', '0', '{\"name\":\"Jshopping Cart Ext.\",\"type\":\"module\",\"creationDate\":\"20.12.2012\",\"author\":\"MAXXmarketing GmbH\",\"copyright\":\"\",\"authorEmail\":\"marketing@maxx-marketing.net\",\"authorUrl\":\"http:\\/\\/www.webdesigner-profi.de\",\"version\":\"4.0.1\",\"description\":\"Displays a JoomShopping cart\",\"group\":\"\",\"filename\":\"mod_jshopping_cart_ext\"}', '{\"show_count\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `qrhqt_extensions` VALUES ('10015', '0', 'Jshopping Categories', 'module', 'mod_jshopping_categories', '', '0', '1', '0', '0', '{\"name\":\"Jshopping Categories\",\"type\":\"module\",\"creationDate\":\"20.12.2012\",\"author\":\"MAXXmarketing GmbH\",\"copyright\":\"\",\"authorEmail\":\"marketing@maxx-marketing.net\",\"authorUrl\":\"http:\\/\\/www.webdesigner-profi.de\",\"version\":\"4.0.1\",\"description\":\"Displays a categories in shop.\",\"group\":\"\",\"filename\":\"mod_jshopping_categories\"}', '{\"show_image\":\"0\",\"sort\":\"id\",\"ordering\":\"asc\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');

-- ----------------------------
-- Table structure for `qrhqt_fields`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_fields`;
CREATE TABLE `qrhqt_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_user_id` (`created_user_id`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_fields
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_fields_categories`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_fields_categories`;
CREATE TABLE `qrhqt_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_fields_categories
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_fields_groups`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_fields_groups`;
CREATE TABLE `qrhqt_fields_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_fields_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_fields_values`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_fields_values`;
CREATE TABLE `qrhqt_fields_values` (
  `field_id` int(10) unsigned NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `idx_field_id` (`field_id`),
  KEY `idx_item_id` (`item_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_fields_values
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_finder_filters`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_finder_filters`;
CREATE TABLE `qrhqt_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrhqt_finder_filters
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_finder_links`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_finder_links`;
CREATE TABLE `qrhqt_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`(100)),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrhqt_finder_links
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_finder_links_terms0`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_finder_links_terms0`;
CREATE TABLE `qrhqt_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrhqt_finder_links_terms0
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_finder_links_terms1`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_finder_links_terms1`;
CREATE TABLE `qrhqt_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrhqt_finder_links_terms1
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_finder_links_terms2`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_finder_links_terms2`;
CREATE TABLE `qrhqt_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrhqt_finder_links_terms2
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_finder_links_terms3`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_finder_links_terms3`;
CREATE TABLE `qrhqt_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrhqt_finder_links_terms3
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_finder_links_terms4`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_finder_links_terms4`;
CREATE TABLE `qrhqt_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrhqt_finder_links_terms4
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_finder_links_terms5`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_finder_links_terms5`;
CREATE TABLE `qrhqt_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrhqt_finder_links_terms5
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_finder_links_terms6`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_finder_links_terms6`;
CREATE TABLE `qrhqt_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrhqt_finder_links_terms6
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_finder_links_terms7`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_finder_links_terms7`;
CREATE TABLE `qrhqt_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrhqt_finder_links_terms7
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_finder_links_terms8`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_finder_links_terms8`;
CREATE TABLE `qrhqt_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrhqt_finder_links_terms8
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_finder_links_terms9`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_finder_links_terms9`;
CREATE TABLE `qrhqt_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrhqt_finder_links_terms9
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_finder_links_termsa`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_finder_links_termsa`;
CREATE TABLE `qrhqt_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrhqt_finder_links_termsa
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_finder_links_termsb`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_finder_links_termsb`;
CREATE TABLE `qrhqt_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrhqt_finder_links_termsb
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_finder_links_termsc`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_finder_links_termsc`;
CREATE TABLE `qrhqt_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrhqt_finder_links_termsc
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_finder_links_termsd`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_finder_links_termsd`;
CREATE TABLE `qrhqt_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrhqt_finder_links_termsd
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_finder_links_termse`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_finder_links_termse`;
CREATE TABLE `qrhqt_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrhqt_finder_links_termse
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_finder_links_termsf`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_finder_links_termsf`;
CREATE TABLE `qrhqt_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrhqt_finder_links_termsf
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_finder_taxonomy`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_finder_taxonomy`;
CREATE TABLE `qrhqt_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrhqt_finder_taxonomy
-- ----------------------------
INSERT INTO `qrhqt_finder_taxonomy` VALUES ('1', '0', 'ROOT', '0', '0', '0');

-- ----------------------------
-- Table structure for `qrhqt_finder_taxonomy_map`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_finder_taxonomy_map`;
CREATE TABLE `qrhqt_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrhqt_finder_taxonomy_map
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_finder_terms`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_finder_terms`;
CREATE TABLE `qrhqt_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrhqt_finder_terms
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_finder_terms_common`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_finder_terms_common`;
CREATE TABLE `qrhqt_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrhqt_finder_terms_common
-- ----------------------------
INSERT INTO `qrhqt_finder_terms_common` VALUES ('a', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('about', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('after', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('ago', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('all', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('am', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('an', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('and', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('any', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('are', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('aren\'t', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('as', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('at', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('be', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('but', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('by', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('for', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('from', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('get', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('go', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('how', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('if', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('in', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('into', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('is', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('isn\'t', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('it', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('its', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('me', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('more', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('most', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('must', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('my', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('new', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('no', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('none', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('not', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('nothing', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('of', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('off', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('often', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('old', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('on', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('onc', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('once', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('only', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('or', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('other', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('our', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('ours', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('out', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('over', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('page', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('she', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('should', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('small', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('so', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('some', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('than', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('thank', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('that', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('the', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('their', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('theirs', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('them', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('then', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('there', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('these', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('they', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('this', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('those', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('thus', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('time', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('times', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('to', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('too', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('true', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('under', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('until', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('up', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('upon', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('use', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('user', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('users', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('version', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('very', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('via', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('want', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('was', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('way', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('were', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('what', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('when', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('where', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('which', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('who', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('whom', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('whose', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('why', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('wide', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('will', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('with', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('within', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('without', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('would', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('yes', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('yet', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('you', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('your', 'en');
INSERT INTO `qrhqt_finder_terms_common` VALUES ('yours', 'en');

-- ----------------------------
-- Table structure for `qrhqt_finder_tokens`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_finder_tokens`;
CREATE TABLE `qrhqt_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrhqt_finder_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_finder_tokens_aggregate`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_finder_tokens_aggregate`;
CREATE TABLE `qrhqt_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrhqt_finder_tokens_aggregate
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_finder_types`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_finder_types`;
CREATE TABLE `qrhqt_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrhqt_finder_types
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_jshopping_addons`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_addons`;
CREATE TABLE `qrhqt_jshopping_addons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `key` text NOT NULL,
  `usekey` tinyint(1) NOT NULL,
  `version` varchar(255) NOT NULL,
  `uninstall` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_addons
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_jshopping_attr`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_attr`;
CREATE TABLE `qrhqt_jshopping_attr` (
  `attr_id` int(11) NOT NULL AUTO_INCREMENT,
  `attr_ordering` int(11) NOT NULL,
  `attr_type` tinyint(1) NOT NULL,
  `independent` tinyint(1) NOT NULL,
  `allcats` tinyint(1) NOT NULL DEFAULT '1',
  `cats` text NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `description_ru-RU` text NOT NULL,
  PRIMARY KEY (`attr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_attr
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_jshopping_attr_values`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_attr_values`;
CREATE TABLE `qrhqt_jshopping_attr_values` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `attr_id` int(11) NOT NULL,
  `value_ordering` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_attr_values
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_jshopping_cart_temp`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_cart_temp`;
CREATE TABLE `qrhqt_jshopping_cart_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cookie` varchar(255) NOT NULL,
  `cart` text NOT NULL,
  `type_cart` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_cart_temp
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_jshopping_categories`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_categories`;
CREATE TABLE `qrhqt_jshopping_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_image` varchar(255) DEFAULT NULL,
  `category_parent_id` int(11) NOT NULL,
  `category_publish` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `category_ordertype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `category_template` varchar(64) DEFAULT NULL,
  `ordering` int(3) NOT NULL,
  `category_add_date` datetime DEFAULT NULL,
  `products_page` int(8) NOT NULL DEFAULT '12',
  `products_row` int(3) NOT NULL DEFAULT '3',
  `access` int(3) NOT NULL DEFAULT '1',
  `name_en-GB` varchar(255) NOT NULL,
  `alias_en-GB` varchar(255) NOT NULL,
  `short_description_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `meta_title_en-GB` varchar(255) NOT NULL,
  `meta_description_en-GB` text NOT NULL,
  `meta_keyword_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `alias_ru-RU` varchar(255) NOT NULL,
  `short_description_ru-RU` text NOT NULL,
  `description_ru-RU` text NOT NULL,
  `meta_title_ru-RU` varchar(255) NOT NULL,
  `meta_description_ru-RU` text NOT NULL,
  `meta_keyword_ru-RU` text NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `sort_add_date` (`category_add_date`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_categories
-- ----------------------------
INSERT INTO `qrhqt_jshopping_categories` VALUES ('1', null, '0', '1', '1', null, '1', '2018-04-30 11:03:21', '12', '3', '1', '', '', '', '', '', '', '', 'Детские кроватки', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `qrhqt_jshopping_config`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_config`;
CREATE TABLE `qrhqt_jshopping_config` (
  `id` tinyint(1) NOT NULL,
  `count_products_to_page` int(4) NOT NULL,
  `count_products_to_row` int(2) NOT NULL,
  `count_category_to_row` int(2) NOT NULL,
  `image_category_width` int(4) NOT NULL,
  `image_category_height` int(4) NOT NULL,
  `image_product_width` int(4) NOT NULL,
  `image_product_height` int(4) NOT NULL,
  `image_product_full_width` int(4) NOT NULL,
  `image_product_full_height` int(4) NOT NULL,
  `video_product_width` int(4) NOT NULL,
  `video_product_height` int(4) NOT NULL,
  `adminLanguage` varchar(8) NOT NULL,
  `defaultLanguage` varchar(8) NOT NULL,
  `mainCurrency` int(4) NOT NULL,
  `decimal_count` tinyint(1) NOT NULL,
  `decimal_symbol` varchar(5) NOT NULL,
  `thousand_separator` varchar(5) NOT NULL,
  `currency_format` tinyint(1) NOT NULL,
  `use_rabatt_code` tinyint(1) NOT NULL,
  `enable_wishlist` tinyint(1) NOT NULL,
  `default_status_order` tinyint(1) NOT NULL,
  `store_address_format` varchar(32) NOT NULL,
  `store_date_format` varchar(32) NOT NULL,
  `contact_email` varchar(128) NOT NULL,
  `allow_reviews_prod` tinyint(1) NOT NULL,
  `allow_reviews_only_registered` tinyint(1) NOT NULL,
  `allow_reviews_manuf` tinyint(1) NOT NULL,
  `max_mark` int(11) NOT NULL,
  `summ_null_shipping` decimal(12,2) NOT NULL,
  `without_shipping` tinyint(1) NOT NULL,
  `without_payment` tinyint(1) NOT NULL,
  `pdf_parameters` varchar(32) NOT NULL,
  `next_order_number` int(11) NOT NULL DEFAULT '1',
  `shop_user_guest` tinyint(1) NOT NULL,
  `hide_product_not_avaible_stock` tinyint(1) NOT NULL,
  `show_buy_in_category` tinyint(1) NOT NULL,
  `user_as_catalog` tinyint(1) NOT NULL,
  `show_tax_in_product` tinyint(1) NOT NULL,
  `show_tax_product_in_cart` tinyint(1) NOT NULL,
  `show_plus_shipping_in_product` tinyint(1) NOT NULL,
  `hide_buy_not_avaible_stock` tinyint(1) NOT NULL,
  `show_sort_product` tinyint(1) NOT NULL,
  `show_count_select_products` tinyint(1) NOT NULL,
  `order_send_pdf_client` tinyint(1) NOT NULL,
  `order_send_pdf_admin` tinyint(1) NOT NULL,
  `show_delivery_time` tinyint(1) NOT NULL,
  `securitykey` varchar(128) NOT NULL,
  `demo_type` tinyint(1) NOT NULL,
  `product_show_manufacturer_logo` tinyint(1) NOT NULL,
  `product_show_manufacturer` tinyint(1) NOT NULL,
  `product_show_weight` tinyint(1) NOT NULL,
  `max_count_order_one_product` int(11) NOT NULL,
  `min_count_order_one_product` int(11) NOT NULL,
  `min_price_order` int(11) NOT NULL,
  `max_price_order` int(11) NOT NULL,
  `hide_tax` tinyint(1) NOT NULL,
  `licensekod` text NOT NULL,
  `product_attribut_first_value_empty` tinyint(1) NOT NULL,
  `show_hits` tinyint(1) NOT NULL,
  `show_registerform_in_logintemplate` tinyint(1) NOT NULL,
  `admin_show_product_basic_price` tinyint(1) NOT NULL,
  `admin_show_attributes` tinyint(1) NOT NULL,
  `admin_show_delivery_time` tinyint(1) NOT NULL,
  `admin_show_languages` tinyint(1) NOT NULL,
  `use_different_templates_cat_prod` tinyint(1) NOT NULL,
  `admin_show_product_video` tinyint(1) NOT NULL,
  `admin_show_product_related` tinyint(1) NOT NULL,
  `admin_show_product_files` tinyint(1) NOT NULL,
  `admin_show_product_bay_price` tinyint(1) NOT NULL,
  `admin_show_product_labels` tinyint(1) NOT NULL,
  `sorting_country_in_alphabet` tinyint(1) NOT NULL,
  `hide_text_product_not_available` tinyint(1) NOT NULL,
  `show_weight_order` tinyint(1) NOT NULL,
  `discount_use_full_sum` tinyint(1) NOT NULL,
  `show_cart_all_step_checkout` tinyint(1) NOT NULL,
  `use_plugin_content` tinyint(1) NOT NULL,
  `display_price_admin` tinyint(1) NOT NULL,
  `display_price_front` tinyint(1) NOT NULL,
  `product_list_show_weight` tinyint(1) NOT NULL,
  `product_list_show_manufacturer` tinyint(1) NOT NULL,
  `use_extend_tax_rule` tinyint(4) NOT NULL,
  `use_extend_display_price_rule` tinyint(4) NOT NULL,
  `fields_register` text NOT NULL,
  `template` varchar(128) NOT NULL,
  `show_product_code` tinyint(1) NOT NULL,
  `show_product_code_in_cart` tinyint(1) NOT NULL,
  `savelog` tinyint(1) NOT NULL,
  `savelogpaymentdata` tinyint(1) NOT NULL,
  `product_list_show_min_price` tinyint(1) NOT NULL,
  `product_count_related_in_row` tinyint(4) NOT NULL,
  `category_sorting` tinyint(1) NOT NULL DEFAULT '1',
  `product_sorting` tinyint(1) NOT NULL DEFAULT '1',
  `product_sorting_direction` tinyint(1) NOT NULL,
  `show_product_list_filters` tinyint(1) NOT NULL,
  `admin_show_product_extra_field` tinyint(1) NOT NULL,
  `product_list_display_extra_fields` text NOT NULL,
  `filter_display_extra_fields` text NOT NULL,
  `product_hide_extra_fields` text NOT NULL,
  `cart_display_extra_fields` text NOT NULL,
  `default_country` int(11) NOT NULL,
  `show_return_policy_in_email_order` tinyint(1) NOT NULL,
  `client_allow_cancel_order` tinyint(1) NOT NULL,
  `admin_show_vendors` tinyint(1) NOT NULL,
  `vendor_order_message_type` tinyint(1) NOT NULL,
  `admin_not_send_email_order_vendor_order` tinyint(1) NOT NULL,
  `not_redirect_in_cart_after_buy` tinyint(1) NOT NULL,
  `product_show_vendor` tinyint(1) NOT NULL,
  `product_show_vendor_detail` tinyint(1) NOT NULL,
  `product_list_show_vendor` tinyint(1) NOT NULL,
  `admin_show_freeattributes` tinyint(1) NOT NULL,
  `product_show_button_back` tinyint(1) NOT NULL,
  `calcule_tax_after_discount` tinyint(1) NOT NULL,
  `product_list_show_product_code` tinyint(1) NOT NULL,
  `radio_attr_value_vertical` tinyint(1) NOT NULL,
  `attr_display_addprice` tinyint(1) NOT NULL,
  `use_ssl` tinyint(1) NOT NULL,
  `product_list_show_price_description` tinyint(1) NOT NULL,
  `display_button_print` tinyint(1) NOT NULL,
  `hide_shipping_step` tinyint(1) NOT NULL,
  `hide_payment_step` tinyint(1) NOT NULL,
  `image_resize_type` tinyint(1) NOT NULL,
  `use_extend_attribute_data` tinyint(1) NOT NULL,
  `product_list_show_price_default` tinyint(1) NOT NULL,
  `product_list_show_qty_stock` tinyint(1) NOT NULL,
  `product_show_qty_stock` tinyint(1) NOT NULL,
  `displayprice` tinyint(1) NOT NULL,
  `use_decimal_qty` tinyint(1) NOT NULL,
  `ext_tax_rule_for` tinyint(1) NOT NULL,
  `display_reviews_without_confirm` tinyint(1) NOT NULL,
  `manufacturer_sorting` tinyint(1) NOT NULL,
  `admin_show_units` tinyint(1) NOT NULL,
  `main_unit_weight` tinyint(3) NOT NULL,
  `create_alias_product_category_auto` tinyint(1) NOT NULL,
  `delivery_order_depends_delivery_product` tinyint(1) NOT NULL,
  `show_delivery_time_step5` tinyint(1) NOT NULL,
  `other_config` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_config
-- ----------------------------
INSERT INTO `qrhqt_jshopping_config` VALUES ('1', '12', '3', '1', '160', '0', '100', '0', '200', '0', '320', '240', 'ru-RU', 'ru-RU', '2', '2', '.', '', '2', '1', '1', '1', '%storename %address %city %zip', '%d.%m.%Y', 'spirin.costia@yandex.ru', '1', '1', '0', '10', '-1.00', '0', '0', '208:65:208:30', '1', '0', '0', '1', '0', '0', '0', '0', '1', '1', '1', '1', '0', '0', 'b27bdc9c6ba5e764e9317c1381cda0b2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '1', '1', '1', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'a:3:{s:8:\"register\";a:15:{s:5:\"title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:10:\"firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:6:\"street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:4:\"city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"state\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"fax\";a:1:{s:7:\"display\";s:1:\"1\";}s:6:\"f_name\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:5:\"email\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:6:\"u_name\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:8:\"password\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:10:\"password_2\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}}s:7:\"address\";a:22:{s:5:\"title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:10:\"firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:6:\"street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:4:\"city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"state\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"fax\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"d_title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:8:\"d_f_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:8:\"d_l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:12:\"d_firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:8:\"d_street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"d_zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"d_city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"d_state\";a:1:{s:7:\"display\";s:1:\"1\";}s:9:\"d_country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"d_phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"f_name\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:5:\"email\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}}s:11:\"editaccount\";a:22:{s:5:\"title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:10:\"firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:6:\"street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:4:\"city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"state\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"fax\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"d_title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:8:\"d_f_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:8:\"d_l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:12:\"d_firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:8:\"d_street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"d_zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"d_city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"d_state\";a:1:{s:7:\"display\";s:1:\"1\";}s:9:\"d_country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"d_phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"f_name\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:5:\"email\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}}}', '', '1', '0', '0', '0', '0', '3', '1', '1', '0', '0', '0', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '');

-- ----------------------------
-- Table structure for `qrhqt_jshopping_config_display_prices`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_config_display_prices`;
CREATE TABLE `qrhqt_jshopping_config_display_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zones` text NOT NULL,
  `display_price` tinyint(1) NOT NULL,
  `display_price_firma` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_config_display_prices
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_jshopping_config_seo`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_config_seo`;
CREATE TABLE `qrhqt_jshopping_config_seo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(64) NOT NULL,
  `ordering` int(11) NOT NULL,
  `title_en-GB` varchar(255) NOT NULL,
  `keyword_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `title_ru-RU` varchar(255) NOT NULL,
  `keyword_ru-RU` text NOT NULL,
  `description_ru-RU` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_config_seo
-- ----------------------------
INSERT INTO `qrhqt_jshopping_config_seo` VALUES ('1', 'category', '10', '', '', '', '', '', '');
INSERT INTO `qrhqt_jshopping_config_seo` VALUES ('2', 'manufacturers', '20', '', '', '', '', '', '');
INSERT INTO `qrhqt_jshopping_config_seo` VALUES ('3', 'cart', '30', '', '', '', '', '', '');
INSERT INTO `qrhqt_jshopping_config_seo` VALUES ('4', 'wishlist', '40', '', '', '', '', '', '');
INSERT INTO `qrhqt_jshopping_config_seo` VALUES ('5', 'login', '50', '', '', '', '', '', '');
INSERT INTO `qrhqt_jshopping_config_seo` VALUES ('6', 'register', '60', '', '', '', '', '', '');
INSERT INTO `qrhqt_jshopping_config_seo` VALUES ('7', 'editaccount', '70', '', '', '', '', '', '');
INSERT INTO `qrhqt_jshopping_config_seo` VALUES ('8', 'myorders', '80', '', '', '', '', '', '');
INSERT INTO `qrhqt_jshopping_config_seo` VALUES ('9', 'myaccount', '90', '', '', '', '', '', '');
INSERT INTO `qrhqt_jshopping_config_seo` VALUES ('10', 'search', '100', '', '', '', '', '', '');
INSERT INTO `qrhqt_jshopping_config_seo` VALUES ('11', 'search-result', '110', '', '', '', '', '', '');
INSERT INTO `qrhqt_jshopping_config_seo` VALUES ('12', 'myorder-detail', '120', '', '', '', '', '', '');
INSERT INTO `qrhqt_jshopping_config_seo` VALUES ('13', 'vendors', '130', '', '', '', '', '', '');
INSERT INTO `qrhqt_jshopping_config_seo` VALUES ('14', 'content-agb', '140', '', '', '', '', '', '');
INSERT INTO `qrhqt_jshopping_config_seo` VALUES ('15', 'content-return_policy', '150', '', '', '', '', '', '');
INSERT INTO `qrhqt_jshopping_config_seo` VALUES ('16', 'content-shipping', '160', '', '', '', '', '', '');
INSERT INTO `qrhqt_jshopping_config_seo` VALUES ('17', 'content-privacy_statement', '161', '', '', '', '', '', '');
INSERT INTO `qrhqt_jshopping_config_seo` VALUES ('18', 'checkout-address', '170', '', '', '', '', '', '');
INSERT INTO `qrhqt_jshopping_config_seo` VALUES ('19', 'checkout-payment', '180', '', '', '', '', '', '');
INSERT INTO `qrhqt_jshopping_config_seo` VALUES ('20', 'checkout-shipping', '190', '', '', '', '', '', '');
INSERT INTO `qrhqt_jshopping_config_seo` VALUES ('21', 'checkout-preview', '200', '', '', '', '', '', '');
INSERT INTO `qrhqt_jshopping_config_seo` VALUES ('22', 'lastproducts', '210', '', '', '', '', '', '');
INSERT INTO `qrhqt_jshopping_config_seo` VALUES ('23', 'randomproducts', '220', '', '', '', '', '', '');
INSERT INTO `qrhqt_jshopping_config_seo` VALUES ('24', 'bestsellerproducts', '230', '', '', '', '', '', '');
INSERT INTO `qrhqt_jshopping_config_seo` VALUES ('25', 'labelproducts', '240', '', '', '', '', '', '');
INSERT INTO `qrhqt_jshopping_config_seo` VALUES ('26', 'topratingproducts', '250', '', '', '', '', '', '');
INSERT INTO `qrhqt_jshopping_config_seo` VALUES ('27', 'tophitsproducts', '260', '', '', '', '', '', '');
INSERT INTO `qrhqt_jshopping_config_seo` VALUES ('28', 'all-products', '270', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `qrhqt_jshopping_config_statictext`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_config_statictext`;
CREATE TABLE `qrhqt_jshopping_config_statictext` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(64) NOT NULL,
  `text_en-GB` text NOT NULL,
  `text_ru-RU` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_config_statictext
-- ----------------------------
INSERT INTO `qrhqt_jshopping_config_statictext` VALUES ('1', 'home', '', '');
INSERT INTO `qrhqt_jshopping_config_statictext` VALUES ('2', 'manufacturer', '', '');
INSERT INTO `qrhqt_jshopping_config_statictext` VALUES ('3', 'agb', '', '');
INSERT INTO `qrhqt_jshopping_config_statictext` VALUES ('4', 'return_policy', '', '');
INSERT INTO `qrhqt_jshopping_config_statictext` VALUES ('5', 'order_email_descr', '', '');
INSERT INTO `qrhqt_jshopping_config_statictext` VALUES ('6', 'order_email_descr_end', '', '');
INSERT INTO `qrhqt_jshopping_config_statictext` VALUES ('7', 'order_finish_descr', '', '');
INSERT INTO `qrhqt_jshopping_config_statictext` VALUES ('8', 'shipping', '', '');
INSERT INTO `qrhqt_jshopping_config_statictext` VALUES ('9', 'privacy_statement', '', '');
INSERT INTO `qrhqt_jshopping_config_statictext` VALUES ('10', 'cart', '', '');

-- ----------------------------
-- Table structure for `qrhqt_jshopping_countries`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_countries`;
CREATE TABLE `qrhqt_jshopping_countries` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_publish` tinyint(4) NOT NULL,
  `ordering` smallint(6) NOT NULL,
  `country_code` varchar(5) NOT NULL,
  `country_code_2` varchar(5) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_de-DE` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_countries
-- ----------------------------
INSERT INTO `qrhqt_jshopping_countries` VALUES ('1', '1', '1', 'AFG', 'AF', 'Afghanistan', 'Afghanistan', 'Afghanistan');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('2', '1', '2', 'ALB', 'AL', 'Albania', 'Albanien', 'Albania');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('3', '1', '3', 'DZA', 'DZ', 'Algeria', 'Algerien', 'Algeria');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('4', '1', '4', 'ASM', 'AS', 'American Samoa', 'Amerikanisch-Samoa', 'American Samoa');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('5', '1', '5', 'AND', 'AD', 'Andorra', 'Andorra', 'Andorra');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('6', '1', '6', 'AGO', 'AO', 'Angola', 'Angola', 'Angola');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('7', '1', '7', 'AIA', 'AI', 'Anguilla', 'Anguilla', 'Anguilla');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('8', '1', '8', 'ATA', 'AQ', 'Antarctica', 'Antarktis', 'Antarctica');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('9', '1', '9', 'ATG', 'AG', 'Antigua and Barbuda', 'Antigua und Barbuda', 'Antigua and Barbuda');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('10', '1', '10', 'ARG', 'AR', 'Argentina', 'Argentinien', 'Argentina');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('11', '1', '11', 'ARM', 'AM', 'Armenia', 'Armenien', 'Armenia');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('12', '1', '12', 'ABW', 'AW', 'Aruba', 'Aruba', 'Aruba');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('13', '1', '13', 'AUS', 'AU', 'Australia', 'Australien', 'Australia');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('14', '1', '14', 'AUT', 'AT', 'Austria', 'Österreich', 'Austria');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('15', '1', '15', 'AZE', 'AZ', 'Azerbaijan', 'Aserbaidschan', 'Azerbaijan');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('16', '1', '16', 'BHS', 'BS', 'Bahamas', 'Bahamas', 'Bahamas');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('17', '1', '17', 'BHR', 'BH', 'Bahrain', 'Bahrain', 'Bahrain');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('18', '1', '18', 'BGD', 'BD', 'Bangladesh', 'Bangladesch', 'Bangladesh');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('19', '1', '19', 'BRB', 'BB', 'Barbados', 'Barbados', 'Barbados');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('20', '1', '20', 'BLR', 'BY', 'Belarus', 'Weissrussland', 'Belarus');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('21', '1', '21', 'BEL', 'BE', 'Belgium', 'Belgien', 'Belgium');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('22', '1', '22', 'BLZ', 'BZ', 'Belize', 'Belize', 'Belize');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('23', '1', '23', 'BEN', 'BJ', 'Benin', 'Benin', 'Benin');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('24', '1', '24', 'BMU', 'BM', 'Bermuda', 'Bermuda', 'Bermuda');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('25', '1', '25', 'BTN', 'BT', 'Bhutan', 'Bhutan', 'Bhutan');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('26', '1', '26', 'BOL', 'BO', 'Bolivia', 'Bolivien', 'Bolivia');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('27', '1', '27', 'BIH', 'BA', 'Bosnia and Herzegowina', 'Bosnien und Herzegowina', 'Bosnia and Herzegowina');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('28', '1', '28', 'BWA', 'BW', 'Botswana', 'Botsuana', 'Botswana');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('29', '1', '29', 'BVT', 'BV', 'Bouvet Island', 'Bouvetinsel', 'Bouvet Island');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('30', '1', '30', 'BRA', 'BR', 'Brazil', 'Brasilien', 'Brazil');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('31', '1', '31', 'IOT', 'IO', 'British Indian Ocean Territory', 'Britisches Territorium im Indischen Ozean', 'British Indian Ocean Territory');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('32', '1', '32', 'BRN', 'BN', 'Brunei Darussalam', 'Brunei', 'Brunei Darussalam');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('33', '1', '33', 'BGR', 'BG', 'Bulgaria', 'Bulgarien', 'Bulgaria');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('34', '1', '34', 'BFA', 'BF', 'Burkina Faso', 'Burkina Faso', 'Burkina Faso');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('35', '1', '35', 'BDI', 'BI', 'Burundi', 'Burundi', 'Burundi');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('36', '1', '36', 'KHM', 'KH', 'Cambodia', 'Kambodscha', 'Cambodia');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('37', '1', '37', 'CMR', 'CM', 'Cameroon', 'Kamerun', 'Cameroon');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('38', '1', '38', 'CAN', 'CA', 'Canada', 'Kanada', 'Canada');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('39', '1', '39', 'CPV', 'CV', 'Cape Verde', 'Kap Verde', 'Cape Verde');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('40', '1', '40', 'CYM', 'KY', 'Cayman Islands', 'Cayman-Inseln', 'Cayman Islands');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('41', '1', '41', 'CAF', 'CF', 'Central African Republic', 'Zentralafrikanische Republik', 'Central African Republic');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('42', '1', '42', 'TCD', 'TD', 'Chad', 'Tschad', 'Chad');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('43', '1', '43', 'CHL', 'CL', 'Chile', 'Chile', 'Chile');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('44', '1', '44', 'CHN', 'CN', 'China', 'China', 'China');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('45', '1', '45', 'CXR', 'CX', 'Christmas Island', 'Christmas Island', 'Christmas Island');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('46', '1', '46', 'CCK', 'CC', 'Cocos (Keeling) Islands', 'Kokosinseln (Keeling)', 'Cocos (Keeling) Islands');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('47', '1', '47', 'COL', 'CO', 'Colombia', 'Kolumbien', 'Colombia');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('48', '1', '48', 'COM', 'KM', 'Comoros', 'Komoren', 'Comoros');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('49', '1', '49', 'COG', 'CG', 'Congo', 'Kongo, Republik', 'Congo');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('50', '1', '50', 'COK', 'CK', 'Cook Islands', 'Cookinseln', 'Cook Islands');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('51', '1', '51', 'CRI', 'CR', 'Costa Rica', 'Costa Rica', 'Costa Rica');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('52', '1', '52', 'CIV', 'CI', 'Cote D\'Ivoire', 'Elfenbeinküste', 'Cote D\'Ivoire');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('53', '1', '53', 'HRV', 'HR', 'Croatia', 'Kroatien', 'Croatia');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('54', '1', '54', 'CUB', 'CU', 'Cuba', 'Kuba', 'Cuba');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('55', '1', '55', 'CYP', 'CY', 'Cyprus', 'Zypern', 'Cyprus');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('56', '1', '56', 'CZE', 'CZ', 'Czech Republic', 'Tschechien', 'Czech Republic');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('57', '1', '57', 'DNK', 'DK', 'Denmark', 'Dänemark', 'Denmark');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('58', '1', '58', 'DJI', 'DJ', 'Djibouti', 'Dschibuti', 'Djibouti');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('59', '1', '59', 'DMA', 'DM', 'Dominica', 'Dominica', 'Dominica');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('60', '1', '60', 'DOM', 'DO', 'Dominican Republic', 'Dominikanische Republik', 'Dominican Republic');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('61', '1', '61', 'TMP', 'TL', 'East Timor', 'Osttimor', 'East Timor');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('62', '1', '62', 'ECU', 'EC', 'Ecuador', 'Ecuador', 'Ecuador');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('63', '1', '63', 'EGY', 'EG', 'Egypt', 'Ägypten', 'Egypt');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('64', '1', '64', 'SLV', 'SV', 'El Salvador', 'El Salvador', 'El Salvador');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('65', '1', '65', 'GNQ', 'GQ', 'Equatorial Guinea', 'Äquatorial-Guinea', 'Equatorial Guinea');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('66', '1', '66', 'ERI', 'ER', 'Eritrea', 'Eritrea', 'Eritrea');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('67', '1', '67', 'EST', 'EE', 'Estonia', 'Estland', 'Estonia');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('68', '1', '68', 'ETH', 'ET', 'Ethiopia', 'Äthiopien', 'Ethiopia');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('69', '1', '69', 'FLK', 'FK', 'Falkland Islands (Malvinas)', 'Falklandinseln', 'Falkland Islands (Malvinas)');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('70', '1', '70', 'FRO', 'FO', 'Faroe Islands', 'Färöer', 'Faroe Islands');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('71', '1', '71', 'FJI', 'FJ', 'Fiji', 'Fidschi', 'Fiji');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('72', '1', '72', 'FIN', 'FI', 'Finland', 'Finnland', 'Finland');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('73', '1', '73', 'FRA', 'FR', 'France', 'Frankreich', 'France');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('74', '1', '74', 'FXX', 'FX', 'France Metropolitan', 'Frankreich, Metropolitan', 'France Metropolitan');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('75', '1', '75', 'GUF', 'GF', 'French Guiana', 'Französisch-Guyana', 'French Guiana');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('76', '1', '76', 'PYF', 'PF', 'French Polynesia', 'Franz. Polynesien', 'French Polynesia');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('77', '1', '77', 'ATF', 'TF', 'French Southern Territories', 'Französiche Süd- und Antarktisgebiete', 'French Southern Territories');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('78', '1', '78', 'GAB', 'GA', 'Gabon', 'Gabun', 'Gabon');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('79', '1', '79', 'GMB', 'GM', 'Gambia', 'Gambia', 'Gambia');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('80', '1', '80', 'GEO', 'GE', 'Georgia', 'Georgien', 'Georgia');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('81', '1', '81', 'DEU', 'DE', 'Germany', 'Deutschland', 'Germany');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('82', '1', '82', 'GHA', 'GH', 'Ghana', 'Ghana', 'Ghana');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('83', '1', '83', 'GIB', 'GI', 'Gibraltar', 'Gibraltar', 'Gibraltar');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('84', '1', '84', 'GRC', 'GR', 'Greece', 'Griechenland', 'Greece');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('85', '1', '85', 'GRL', 'GL', 'Greenland', 'Grönland', 'Greenland');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('86', '1', '86', 'GRD', 'GD', 'Grenada', 'Grenada', 'Grenada');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('87', '1', '87', 'GLP', 'GP', 'Guadeloupe', 'Guadeloupe', 'Guadeloupe');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('88', '1', '88', 'GUM', 'GU', 'Guam', 'Guam', 'Guam');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('89', '1', '89', 'GTM', 'GT', 'Guatemala', 'Guatemala', 'Guatemala');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('90', '1', '90', 'GIN', 'GN', 'Guinea', 'Guinea', 'Guinea');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('91', '1', '91', 'GNB', 'GW', 'Guinea-bissau', 'Guinea-Bissau', 'Guinea-bissau');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('92', '1', '92', 'GUY', 'GY', 'Guyana', 'Guyana', 'Guyana');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('93', '1', '93', 'HTI', 'HT', 'Haiti', 'Haiti', 'Haiti');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('94', '1', '94', 'HMD', 'HM', 'Heard and Mc Donald Islands', 'Heard und McDonaldinseln', 'Heard and Mc Donald Islands');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('95', '1', '95', 'HND', 'HN', 'Honduras', 'Honduras', 'Honduras');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('96', '1', '96', 'HKG', 'HK', 'Hong Kong', 'Hong Kong', 'Hong Kong');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('97', '1', '97', 'HUN', 'HU', 'Hungary', 'Ungarn', 'Hungary');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('98', '1', '98', 'ISL', 'IS', 'Iceland', 'Island', 'Iceland');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('99', '1', '99', 'IND', 'IN', 'India', 'Indien', 'India');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('100', '1', '100', 'IDN', 'ID', 'Indonesia', 'Indonesien', 'Indonesia');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('101', '1', '101', 'IRN', 'IR', 'Iran (Islamic Republic of)', 'Iran', 'Iran (Islamic Republic of)');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('102', '1', '102', 'IRQ', 'IQ', 'Iraq', 'Irak', 'Iraq');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('103', '1', '103', 'IRL', 'IE', 'Ireland', 'Irland', 'Ireland');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('104', '1', '104', 'ISR', 'IL', 'Israel', 'Israel', 'Israel');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('105', '1', '105', 'ITA', 'IT', 'Italy', 'Italien', 'Italy');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('106', '1', '106', 'JAM', 'JM', 'Jamaica', 'Jamaika', 'Jamaica');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('107', '1', '107', 'JPN', 'JP', 'Japan', 'Japan', 'Japan');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('108', '1', '108', 'JOR', 'JO', 'Jordan', 'Jordanien', 'Jordan');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('109', '1', '109', 'KAZ', 'KZ', 'Kazakhstan', 'Kasachstan', 'Kazakhstan');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('110', '1', '110', 'KEN', 'KE', 'Kenya', 'Kenia', 'Kenya');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('111', '1', '111', 'KIR', 'KI', 'Kiribati', 'Kiribati', 'Kiribati');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('112', '1', '112', 'PRK', 'KP', 'Korea Democratic People\'s Republic of', 'Korea Demokratische Volksrepublik', 'Korea Democratic People\'s Republic of');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('113', '1', '113', 'KOR', 'KR', 'Korea Republic of', 'Korea', 'Korea Republic of');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('114', '1', '114', 'KWT', 'KW', 'Kuwait', 'Kuwait', 'Kuwait');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('115', '1', '115', 'KGZ', 'KG', 'Kyrgyzstan', 'Kirgistan', 'Kyrgyzstan');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('116', '1', '116', 'LAO', 'LA', 'Lao People\'s Democratic Republic', 'Laos', 'Lao People\'s Democratic Republic');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('117', '1', '117', 'LVA', 'LV', 'Latvia', 'Lettland', 'Latvia');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('118', '1', '118', 'LBN', 'LB', 'Lebanon', 'Libanon', 'Lebanon');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('119', '1', '119', 'LSO', 'LS', 'Lesotho', 'Lesotho', 'Lesotho');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('120', '1', '120', 'LBR', 'LR', 'Liberia', 'Liberia', 'Liberia');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('121', '1', '121', 'LBY', 'LY', 'Libyan Arab Jamahiriya', 'Libyen', 'Libyan Arab Jamahiriya');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('122', '1', '122', 'LIE', 'LI', 'Liechtenstein', 'Liechtenstein', 'Liechtenstein');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('123', '1', '123', 'LTU', 'LT', 'Lithuania', 'Litauen', 'Lithuania');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('124', '1', '124', 'LUX', 'LU', 'Luxembourg', 'Luxemburg', 'Luxembourg');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('125', '1', '125', 'MAC', 'MO', 'Macau', 'Makao', 'Macau');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('126', '1', '126', 'MKD', 'MK', 'Macedonia The Former Yugoslav Republic of', 'Mazedonien', 'Macedonia The Former Yugoslav Republic of');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('127', '1', '127', 'MDG', 'MG', 'Madagascar', 'Madagaskar', 'Madagascar');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('128', '1', '128', 'MWI', 'MW', 'Malawi', 'Malawi', 'Malawi');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('129', '1', '129', 'MYS', 'MY', 'Malaysia', 'Malaysia', 'Malaysia');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('130', '1', '130', 'MDV', 'MV', 'Maldives', 'Malediven', 'Maldives');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('131', '1', '131', 'MLI', 'ML', 'Mali', 'Mali', 'Mali');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('132', '1', '132', 'MLT', 'MT', 'Malta', 'Malta', 'Malta');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('133', '1', '133', 'MHL', 'MH', 'Marshall Islands', 'Marshallinseln', 'Marshall Islands');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('134', '1', '134', 'MTQ', 'MQ', 'Martinique', 'Martinique', 'Martinique');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('135', '1', '135', 'MRT', 'MR', 'Mauritania', 'Mauretanien', 'Mauritania');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('136', '1', '136', 'MUS', 'MU', 'Mauritius', 'Mauritius', 'Mauritius');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('137', '1', '137', 'MYT', 'YT', 'Mayotte', 'Mayott', 'Mayotte');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('138', '1', '138', 'MEX', 'MX', 'Mexico', 'Mexiko', 'Mexico');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('139', '1', '139', 'FSM', 'FM', 'Micronesia Federated States of', 'Mikronesien', 'Micronesia Federated States of');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('140', '1', '140', 'MDA', 'MD', 'Moldova Republic of', 'Moldawien', 'Moldova Republic of');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('141', '1', '141', 'MCO', 'MC', 'Monaco', 'Monaco', 'Monaco');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('142', '1', '142', 'MNG', 'MN', 'Mongolia', 'Mongolei', 'Mongolia');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('143', '1', '143', 'MSR', 'MS', 'Montserrat', 'Montserrat', 'Montserrat');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('144', '1', '144', 'MAR', 'MA', 'Morocco', 'Marokko', 'Morocco');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('145', '1', '145', 'MOZ', 'MZ', 'Mozambique', 'Mosambik', 'Mozambique');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('146', '1', '146', 'MMR', 'MM', 'Myanmar', 'Myanmar', 'Myanmar');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('147', '1', '147', 'NAM', 'NA', 'Namibia', 'Namibia', 'Namibia');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('148', '1', '148', 'NRU', 'NR', 'Nauru', 'Nauru', 'Nauru');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('149', '1', '149', 'NPL', 'NP', 'Nepal', 'Nepal', 'Nepal');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('150', '1', '150', 'NLD', 'NL', 'Netherlands', 'Niederlande', 'Netherlands');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('151', '1', '151', 'ANT', 'AN', 'Netherlands Antilles', 'Niederländisch-Antillen', 'Netherlands Antilles');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('152', '1', '152', 'NCL', 'NC', 'New Caledonia', 'Neukaledonien', 'New Caledonia');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('153', '1', '153', 'NZL', 'NZ', 'New Zealand', 'Neuseeland', 'New Zealand');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('154', '1', '154', 'NIC', 'NI', 'Nicaragua', 'Nicaragua', 'Nicaragua');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('155', '1', '155', 'NER', 'NE', 'Niger', 'Niger', 'Niger');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('156', '1', '156', 'NGA', 'NG', 'Nigeria', 'Nigeria', 'Nigeria');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('157', '1', '157', 'NIU', 'NU', 'Niue', 'Niue', 'Niue');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('158', '1', '158', 'NFK', 'NF', 'Norfolk Island', 'Norfolkinsel', 'Norfolk Island');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('159', '1', '159', 'MNP', 'MP', 'Northern Mariana Islands', 'Nördliche Marianen', 'Northern Mariana Islands');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('160', '1', '160', 'NOR', 'NO', 'Norway', 'Norwegen', 'Norway');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('161', '1', '161', 'OMN', 'OM', 'Oman', 'Oman', 'Oman');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('162', '1', '162', 'PAK', 'PK', 'Pakistan', 'Pakistan', 'Pakistan');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('163', '1', '163', 'PLW', 'PW', 'Palau', 'Palau', 'Palau');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('164', '1', '164', 'PAN', 'PA', 'Panama', 'Panama', 'Panama');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('165', '1', '165', 'PNG', 'PG', 'Papua New Guinea', 'Papua-Neuguinea', 'Papua New Guinea');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('166', '1', '166', 'PRY', 'PY', 'Paraguay', 'Paraguay', 'Paraguay');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('167', '1', '167', 'PER', 'PE', 'Peru', 'Peru', 'Peru');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('168', '1', '168', 'PHL', 'PH', 'Philippines', 'Philippinen', 'Philippines');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('169', '1', '169', 'PCN', 'PN', 'Pitcairn', 'Pitcairn', 'Pitcairn');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('170', '1', '170', 'POL', 'PL', 'Poland', 'Polen', 'Poland');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('171', '1', '171', 'PRT', 'PT', 'Portugal', 'Portugal', 'Portugal');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('172', '1', '172', 'PRI', 'PR', 'Puerto Rico', 'Puerto Rico', 'Puerto Rico');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('173', '1', '173', 'QAT', 'QA', 'Qatar', 'Katar', 'Qatar');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('174', '1', '174', 'REU', 'RE', 'Reunion', 'Reunion', 'Reunion');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('175', '1', '175', 'ROM', 'RO', 'Romania', 'Rumänien', 'Romania');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('176', '1', '176', 'RUS', 'RU', 'Russian Federation', 'Russische Föderation', 'Russian Federation');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('177', '1', '177', 'RWA', 'RW', 'Rwanda', 'Ruanda', 'Rwanda');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('178', '1', '178', 'KNA', 'KN', 'Saint Kitts and Nevis', 'St. Kitts und Nevis', 'Saint Kitts and Nevis');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('179', '1', '179', 'LCA', 'LC', 'Saint Lucia', 'St. Lucia', 'Saint Lucia');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('180', '1', '180', 'VCT', 'VC', 'Saint Vincent and the Grenadines', 'St. Vincent und die Grenadinen', 'Saint Vincent and the Grenadines');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('181', '1', '181', 'WSM', 'WS', 'Samoa', 'Samoa', 'Samoa');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('182', '1', '182', 'SMR', 'SM', 'San Marino', 'San Marino', 'San Marino');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('183', '1', '183', 'STP', 'ST', 'Sao Tome and Principe', 'Sao Tomé und Príncipe', 'Sao Tome and Principe');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('184', '1', '184', 'SAU', 'SA', 'Saudi Arabia', 'Saudi-Arabien', 'Saudi Arabia');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('185', '1', '185', 'SEN', 'SN', 'Senegal', 'Senegal', 'Senegal');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('186', '1', '186', 'SYC', 'SC', 'Seychelles', 'Seychellen', 'Seychelles');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('187', '1', '187', 'SLE', 'SL', 'Sierra Leone', 'Sierra Leone', 'Sierra Leone');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('188', '1', '188', 'SGP', 'SG', 'Singapore', 'Singapur', 'Singapore');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('189', '1', '189', 'SVK', 'SK', 'Slovakia (Slovak Republic)', 'Slowakei', 'Slovakia (Slovak Republic)');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('190', '1', '190', 'SVN', 'SI', 'Slovenia', 'Slowenien', 'Slovenia');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('191', '1', '191', 'SLB', 'SB', 'Solomon Islands', 'Salomonen', 'Solomon Islands');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('192', '1', '192', 'SOM', 'SO', 'Somalia', 'Somalia', 'Somalia');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('193', '1', '193', 'ZAF', 'ZA', 'South Africa', 'Republik Südafrika', 'South Africa');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('194', '1', '194', 'SGS', 'GS', 'South Georgia and the South Sandwich Islands', 'Südgeorgien und die Südlichen Sandwichinseln', 'South Georgia and the South Sandwich Islands');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('195', '1', '195', 'ESP', 'ES', 'Spain', 'Spanien', 'Spain');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('196', '1', '196', 'LKA', 'LK', 'Sri Lanka', 'Sri Lanka', 'Sri Lanka');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('197', '1', '197', 'SHN', 'SH', 'St. Helena', 'St. Helena', 'St. Helena');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('198', '1', '198', 'SPM', 'PM', 'St. Pierre and Miquelon', 'St. Pierre und Miquelon', 'St. Pierre and Miquelon');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('199', '1', '199', 'SDN', 'SD', 'Sudan', 'Sudan', 'Sudan');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('200', '1', '200', 'SUR', 'SR', 'Suriname', 'Suriname', 'Suriname');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('201', '1', '201', 'SJM', 'SJ', 'Svalbard and Jan Mayen Islands', 'Svalbard und Jan Mayen', 'Svalbard and Jan Mayen Islands');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('202', '1', '202', 'SWZ', 'SZ', 'Swaziland', 'Swasiland', 'Swaziland');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('203', '1', '203', 'SWE', 'SE', 'Sweden', 'Schweden', 'Sweden');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('204', '1', '204', 'CHE', 'CH', 'Switzerland', 'Schweiz', 'Switzerland');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('205', '1', '205', 'SYR', 'SY', 'Syrian Arab Republic', 'Syrien', 'Syrian Arab Republic');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('206', '1', '206', 'TWN', 'TW', 'Taiwan', 'Taiwan', 'Taiwan');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('207', '1', '207', 'TJK', 'TJ', 'Tajikistan', 'Tadschikistan', 'Tajikistan');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('208', '1', '208', 'TZA', 'TZ', 'Tanzania United Republic of', 'Tansania', 'Tanzania United Republic of');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('209', '1', '209', 'THA', 'TH', 'Thailand', 'Thailand', 'Thailand');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('210', '1', '210', 'TGO', 'TG', 'Togo', 'Togo', 'Togo');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('211', '1', '211', 'TKL', 'TK', 'Tokelau', 'Tokelau', 'Tokelau');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('212', '1', '212', 'TON', 'TO', 'Tonga', 'Tonga', 'Tonga');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('213', '1', '213', 'TTO', 'TT', 'Trinidad and Tobago', 'Trinidad und Tobago', 'Trinidad and Tobago');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('214', '1', '214', 'TUN', 'TN', 'Tunisia', 'Tunesien', 'Tunisia');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('215', '1', '215', 'TUR', 'TR', 'Turkey', 'Türkei', 'Turkey');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('216', '1', '216', 'TKM', 'TM', 'Turkmenistan', 'Turkmenistan', 'Turkmenistan');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('217', '1', '217', 'TCA', 'TC', 'Turks and Caicos Islands', 'Turks- und Caicosinseln', 'Turks and Caicos Islands');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('218', '1', '218', 'TUV', 'TV', 'Tuvalu', 'Tuvalu', 'Tuvalu');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('219', '1', '219', 'UGA', 'UG', 'Uganda', 'Uganda', 'Uganda');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('220', '1', '220', 'UKR', 'UA', 'Ukraine', 'Ukraine', 'Ukraine');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('221', '1', '221', 'ARE', 'AE', 'United Arab Emirates', 'Vereinigte Arabische Emirate', 'United Arab Emirates');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('222', '1', '222', 'GBR', 'GB', 'United Kingdom', 'Vereinigtes Königreich', 'United Kingdom');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('223', '1', '223', 'USA', 'US', 'United States', 'USA', 'United States');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('224', '1', '224', 'UMI', 'UM', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('225', '1', '225', 'URY', 'UY', 'Uruguay', 'Uruguay', 'Uruguay');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('226', '1', '226', 'UZB', 'UZ', 'Uzbekistan', 'Usbekistan', 'Uzbekistan');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('227', '1', '227', 'VUT', 'VU', 'Vanuatu', 'Vanuatu', 'Vanuatu');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('228', '1', '228', 'VAT', 'VA', 'Vatican City State (Holy See)', 'Vatikanstadt', 'Vatican City State (Holy See)');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('229', '1', '229', 'VEN', 'VE', 'Venezuela', 'Venezuela', 'Venezuela');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('230', '1', '230', 'VNM', 'VN', 'Viet Nam', 'Vietnam', 'Viet Nam');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('231', '1', '231', 'VGB', 'VG', 'Virgin Islands (British)', 'Britische Jungferninseln', 'Virgin Islands (British)');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('232', '1', '232', 'VIR', 'VI', 'Virgin Islands (U.S.)', 'Vereinigte Staaten von Amerika', 'Virgin Islands (U.S.)');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('233', '1', '233', 'WLF', 'WF', 'Wallis and Futuna Islands', 'Wallis und Futuna', 'Wallis and Futuna Islands');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('234', '1', '234', 'ESH', 'EH', 'Western Sahara', 'Westsahara', 'Western Sahara');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('235', '1', '235', 'YEM', 'YE', 'Yemen', 'Jemen', 'Yemen');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('236', '1', '236', 'YUG', 'YU', 'Yugoslavia', 'Yugoslavia', 'Yugoslavia');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('237', '1', '237', 'ZAR', 'ZR', 'Zaire', 'Zaire', 'Zaire');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('238', '1', '238', 'ZMB', 'ZM', 'Zambia', 'Sambia', 'Zambia');
INSERT INTO `qrhqt_jshopping_countries` VALUES ('239', '1', '239', 'ZWE', 'ZW', 'Zimbabwe', 'Simbabwe', 'Zimbabwe');

-- ----------------------------
-- Table structure for `qrhqt_jshopping_coupons`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_coupons`;
CREATE TABLE `qrhqt_jshopping_coupons` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_type` tinyint(4) NOT NULL COMMENT 'value_or_percent',
  `coupon_code` varchar(100) NOT NULL,
  `coupon_value` decimal(12,2) NOT NULL DEFAULT '0.00',
  `tax_id` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `for_user_id` int(11) NOT NULL,
  `coupon_start_date` date NOT NULL DEFAULT '0000-00-00',
  `coupon_expire_date` date NOT NULL DEFAULT '0000-00-00',
  `finished_after_used` int(11) NOT NULL,
  `coupon_publish` tinyint(4) NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_coupons
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_jshopping_currencies`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_currencies`;
CREATE TABLE `qrhqt_jshopping_currencies` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(64) NOT NULL,
  `currency_code` varchar(20) NOT NULL,
  `currency_code_iso` varchar(3) NOT NULL,
  `currency_code_num` varchar(3) NOT NULL,
  `currency_ordering` int(11) NOT NULL,
  `currency_value` decimal(14,6) NOT NULL,
  `currency_publish` tinyint(1) NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_currencies
-- ----------------------------
INSERT INTO `qrhqt_jshopping_currencies` VALUES ('1', 'Euro', 'EUR', 'EUR', '978', '2', '1.000000', '1');
INSERT INTO `qrhqt_jshopping_currencies` VALUES ('2', 'Рубль', '', '', '', '1', '1.000000', '1');

-- ----------------------------
-- Table structure for `qrhqt_jshopping_delivery_times`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_delivery_times`;
CREATE TABLE `qrhqt_jshopping_delivery_times` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `days` decimal(8,2) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_delivery_times
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_jshopping_free_attr`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_free_attr`;
CREATE TABLE `qrhqt_jshopping_free_attr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordering` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `type` tinyint(3) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `description_ru-RU` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_free_attr
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_jshopping_import_export`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_import_export`;
CREATE TABLE `qrhqt_jshopping_import_export` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `params` text NOT NULL,
  `endstart` int(11) NOT NULL,
  `steptime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_import_export
-- ----------------------------
INSERT INTO `qrhqt_jshopping_import_export` VALUES ('1', 'Simple Export', 'simpleexport', 'Simple Export in CSV iso-8859-1', 'filename=export', '0', '1');
INSERT INTO `qrhqt_jshopping_import_export` VALUES ('2', 'Simple Import', 'simpleimport', 'Simple Import in CSV iso-8859-1', '', '0', '0');

-- ----------------------------
-- Table structure for `qrhqt_jshopping_languages`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_languages`;
CREATE TABLE `qrhqt_jshopping_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(32) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `publish` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_languages
-- ----------------------------
INSERT INTO `qrhqt_jshopping_languages` VALUES ('1', 'en-GB', 'English', '1', '0');
INSERT INTO `qrhqt_jshopping_languages` VALUES ('2', 'ru-RU', 'Russian', '1', '0');

-- ----------------------------
-- Table structure for `qrhqt_jshopping_manufacturers`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_manufacturers`;
CREATE TABLE `qrhqt_jshopping_manufacturers` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer_url` varchar(255) NOT NULL,
  `manufacturer_logo` varchar(255) NOT NULL,
  `manufacturer_publish` tinyint(1) NOT NULL,
  `products_page` int(11) NOT NULL,
  `products_row` int(11) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `alias_en-GB` varchar(255) NOT NULL,
  `short_description_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `meta_title_en-GB` varchar(255) NOT NULL,
  `meta_description_en-GB` text NOT NULL,
  `meta_keyword_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `alias_ru-RU` varchar(255) NOT NULL,
  `short_description_ru-RU` text NOT NULL,
  `description_ru-RU` text NOT NULL,
  `meta_title_ru-RU` varchar(255) NOT NULL,
  `meta_description_ru-RU` text NOT NULL,
  `meta_keyword_ru-RU` text NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_manufacturers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_jshopping_orders`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_orders`;
CREATE TABLE `qrhqt_jshopping_orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_total` decimal(14,4) NOT NULL,
  `order_subtotal` decimal(14,4) NOT NULL,
  `order_tax` decimal(14,4) NOT NULL,
  `order_tax_ext` text NOT NULL,
  `order_shipping` decimal(14,4) NOT NULL,
  `order_payment` decimal(14,4) NOT NULL,
  `order_discount` decimal(14,4) NOT NULL,
  `shipping_tax` decimal(12,4) NOT NULL,
  `shipping_tax_ext` text NOT NULL,
  `payment_tax` decimal(12,4) NOT NULL,
  `payment_tax_ext` text NOT NULL,
  `order_package` decimal(12,2) NOT NULL,
  `package_tax_ext` text NOT NULL,
  `currency_code` varchar(20) NOT NULL,
  `currency_code_iso` varchar(3) NOT NULL,
  `currency_exchange` decimal(14,6) NOT NULL,
  `order_status` tinyint(4) NOT NULL,
  `order_created` tinyint(1) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `invoice_date` datetime NOT NULL,
  `order_m_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_method_id` int(11) NOT NULL,
  `delivery_times_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `payment_params` text NOT NULL,
  `payment_params_data` text NOT NULL,
  `delivery_time` varchar(100) NOT NULL,
  `delivery_date` datetime NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `order_add_info` text NOT NULL,
  `title` tinyint(1) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `firma_name` varchar(255) NOT NULL,
  `client_type` tinyint(1) NOT NULL,
  `client_type_name` varchar(100) NOT NULL,
  `firma_code` varchar(100) NOT NULL,
  `tax_number` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `street` varchar(100) NOT NULL,
  `home` varchar(20) NOT NULL,
  `apartment` varchar(20) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `mobil_phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `ext_field_1` varchar(255) NOT NULL,
  `ext_field_2` varchar(255) NOT NULL,
  `ext_field_3` varchar(255) NOT NULL,
  `d_title` tinyint(1) NOT NULL,
  `d_f_name` varchar(255) NOT NULL,
  `d_l_name` varchar(255) NOT NULL,
  `d_m_name` varchar(255) NOT NULL,
  `d_firma_name` varchar(255) NOT NULL,
  `d_email` varchar(255) NOT NULL,
  `d_birthday` date NOT NULL,
  `d_street` varchar(100) NOT NULL,
  `d_home` varchar(20) NOT NULL,
  `d_apartment` varchar(20) NOT NULL,
  `d_zip` varchar(20) NOT NULL,
  `d_city` varchar(100) NOT NULL,
  `d_state` varchar(100) NOT NULL,
  `d_country` int(11) NOT NULL,
  `d_phone` varchar(30) NOT NULL,
  `d_mobil_phone` varchar(20) NOT NULL,
  `d_fax` varchar(20) NOT NULL,
  `d_ext_field_1` varchar(255) NOT NULL,
  `d_ext_field_2` varchar(255) NOT NULL,
  `d_ext_field_3` varchar(255) NOT NULL,
  `pdf_file` varchar(50) NOT NULL,
  `order_hash` varchar(32) NOT NULL,
  `file_hash` varchar(64) NOT NULL,
  `file_stat_downloads` text NOT NULL,
  `order_custom_info` text NOT NULL,
  `display_price` tinyint(1) NOT NULL,
  `vendor_type` tinyint(1) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `lang` varchar(16) NOT NULL,
  `transaction` text NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_orders
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_jshopping_order_history`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_order_history`;
CREATE TABLE `qrhqt_jshopping_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` tinyint(1) NOT NULL,
  `status_date_added` datetime NOT NULL,
  `customer_notify` int(1) DEFAULT NULL,
  `comments` text,
  PRIMARY KEY (`order_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_order_history
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_jshopping_order_item`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_order_item`;
CREATE TABLE `qrhqt_jshopping_order_item` (
  `order_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_ean` varchar(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_quantity` decimal(12,2) NOT NULL,
  `product_item_price` decimal(14,4) NOT NULL,
  `product_tax` decimal(14,4) NOT NULL,
  `product_attributes` text NOT NULL,
  `product_freeattributes` text NOT NULL,
  `attributes` text NOT NULL,
  `freeattributes` text NOT NULL,
  `extra_fields` text NOT NULL,
  `files` text NOT NULL,
  `weight` decimal(14,4) NOT NULL,
  `thumb_image` varchar(255) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `delivery_times_id` int(4) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `basicprice` decimal(12,2) NOT NULL,
  `basicpriceunit` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`order_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_order_item
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_jshopping_order_status`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_order_status`;
CREATE TABLE `qrhqt_jshopping_order_status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_code` char(1) NOT NULL,
  `name_en-GB` varchar(100) NOT NULL,
  `name_de-DE` varchar(100) NOT NULL,
  `name_ru-RU` varchar(100) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_order_status
-- ----------------------------
INSERT INTO `qrhqt_jshopping_order_status` VALUES ('1', 'P', 'Pending', 'Offen', 'Pending');
INSERT INTO `qrhqt_jshopping_order_status` VALUES ('2', 'C', 'Confirmed', 'Bestätigt', 'Confirmed');
INSERT INTO `qrhqt_jshopping_order_status` VALUES ('3', 'X', 'Cancelled', 'Abgebrochen', 'Cancelled');
INSERT INTO `qrhqt_jshopping_order_status` VALUES ('4', 'R', 'Refunded', 'Gutschrift', 'Refunded');
INSERT INTO `qrhqt_jshopping_order_status` VALUES ('5', 'S', 'Shipped', 'Gesendet', 'Shipped');
INSERT INTO `qrhqt_jshopping_order_status` VALUES ('6', 'O', 'Paid', 'Bezahlt', 'Paid');
INSERT INTO `qrhqt_jshopping_order_status` VALUES ('7', 'F', 'Complete', 'Abgeschlossen', 'Complete');

-- ----------------------------
-- Table structure for `qrhqt_jshopping_payment_method`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_payment_method`;
CREATE TABLE `qrhqt_jshopping_payment_method` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_code` varchar(32) NOT NULL,
  `payment_class` varchar(100) NOT NULL,
  `payment_publish` tinyint(1) NOT NULL,
  `payment_ordering` int(11) NOT NULL,
  `payment_params` text NOT NULL,
  `payment_type` tinyint(4) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `price_type` tinyint(1) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `show_descr_in_email` tinyint(1) NOT NULL,
  `name_en-GB` varchar(100) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_de-DE` varchar(100) NOT NULL,
  `description_de-DE` text NOT NULL,
  `name_ru-RU` varchar(100) NOT NULL,
  `description_ru-RU` text NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_payment_method
-- ----------------------------
INSERT INTO `qrhqt_jshopping_payment_method` VALUES ('1', 'bank', 'pm_bank', '1', '1', '', '1', '4.00', '0', '1', '', '0', 'Cash on delivery', '', 'Nachnahme', '', 'Cash on delivery', '');
INSERT INTO `qrhqt_jshopping_payment_method` VALUES ('2', 'PO', 'pm_purchase_order', '1', '2', '', '1', '0.00', '0', '1', '', '1', 'Advance payment', '', 'Vorauskasse', '', 'Advance payment', '');
INSERT INTO `qrhqt_jshopping_payment_method` VALUES ('3', 'paypal', 'pm_paypal', '1', '3', 'testmode=1\n email_received=test@testing.com\n transaction_end_status=6\n transaction_pending_status=1\n transaction_failed_status=3\n checkdatareturn=0', '2', '0.00', '0', '1', '', '0', 'Paypal', '', 'Paypal', '', 'Paypal', '');
INSERT INTO `qrhqt_jshopping_payment_method` VALUES ('4', 'debit', 'pm_debit', '1', '4', '', '1', '0.00', '0', '1', '', '0', 'Debit', 'Please insert your bankdata.', 'Lastschrift', 'Bitte tragen Sie hier Ihre Bankdaten für den Abbuchungsauftrag ein.', 'Debit', 'Please insert your bankdata.');
INSERT INTO `qrhqt_jshopping_payment_method` VALUES ('5', 'ST', 'pm_sofortueberweisung', '0', '5', 'user_id=00000\nproject_id=00000\nproject_password=00000\ntransaction_end_status=6\ntransaction_pending_status=1\ntransaction_failed_status=3\n', '2', '0.00', '0', '1', '', '0', 'Sofortueberweisung', '', 'Sofortueberweisung', '', 'Sofortueberweisung', '');

-- ----------------------------
-- Table structure for `qrhqt_jshopping_products`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_products`;
CREATE TABLE `qrhqt_jshopping_products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `product_ean` varchar(32) NOT NULL,
  `product_quantity` decimal(12,2) NOT NULL,
  `unlimited` tinyint(1) NOT NULL,
  `product_availability` varchar(1) NOT NULL,
  `product_date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modify` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_publish` tinyint(1) NOT NULL,
  `product_tax_id` tinyint(3) NOT NULL,
  `currency_id` int(4) NOT NULL,
  `product_template` varchar(64) NOT NULL DEFAULT 'default',
  `product_url` varchar(255) NOT NULL,
  `product_old_price` decimal(14,4) NOT NULL,
  `product_buy_price` decimal(14,4) NOT NULL,
  `product_price` decimal(18,6) NOT NULL,
  `min_price` decimal(12,2) NOT NULL,
  `different_prices` tinyint(1) NOT NULL,
  `product_weight` decimal(14,4) NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_manufacturer_id` int(11) NOT NULL,
  `product_is_add_price` tinyint(1) NOT NULL,
  `add_price_unit_id` int(3) NOT NULL,
  `average_rating` float(4,2) NOT NULL,
  `reviews_count` int(11) NOT NULL,
  `delivery_times_id` int(4) NOT NULL,
  `hits` int(11) NOT NULL,
  `weight_volume_units` decimal(14,4) NOT NULL,
  `basic_price_unit_id` int(3) NOT NULL,
  `label_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `access` int(3) NOT NULL DEFAULT '1',
  `name_en-GB` varchar(255) NOT NULL,
  `alias_en-GB` varchar(255) NOT NULL,
  `short_description_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `meta_title_en-GB` varchar(255) NOT NULL,
  `meta_description_en-GB` text NOT NULL,
  `meta_keyword_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `alias_ru-RU` varchar(255) NOT NULL,
  `short_description_ru-RU` text NOT NULL,
  `description_ru-RU` text NOT NULL,
  `meta_title_ru-RU` varchar(255) NOT NULL,
  `meta_description_ru-RU` text NOT NULL,
  `meta_keyword_ru-RU` text NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `product_manufacturer_id` (`product_manufacturer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_products
-- ----------------------------
INSERT INTO `qrhqt_jshopping_products` VALUES ('1', '0', '', '1.00', '0', '', '2018-05-01 15:14:17', '2018-05-01 15:14:52', '1', '1', '1', 'default', '', '0.0000', '0.0000', '0.000000', '0.00', '0', '0.0000', '000000000001353-400x400.jpg', '0', '0', '3', '0.00', '0', '0', '7', '0.0000', '0', '0', '0', '1', '', '', '', '', '', '', '', 'Детская кроватка СКВ 830039-1', '', '', '<p>Кроватка СКВ 830039-1 Ложе: двухуровневое Маятник поперечный: есть Механизм опускания: кнопка Накладка ПВХ: есть Материалы: ЛДСП, массив берёзы, МДФ Пеленальный стол: увеличенный Нижний ящик: 1 шт Комод: 2 ящика Новая усовершенствованная модель СКВ-8. Теперь ящики комода закрываются бесшумно благодаря направляющим скрытого монтажа с системой самозадвижения. Фасады комода с ручками и боковины кровати выполнены из МДФ и покрыты пленкой. Комод можно установить как с правой, так и с левой стороны. Выкатной закрытый ящик помогает избежать попадания пыли и обеспечивает возможность влажной уборки под кроватью за счёт полного выкатывания ящика. При необходимости маятниковый механизм можно зафиксировать стопорами.</p>', '', '', '');
INSERT INTO `qrhqt_jshopping_products` VALUES ('2', '0', '', '1.00', '0', '', '2018-05-04 11:33:26', '2018-05-04 11:33:26', '1', '1', '2', 'default', '', '0.0000', '0.0000', '0.000000', '0.00', '0', '0.0000', '11101110120-400x400.jpg', '0', '0', '3', '0.00', '0', '0', '0', '0.0000', '0', '0', '0', '1', '', '', '', '', '', '', '', 'Детская кроватка ЕвроСтиль маятник слоновая кость', '', '', '', '', '', '');
INSERT INTO `qrhqt_jshopping_products` VALUES ('3', '0', '', '1.00', '0', '', '2018-05-04 11:36:49', '2018-05-04 11:36:49', '1', '1', '2', 'default', '', '0.0000', '0.0000', '0.000000', '0.00', '0', '0.0000', 'barney-5-400x400.jpg', '0', '0', '3', '0.00', '0', '0', '1', '0.0000', '0', '0', '0', '1', '', '', '', '', '', '', '', 'ДЕТСКАЯ КРОВАТКА Barney 5', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `qrhqt_jshopping_products_attr`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_products_attr`;
CREATE TABLE `qrhqt_jshopping_products_attr` (
  `product_attr_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `buy_price` decimal(12,2) NOT NULL,
  `price` decimal(14,4) NOT NULL,
  `old_price` decimal(14,4) NOT NULL,
  `count` decimal(14,4) NOT NULL,
  `ean` varchar(100) NOT NULL,
  `weight` decimal(12,4) NOT NULL,
  `weight_volume_units` decimal(14,4) NOT NULL,
  `ext_attribute_product_id` int(11) NOT NULL,
  PRIMARY KEY (`product_attr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_products_attr
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_jshopping_products_attr2`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_products_attr2`;
CREATE TABLE `qrhqt_jshopping_products_attr2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attr_id` int(11) NOT NULL,
  `attr_value_id` int(11) NOT NULL,
  `price_mod` char(1) NOT NULL,
  `addprice` decimal(14,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_products_attr2
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_jshopping_products_extra_fields`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_products_extra_fields`;
CREATE TABLE `qrhqt_jshopping_products_extra_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `allcats` tinyint(1) NOT NULL,
  `cats` text NOT NULL,
  `type` tinyint(1) NOT NULL,
  `multilist` tinyint(1) NOT NULL,
  `group` tinyint(4) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `description_ru-RU` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_products_extra_fields
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_jshopping_products_extra_field_groups`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_products_extra_field_groups`;
CREATE TABLE `qrhqt_jshopping_products_extra_field_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_products_extra_field_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_jshopping_products_extra_field_values`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_products_extra_field_values`;
CREATE TABLE `qrhqt_jshopping_products_extra_field_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_products_extra_field_values
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_jshopping_products_files`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_products_files`;
CREATE TABLE `qrhqt_jshopping_products_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `demo` varchar(255) NOT NULL,
  `demo_descr` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `file_descr` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_products_files
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_jshopping_products_free_attr`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_products_free_attr`;
CREATE TABLE `qrhqt_jshopping_products_free_attr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attr_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_products_free_attr
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_jshopping_products_images`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_products_images`;
CREATE TABLE `qrhqt_jshopping_products_images` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ordering` tinyint(4) NOT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_products_images
-- ----------------------------
INSERT INTO `qrhqt_jshopping_products_images` VALUES ('1', '1', '000000000001353-400x400.jpg', '', '1');
INSERT INTO `qrhqt_jshopping_products_images` VALUES ('2', '2', '11101110120-400x400.jpg', '', '1');
INSERT INTO `qrhqt_jshopping_products_images` VALUES ('3', '3', 'barney-5-400x400.jpg', '', '1');

-- ----------------------------
-- Table structure for `qrhqt_jshopping_products_prices`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_products_prices`;
CREATE TABLE `qrhqt_jshopping_products_prices` (
  `price_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `discount` decimal(16,6) NOT NULL,
  `product_quantity_start` int(11) NOT NULL,
  `product_quantity_finish` int(11) NOT NULL,
  PRIMARY KEY (`price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_products_prices
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_jshopping_products_relations`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_products_relations`;
CREATE TABLE `qrhqt_jshopping_products_relations` (
  `product_id` int(11) NOT NULL,
  `product_related_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_products_relations
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_jshopping_products_reviews`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_products_reviews`;
CREATE TABLE `qrhqt_jshopping_products_reviews` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `time` date NOT NULL,
  `review` text NOT NULL,
  `mark` int(11) NOT NULL,
  `publish` tinyint(1) NOT NULL,
  `ip` varchar(20) NOT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_products_reviews
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_jshopping_products_to_categories`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_products_to_categories`;
CREATE TABLE `qrhqt_jshopping_products_to_categories` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_ordering` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_products_to_categories
-- ----------------------------
INSERT INTO `qrhqt_jshopping_products_to_categories` VALUES ('1', '1', '1');
INSERT INTO `qrhqt_jshopping_products_to_categories` VALUES ('2', '1', '2');
INSERT INTO `qrhqt_jshopping_products_to_categories` VALUES ('3', '1', '3');

-- ----------------------------
-- Table structure for `qrhqt_jshopping_products_videos`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_products_videos`;
CREATE TABLE `qrhqt_jshopping_products_videos` (
  `video_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `video_name` varchar(255) NOT NULL,
  `video_code` text NOT NULL,
  `video_preview` varchar(255) NOT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_products_videos
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_jshopping_product_labels`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_product_labels`;
CREATE TABLE `qrhqt_jshopping_product_labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_de-DE` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_product_labels
-- ----------------------------
INSERT INTO `qrhqt_jshopping_product_labels` VALUES ('1', 'New', 'New', 'New', 'new.png', 'New');
INSERT INTO `qrhqt_jshopping_product_labels` VALUES ('2', 'Sale', 'Sale', 'Sale', 'sale.png', 'Sale');

-- ----------------------------
-- Table structure for `qrhqt_jshopping_shipping_ext_calc`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_shipping_ext_calc`;
CREATE TABLE `qrhqt_jshopping_shipping_ext_calc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `params` text NOT NULL,
  `shipping_method` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `ordering` int(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_shipping_ext_calc
-- ----------------------------
INSERT INTO `qrhqt_jshopping_shipping_ext_calc` VALUES ('1', 'StandartWeight', 'sm_standart_weight', 'StandartWeight', '', '', '1', '1');

-- ----------------------------
-- Table structure for `qrhqt_jshopping_shipping_method`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_shipping_method`;
CREATE TABLE `qrhqt_jshopping_shipping_method` (
  `shipping_id` int(11) NOT NULL AUTO_INCREMENT,
  `name_en-GB` varchar(100) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_de-DE` varchar(100) NOT NULL,
  `description_de-DE` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `payments` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_ru-RU` varchar(100) NOT NULL,
  `description_ru-RU` text NOT NULL,
  PRIMARY KEY (`shipping_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_shipping_method
-- ----------------------------
INSERT INTO `qrhqt_jshopping_shipping_method` VALUES ('1', 'Standard', '', 'Standardversand', '', '1', '', '', '1', 'Standard', '');
INSERT INTO `qrhqt_jshopping_shipping_method` VALUES ('2', 'Express', '', 'Express', '', '1', '', '', '2', 'Express', '');

-- ----------------------------
-- Table structure for `qrhqt_jshopping_shipping_method_price`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_shipping_method_price`;
CREATE TABLE `qrhqt_jshopping_shipping_method_price` (
  `sh_pr_method_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_method_id` int(11) NOT NULL,
  `shipping_tax_id` int(11) NOT NULL,
  `shipping_stand_price` decimal(14,4) NOT NULL,
  `package_tax_id` int(11) NOT NULL,
  `package_stand_price` decimal(14,4) NOT NULL,
  `delivery_times_id` int(11) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`sh_pr_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_shipping_method_price
-- ----------------------------
INSERT INTO `qrhqt_jshopping_shipping_method_price` VALUES ('1', '1', '1', '10.0000', '1', '0.0000', '0', '');
INSERT INTO `qrhqt_jshopping_shipping_method_price` VALUES ('2', '2', '1', '25.0000', '1', '0.0000', '0', '');

-- ----------------------------
-- Table structure for `qrhqt_jshopping_shipping_method_price_countries`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_shipping_method_price_countries`;
CREATE TABLE `qrhqt_jshopping_shipping_method_price_countries` (
  `sh_method_country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `sh_pr_method_id` int(11) NOT NULL,
  PRIMARY KEY (`sh_method_country_id`),
  KEY `country_id` (`country_id`),
  KEY `sh_pr_method_id` (`sh_pr_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=479 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_shipping_method_price_countries
-- ----------------------------
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('1', '239', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('2', '238', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('3', '237', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('4', '236', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('5', '235', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('6', '234', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('7', '233', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('8', '232', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('9', '231', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('10', '230', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('11', '229', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('12', '228', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('13', '227', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('14', '226', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('15', '225', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('16', '224', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('17', '223', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('18', '222', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('19', '221', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('20', '220', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('21', '219', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('22', '218', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('23', '217', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('24', '216', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('25', '215', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('26', '214', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('27', '213', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('28', '212', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('29', '211', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('30', '210', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('31', '209', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('32', '208', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('33', '207', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('34', '206', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('35', '205', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('36', '204', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('37', '203', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('38', '202', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('39', '201', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('40', '200', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('41', '199', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('42', '198', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('43', '197', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('44', '196', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('45', '195', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('46', '194', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('47', '193', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('48', '192', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('49', '191', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('50', '190', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('51', '189', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('52', '188', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('53', '187', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('54', '186', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('55', '185', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('56', '184', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('57', '183', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('58', '182', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('59', '181', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('60', '180', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('61', '179', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('62', '178', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('63', '177', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('64', '176', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('65', '175', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('66', '174', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('67', '173', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('68', '172', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('69', '171', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('70', '170', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('71', '169', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('72', '168', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('73', '167', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('74', '166', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('75', '165', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('76', '164', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('77', '163', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('78', '162', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('79', '161', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('80', '160', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('81', '159', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('82', '158', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('83', '157', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('84', '156', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('85', '155', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('86', '154', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('87', '153', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('88', '152', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('89', '151', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('90', '150', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('91', '149', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('92', '148', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('93', '147', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('94', '146', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('95', '145', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('96', '144', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('97', '143', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('98', '142', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('99', '141', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('100', '140', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('101', '139', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('102', '138', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('103', '137', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('104', '136', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('105', '135', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('106', '134', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('107', '133', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('108', '132', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('109', '131', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('110', '130', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('111', '129', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('112', '128', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('113', '127', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('114', '126', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('115', '125', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('116', '124', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('117', '123', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('118', '122', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('119', '121', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('120', '120', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('121', '119', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('122', '118', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('123', '117', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('124', '116', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('125', '115', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('126', '114', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('127', '113', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('128', '112', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('129', '111', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('130', '110', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('131', '109', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('132', '108', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('133', '107', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('134', '106', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('135', '105', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('136', '104', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('137', '103', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('138', '102', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('139', '101', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('140', '100', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('141', '99', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('142', '98', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('143', '97', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('144', '96', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('145', '95', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('146', '94', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('147', '93', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('148', '92', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('149', '91', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('150', '90', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('151', '89', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('152', '88', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('153', '87', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('154', '86', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('155', '85', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('156', '84', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('157', '83', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('158', '82', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('159', '81', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('160', '80', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('161', '79', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('162', '78', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('163', '77', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('164', '76', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('165', '75', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('166', '74', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('167', '73', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('168', '72', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('169', '71', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('170', '70', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('171', '69', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('172', '68', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('173', '67', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('174', '66', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('175', '65', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('176', '64', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('177', '63', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('178', '62', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('179', '61', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('180', '60', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('181', '59', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('182', '58', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('183', '57', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('184', '56', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('185', '55', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('186', '54', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('187', '53', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('188', '52', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('189', '51', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('190', '50', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('191', '49', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('192', '48', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('193', '47', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('194', '46', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('195', '45', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('196', '44', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('197', '43', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('198', '42', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('199', '41', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('200', '40', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('201', '39', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('202', '38', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('203', '37', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('204', '36', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('205', '35', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('206', '34', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('207', '33', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('208', '32', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('209', '31', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('210', '30', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('211', '29', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('212', '28', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('213', '27', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('214', '26', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('215', '25', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('216', '24', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('217', '23', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('218', '22', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('219', '21', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('220', '20', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('221', '19', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('222', '18', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('223', '17', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('224', '16', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('225', '15', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('226', '14', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('227', '13', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('228', '12', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('229', '11', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('230', '10', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('231', '9', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('232', '8', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('233', '7', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('234', '6', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('235', '5', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('236', '4', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('237', '3', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('238', '2', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('239', '1', '1');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('240', '239', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('241', '238', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('242', '237', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('243', '236', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('244', '235', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('245', '234', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('246', '233', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('247', '232', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('248', '231', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('249', '230', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('250', '229', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('251', '228', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('252', '227', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('253', '226', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('254', '225', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('255', '224', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('256', '223', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('257', '222', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('258', '221', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('259', '220', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('260', '219', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('261', '218', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('262', '217', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('263', '216', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('264', '215', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('265', '214', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('266', '213', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('267', '212', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('268', '211', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('269', '210', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('270', '209', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('271', '208', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('272', '207', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('273', '206', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('274', '205', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('275', '204', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('276', '203', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('277', '202', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('278', '201', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('279', '200', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('280', '199', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('281', '198', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('282', '197', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('283', '196', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('284', '195', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('285', '194', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('286', '193', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('287', '192', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('288', '191', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('289', '190', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('290', '189', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('291', '188', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('292', '187', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('293', '186', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('294', '185', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('295', '184', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('296', '183', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('297', '182', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('298', '181', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('299', '180', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('300', '179', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('301', '178', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('302', '177', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('303', '176', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('304', '175', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('305', '174', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('306', '173', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('307', '172', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('308', '171', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('309', '170', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('310', '169', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('311', '168', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('312', '167', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('313', '166', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('314', '165', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('315', '164', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('316', '163', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('317', '162', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('318', '161', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('319', '160', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('320', '159', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('321', '158', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('322', '157', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('323', '156', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('324', '155', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('325', '154', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('326', '153', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('327', '152', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('328', '151', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('329', '150', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('330', '149', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('331', '148', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('332', '147', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('333', '146', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('334', '145', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('335', '144', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('336', '143', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('337', '142', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('338', '141', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('339', '140', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('340', '139', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('341', '138', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('342', '137', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('343', '136', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('344', '135', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('345', '134', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('346', '133', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('347', '132', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('348', '131', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('349', '130', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('350', '129', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('351', '128', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('352', '127', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('353', '126', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('354', '125', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('355', '124', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('356', '123', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('357', '122', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('358', '121', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('359', '120', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('360', '119', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('361', '118', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('362', '117', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('363', '116', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('364', '115', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('365', '114', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('366', '113', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('367', '112', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('368', '111', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('369', '110', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('370', '109', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('371', '108', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('372', '107', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('373', '106', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('374', '105', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('375', '104', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('376', '103', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('377', '102', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('378', '101', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('379', '100', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('380', '99', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('381', '98', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('382', '97', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('383', '96', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('384', '95', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('385', '94', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('386', '93', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('387', '92', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('388', '91', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('389', '90', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('390', '89', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('391', '88', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('392', '87', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('393', '86', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('394', '85', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('395', '84', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('396', '83', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('397', '82', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('398', '81', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('399', '80', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('400', '79', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('401', '78', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('402', '77', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('403', '76', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('404', '75', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('405', '74', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('406', '73', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('407', '72', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('408', '71', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('409', '70', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('410', '69', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('411', '68', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('412', '67', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('413', '66', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('414', '65', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('415', '64', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('416', '63', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('417', '62', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('418', '61', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('419', '60', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('420', '59', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('421', '58', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('422', '57', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('423', '56', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('424', '55', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('425', '54', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('426', '53', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('427', '52', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('428', '51', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('429', '50', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('430', '49', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('431', '48', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('432', '47', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('433', '46', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('434', '45', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('435', '44', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('436', '43', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('437', '42', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('438', '41', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('439', '40', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('440', '39', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('441', '38', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('442', '37', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('443', '36', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('444', '35', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('445', '34', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('446', '33', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('447', '32', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('448', '31', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('449', '30', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('450', '29', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('451', '28', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('452', '27', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('453', '26', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('454', '25', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('455', '24', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('456', '23', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('457', '22', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('458', '21', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('459', '20', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('460', '19', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('461', '18', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('462', '17', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('463', '16', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('464', '15', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('465', '14', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('466', '13', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('467', '12', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('468', '11', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('469', '10', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('470', '9', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('471', '8', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('472', '7', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('473', '6', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('474', '5', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('475', '4', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('476', '3', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('477', '2', '2');
INSERT INTO `qrhqt_jshopping_shipping_method_price_countries` VALUES ('478', '1', '2');

-- ----------------------------
-- Table structure for `qrhqt_jshopping_shipping_method_price_weight`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_shipping_method_price_weight`;
CREATE TABLE `qrhqt_jshopping_shipping_method_price_weight` (
  `sh_pr_weight_id` int(11) NOT NULL AUTO_INCREMENT,
  `sh_pr_method_id` int(11) NOT NULL,
  `shipping_price` decimal(12,2) NOT NULL,
  `shipping_weight_from` decimal(14,4) NOT NULL,
  `shipping_weight_to` decimal(14,4) NOT NULL,
  `shipping_package_price` decimal(14,4) NOT NULL,
  PRIMARY KEY (`sh_pr_weight_id`),
  KEY `sh_pr_method_id` (`sh_pr_method_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_shipping_method_price_weight
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_jshopping_taxes`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_taxes`;
CREATE TABLE `qrhqt_jshopping_taxes` (
  `tax_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_name` varchar(50) NOT NULL,
  `tax_value` decimal(12,2) NOT NULL,
  PRIMARY KEY (`tax_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_taxes
-- ----------------------------
INSERT INTO `qrhqt_jshopping_taxes` VALUES ('1', 'Normal', '19.00');

-- ----------------------------
-- Table structure for `qrhqt_jshopping_taxes_ext`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_taxes_ext`;
CREATE TABLE `qrhqt_jshopping_taxes_ext` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_id` int(11) NOT NULL,
  `zones` text NOT NULL,
  `tax` decimal(12,2) NOT NULL,
  `firma_tax` decimal(12,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_taxes_ext
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_jshopping_unit`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_unit`;
CREATE TABLE `qrhqt_jshopping_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qty` int(11) NOT NULL DEFAULT '1',
  `name_de-DE` varchar(255) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_unit
-- ----------------------------
INSERT INTO `qrhqt_jshopping_unit` VALUES ('1', '1', 'Kg', 'Kg', 'Kg');
INSERT INTO `qrhqt_jshopping_unit` VALUES ('2', '1', 'Liter', 'Liter', 'Liter');
INSERT INTO `qrhqt_jshopping_unit` VALUES ('3', '1', 'St.', 'pcs.', 'pcs.');

-- ----------------------------
-- Table structure for `qrhqt_jshopping_usergroups`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_usergroups`;
CREATE TABLE `qrhqt_jshopping_usergroups` (
  `usergroup_id` int(11) NOT NULL AUTO_INCREMENT,
  `usergroup_name` varchar(64) NOT NULL,
  `usergroup_discount` decimal(12,2) NOT NULL,
  `usergroup_description` text NOT NULL,
  `usergroup_is_default` tinyint(1) NOT NULL,
  PRIMARY KEY (`usergroup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_usergroups
-- ----------------------------
INSERT INTO `qrhqt_jshopping_usergroups` VALUES ('1', 'Default', '0.00', 'Default', '1');

-- ----------------------------
-- Table structure for `qrhqt_jshopping_users`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_users`;
CREATE TABLE `qrhqt_jshopping_users` (
  `user_id` int(11) NOT NULL,
  `usergroup_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `u_name` varchar(150) NOT NULL,
  `title` tinyint(1) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `firma_name` varchar(100) NOT NULL,
  `client_type` tinyint(1) NOT NULL,
  `firma_code` varchar(100) NOT NULL,
  `tax_number` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `street` varchar(255) NOT NULL,
  `home` varchar(20) NOT NULL,
  `apartment` varchar(20) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` int(11) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `mobil_phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `ext_field_1` varchar(255) NOT NULL,
  `ext_field_2` varchar(255) NOT NULL,
  `ext_field_3` varchar(255) NOT NULL,
  `delivery_adress` tinyint(1) NOT NULL,
  `d_title` tinyint(1) NOT NULL,
  `d_f_name` varchar(255) NOT NULL,
  `d_l_name` varchar(255) NOT NULL,
  `d_m_name` varchar(255) NOT NULL,
  `d_firma_name` varchar(100) NOT NULL,
  `d_email` varchar(255) NOT NULL,
  `d_birthday` date NOT NULL,
  `d_street` varchar(255) NOT NULL,
  `d_home` varchar(20) NOT NULL,
  `d_apartment` varchar(20) NOT NULL,
  `d_zip` varchar(20) NOT NULL,
  `d_city` varchar(100) NOT NULL,
  `d_state` varchar(100) NOT NULL,
  `d_country` int(11) NOT NULL,
  `d_phone` varchar(20) NOT NULL,
  `d_mobil_phone` varchar(20) NOT NULL,
  `d_fax` varchar(20) NOT NULL,
  `d_ext_field_1` varchar(255) NOT NULL,
  `d_ext_field_2` varchar(255) NOT NULL,
  `d_ext_field_3` varchar(255) NOT NULL,
  UNIQUE KEY `user_id` (`user_id`),
  KEY `u_name` (`u_name`),
  KEY `usergroup_id` (`usergroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_users
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_jshopping_vendors`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_jshopping_vendors`;
CREATE TABLE `qrhqt_jshopping_vendors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `benef_bank_info` varchar(64) NOT NULL,
  `benef_bic` varchar(64) NOT NULL,
  `benef_conto` varchar(64) NOT NULL,
  `benef_payee` varchar(64) NOT NULL,
  `benef_iban` varchar(64) NOT NULL,
  `benef_swift` varchar(64) NOT NULL,
  `interm_name` varchar(64) NOT NULL,
  `interm_swift` varchar(64) NOT NULL,
  `identification_number` varchar(64) NOT NULL,
  `tax_number` varchar(64) NOT NULL,
  `additional_information` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `main` tinyint(1) NOT NULL,
  `publish` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrhqt_jshopping_vendors
-- ----------------------------
INSERT INTO `qrhqt_jshopping_vendors` VALUES ('1', 'Shop name', 'Company', '', '', 'Address', 'City', 'Postal Code ', 'State', '81', 'First name ', 'Last name', '', '00000000', '00000000', 'email@email.com', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '', '', 'Additional information', '0', '1', '1');

-- ----------------------------
-- Table structure for `qrhqt_languages`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_languages`;
CREATE TABLE `qrhqt_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_languages
-- ----------------------------
INSERT INTO `qrhqt_languages` VALUES ('1', '0', 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', '1', '1', '2');
INSERT INTO `qrhqt_languages` VALUES ('2', '56', 'ru-RU', 'Русский (Россия)', 'Russian (Russia)', 'ru', 'ru_ru', '', '', '', '', '0', '1', '1');

-- ----------------------------
-- Table structure for `qrhqt_menu`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_menu`;
CREATE TABLE `qrhqt_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_menu
-- ----------------------------
INSERT INTO `qrhqt_menu` VALUES ('1', '', 'Menu_Item_Root', 'root', '', '', '', '', '1', '0', '0', '0', '0', '0000-00-00 00:00:00', '0', '0', '', '0', '', '0', '61', '0', '*', '0');
INSERT INTO `qrhqt_menu` VALUES ('2', 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', '1', '1', '1', '4', '0', '0000-00-00 00:00:00', '0', '0', 'class:banners', '0', '', '1', '10', '0', '*', '1');
INSERT INTO `qrhqt_menu` VALUES ('3', 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', '1', '2', '2', '4', '0', '0000-00-00 00:00:00', '0', '0', 'class:banners', '0', '', '2', '3', '0', '*', '1');
INSERT INTO `qrhqt_menu` VALUES ('4', 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', '1', '2', '2', '6', '0', '0000-00-00 00:00:00', '0', '0', 'class:banners-cat', '0', '', '4', '5', '0', '*', '1');
INSERT INTO `qrhqt_menu` VALUES ('5', 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', '1', '2', '2', '4', '0', '0000-00-00 00:00:00', '0', '0', 'class:banners-clients', '0', '', '6', '7', '0', '*', '1');
INSERT INTO `qrhqt_menu` VALUES ('6', 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', '1', '2', '2', '4', '0', '0000-00-00 00:00:00', '0', '0', 'class:banners-tracks', '0', '', '8', '9', '0', '*', '1');
INSERT INTO `qrhqt_menu` VALUES ('7', 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', '1', '1', '1', '8', '0', '0000-00-00 00:00:00', '0', '0', 'class:contact', '0', '', '11', '16', '0', '*', '1');
INSERT INTO `qrhqt_menu` VALUES ('8', 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', '1', '7', '2', '8', '0', '0000-00-00 00:00:00', '0', '0', 'class:contact', '0', '', '12', '13', '0', '*', '1');
INSERT INTO `qrhqt_menu` VALUES ('9', 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', '1', '7', '2', '6', '0', '0000-00-00 00:00:00', '0', '0', 'class:contact-cat', '0', '', '14', '15', '0', '*', '1');
INSERT INTO `qrhqt_menu` VALUES ('10', 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', '1', '1', '1', '15', '0', '0000-00-00 00:00:00', '0', '0', 'class:messages', '0', '', '17', '20', '0', '*', '1');
INSERT INTO `qrhqt_menu` VALUES ('11', 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', '1', '10', '2', '15', '0', '0000-00-00 00:00:00', '0', '0', 'class:messages-add', '0', '', '18', '19', '0', '*', '1');
INSERT INTO `qrhqt_menu` VALUES ('13', 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', '1', '1', '1', '17', '0', '0000-00-00 00:00:00', '0', '0', 'class:newsfeeds', '0', '', '21', '26', '0', '*', '1');
INSERT INTO `qrhqt_menu` VALUES ('14', 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', '1', '13', '2', '17', '0', '0000-00-00 00:00:00', '0', '0', 'class:newsfeeds', '0', '', '22', '23', '0', '*', '1');
INSERT INTO `qrhqt_menu` VALUES ('15', 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', '1', '13', '2', '6', '0', '0000-00-00 00:00:00', '0', '0', 'class:newsfeeds-cat', '0', '', '24', '25', '0', '*', '1');
INSERT INTO `qrhqt_menu` VALUES ('16', 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', '1', '1', '1', '24', '0', '0000-00-00 00:00:00', '0', '0', 'class:redirect', '0', '', '27', '28', '0', '*', '1');
INSERT INTO `qrhqt_menu` VALUES ('17', 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', '1', '1', '1', '19', '0', '0000-00-00 00:00:00', '0', '0', 'class:search', '0', '', '29', '30', '0', '*', '1');
INSERT INTO `qrhqt_menu` VALUES ('18', 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', '1', '1', '1', '27', '0', '0000-00-00 00:00:00', '0', '0', 'class:finder', '0', '', '31', '32', '0', '*', '1');
INSERT INTO `qrhqt_menu` VALUES ('19', 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', '1', '1', '1', '28', '0', '0000-00-00 00:00:00', '0', '0', 'class:joomlaupdate', '0', '', '33', '34', '0', '*', '1');
INSERT INTO `qrhqt_menu` VALUES ('20', 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', '1', '1', '1', '29', '0', '0000-00-00 00:00:00', '0', '1', 'class:tags', '0', '', '35', '36', '0', '', '1');
INSERT INTO `qrhqt_menu` VALUES ('21', 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', '1', '1', '1', '32', '0', '0000-00-00 00:00:00', '0', '1', 'class:postinstall', '0', '', '37', '38', '0', '*', '1');
INSERT INTO `qrhqt_menu` VALUES ('22', 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', '1', '1', '1', '34', '0', '0000-00-00 00:00:00', '0', '0', 'class:associations', '0', '', '39', '40', '0', '*', '1');
INSERT INTO `qrhqt_menu` VALUES ('101', 'mainmenu', 'Главная', 'home', '', 'home', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', '1', '1', '1', '22', '0', '0000-00-00 00:00:00', '0', '1', ' ', '0', '{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"ytmenu_class\":\"\",\"ytext_desc\":\"\",\"ytext_cols\":\"1\",\"ytext_width\":\"\",\"ytext_colwidth\":\"\",\"ytext_cssid\":\"\",\"ytext_contenttype\":\"menu\",\"ytext_positions\":[\"\"]}', '41', '42', '1', '*', '0');
INSERT INTO `qrhqt_menu` VALUES ('102', 'main', 'JoomShopping', 'joomshopping', '', 'joomshopping', 'index.php?option=com_jshopping', 'component', '1', '1', '1', '10012', '0', '0000-00-00 00:00:00', '0', '1', 'components/com_jshopping/images/jshop_logo_s.png', '0', '{}', '43', '60', '0', '', '1');
INSERT INTO `qrhqt_menu` VALUES ('103', 'main', 'categories', 'categories', '', 'joomshopping/categories', 'index.php?option=com_jshopping&controller=categories&catid=0', 'component', '1', '102', '2', '10012', '0', '0000-00-00 00:00:00', '0', '1', 'components/com_jshopping/images/jshop_categories_s.png', '0', '{}', '44', '45', '0', '', '1');
INSERT INTO `qrhqt_menu` VALUES ('104', 'main', 'products', 'products', '', 'joomshopping/products', 'index.php?option=com_jshopping&controller=products&category_id=0', 'component', '1', '102', '2', '10012', '0', '0000-00-00 00:00:00', '0', '1', 'components/com_jshopping/images/jshop_products_s.png', '0', '{}', '46', '47', '0', '', '1');
INSERT INTO `qrhqt_menu` VALUES ('105', 'main', 'orders', 'orders', '', 'joomshopping/orders', 'index.php?option=com_jshopping&controller=orders', 'component', '1', '102', '2', '10012', '0', '0000-00-00 00:00:00', '0', '1', 'components/com_jshopping/images/jshop_orders_s.png', '0', '{}', '48', '49', '0', '', '1');
INSERT INTO `qrhqt_menu` VALUES ('106', 'main', 'clients', 'clients', '', 'joomshopping/clients', 'index.php?option=com_jshopping&controller=users', 'component', '1', '102', '2', '10012', '0', '0000-00-00 00:00:00', '0', '1', 'components/com_jshopping/images/jshop_users_s.png', '0', '{}', '50', '51', '0', '', '1');
INSERT INTO `qrhqt_menu` VALUES ('107', 'main', 'options', 'options', '', 'joomshopping/options', 'index.php?option=com_jshopping&controller=other', 'component', '1', '102', '2', '10012', '0', '0000-00-00 00:00:00', '0', '1', 'components/com_jshopping/images/jshop_options_s.png', '0', '{}', '52', '53', '0', '', '1');
INSERT INTO `qrhqt_menu` VALUES ('108', 'main', 'configuration', 'configuration', '', 'joomshopping/configuration', 'index.php?option=com_jshopping&controller=config', 'component', '1', '102', '2', '10012', '0', '0000-00-00 00:00:00', '0', '1', 'components/com_jshopping/images/jshop_configuration_s.png', '0', '{}', '54', '55', '0', '', '1');
INSERT INTO `qrhqt_menu` VALUES ('109', 'main', 'install-and-update', 'install-and-update', '', 'joomshopping/install-and-update', 'index.php?option=com_jshopping&controller=update', 'component', '1', '102', '2', '10012', '0', '0000-00-00 00:00:00', '0', '1', 'components/com_jshopping/images/jshop_update_s.png', '0', '{}', '56', '57', '0', '', '1');
INSERT INTO `qrhqt_menu` VALUES ('110', 'main', 'about-as', 'about-as', '', 'joomshopping/about-as', 'index.php?option=com_jshopping&controller=info', 'component', '1', '102', '2', '10012', '0', '0000-00-00 00:00:00', '0', '1', 'components/com_jshopping/images/jshop_info_s.png', '0', '{}', '58', '59', '0', '', '1');

-- ----------------------------
-- Table structure for `qrhqt_menu_types`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_menu_types`;
CREATE TABLE `qrhqt_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_menu_types
-- ----------------------------
INSERT INTO `qrhqt_menu_types` VALUES ('1', '0', 'mainmenu', 'Main Menu', 'The main menu for the site', '0');

-- ----------------------------
-- Table structure for `qrhqt_messages`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_messages`;
CREATE TABLE `qrhqt_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_messages
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_messages_cfg`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_messages_cfg`;
CREATE TABLE `qrhqt_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_messages_cfg
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_modules`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_modules`;
CREATE TABLE `qrhqt_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_modules
-- ----------------------------
INSERT INTO `qrhqt_modules` VALUES ('1', '39', 'Main Menu', '', '', '1', 'position-7', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_menu', '1', '1', '{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', '0', '*');
INSERT INTO `qrhqt_modules` VALUES ('2', '40', 'Login', '', '', '1', 'login', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_login', '1', '1', '', '1', '*');
INSERT INTO `qrhqt_modules` VALUES ('3', '41', 'Popular Articles', '', '', '3', 'cpanel', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_popular', '3', '1', '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', '1', '*');
INSERT INTO `qrhqt_modules` VALUES ('4', '42', 'Recently Added Articles', '', '', '4', 'cpanel', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_latest', '3', '1', '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', '1', '*');
INSERT INTO `qrhqt_modules` VALUES ('8', '43', 'Toolbar', '', '', '1', 'toolbar', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_toolbar', '3', '1', '', '1', '*');
INSERT INTO `qrhqt_modules` VALUES ('9', '44', 'Quick Icons', '', '', '1', 'icon', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_quickicon', '3', '1', '', '1', '*');
INSERT INTO `qrhqt_modules` VALUES ('10', '45', 'Logged-in Users', '', '', '2', 'cpanel', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_logged', '3', '1', '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', '1', '*');
INSERT INTO `qrhqt_modules` VALUES ('12', '46', 'Admin Menu', '', '', '1', 'menu', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_menu', '3', '1', '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', '1', '*');
INSERT INTO `qrhqt_modules` VALUES ('13', '47', 'Admin Submenu', '', '', '1', 'submenu', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_submenu', '3', '1', '', '1', '*');
INSERT INTO `qrhqt_modules` VALUES ('14', '48', 'User Status', '', '', '2', 'status', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_status', '3', '1', '', '1', '*');
INSERT INTO `qrhqt_modules` VALUES ('15', '49', 'Title', '', '', '1', 'title', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_title', '3', '1', '', '1', '*');
INSERT INTO `qrhqt_modules` VALUES ('16', '50', 'Login Form', '', '', '7', 'position-7', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_login', '1', '1', '{\"greeting\":\"1\",\"name\":\"0\"}', '0', '*');
INSERT INTO `qrhqt_modules` VALUES ('17', '51', 'Breadcrumbs', '', '', '1', 'position-2', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_breadcrumbs', '1', '1', '{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}', '0', '*');
INSERT INTO `qrhqt_modules` VALUES ('79', '52', 'Multilanguage status', '', '', '1', 'status', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 'mod_multilangstatus', '3', '1', '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', '1', '*');
INSERT INTO `qrhqt_modules` VALUES ('86', '53', 'Joomla Version', '', '', '1', 'footer', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_version', '3', '1', '{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', '1', '*');
INSERT INTO `qrhqt_modules` VALUES ('87', '55', 'Sample Data', '', '', '0', 'cpanel', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_sampledata', '6', '1', '{}', '1', '*');
INSERT INTO `qrhqt_modules` VALUES ('88', '57', 'Srizon Image Slider', '', '', '1', 'main-top', '0', '0000-00-00 00:00:00', '2018-04-29 15:26:52', '0000-00-00 00:00:00', '-2', 'mod_srizonimageslider', '1', '0', '{\"imgsourceopt\":\"0\",\"imgfolder\":\"banners\",\"imgurlset\":\"\",\"totalwidth\":\"800\",\"imagewidth\":\"\",\"thumbwidth\":\"200\",\"totalheight\":\"400\",\"toptoimage\":\"35\",\"toptothumb\":\"350\",\"toptobutton\":\"200\",\"sidetobutton\":\"10\",\"backgroundimage\":\"0\",\"slidespeed\":\"300\",\"autoslide\":\"0\",\"autoslidetimer\":\"5\",\"thumbrotate\":\"true\",\"slidestyle\":\"jswing\",\"bgslidespeed\":\"2\",\"bgslidestyle\":\"jswing\",\"shoverlaytxt\":\"1\",\"shpnbutton\":\"1\",\"shthumb\":\"1\",\"imglink1\":\"\",\"imghtext1\":\"\",\"imgptext1\":\"\",\"txtboxwidth1\":\"300\",\"imgtexttop1\":\"10\",\"imgtextleft1\":\"10\",\"imglink2\":\"\",\"imghtext2\":\"\",\"imgptext2\":\"\",\"txtboxwidth2\":\"300\",\"imgtexttop2\":\"10\",\"imgtextleft2\":\"10\",\"imglink3\":\"\",\"imghtext3\":\"\",\"imgptext3\":\"\",\"txtboxwidth3\":\"300\",\"imgtexttop3\":\"10\",\"imgtextleft3\":\"10\",\"imglink4\":\"\",\"imghtext4\":\"\",\"imgptext4\":\"\",\"txtboxwidth4\":\"300\",\"imgtexttop4\":\"10\",\"imgtextleft4\":\"10\",\"imglink5\":\"\",\"imghtext5\":\"\",\"imgptext5\":\"\",\"txtboxwidth5\":\"300\",\"imgtexttop5\":\"10\",\"imgtextleft5\":\"10\",\"imglink6\":\"\",\"imghtext6\":\"\",\"imgptext6\":\"\",\"txtboxwidth6\":\"300\",\"imgtexttop6\":\"10\",\"imgtextleft6\":\"10\",\"imglink7\":\"\",\"imghtext7\":\"\",\"imgptext7\":\"\",\"txtboxwidth7\":\"300\",\"imgtexttop7\":\"10\",\"imgtextleft7\":\"10\",\"imglink8\":\"\",\"imghtext8\":\"\",\"imgptext8\":\"\",\"txtboxwidth8\":\"300\",\"imgtexttop8\":\"10\",\"imgtextleft8\":\"10\",\"imglink9\":\"\",\"imghtext9\":\"\",\"imgptext9\":\"\",\"txtboxwidth9\":\"300\",\"imgtexttop9\":\"10\",\"imgtextleft9\":\"10\",\"imglink10\":\"\",\"imghtext10\":\"\",\"imgptext10\":\"\",\"txtboxwidth10\":\"300\",\"imgtexttop10\":\"10\",\"imgtextleft10\":\"10\",\"imglink11\":\"\",\"imghtext11\":\"\",\"imgptext11\":\"\",\"txtboxwidth11\":\"300\",\"imgtexttop11\":\"10\",\"imgtextleft11\":\"10\",\"imglink12\":\"\",\"imghtext12\":\"\",\"imgptext12\":\"\",\"txtboxwidth12\":\"300\",\"imgtexttop12\":\"10\",\"imgtextleft12\":\"10\",\"imglink13\":\"\",\"imghtext13\":\"\",\"imgptext13\":\"\",\"txtboxwidth13\":\"300\",\"imgtexttop13\":\"10\",\"imgtextleft13\":\"10\",\"imglink14\":\"\",\"imghtext14\":\"\",\"imgptext14\":\"\",\"txtboxwidth14\":\"300\",\"imgtexttop14\":\"10\",\"imgtextleft14\":\"10\",\"imglink15\":\"\",\"imghtext15\":\"\",\"imgptext15\":\"\",\"txtboxwidth15\":\"300\",\"imgtexttop15\":\"10\",\"imgtextleft15\":\"10\",\"imglink16\":\"\",\"imghtext16\":\"\",\"imgptext16\":\"\",\"txtboxwidth16\":\"300\",\"imgtexttop16\":\"10\",\"imgtextleft16\":\"10\",\"imglink17\":\"\",\"imghtext17\":\"\",\"imgptext17\":\"\",\"txtboxwidth17\":\"300\",\"imgtexttop17\":\"10\",\"imgtextleft17\":\"10\",\"imglink18\":\"\",\"imghtext18\":\"\",\"imgptext18\":\"\",\"txtboxwidth18\":\"300\",\"imgtexttop18\":\"10\",\"imgtextleft18\":\"10\",\"imglink19\":\"\",\"imghtext19\":\"\",\"imgptext19\":\"\",\"txtboxwidth19\":\"300\",\"imgtexttop19\":\"10\",\"imgtextleft19\":\"10\",\"imglink20\":\"\",\"imghtext20\":\"\",\"imgptext20\":\"\",\"txtboxwidth20\":\"300\",\"imgtexttop20\":\"10\",\"imgtextleft20\":\"10\",\"csstxtcontainer\":\"background: rgba(200, 200, 200, .4);\\r\\npadding: 5px;\\r\\ncolor: black;\\r\\n-moz-border-radius:4px;\\r\\n-webkit-border-radius:4px;\\r\\nborder-radius:4px;\",\"csstxth\":\"color: #CCC;\\r\\ntext-shadow:2px 2px 2px black;\\r\\nfilter: Shadow(Color=black, Direction=130, Strength=2);\",\"csstxtp\":\"color: #EEE;\\r\\ntext-shadow:1px 1px 1px black;\\r\\nfilter: Shadow(Color=black, Direction=130, Strength=1);\",\"cssextra\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', '0', '*');
INSERT INTO `qrhqt_modules` VALUES ('89', '58', 'SJ Extra Slider for Content', '', '', '1', 'breadcrumb', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 'mod_sj_extraslider', '1', '0', '{\"item_link_target\":\"_self\",\"button_page\":\"top\",\"theme\":\"style4\",\"nb-column1\":\"3\",\"nb-column2\":\"3\",\"nb-column3\":\"2\",\"nb-column4\":\"1\",\"items_page\":\"6\",\"catid\":[\"2\"],\"show_child_category_articles\":\"1\",\"levels\":\"1\",\"show_front\":\"show\",\"article_ordering\":\"a.title\",\"article_ordering_direction\":\"ASC\",\"count\":\"10\",\"title_slider_display\":\"1\",\"title_slider\":\"Latest News\",\"item_title_display\":\"1\",\"item_title_max_characs\":\"20\",\"show_introtext\":\"1\",\"introtext_limit\":\"100\",\"item_tag_display\":\"1\",\"item_readmore_display\":\"1\",\"item_readmore_text\":\"Readmore\",\"imgcfg_from_image_intro\":\"1\",\"imgcfg_from_image_fulltext\":\"1\",\"imgcfg_from_inline_introtext\":\"1\",\"imgcfg_from_inline_fulltext\":\"1\",\"imgcfg_from_external\":\"1\",\"imgcfg_external_url\":\"\\/images\",\"imgcfg_order\":\"image_intro\",\"imgcfg_function\":\"none\",\"imgcfg_type\":\"\",\"imgcfg_transparency\":\"1\",\"imgcfg_width\":\"\",\"imgcfg_height\":\"\",\"imgcfg_background\":\"\",\"imgcfg_cache\":\"\",\"imgcfg_cache_url\":\"\",\"imgcfg_placeholder\":\"1\",\"imgcfg_placeholder_path\":\"modules\\/mod_sj_extraslider\\/assets\\/images\\/nophoto.jpg\",\"play\":\"0\",\"pause_hover\":\"hover\",\"duration\":\"800\",\"swipe_enable\":\"1\",\"effect\":\"slide\",\"include_jquery\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"pretext\":\"\",\"posttext\":\"\",\"owncache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', '0', '*');
INSERT INTO `qrhqt_modules` VALUES ('90', '59', 'SJ Extra Slider for VirtueMart', '', '', '0', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 'mod_sj_vm_extra_slider', '1', '1', '', '0', '*');
INSERT INTO `qrhqt_modules` VALUES ('91', '62', 'слайдер', '', '', '1', 'main-top', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 'mod_srizonimageslider', '1', '0', '{\"imgsourceopt\":\"0\",\"imgfolder\":\"banners\",\"imgurlset\":\"\",\"totalwidth\":\"600\",\"imagewidth\":\"\",\"thumbwidth\":\"200\",\"totalheight\":\"400\",\"toptoimage\":\"35\",\"toptothumb\":\"350\",\"toptobutton\":\"200\",\"sidetobutton\":\"10\",\"backgroundimage\":\"0\",\"slidespeed\":\"300\",\"autoslide\":\"0\",\"autoslidetimer\":\"5\",\"thumbrotate\":\"true\",\"slidestyle\":\"jswing\",\"bgslidespeed\":\"2\",\"bgslidestyle\":\"jswing\",\"shoverlaytxt\":\"1\",\"shpnbutton\":\"1\",\"shthumb\":\"1\",\"imglink1\":\"D:\\\\open5.27\\\\OSPanel\\\\domains\\\\localhost\\\\magdet\\\\templates\\\\sj_shoppystore\\\\kart\\\\slaid.jpeg\",\"imghtext1\":\"\",\"imgptext1\":\"\",\"txtboxwidth1\":\"300\",\"imgtexttop1\":\"10\",\"imgtextleft1\":\"10\",\"imglink2\":\"\",\"imghtext2\":\"\",\"imgptext2\":\"\",\"txtboxwidth2\":\"300\",\"imgtexttop2\":\"10\",\"imgtextleft2\":\"10\",\"imglink3\":\"\",\"imghtext3\":\"\",\"imgptext3\":\"\",\"txtboxwidth3\":\"300\",\"imgtexttop3\":\"10\",\"imgtextleft3\":\"10\",\"imglink4\":\"\",\"imghtext4\":\"\",\"imgptext4\":\"\",\"txtboxwidth4\":\"300\",\"imgtexttop4\":\"10\",\"imgtextleft4\":\"10\",\"imglink5\":\"\",\"imghtext5\":\"\",\"imgptext5\":\"\",\"txtboxwidth5\":\"300\",\"imgtexttop5\":\"10\",\"imgtextleft5\":\"10\",\"imglink6\":\"\",\"imghtext6\":\"\",\"imgptext6\":\"\",\"txtboxwidth6\":\"300\",\"imgtexttop6\":\"10\",\"imgtextleft6\":\"10\",\"imglink7\":\"\",\"imghtext7\":\"\",\"imgptext7\":\"\",\"txtboxwidth7\":\"300\",\"imgtexttop7\":\"10\",\"imgtextleft7\":\"10\",\"imglink8\":\"\",\"imghtext8\":\"\",\"imgptext8\":\"\",\"txtboxwidth8\":\"300\",\"imgtexttop8\":\"10\",\"imgtextleft8\":\"10\",\"imglink9\":\"\",\"imghtext9\":\"\",\"imgptext9\":\"\",\"txtboxwidth9\":\"300\",\"imgtexttop9\":\"10\",\"imgtextleft9\":\"10\",\"imglink10\":\"\",\"imghtext10\":\"\",\"imgptext10\":\"\",\"txtboxwidth10\":\"300\",\"imgtexttop10\":\"10\",\"imgtextleft10\":\"10\",\"imglink11\":\"\",\"imghtext11\":\"\",\"imgptext11\":\"\",\"txtboxwidth11\":\"300\",\"imgtexttop11\":\"10\",\"imgtextleft11\":\"10\",\"imglink12\":\"\",\"imghtext12\":\"\",\"imgptext12\":\"\",\"txtboxwidth12\":\"300\",\"imgtexttop12\":\"10\",\"imgtextleft12\":\"10\",\"imglink13\":\"\",\"imghtext13\":\"\",\"imgptext13\":\"\",\"txtboxwidth13\":\"300\",\"imgtexttop13\":\"10\",\"imgtextleft13\":\"10\",\"imglink14\":\"\",\"imghtext14\":\"\",\"imgptext14\":\"\",\"txtboxwidth14\":\"300\",\"imgtexttop14\":\"10\",\"imgtextleft14\":\"10\",\"imglink15\":\"\",\"imghtext15\":\"\",\"imgptext15\":\"\",\"txtboxwidth15\":\"300\",\"imgtexttop15\":\"10\",\"imgtextleft15\":\"10\",\"imglink16\":\"\",\"imghtext16\":\"\",\"imgptext16\":\"\",\"txtboxwidth16\":\"300\",\"imgtexttop16\":\"10\",\"imgtextleft16\":\"10\",\"imglink17\":\"\",\"imghtext17\":\"\",\"imgptext17\":\"\",\"txtboxwidth17\":\"300\",\"imgtexttop17\":\"10\",\"imgtextleft17\":\"10\",\"imglink18\":\"\",\"imghtext18\":\"\",\"imgptext18\":\"\",\"txtboxwidth18\":\"300\",\"imgtexttop18\":\"10\",\"imgtextleft18\":\"10\",\"imglink19\":\"\",\"imghtext19\":\"\",\"imgptext19\":\"\",\"txtboxwidth19\":\"300\",\"imgtexttop19\":\"10\",\"imgtextleft19\":\"10\",\"imglink20\":\"\",\"imghtext20\":\"\",\"imgptext20\":\"\",\"txtboxwidth20\":\"300\",\"imgtexttop20\":\"10\",\"imgtextleft20\":\"10\",\"csstxtcontainer\":\"background: rgba(200, 200, 200, .4);\\r\\npadding: 5px;\\r\\ncolor: black;\\r\\n-moz-border-radius:4px;\\r\\n-webkit-border-radius:4px;\\r\\nborder-radius:4px;\",\"csstxth\":\"color: #CCC;\\r\\ntext-shadow:2px 2px 2px black;\\r\\nfilter: Shadow(Color=black, Direction=130, Strength=2);\",\"csstxtp\":\"color: #EEE;\\r\\ntext-shadow:1px 1px 1px black;\\r\\nfilter: Shadow(Color=black, Direction=130, Strength=1);\",\"cssextra\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', '0', '*');
INSERT INTO `qrhqt_modules` VALUES ('92', '63', 'Slideshow CK', '', '', '0', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 'mod_slideshowck', '1', '1', '', '0', '*');
INSERT INTO `qrhqt_modules` VALUES ('93', '64', 'слайдер2', '', '', '1', 'main-top', '562', '2018-04-29 17:32:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_slideshowck', '1', '0', '{\"slidesssource\":\"slidesmanager\",\"slides\":\"[{|qq|imgname|qq|:|qq|images\\/banners\\/toys-2938508_1280.jpg|qq|,|qq|imgcaption|qq|:|qq|This bridge is very long|qq|,|qq|imgtitle|qq|:|qq|This is a bridge|qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/localhost\\/magdet\\/images\\/banners\\/toys-2938508_1280.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|,|qq|state|qq|:|qq|1|qq|,|qq|startdate|qq|:|qq||qq|,|qq|enddate|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|images\\/banners\\/dolls-houses-1576105_1280.jpg|qq|,|qq|imgcaption|qq|:|qq|This slideshow uses a JQuery script adapted from <a href=|dq|http:\\/\\/www.pixedelic.com\\/plugins\\/camera\\/|dq|>Pixedelic<\\/a>|qq|,|qq|imgtitle|qq|:|qq|On the road again|qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/localhost\\/magdet\\/images\\/banners\\/dolls-houses-1576105_1280.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|,|qq|state|qq|:|qq|1|qq|,|qq|startdate|qq|:|qq||qq|,|qq|enddate|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|images\\/banners\\/christmas-1075121_1280.jpg|qq|,|qq|imgcaption|qq|:|qq||qq|,|qq|imgtitle|qq|:|qq||qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/localhost\\/magdet\\/images\\/banners\\/christmas-1075121_1280.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|,|qq|state|qq|:|qq|1|qq|,|qq|startdate|qq|:|qq||qq|,|qq|enddate|qq|:|qq||qq|}]\",\"theme\":\"default\",\"skin\":\"camera_amber_skin\",\"alignment\":\"center\",\"loader\":\"pie\",\"width\":\"auto\",\"height\":\"32%\",\"minheight\":\"150\",\"navigation\":\"2\",\"thumbnails\":\"1\",\"thumbnailwidth\":\"100\",\"thumbnailheight\":\"75\",\"pagination\":\"1\",\"effect\":[\"random\"],\"time\":\"7000\",\"transperiod\":\"1500\",\"captioneffect\":\"moveFromLeft\",\"portrait\":\"0\",\"autoAdvance\":\"1\",\"hover\":\"1\",\"displayorder\":\"normal\",\"limitslides\":\"\",\"fullpage\":\"0\",\"imagetarget\":\"_parent\",\"linkposition\":\"fullslide\",\"container\":\"\",\"keyboardnavigation\":\"0\",\"usemobileimage\":\"0\",\"mobileimageresolution\":\"640\",\"loadjquery\":\"1\",\"loadjqueryeasing\":\"1\",\"autocreatethumbs\":\"1\",\"fixhtml\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"articlelength\":\"150\",\"articlelink\":\"readmore\",\"articletitle\":\"h3\",\"showarticletitle\":\"1\",\"usecaption\":\"1\",\"usecaptiondesc\":\"1\",\"usecaptionresponsive\":\"1\",\"captionresponsiveresolution\":\"480\",\"captionresponsivefontsize\":\"0.6em\",\"captionresponsivehidecaption\":\"0\",\"captionstylesusefont\":\"1\",\"captionstylestextgfont\":\"Droid Sans\",\"captionstylesfontsize\":\"1.1em\",\"captionstylesfontcolor\":\"\",\"captionstylesfontweight\":\"normal\",\"captionstylesdescfontsize\":\"0.8em\",\"captionstylesdescfontcolor\":\"\",\"captionstylesusemargin\":\"1\",\"captionstylesmargintop\":\"0\",\"captionstylesmarginright\":\"0\",\"captionstylesmarginbottom\":\"0\",\"captionstylesmarginleft\":\"0\",\"captionstylespaddingtop\":\"0\",\"captionstylespaddingright\":\"0\",\"captionstylespaddingbottom\":\"0\",\"captionstylespaddingleft\":\"0\",\"captionstylesusebackground\":\"1\",\"captionstylesbgcolor1\":\"\",\"captionstylesbgopacity\":\"0.6\",\"captionstylesbgimage\":\"\",\"captionstylesbgpositionx\":\"left\",\"captionstylesbgpositiony\":\"top\",\"captionstylesbgimagerepeat\":\"repeat\",\"captionstylesusegradient\":\"1\",\"captionstylesbgcolor2\":\"\",\"captionstylesuseroundedcorners\":\"1\",\"captionstylesroundedcornerstl\":\"5\",\"captionstylesroundedcornerstr\":\"5\",\"captionstylesroundedcornersbr\":\"5\",\"captionstylesroundedcornersbl\":\"5\",\"captionstylesuseshadow\":\"1\",\"captionstylesshadowcolor\":\"\",\"captionstylesshadowblur\":\"3\",\"captionstylesshadowspread\":\"0\",\"captionstylesshadowoffsetx\":\"0\",\"captionstylesshadowoffsety\":\"0\",\"captionstylesshadowinset\":\"0\",\"captionstylesuseborders\":\"1\",\"captionstylesbordercolor\":\"\",\"captionstylesborderwidth\":\"1\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', '0', '*');
INSERT INTO `qrhqt_modules` VALUES ('94', '66', 'Jshopping Cart', '', '', '0', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 'mod_jshopping_cart', '1', '1', '', '0', '*');
INSERT INTO `qrhqt_modules` VALUES ('95', '67', 'Jshopping Cart Ext.', '', '', '1', 'cart', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_jshopping_cart_ext', '1', '0', '{\"show_count\":\"1\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', '0', '*');
INSERT INTO `qrhqt_modules` VALUES ('96', '68', 'Категории', '', '', '1', 'left', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_jshopping_categories', '1', '1', '{\"show_image\":\"0\",\"sort\":\"id\",\"ordering\":\"asc\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', '0', '*');

-- ----------------------------
-- Table structure for `qrhqt_modules_menu`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_modules_menu`;
CREATE TABLE `qrhqt_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_modules_menu
-- ----------------------------
INSERT INTO `qrhqt_modules_menu` VALUES ('1', '0');
INSERT INTO `qrhqt_modules_menu` VALUES ('2', '0');
INSERT INTO `qrhqt_modules_menu` VALUES ('3', '0');
INSERT INTO `qrhqt_modules_menu` VALUES ('4', '0');
INSERT INTO `qrhqt_modules_menu` VALUES ('6', '0');
INSERT INTO `qrhqt_modules_menu` VALUES ('7', '0');
INSERT INTO `qrhqt_modules_menu` VALUES ('8', '0');
INSERT INTO `qrhqt_modules_menu` VALUES ('9', '0');
INSERT INTO `qrhqt_modules_menu` VALUES ('10', '0');
INSERT INTO `qrhqt_modules_menu` VALUES ('12', '0');
INSERT INTO `qrhqt_modules_menu` VALUES ('13', '0');
INSERT INTO `qrhqt_modules_menu` VALUES ('14', '0');
INSERT INTO `qrhqt_modules_menu` VALUES ('15', '0');
INSERT INTO `qrhqt_modules_menu` VALUES ('16', '0');
INSERT INTO `qrhqt_modules_menu` VALUES ('17', '0');
INSERT INTO `qrhqt_modules_menu` VALUES ('79', '0');
INSERT INTO `qrhqt_modules_menu` VALUES ('86', '0');
INSERT INTO `qrhqt_modules_menu` VALUES ('87', '0');
INSERT INTO `qrhqt_modules_menu` VALUES ('88', '0');
INSERT INTO `qrhqt_modules_menu` VALUES ('89', '0');
INSERT INTO `qrhqt_modules_menu` VALUES ('91', '0');
INSERT INTO `qrhqt_modules_menu` VALUES ('93', '0');
INSERT INTO `qrhqt_modules_menu` VALUES ('95', '0');
INSERT INTO `qrhqt_modules_menu` VALUES ('96', '0');

-- ----------------------------
-- Table structure for `qrhqt_newsfeeds`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_newsfeeds`;
CREATE TABLE `qrhqt_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_newsfeeds
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_overrider`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_overrider`;
CREATE TABLE `qrhqt_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_overrider
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_postinstall_messages`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_postinstall_messages`;
CREATE TABLE `qrhqt_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_postinstall_messages
-- ----------------------------
INSERT INTO `qrhqt_postinstall_messages` VALUES ('1', '700', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', '1', 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', '1');
INSERT INTO `qrhqt_postinstall_messages` VALUES ('2', '700', 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', '1', 'message', '', '', '', '', '3.2.0', '1');
INSERT INTO `qrhqt_postinstall_messages` VALUES ('3', '700', 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', '1', 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', '1');
INSERT INTO `qrhqt_postinstall_messages` VALUES ('4', '700', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', '1', 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', '1');
INSERT INTO `qrhqt_postinstall_messages` VALUES ('5', '700', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', '1', 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', '1');
INSERT INTO `qrhqt_postinstall_messages` VALUES ('6', '700', 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', '1', 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', '1');
INSERT INTO `qrhqt_postinstall_messages` VALUES ('7', '700', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_TITLE', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_BODY', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_ACTION', 'plg_captcha_recaptcha', '1', 'action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_condition', '3.8.6', '1');

-- ----------------------------
-- Table structure for `qrhqt_redirect_links`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_redirect_links`;
CREATE TABLE `qrhqt_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  KEY `idx_old_url` (`old_url`(100)),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_redirect_links
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_schemas`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_schemas`;
CREATE TABLE `qrhqt_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_schemas
-- ----------------------------
INSERT INTO `qrhqt_schemas` VALUES ('700', '3.8.6-2018-02-14');

-- ----------------------------
-- Table structure for `qrhqt_session`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_session`;
CREATE TABLE `qrhqt_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned DEFAULT NULL,
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_session
-- ----------------------------
INSERT INTO `qrhqt_session` VALUES ('5nakc6njl5oii22hu0fmd7u876', '0', '1', '1525439002', 'joomla|s:1280:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjoxMDp7czo3OiJzZXNzaW9uIjtPOjg6InN0ZENsYXNzIjozOntzOjc6ImNvdW50ZXIiO2k6MjtzOjU6InRva2VuIjtzOjMyOiJBQkNqRnNHa3c1dU53SnJKcnNOMzBEYVpDdHFCR1h3OCI7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNTI1NDM5MDAwO3M6NDoibGFzdCI7aToxNTI1NDM5MDAwO3M6Mzoibm93IjtpOjE1MjU0MzkwMDA7fX1zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9czoxOToianNfaWRfY3VycmVuY3lfb3JpZyI7czoxOiIyIjtzOjE0OiJqc19pZF9jdXJyZW5jeSI7czoxOiIyIjtzOjE5OiJqc19oaXN0b3J5X3NlbF9sYW5nIjtzOjU6InJ1LVJVIjtzOjE1OiJqc19wcmV2X3VzZXJfaWQiO2k6MDtzOjIyOiJqc2hvcF9jaGVja2VkX2xhbmd1YWdlIjthOjI6e2k6MDtzOjU6ImVuLUdCIjtpOjE7czo1OiJydS1SVSI7fXM6MjY6ImpzaG9wX2VuZF9wYWdlX2J1eV9wcm9kdWN0IjtzOjYyOiIvbWFnZGV0L2luZGV4LnBocC9jb21wb25lbnQvanNob3BwaW5nL2NhdGVnb3J5L3ZpZXcvMT9JdGVtaWQ9MCI7czoyNzoianNob3BfZW5kX3BhZ2VfbGlzdF9wcm9kdWN0IjtzOjYyOiIvbWFnZGV0L2luZGV4LnBocC9jb21wb25lbnQvanNob3BwaW5nL2NhdGVnb3J5L3ZpZXcvMT9JdGVtaWQ9MCI7fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', '0', '');
INSERT INTO `qrhqt_session` VALUES ('a7ir1vv8s04mga5qg0unsed7a2', '0', '1', '1525438502', 'joomla|s:1280:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjoxMDp7czo3OiJzZXNzaW9uIjtPOjg6InN0ZENsYXNzIjozOntzOjc6ImNvdW50ZXIiO2k6MTtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1MjU0Mzg0OTY7czo0OiJsYXN0IjtpOjE1MjU0Mzg0OTY7czozOiJub3ciO2k6MTUyNTQzODQ5Njt9czo1OiJ0b2tlbiI7czozMjoiNXE1ZlJvTlZ0aFpJMlJnWFcxMGk5RUdkNnBwNWNldXgiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9czoxOToianNfaWRfY3VycmVuY3lfb3JpZyI7czoxOiIyIjtzOjE0OiJqc19pZF9jdXJyZW5jeSI7czoxOiIyIjtzOjE5OiJqc19oaXN0b3J5X3NlbF9sYW5nIjtzOjU6InJ1LVJVIjtzOjE1OiJqc19wcmV2X3VzZXJfaWQiO2k6MDtzOjIyOiJqc2hvcF9jaGVja2VkX2xhbmd1YWdlIjthOjI6e2k6MDtzOjU6ImVuLUdCIjtpOjE7czo1OiJydS1SVSI7fXM6MjY6ImpzaG9wX2VuZF9wYWdlX2J1eV9wcm9kdWN0IjtzOjYyOiIvbWFnZGV0L2luZGV4LnBocC9jb21wb25lbnQvanNob3BwaW5nL2NhdGVnb3J5L3ZpZXcvMT9JdGVtaWQ9MCI7czoyNzoianNob3BfZW5kX3BhZ2VfbGlzdF9wcm9kdWN0IjtzOjYyOiIvbWFnZGV0L2luZGV4LnBocC9jb21wb25lbnQvanNob3BwaW5nL2NhdGVnb3J5L3ZpZXcvMT9JdGVtaWQ9MCI7fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', '0', '');
INSERT INTO `qrhqt_session` VALUES ('oor0evrar38unjvj17itl6nh70', '0', '1', '1525438962', 'joomla|s:1324:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjoxMTp7czo3OiJzZXNzaW9uIjtPOjg6InN0ZENsYXNzIjozOntzOjc6ImNvdW50ZXIiO2k6MTA7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNTI1NDM4MTM2O3M6NDoibGFzdCI7aToxNTI1NDM4ODY3O3M6Mzoibm93IjtpOjE1MjU0Mzg5NTc7fXM6NToidG9rZW4iO3M6MzI6InpVbENDeUxjM3J0d1Z3a3JFWWNNTXdZYWFpMml5dEdpIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fXM6MTk6ImpzX2lkX2N1cnJlbmN5X29yaWciO3M6MToiMiI7czoxNDoianNfaWRfY3VycmVuY3kiO3M6MToiMiI7czoxOToianNfaGlzdG9yeV9zZWxfbGFuZyI7czo1OiJydS1SVSI7czoxNToianNfcHJldl91c2VyX2lkIjtpOjA7czoyMjoianNob3BfY2hlY2tlZF9sYW5ndWFnZSI7YToyOntpOjA7czo1OiJlbi1HQiI7aToxO3M6NToicnUtUlUiO31zOjI2OiJqc2hvcF9lbmRfcGFnZV9idXlfcHJvZHVjdCI7czo2MjoiL21hZ2RldC9pbmRleC5waHAvY29tcG9uZW50L2pzaG9wcGluZy9jYXRlZ29yeS92aWV3LzE/SXRlbWlkPTAiO3M6Mjc6ImpzaG9wX2VuZF9wYWdlX2xpc3RfcHJvZHVjdCI7czo2MjoiL21hZ2RldC9pbmRleC5waHAvY29tcG9uZW50L2pzaG9wcGluZy9jYXRlZ29yeS92aWV3LzE/SXRlbWlkPTAiO3M6MTg6InByb2R1Y3RfYmFja192YWx1ZSI7YTowOnt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', '0', '');

-- ----------------------------
-- Table structure for `qrhqt_tags`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_tags`;
CREATE TABLE `qrhqt_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_tags
-- ----------------------------
INSERT INTO `qrhqt_tags` VALUES ('1', '0', '0', '1', '0', '', 'ROOT', 'root', '', '', '1', '0', '0000-00-00 00:00:00', '1', '', '', '', '', '562', '2018-04-27 09:26:31', '', '0', '0000-00-00 00:00:00', '', '', '0', '*', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `qrhqt_template_styles`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_template_styles`;
CREATE TABLE `qrhqt_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_template_styles
-- ----------------------------
INSERT INTO `qrhqt_template_styles` VALUES ('4', 'beez3', '0', '0', 'Beez3 - Default', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}');
INSERT INTO `qrhqt_template_styles` VALUES ('5', 'hathor', '1', '0', 'Hathor - Default', '{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}');
INSERT INTO `qrhqt_template_styles` VALUES ('7', 'protostar', '0', '0', 'protostar - Default', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}');
INSERT INTO `qrhqt_template_styles` VALUES ('8', 'isis', '1', '1', 'isis - Default', '{\"templateColor\":\"\",\"logoFile\":\"\"}');
INSERT INTO `qrhqt_template_styles` VALUES ('9', 'sj_shoppystore', '0', '1', 'sj_shoppystore - По умолчанию', '{\"hideComponentHomePage\":0,\"favicon\":\"images\\/favicon.ico\",\"logoType\":\"text\",\"overrideLogoImage\":\"\",\"logoText\":\"\\u041c\\u0430\\u043b\\u044b\\u0448\",\"sloganText\":\"\\u0412\\u0441\\u0451 \\u043b\\u0443\\u0447\\u0448\\u0435\\u0435 \\u0434\\u0435\\u0442\\u044f\\u043c\",\"logoWidth\":\"140\",\"logoHeight\":\"57\",\"copyright\":\"1\",\"ytcopyright\":\"\\u041d\\u0430\\u0448 \\u0430\\u0434\\u0440\\u0435\\u0441 \\u0433.\\u0412\\u0438\\u0442\\u0435\\u0431\\u0441\\u043a\",\"joomla_create\":\"1\",\"layouttype\":\"res\",\"layoutFixed\":\"980\",\"layoutFloat\":\"90\",\"layoutRes\":\"1200\",\"typelayout\":\"wide\",\"bgbox\":\"pattern8\",\"bgframed\":\"pattern8\",\"bgrounded\":\"pattern8\",\"templateLayout\":\"layout1\",\"overrideLayouts\":\"786:variations\",\"themecolor\":\"red\",\"menutype\":\"mainmenu\",\"menustyle\":\"mega\",\"moofx\":\"easeInOutCirc\",\"moofxtimeout\":\"150\",\"keepMenu\":1,\"fancyMenu\":0,\"bodyFont\":\"0\",\"bodySelectors\":\"body\",\"menuFont\":\"0\",\"menuSelectors\":\"#menu a\",\"headingFont\":\"0\",\"headingSelectors\":\"h1,h2,h3\",\"otherFont\":\"0\",\"otherSelectors\":\"\",\"leading_width\":\"540\",\"leading_height\":\"290\",\"intro_width\":\"540\",\"intro_height\":\"290\",\"thumbnail_background\":\"#000000\",\"thumbnail_mode\":\"fill\",\"showCpanel\":0,\"showBacktotop\":1,\"animateScroll\":0,\"disableMootool\":1,\"stickyPanel\":\"right\",\"stickyBar\":\"no\",\"developing\":0,\"optimizeMergeFile\":0,\"optimizeCSS\":0,\"optimizeCSSExclude\":\"\",\"optimizeJS\":0,\"optimizeJSExclude\":\"\",\"optimizeFolder\":\"yt-assets\",\"setGeneratorTag\":\"SmartAddons.Com - the high quality products!\",\"enableGoogleAnalytics\":0,\"googleAnalyticsTrackingID\":\"\",\"headAfter\":\"\",\"headBefore\":\"\",\"bodyAfter\":\"\",\"bodyBefore\":\"\"}');

-- ----------------------------
-- Table structure for `qrhqt_ucm_base`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_ucm_base`;
CREATE TABLE `qrhqt_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_ucm_base
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_ucm_content`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_ucm_content`;
CREATE TABLE `qrhqt_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`(100)),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- ----------------------------
-- Records of qrhqt_ucm_content
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_ucm_history`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_ucm_history`;
CREATE TABLE `qrhqt_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_ucm_history
-- ----------------------------
INSERT INTO `qrhqt_ucm_history` VALUES ('1', '1', '9', '', '2018-04-27 12:08:40', '562', '754', 'd5fe50c52c81b7925bd90ecd651a650378b1ad70', '{\"id\":\"1\",\"cid\":\"0\",\"type\":\"0\",\"name\":\"\\u0431\\u0430\\u043d\\u0435\\u04401\",\"alias\":\"baner1\",\"imptotal\":0,\"impmade\":\"0\",\"clicks\":\"0\",\"clickurl\":false,\"state\":\"1\",\"catid\":\"3\",\"description\":\"\",\"custombannercode\":\"\",\"sticky\":\"0\",\"ordering\":1,\"metakey\":\"\",\"params\":\"{\\\"imageurl\\\":\\\"images\\\\\\/banners\\\\\\/blog-one.jpg\\\",\\\"width\\\":\\\"\\\",\\\"height\\\":\\\"\\\",\\\"alt\\\":\\\"\\\"}\",\"own_prefix\":\"0\",\"metakey_prefix\":\"\",\"purchase_type\":\"-1\",\"track_clicks\":\"0\",\"track_impressions\":\"0\",\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"reset\":\"2018-05-27 00:00:00\",\"created\":\"2018-04-27 12:08:40\",\"language\":\"*\",\"created_by\":\"562\",\"created_by_alias\":\"\",\"modified\":\"0000-00-00 00:00:00\",\"modified_by\":null,\"version\":1}', '0');
INSERT INTO `qrhqt_ucm_history` VALUES ('2', '1', '9', '', '2018-04-27 12:09:39', '562', '766', 'f68926e4b3c9b6e7da5f02aa56497fa0d2c2f53b', '{\"id\":\"1\",\"cid\":\"0\",\"type\":\"0\",\"name\":\"\\u0431\\u0430\\u043d\\u0435\\u04401\",\"alias\":\"baner1\",\"imptotal\":0,\"impmade\":\"0\",\"clicks\":\"0\",\"clickurl\":\"\",\"state\":\"1\",\"catid\":\"3\",\"description\":\"\",\"custombannercode\":\"\",\"sticky\":1,\"ordering\":\"1\",\"metakey\":\"\",\"params\":\"{\\\"imageurl\\\":\\\"images\\\\\\/banners\\\\\\/blog-one.jpg\\\",\\\"width\\\":\\\"\\\",\\\"height\\\":\\\"\\\",\\\"alt\\\":\\\"\\\"}\",\"own_prefix\":\"0\",\"metakey_prefix\":\"\",\"purchase_type\":\"-1\",\"track_clicks\":\"0\",\"track_impressions\":\"0\",\"checked_out\":0,\"checked_out_time\":\"0000-00-00 00:00:00\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"reset\":\"2018-05-27 00:00:00\",\"created\":\"2018-04-27 12:08:40\",\"language\":\"*\",\"created_by\":\"562\",\"created_by_alias\":\"\",\"modified\":\"0000-00-00 00:00:00\",\"modified_by\":\"0\",\"version\":\"1\"}', '0');
INSERT INTO `qrhqt_ucm_history` VALUES ('3', '1', '9', '', '2018-04-29 16:16:57', '562', '782', '48bb6e72fa13a481807f0a5f89e4287beccd3ada', '{\"id\":1,\"cid\":\"0\",\"type\":\"0\",\"name\":\"\\u0431\\u0430\\u043d\\u0435\\u04401\",\"alias\":\"baner1\",\"imptotal\":0,\"impmade\":\"0\",\"clicks\":\"0\",\"clickurl\":false,\"state\":\"1\",\"catid\":\"3\",\"description\":\"\",\"custombannercode\":\"\",\"sticky\":\"1\",\"ordering\":\"1\",\"metakey\":\"\",\"params\":\"{\\\"imageurl\\\":\\\"images\\\\\\/banners\\\\\\/toys-2938508_1280.jpg\\\",\\\"width\\\":\\\"\\\",\\\"height\\\":\\\"\\\",\\\"alt\\\":\\\"\\\"}\",\"own_prefix\":\"0\",\"metakey_prefix\":\"\",\"purchase_type\":\"-1\",\"track_clicks\":\"0\",\"track_impressions\":\"0\",\"checked_out\":\"562\",\"checked_out_time\":\"2018-04-29 16:14:28\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"reset\":\"2018-05-27 00:00:00\",\"created\":\"2018-04-27 12:08:40\",\"language\":\"*\",\"created_by\":\"562\",\"created_by_alias\":\"\",\"modified\":\"2018-04-29 16:16:57\",\"modified_by\":\"562\",\"version\":2}', '0');
INSERT INTO `qrhqt_ucm_history` VALUES ('4', '8', '5', '', '2018-05-02 07:44:42', '562', '589', '2ef10000e6d5357983ab5bb9ec6d0ab86445faec', '{\"id\":\"8\",\"asset_id\":69,\"parent_id\":\"1\",\"lft\":\"11\",\"rgt\":12,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"\\u0433\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f\",\"alias\":\"glavnaya\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"562\",\"created_time\":\"2018-05-02 07:44:42\",\"modified_user_id\":null,\"modified_time\":\"2018-05-02 07:44:42\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}', '0');
INSERT INTO `qrhqt_ucm_history` VALUES ('5', '1', '1', '', '2018-05-02 07:47:35', '562', '5279', '59c884acf56bcc8159b096c16c222007d3d66e22', '{\"id\":\"1\",\"asset_id\":70,\"title\":\"\\u0433\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f\",\"alias\":\"glavnaya\",\"introtext\":\"<p>\\u0421\\u0435\\u0433\\u043e\\u0434\\u043d\\u044f \\u0432 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0430\\u0445 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u043b\\u0435\\u043d \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0439 \\u0430\\u0441\\u0441\\u043e\\u0440\\u0442\\u0438\\u043c\\u0435\\u043d\\u0442 \\u0438\\u0433\\u0440\\u0443\\u0448\\u0435\\u043a, \\u0431\\u043b\\u0430\\u0433\\u043e\\u0434\\u0430\\u0440\\u044f \\u0447\\u0435\\u043c\\u0443 \\u043a\\u0430\\u0436\\u0434\\u044b\\u0439 \\u0440\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c \\u043c\\u043e\\u0436\\u0435\\u0442 \\u043f\\u043e\\u0434\\u043e\\u0431\\u0440\\u0430\\u0442\\u044c \\u0442\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0438\\u0438 \\u0441 \\u0432\\u043e\\u0437\\u0440\\u0430\\u0441\\u0442\\u043e\\u043c, \\u043f\\u043e\\u043b\\u043e\\u043c \\u0438 \\u0440\\u0430\\u0437\\u0432\\u0438\\u0442\\u0438\\u0435\\u043c \\u0440\\u0435\\u0431\\u0435\\u043d\\u043a\\u0430. \\u041d\\u043e, \\u043a \\u0441\\u043e\\u0436\\u0430\\u043b\\u0435\\u043d\\u0438\\u044e, \\u043d\\u0435 \\u0432\\u0441\\u0435 \\u0434\\u0435\\u0442\\u0441\\u043a\\u0438\\u0435 \\u0438\\u0433\\u0440\\u0443\\u0448\\u043a\\u0438 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0443\\u044e\\u0442 \\u043d\\u043e\\u0440\\u043c\\u0430\\u043c \\u0431\\u0435\\u0437\\u043e\\u043f\\u0430\\u0441\\u043d\\u043e\\u0441\\u0442\\u0438, \\u0430 \\u043d\\u0435\\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0438 \\u0432\\u043e\\u0432\\u0441\\u0435 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u043d\\u0430\\u043d\\u0435\\u0441\\u0442\\u0438 \\u0432\\u0440\\u0435\\u0434 \\u043c\\u0430\\u043b\\u044b\\u0448\\u0443. \\u041d\\u0430\\u0448 \\u043a\\u0440\\u0443\\u043f\\u043d\\u0435\\u0439\\u0448\\u0438\\u0439 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d \\u0434\\u0435\\u0442\\u0441\\u043a\\u0438\\u0445 \\u0438\\u0433\\u0440\\u0443\\u0448\\u0435\\u043a \\u0432 \\u0420\\u043e\\u0441\\u0441\\u0438\\u0438. \\u0417\\u0434\\u0435\\u0441\\u044c \\u0432\\u044b \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0441\\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u043d\\u0430\\u0439\\u0442\\u0438 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0438\\u0433\\u0440\\u0443\\u0448\\u043a\\u0438 \\u043f\\u043e \\u0434\\u043e\\u0441\\u0442\\u0443\\u043f\\u043d\\u043e\\u0439 \\u0446\\u0435\\u043d\\u0435. \\u041d\\u0435 \\u0432\\u0430\\u0436\\u043d\\u043e, \\u0434\\u043b\\u044f \\u043a\\u0430\\u043a\\u043e\\u0433\\u043e \\u0432\\u043e\\u0437\\u0440\\u0430\\u0441\\u0442\\u0430 \\u0432\\u044b \\u0438\\u0449\\u0438\\u0442\\u0435 \\u0438\\u0433\\u0440\\u0443\\u0448\\u043a\\u0443 - \\u0434\\u043b\\u044f \\u0433\\u0440\\u0443\\u0434\\u043d\\u0438\\u0447\\u043a\\u0430 \\u0438\\u043b\\u0438 \\u0434\\u043b\\u044f \\u0448\\u043a\\u043e\\u043b\\u044c\\u043d\\u0438\\u043a\\u0430. \\u0412\\u0441\\u0435 \\u0442\\u043e\\u0432\\u0430\\u0440\\u044b, \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u043b\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0432 \\u043d\\u0430\\u0448\\u0435\\u043c \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433\\u0435, \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u0435\\u043d\\u044b \\u0438\\u0437 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0445 \\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u043e\\u0432 \\u0438 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0443\\u044e\\u0442 \\u0442\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f\\u043c \\u043c\\u0438\\u0440\\u043e\\u0432\\u044b\\u0445 \\u0441\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442\\u043e\\u0432. \\u0412 \\u043d\\u0430\\u0448\\u0438\\u0445 \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433\\u0430\\u0445 \\u0432\\u044b \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0441\\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u043d\\u0430\\u0439\\u0442\\u0438:<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2018-05-02 07:47:35\",\"created_by\":\"562\",\"created_by_alias\":\"\",\"modified\":\"2018-05-02 07:47:35\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-05-02 07:47:35\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', '0');
INSERT INTO `qrhqt_ucm_history` VALUES ('6', '1', '1', '', '2018-05-02 07:52:15', '562', '5394', '6222b930fcb5b769a0b0e2a368ebc35073d1215f', '{\"id\":1,\"asset_id\":\"70\",\"title\":\"\\u0433\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f\",\"alias\":\"glavnaya\",\"introtext\":\"<p><span style=\\\"font-size: 14pt; font-family: georgia, palatino, serif;\\\"><strong>\\u0421\\u0435\\u0433\\u043e\\u0434\\u043d\\u044f \\u0432 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0430\\u0445 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u043b\\u0435\\u043d \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0439 \\u0430\\u0441\\u0441\\u043e\\u0440\\u0442\\u0438\\u043c\\u0435\\u043d\\u0442 \\u0438\\u0433\\u0440\\u0443\\u0448\\u0435\\u043a, \\u0431\\u043b\\u0430\\u0433\\u043e\\u0434\\u0430\\u0440\\u044f \\u0447\\u0435\\u043c\\u0443 \\u043a\\u0430\\u0436\\u0434\\u044b\\u0439 \\u0440\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c \\u043c\\u043e\\u0436\\u0435\\u0442 \\u043f\\u043e\\u0434\\u043e\\u0431\\u0440\\u0430\\u0442\\u044c \\u0442\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0438\\u0438 \\u0441 \\u0432\\u043e\\u0437\\u0440\\u0430\\u0441\\u0442\\u043e\\u043c, \\u043f\\u043e\\u043b\\u043e\\u043c \\u0438 \\u0440\\u0430\\u0437\\u0432\\u0438\\u0442\\u0438\\u0435\\u043c \\u0440\\u0435\\u0431\\u0435\\u043d\\u043a\\u0430. \\u041d\\u043e, \\u043a \\u0441\\u043e\\u0436\\u0430\\u043b\\u0435\\u043d\\u0438\\u044e, \\u043d\\u0435 \\u0432\\u0441\\u0435 \\u0434\\u0435\\u0442\\u0441\\u043a\\u0438\\u0435 \\u0438\\u0433\\u0440\\u0443\\u0448\\u043a\\u0438 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0443\\u044e\\u0442 \\u043d\\u043e\\u0440\\u043c\\u0430\\u043c \\u0431\\u0435\\u0437\\u043e\\u043f\\u0430\\u0441\\u043d\\u043e\\u0441\\u0442\\u0438, \\u0430 \\u043d\\u0435\\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0438 \\u0432\\u043e\\u0432\\u0441\\u0435 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u043d\\u0430\\u043d\\u0435\\u0441\\u0442\\u0438 \\u0432\\u0440\\u0435\\u0434 \\u043c\\u0430\\u043b\\u044b\\u0448\\u0443. \\u041d\\u0430\\u0448 \\u043a\\u0440\\u0443\\u043f\\u043d\\u0435\\u0439\\u0448\\u0438\\u0439 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d \\u0434\\u0435\\u0442\\u0441\\u043a\\u0438\\u0445 \\u0438\\u0433\\u0440\\u0443\\u0448\\u0435\\u043a \\u0432 \\u0420\\u043e\\u0441\\u0441\\u0438\\u0438. \\u0417\\u0434\\u0435\\u0441\\u044c \\u0432\\u044b \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0441\\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u043d\\u0430\\u0439\\u0442\\u0438 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0438\\u0433\\u0440\\u0443\\u0448\\u043a\\u0438 \\u043f\\u043e \\u0434\\u043e\\u0441\\u0442\\u0443\\u043f\\u043d\\u043e\\u0439 \\u0446\\u0435\\u043d\\u0435. \\u041d\\u0435 \\u0432\\u0430\\u0436\\u043d\\u043e, \\u0434\\u043b\\u044f \\u043a\\u0430\\u043a\\u043e\\u0433\\u043e \\u0432\\u043e\\u0437\\u0440\\u0430\\u0441\\u0442\\u0430 \\u0432\\u044b \\u0438\\u0449\\u0438\\u0442\\u0435 \\u0438\\u0433\\u0440\\u0443\\u0448\\u043a\\u0443 - \\u0434\\u043b\\u044f \\u0433\\u0440\\u0443\\u0434\\u043d\\u0438\\u0447\\u043a\\u0430 \\u0438\\u043b\\u0438 \\u0434\\u043b\\u044f \\u0448\\u043a\\u043e\\u043b\\u044c\\u043d\\u0438\\u043a\\u0430. \\u0412\\u0441\\u0435 \\u0442\\u043e\\u0432\\u0430\\u0440\\u044b, \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u043b\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0432 \\u043d\\u0430\\u0448\\u0435\\u043c \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433\\u0435, \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u0435\\u043d\\u044b \\u0438\\u0437 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0445 \\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u043e\\u0432 \\u0438 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0443\\u044e\\u0442 \\u0442\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f\\u043c \\u043c\\u0438\\u0440\\u043e\\u0432\\u044b\\u0445 \\u0441\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442\\u043e\\u0432. \\u0412 \\u043d\\u0430\\u0448\\u0438\\u0445 \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433\\u0430\\u0445 \\u0432\\u044b \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0441\\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u043d\\u0430\\u0439\\u0442\\u0438:<\\/strong><\\/span><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2018-05-02 07:47:35\",\"created_by\":\"562\",\"created_by_alias\":\"\",\"modified\":\"2018-05-02 07:52:15\",\"modified_by\":\"562\",\"checked_out\":\"562\",\"checked_out_time\":\"2018-05-02 07:51:07\",\"publish_up\":\"2018-05-02 07:47:35\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', '0');
INSERT INTO `qrhqt_ucm_history` VALUES ('7', '1', '1', '', '2018-05-02 07:54:31', '562', '5446', '81d3c9efaaad50a7fea9568fd508d64dbd0544ea', '{\"id\":1,\"asset_id\":\"70\",\"title\":\"\\u0433\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f\",\"alias\":\"glavnaya\",\"introtext\":\"<div class=\\\"caption\\\" style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14pt; font-family: georgia, palatino, serif;\\\"><strong>\\u0421\\u0435\\u0433\\u043e\\u0434\\u043d\\u044f \\u0432 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0430\\u0445 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u043b\\u0435\\u043d \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0439 \\u0430\\u0441\\u0441\\u043e\\u0440\\u0442\\u0438\\u043c\\u0435\\u043d\\u0442 \\u0438\\u0433\\u0440\\u0443\\u0448\\u0435\\u043a, \\u0431\\u043b\\u0430\\u0433\\u043e\\u0434\\u0430\\u0440\\u044f \\u0447\\u0435\\u043c\\u0443 \\u043a\\u0430\\u0436\\u0434\\u044b\\u0439 \\u0440\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c \\u043c\\u043e\\u0436\\u0435\\u0442 \\u043f\\u043e\\u0434\\u043e\\u0431\\u0440\\u0430\\u0442\\u044c \\u0442\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0438\\u0438 \\u0441 \\u0432\\u043e\\u0437\\u0440\\u0430\\u0441\\u0442\\u043e\\u043c, \\u043f\\u043e\\u043b\\u043e\\u043c \\u0438 \\u0440\\u0430\\u0437\\u0432\\u0438\\u0442\\u0438\\u0435\\u043c \\u0440\\u0435\\u0431\\u0435\\u043d\\u043a\\u0430. \\u041d\\u043e, \\u043a \\u0441\\u043e\\u0436\\u0430\\u043b\\u0435\\u043d\\u0438\\u044e, \\u043d\\u0435 \\u0432\\u0441\\u0435 \\u0434\\u0435\\u0442\\u0441\\u043a\\u0438\\u0435 \\u0438\\u0433\\u0440\\u0443\\u0448\\u043a\\u0438 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0443\\u044e\\u0442 \\u043d\\u043e\\u0440\\u043c\\u0430\\u043c \\u0431\\u0435\\u0437\\u043e\\u043f\\u0430\\u0441\\u043d\\u043e\\u0441\\u0442\\u0438, \\u0430 \\u043d\\u0435\\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0438 \\u0432\\u043e\\u0432\\u0441\\u0435 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u043d\\u0430\\u043d\\u0435\\u0441\\u0442\\u0438 \\u0432\\u0440\\u0435\\u0434 \\u043c\\u0430\\u043b\\u044b\\u0448\\u0443. \\u041d\\u0430\\u0448 \\u043a\\u0440\\u0443\\u043f\\u043d\\u0435\\u0439\\u0448\\u0438\\u0439 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d \\u0434\\u0435\\u0442\\u0441\\u043a\\u0438\\u0445 \\u0438\\u0433\\u0440\\u0443\\u0448\\u0435\\u043a \\u0432 \\u0420\\u043e\\u0441\\u0441\\u0438\\u0438. \\u0417\\u0434\\u0435\\u0441\\u044c \\u0432\\u044b \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0441\\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u043d\\u0430\\u0439\\u0442\\u0438 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0438\\u0433\\u0440\\u0443\\u0448\\u043a\\u0438 \\u043f\\u043e \\u0434\\u043e\\u0441\\u0442\\u0443\\u043f\\u043d\\u043e\\u0439 \\u0446\\u0435\\u043d\\u0435. \\u041d\\u0435 \\u0432\\u0430\\u0436\\u043d\\u043e, \\u0434\\u043b\\u044f \\u043a\\u0430\\u043a\\u043e\\u0433\\u043e \\u0432\\u043e\\u0437\\u0440\\u0430\\u0441\\u0442\\u0430 \\u0432\\u044b \\u0438\\u0449\\u0438\\u0442\\u0435 \\u0438\\u0433\\u0440\\u0443\\u0448\\u043a\\u0443 - \\u0434\\u043b\\u044f \\u0433\\u0440\\u0443\\u0434\\u043d\\u0438\\u0447\\u043a\\u0430 \\u0438\\u043b\\u0438 \\u0434\\u043b\\u044f \\u0448\\u043a\\u043e\\u043b\\u044c\\u043d\\u0438\\u043a\\u0430. \\u0412\\u0441\\u0435 \\u0442\\u043e\\u0432\\u0430\\u0440\\u044b, \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u043b\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0432 \\u043d\\u0430\\u0448\\u0435\\u043c \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433\\u0435, \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u0435\\u043d\\u044b \\u0438\\u0437 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0445 \\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u043e\\u0432 \\u0438 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0443\\u044e\\u0442 \\u0442\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f\\u043c \\u043c\\u0438\\u0440\\u043e\\u0432\\u044b\\u0445 \\u0441\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442\\u043e\\u0432. \\u0412 \\u043d\\u0430\\u0448\\u0438\\u0445 \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433\\u0430\\u0445 \\u0432\\u044b \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0441\\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u043d\\u0430\\u0439\\u0442\\u0438:<\\/strong><\\/span><\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2018-05-02 07:47:35\",\"created_by\":\"562\",\"created_by_alias\":\"\",\"modified\":\"2018-05-02 07:54:31\",\"modified_by\":\"562\",\"checked_out\":\"562\",\"checked_out_time\":\"2018-05-02 07:52:15\",\"publish_up\":\"2018-05-02 07:47:35\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', '0');

-- ----------------------------
-- Table structure for `qrhqt_updates`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_updates`;
CREATE TABLE `qrhqt_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

-- ----------------------------
-- Records of qrhqt_updates
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_update_sites`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_update_sites`;
CREATE TABLE `qrhqt_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

-- ----------------------------
-- Records of qrhqt_update_sites
-- ----------------------------
INSERT INTO `qrhqt_update_sites` VALUES ('1', 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', '1', '1525432959', '');
INSERT INTO `qrhqt_update_sites` VALUES ('2', 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', '1', '1525432960', '');
INSERT INTO `qrhqt_update_sites` VALUES ('3', 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', '1', '1525432960', '');
INSERT INTO `qrhqt_update_sites` VALUES ('4', '', 'collection', 'http://smartaddons.com/update_server/products.xml', '1', '1525432963', '');
INSERT INTO `qrhqt_update_sites` VALUES ('5', 'Slideshow CK Update', 'extension', 'http://update.joomlack.fr/mod_slideshowck_update.xml', '1', '1525432963', '');

-- ----------------------------
-- Table structure for `qrhqt_update_sites_extensions`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_update_sites_extensions`;
CREATE TABLE `qrhqt_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

-- ----------------------------
-- Records of qrhqt_update_sites_extensions
-- ----------------------------
INSERT INTO `qrhqt_update_sites_extensions` VALUES ('1', '700');
INSERT INTO `qrhqt_update_sites_extensions` VALUES ('2', '802');
INSERT INTO `qrhqt_update_sites_extensions` VALUES ('2', '10002');
INSERT INTO `qrhqt_update_sites_extensions` VALUES ('3', '28');
INSERT INTO `qrhqt_update_sites_extensions` VALUES ('4', '10005');
INSERT INTO `qrhqt_update_sites_extensions` VALUES ('4', '10006');
INSERT INTO `qrhqt_update_sites_extensions` VALUES ('4', '10007');
INSERT INTO `qrhqt_update_sites_extensions` VALUES ('5', '10011');

-- ----------------------------
-- Table structure for `qrhqt_usergroups`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_usergroups`;
CREATE TABLE `qrhqt_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_usergroups
-- ----------------------------
INSERT INTO `qrhqt_usergroups` VALUES ('1', '0', '1', '18', 'Public');
INSERT INTO `qrhqt_usergroups` VALUES ('2', '1', '8', '15', 'Registered');
INSERT INTO `qrhqt_usergroups` VALUES ('3', '2', '9', '14', 'Author');
INSERT INTO `qrhqt_usergroups` VALUES ('4', '3', '10', '13', 'Editor');
INSERT INTO `qrhqt_usergroups` VALUES ('5', '4', '11', '12', 'Publisher');
INSERT INTO `qrhqt_usergroups` VALUES ('6', '1', '4', '7', 'Manager');
INSERT INTO `qrhqt_usergroups` VALUES ('7', '6', '5', '6', 'Administrator');
INSERT INTO `qrhqt_usergroups` VALUES ('8', '1', '16', '17', 'Super Users');
INSERT INTO `qrhqt_usergroups` VALUES ('9', '1', '2', '3', 'Guest');

-- ----------------------------
-- Table structure for `qrhqt_users`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_users`;
CREATE TABLE `qrhqt_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`(100)),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=563 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_users
-- ----------------------------
INSERT INTO `qrhqt_users` VALUES ('562', 'Super User', 'konst', 'spirin.costia@yandex.ru', '$2y$10$JXIugXqU8/bnuEhOLbFPWOQm1DAzFvjAMpOwlSn.WMXgIqEXDtzky', '0', '1', '2018-04-27 09:26:32', '2018-05-04 11:22:24', '0', '', '0000-00-00 00:00:00', '0', '', '', '0');

-- ----------------------------
-- Table structure for `qrhqt_user_keys`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_user_keys`;
CREATE TABLE `qrhqt_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_user_keys
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_user_notes`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_user_notes`;
CREATE TABLE `qrhqt_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_user_notes
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_user_profiles`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_user_profiles`;
CREATE TABLE `qrhqt_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- ----------------------------
-- Records of qrhqt_user_profiles
-- ----------------------------

-- ----------------------------
-- Table structure for `qrhqt_user_usergroup_map`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_user_usergroup_map`;
CREATE TABLE `qrhqt_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_user_usergroup_map
-- ----------------------------
INSERT INTO `qrhqt_user_usergroup_map` VALUES ('562', '8');

-- ----------------------------
-- Table structure for `qrhqt_utf8_conversion`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_utf8_conversion`;
CREATE TABLE `qrhqt_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_utf8_conversion
-- ----------------------------
INSERT INTO `qrhqt_utf8_conversion` VALUES ('2');

-- ----------------------------
-- Table structure for `qrhqt_viewlevels`
-- ----------------------------
DROP TABLE IF EXISTS `qrhqt_viewlevels`;
CREATE TABLE `qrhqt_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of qrhqt_viewlevels
-- ----------------------------
INSERT INTO `qrhqt_viewlevels` VALUES ('1', 'Public', '0', '[1]');
INSERT INTO `qrhqt_viewlevels` VALUES ('2', 'Registered', '2', '[6,2,8]');
INSERT INTO `qrhqt_viewlevels` VALUES ('3', 'Special', '3', '[6,3,8]');
INSERT INTO `qrhqt_viewlevels` VALUES ('5', 'Guest', '1', '[9]');
INSERT INTO `qrhqt_viewlevels` VALUES ('6', 'Super Users', '4', '[8]');
