-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Хост: sql303.byetcluster.com
-- Время создания: Фев 12 2019 г., 07:14
-- Версия сервера: 5.6.41-84.1
-- Версия PHP: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `fceu_18511631_kor1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  `keywords` varchar(128) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `parent_id`, `name`, `keywords`, `description`) VALUES
(1, 0, 'Электроника', NULL, NULL),
(2, 0, 'Компьютеры', NULL, NULL),
(3, 0, 'Смартфоны', NULL, NULL),
(4, 1, 'Микрофоны', NULL, NULL),
(5, 1, 'ТВ', NULL, NULL),
(6, 1, 'Мобильники', NULL, NULL),
(9, 2, 'Delli', NULL, NULL),
(10, 2, 'Hp', NULL, NULL),
(11, 2, 'Apple', NULL, NULL),
(12, 2, 'Sony', NULL, NULL),
(19, 3, 'Sony', NULL, NULL),
(20, 3, 'Apple', NULL, NULL),
(21, 3, 'Samsung', NULL, NULL),
(22, 3, 'Nokia', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naim` varchar(128) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `city`
--

INSERT INTO `city` (`id`, `naim`, `region_id`) VALUES
(1, 'Алтайский край', 1),
(2, 'Амурская область', 1),
(3, 'Архангельская область', 1),
(4, 'Белоруссия', 2),
(5, 'Азербайджан', 2),
(6, 'Армения', 2),
(7, 'Австрия', 3),
(8, 'Албания', 3),
(9, 'Андора', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment_author` varchar(128) NOT NULL,
  `comment_text` text NOT NULL,
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `approved` enum('0','1') NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=100 ;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_author`, `comment_text`, `parent`, `approved`, `created`, `is_admin`) VALUES
(1, 'Андрей', 'Привет, мир!', 0, '1', '2013-12-01 15:24:31', 0),
(2, 'Валерия', 'Товар подошел', 0, '1', '2013-12-03 19:25:05', 0),
(3, 'Менеджер', 'Отлично!\r\nОбращайтесь еще :)', 2, '1', '2013-12-04 19:26:02', 1),
(82, 'конст', '<p>Привет<br />\r\n&nbsp;</p>\r\n', 0, '0', '2018-07-30 17:55:51', 0),
(83, 'наташа', '<p>Привет всем</p>\r\n', 0, '0', '2018-07-30 17:55:51', 0),
(84, 'wer', '<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td>круто</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 0, '0', '2018-07-30 17:55:51', 0),
(5, 'Валерия', 'Спасибо)', 3, '1', '2013-12-31 19:27:15', 0),
(6, 'Конкурент', 'Тестовый коммент', 0, '1', '2013-12-31 19:28:17', 0),
(40, 'Андрей', '5', 6, '0', '2014-01-11 03:18:50', 0),
(41, 'Андрей', 'Привет', 0, '0', '2014-01-11 03:20:29', 0),
(42, 'Андрей', '1', 0, '0', '2014-01-11 03:29:26', 0),
(43, 'Андрей', '2', 0, '0', '2014-01-11 03:30:08', 0),
(44, 'Андрей', '4', 0, '0', '2014-01-11 03:31:41', 0),
(45, 'Андрей', '2', 0, '0', '2014-01-11 03:33:47', 0),
(46, 'Андрей', 'Тестируем эффект появления', 45, '0', '2014-01-11 03:36:13', 0),
(39, 'Андрей', '4', 37, '0', '2014-01-11 03:18:44', 0),
(38, 'Андрей', '12', 0, '0', '2014-01-11 03:18:14', 0),
(37, 'Андрей', '123', 6, '0', '2014-01-11 03:18:07', 0),
(47, 'Андрей', '12345', 38, '0', '2014-01-11 03:36:32', 0),
(48, 'Андрей', '31231231', 0, '0', '2014-01-11 03:42:30', 0),
(49, 'Андрей', '1', 0, '0', '2014-01-11 03:56:24', 0),
(50, 'Андрей', '2', 48, '0', '2014-01-11 03:56:32', 0),
(51, 'Валерия', 'Привет!', 0, '0', '2014-01-11 04:03:59', 0),
(52, 'Андрей', '3', 50, '0', '2014-02-01 02:57:42', 0),
(53, 'Андрей', '123', 0, '0', '2014-02-01 03:13:04', 0),
(54, 'Андрей', '1', 0, '0', '2014-02-01 03:13:36', 0),
(55, 'Андрей', '1', 51, '0', '2014-02-01 03:26:47', 0),
(56, 'Андрей', '2', 0, '0', '2014-02-01 03:26:52', 0),
(57, 'Андрей', '12', 0, '0', '2014-02-01 03:32:38', 0),
(58, 'Андрей', '123123', 57, '0', '2014-02-01 03:32:47', 0),
(59, 'Менеджер', 'Тест', 0, '0', '2014-02-09 18:44:32', 0),
(60, 'Менеджер', '1', 59, '0', '2014-02-09 18:45:16', 0),
(61, 'Менеджер', '12', 0, '0', '2014-02-09 18:57:15', 0),
(62, 'Менеджер', '1', 0, '0', '2014-02-09 19:01:50', 1),
(63, 'Андрей', '21', 0, '0', '2014-02-09 19:02:08', 0),
(64, 'Менеджер', '1', 61, '0', '2014-02-09 19:02:25', 1),
(65, 'Менеджер', '1', 0, '0', '2014-02-09 19:04:19', 1),
(66, 'Андрей', '1', 65, '0', '2014-02-09 19:04:47', 0),
(67, 'Просто юзер', 'Тест', 0, '0', '2014-02-09 19:05:07', 0),
(68, '1', '2', 0, '0', '2014-03-18 02:38:22', 0),
(69, '1', '2', 0, '0', '2014-03-18 02:39:37', 0),
(70, '12', '2', 0, '0', '2014-04-12 15:32:45', 0),
(71, '1', '2', 0, '0', '2014-04-12 15:33:12', 0),
(72, '1', '2', 49, '0', '2014-04-12 15:33:36', 0),
(73, 'Менеджер', '123', 0, '0', '2014-04-12 15:55:09', 1),
(74, 'Менеджер', '123', 0, '0', '2014-04-12 15:56:28', 1),
(75, 'Андрей', '2', 0, '0', '2014-04-12 15:56:38', 0),
(78, 'конст', '<p>Привет<br />\r\n&nbsp;</p>\r\n', 0, '0', '2018-07-27 14:06:33', 0),
(79, 'наташа', '<p>Привет всем</p>\r\n', 0, '0', '2018-07-27 14:06:33', 0),
(80, 'конст', '<p>Привет<br />\r\n&nbsp;</p>\r\n', 0, '0', '2018-07-27 14:26:26', 0),
(81, 'наташа', '<p>Привет всем</p>\r\n', 0, '0', '2018-07-27 14:26:26', 0),
(85, 'конст', '<p>Всем привет</p>\r\n', 0, '0', '2018-10-29 19:01:02', 0),
(86, 'наташа', '<p>ВВ</p>\r\n', 0, '0', '2018-10-29 19:01:02', 0),
(87, 'алекс', '<p>оаапр</p>\r\n', 0, '0', '2018-10-29 19:01:02', 0),
(88, 'алекс', '<p>Привет</p>\r\n', 0, '0', '2018-10-29 19:01:02', 0),
(89, 'алекс', '<p>Привет</p>\r\n', 0, '0', '2018-10-29 19:01:02', 0),
(90, 'алекс', '<p>П</p>\r\n', 0, '0', '2018-10-29 19:01:02', 0),
(91, 'алекс', '<p>П</p>\r\n', 0, '0', '2018-10-29 19:01:02', 0),
(92, 'алекс', '<p>ПА</p>\r\n', 0, '0', '2018-10-29 19:01:02', 0),
(93, 'алекс', '<p>п</p>\r\n', 0, '0', '2018-10-29 19:01:02', 0),
(94, 'алекс', '<p>аап</p>\r\n', 0, '0', '2018-10-29 19:01:02', 0),
(95, 'алекс', '<p>Привет всем<br />\r\n&nbsp;</p>\r\n', 0, '0', '2018-10-29 19:01:02', 0),
(96, 'алекс', '<p>Привет</p>\r\n', 0, '0', '2018-10-29 19:01:02', 0),
(97, 'алекс', '<p>Привет</p>\r\n', 0, '0', '2018-10-29 19:01:02', 0),
(98, 'алекс', '<p>Всё отлично<br />\r\n&nbsp;</p>\r\n', 0, '0', '2018-10-29 19:01:02', 0),
(99, 'алекс', '<p>Всё нормально.</p>\r\n', 0, '0', '2018-10-29 19:01:02', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `forgot`
--

CREATE TABLE IF NOT EXISTS `forgot` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL,
  `expire` int(10) unsigned NOT NULL,
  `email` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- Структура таблицы `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filePath` varchar(400) NOT NULL,
  `itemId` int(11) DEFAULT NULL,
  `isMain` tinyint(1) DEFAULT NULL,
  `modelName` varchar(150) NOT NULL,
  `urlAlias` varchar(400) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

--
-- Дамп данных таблицы `image`
--

INSERT INTO `image` (`id`, `filePath`, `itemId`, `isMain`, `modelName`, `urlAlias`, `name`) VALUES
(1, 'Products/Product1/11fa01.jpg', 1, 0, 'Product', '4ff123a05e-3', ''),
(2, 'Products/Product1/1b67db.jpg', 1, 0, 'Product', '5b4e42f498-4', ''),
(3, 'Products/Product1/ec17c1.jpg', 1, 0, 'Product', '188460cc15-5', ''),
(4, 'Products/Product1/34ea12.jpg', 1, 0, 'Product', '70d92c3bfc-6', ''),
(5, 'Products/Product1/dcce9b.jpg', 1, 0, 'Product', '0592f7bd11-7', ''),
(6, 'Products/Product1/14572d.jpg', 1, 0, 'Product', '261cfe5a20-8', ''),
(7, 'Products/Product1/1dd2a4.jpg', 1, 0, 'Product', '79333722da-9', ''),
(8, 'Products/Product1/02cbc8.jpg', 1, 0, 'Product', '767688dccd-10', ''),
(9, 'Products/Product1/0a345c.jpg', 1, 0, 'Product', 'a5cefc959f-11', ''),
(10, 'Products/Product1/7879f3.jpg', 1, 0, 'Product', '8bd38db141-12', ''),
(11, 'Products/Product1/77762c.jpg', 1, 0, 'Product', '7c2b689073-13', ''),
(12, 'Products/Product1/b60a8b.jpg', 1, 0, 'Product', 'ffe0f95ce7-14', ''),
(13, 'Products/Product1/e3b5e4.jpg', 1, 0, 'Product', 'de38f16a77-15', ''),
(14, 'Products/Product1/a56812.jpg', 1, 0, 'Product', '48de7ee89b-16', ''),
(15, 'Products/Product1/81a7f1.jpg', 1, 0, 'Product', '9502b8db32-17', ''),
(16, 'Products/Product1/152bdf.jpg', 1, 0, 'Product', 'b4cd86370e-18', ''),
(17, 'Products/Product1/807c48.jpg', 1, 0, 'Product', 'e020ec9600-19', ''),
(18, 'Products/Product1/25099f.jpg', 1, 0, 'Product', '6e91b18c05-20', ''),
(19, 'Products/Product2/1a9e0f.jpg', 2, 0, 'Product', 'ddb700f4b0-3', ''),
(20, 'Products/Product2/c86bb2.jpg', 2, 0, 'Product', '843235bd54-4', ''),
(21, 'Products/Product2/dcb4d7.jpg', 2, 0, 'Product', '3c5e120b09-5', ''),
(22, 'Products/Product2/3d62a1.jpg', 2, 0, 'Product', '776233eb49-6', ''),
(23, 'Products/Product2/7917a1.jpg', 2, 0, 'Product', 'b7964eac78-7', ''),
(24, 'Products/Product1/6ae81e.jpg', 1, 0, 'Product', '87cb2dcadb-21', ''),
(25, 'Products/Product1/d57a98.jpg', 1, 0, 'Product', '31bae60c46-22', ''),
(26, 'Products/Product1/e7b319.jpg', 1, 0, 'Product', '52e8fa400d-23', ''),
(27, 'Products/Product1/a9f71e.jpg', 1, 0, 'Product', '602dccdb61-24', ''),
(28, 'Products/Product1/4ee355.jpg', 1, 0, 'Product', '399b8e1a52-25', ''),
(29, 'Products/Product6/802cc3.jpg', 6, 0, 'Product', 'c0cf1e2e8c-2', ''),
(30, 'Products/Product6/a7ccce.jpg', 6, 1, 'Product', '00bb8123bf-1', ''),
(31, 'Products/Product7/ae1131.jpg', 7, 0, 'Product', 'a8e2b06523-2', ''),
(32, 'Products/Product1/f8e457.jpg', 1, 0, 'Product', '496107e1b7-26', ''),
(33, 'Products/Product1/2e0f55.jpg', 1, 0, 'Product', '43807fa193-27', ''),
(34, 'Products/Product2/cb69f7.jpg', 2, 0, 'Product', '2b906de7df-8', ''),
(35, 'Products/Product8/deb2f9.jpg', 8, 0, 'Product', 'db527169a1-3', ''),
(36, 'Products/Product3/2b26d1.jpg', 3, 0, 'Product', '0000458ae2-2', ''),
(37, 'Products/Product4/115a09.png', 4, 0, 'Product', 'cd6ae798d4-3', ''),
(38, 'Products/Product5/b9e2f9.jpg', 5, 0, 'Product', 'c3221927b6-3', ''),
(39, 'Products/Product2/08ba07.jpg', 2, 0, 'Product', 'a3db7436bf-2', ''),
(40, 'Products/Product1/8f8223.jpg', 1, 0, 'Product', '399b4b09bb-2', ''),
(41, 'Products/Product2/72834b.jpg', 2, 1, 'Product', '118cac0e3d-1', ''),
(42, 'Products/Product1/75f56a.jpg', 1, 1, 'Product', 'a6ac08eb59-1', ''),
(43, 'Products/Product7/fd4b0b.jpg', 7, 1, 'Product', '55b0e4080b-1', ''),
(44, 'Products/Product3/0b24b1.png', 3, 1, 'Product', 'e432728b1b-1', ''),
(45, 'Products/Product4/d894c9.jpg', 4, 0, 'Product', '56e1d0b7ae-2', ''),
(46, 'Products/Product5/e53de5.jpg', 5, 0, 'Product', '11b277c378-2', ''),
(47, 'Products/Product5/be281c.jpg', 5, 1, 'Product', '7706685800-1', ''),
(48, 'Products/Product4/374a3b.jpg', 4, 1, 'Product', '203364fd1b-1', ''),
(49, 'Products/Product8/826d3e.png', 8, 0, 'Product', '6fe592c705-4', ''),
(50, 'Logos/Logo19/4e9d89.png', 19, 0, 'Logo', 'd6830cd185-2', ''),
(51, 'Logos/Logo19/ad1e42.jpg', 19, 1, 'Logo', '83e44a957b-1', ''),
(52, 'Logos/Logo9/95388d.png', 9, 1, 'Logo', '9627773a2b-1', ''),
(53, 'Products/Product8/03fa31.jpg', 8, 0, 'Product', '21e5f70d1d-5', ''),
(54, 'Products/Product8/a240db.jpg', 8, 0, 'Product', '5efc5798b0-2', ''),
(55, 'Products/Product8/b30aca.jpg', 8, 1, 'Product', '8b01f9cba5-1', ''),
(56, 'Logos/Logo3/cec69c.jpg', 3, 0, 'Logo', 'b303b900f9-2', ''),
(57, 'Logos/Logo3/8e1316.jpg', 3, 1, 'Logo', '51fb9bca56-1', '');

-- --------------------------------------------------------

--
-- Структура таблицы `logo`
--

CREATE TABLE IF NOT EXISTS `logo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(128) DEFAULT NULL,
  `img` char(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Дамп данных таблицы `logo`
--

INSERT INTO `logo` (`id`, `name`, `img`) VALUES
(3, 'apple', NULL),
(9, 'dell', NULL),
(19, 'sony', 'sony.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1524224397),
('m140209_132017_init', 1549358753),
('m140403_174025_create_account_table', 1549358754),
('m140504_113157_update_tables', 1549358755),
('m140504_130429_create_token_table', 1549358756),
('m140622_111540_create_image_table', 1524224402),
('m140622_111545_add_name_to_image_table', 1524224403),
('m140830_171933_fix_ip_field', 1549358756),
('m140830_172703_change_account_table_name', 1549358756),
('m141222_110026_update_ip_field', 1549358756),
('m141222_135246_alter_username_length', 1549358756),
('m150614_103145_update_social_account_table', 1549358757),
('m150623_212711_fix_username_notnull', 1549358757),
('m151218_234654_add_timezone_to_profile', 1549358757),
('m160929_103127_add_last_login_at_to_user_table', 1549358758),
('m190125_140113_create_user_table', 1548425136);

-- --------------------------------------------------------

--
-- Структура таблицы `options`
--

CREATE TABLE IF NOT EXISTS `options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `value` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `options`
--

INSERT INTO `options` (`id`, `title`, `name`, `value`) VALUES
(1, 'course', 'Курс', '23'),
(2, 'email', 'Контактный email', 'admin@catalog.loc'),
(3, 'pagination', 'Кол-во товаров на страницу', '6'),
(4, 'site_title', 'Название сайта', 'Webformyself Каталог яблочной продукции');

-- --------------------------------------------------------

--
-- Структура таблицы `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `qty` int(10) NOT NULL,
  `sum` float NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `phone` varchar(128) NOT NULL,
  `address` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Дамп данных таблицы `order`
--

INSERT INTO `order` (`id`, `created_at`, `updated_at`, `qty`, `sum`, `status`, `name`, `email`, `phone`, `address`) VALUES
(1, '2018-03-16 10:45:34', '2018-03-16 10:45:34', 2, 76, '0', 'Андрей', 'iwanow@mail.ru', '+375298675678', 'Огарёва 12'),
(2, '2018-03-16 10:55:10', '2018-03-16 10:55:10', 1, 0, '0', 'Андрей', 'iwanow@mail.ru', '+375298675678', 'Огарёва 13'),
(3, '2018-03-16 11:16:04', '2018-03-16 11:16:04', 1, 100, '0', 'Андрей', 'iwanow@mail.ru', '+375298675678', 'Огарёва 12'),
(4, '2018-03-19 09:51:26', '2018-03-19 09:51:26', 3, 168, '0', 'Андрей', 'iwanow@mail.ru', '+375298675678', 'Огарёва 12'),
(5, '2018-07-12 15:48:29', '2018-07-12 15:48:29', 7, 161, '0', 'константин', 'spir@mail.ru', '34567890', 'макаёнко 9'),
(6, '2018-07-20 15:55:31', '2018-07-20 15:55:31', 1, 25, '0', 'константин', 'spir@mail.ru', '34567890', 'макаёнко 9'),
(7, '2018-07-20 16:17:00', '2018-07-20 16:17:00', 1, 25, '0', 'константин', 'spir@mail.ru', '34567890', 'макаёнко 9'),
(8, '2018-09-26 15:31:06', '2018-09-26 15:31:06', 1, 10, '0', 'константин', 'konstanti.spirin@mail.ru', '213231231', 'макаёнко 9'),
(9, '2018-09-26 15:57:29', '2018-09-26 15:57:29', 1, 10, '0', 'константин', 'spir@mail.ru', '34567890', 'Макаёнко 9'),
(10, '2018-09-26 15:57:42', '2018-09-26 15:57:42', 1, 10, '0', 'константин', 'spir@mail.ru', '34567890', 'Макаёнко 9'),
(11, '2018-09-27 11:17:24', '2018-09-27 11:17:24', 2, 20, '0', 'константин', 'konstanti.spirin@mail.ru', '4567890', 'Макаёнко 9'),
(12, '2018-09-27 11:31:32', '2018-09-27 11:31:32', 3, 30, '0', 'константин', 'konstanti.spirin@mail.ru', '4567890', 'Макаёнко 9'),
(13, '2018-09-27 11:54:09', '2018-09-27 11:54:09', 4, 40, '0', 'константин', 'konstanti.spirin@mail.ru', '4567890', 'Макаёнко 9'),
(14, '2018-09-27 11:55:14', '2018-09-27 11:55:14', 4, 40, '0', 'константин', 'konstanti.spirin@mail.ru', '4567890', 'Макаёнко 9'),
(15, '2018-09-27 11:58:34', '2018-09-27 11:58:34', 4, 40, '0', 'константин', 'konstanti.spirin@mail.ru', '4567890', 'макаёнко 9'),
(16, '2018-09-27 11:59:28', '2018-09-27 11:59:28', 1, 56, '0', 'константин', 'konstanti.spirin@mail.ru', '4567890', 'макаёнко 9'),
(17, '2018-09-27 14:03:31', '2018-09-27 14:03:31', 2, 66, '0', 'константин', 'konstanti.spirin@mail.ru', '4567890', 'Макаёнко 9'),
(18, '2018-10-10 11:55:31', '2018-10-10 11:55:31', 1, 56, '0', 'константин', 'konstanti.spirin@mail.ru', '4567890', 'Макаёнко 9'),
(19, '2018-10-17 12:27:26', '2018-10-17 12:27:26', 2, 140, '0', 'константин', 'spirin.costia@yande.ru', '4567890', 'Макаёнко 9');

-- --------------------------------------------------------

--
-- Структура таблицы `order_items`
--

CREATE TABLE IF NOT EXISTS `order_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `price` float NOT NULL,
  `qty_item` int(11) NOT NULL,
  `sum_item` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Дамп данных таблицы `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `name`, `price`, `qty_item`, `sum_item`) VALUES
(1, 1, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(2, 1, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 1, 20),
(3, 2, 5, 'Блузка Kira Plastinina 17-16-17453-SM-29 S', 0, 1, 0),
(4, 3, 6, 'Кардиган Levi''s Icy Grey Heather M', 100, 1, 100),
(5, 4, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 3, 168),
(6, 5, 8, 'sven mk155', 25, 3, 75),
(7, 5, 2, 'Established Fact', 56, 1, 56),
(8, 5, 1, 'Various Versions', 10, 3, 30),
(9, 6, 8, 'sven mk155', 25, 1, 25),
(10, 7, 8, 'sven mk155', 25, 1, 25),
(11, 8, 1, 'Various Versions', 10, 1, 10),
(12, 9, 1, 'Various Versions', 10, 1, 10),
(13, 10, 1, 'Various Versions', 10, 1, 10),
(14, 11, 1, 'Various Versions', 10, 2, 20),
(15, 12, 1, 'Various Versions', 10, 3, 30),
(16, 13, 1, 'Various Versions', 10, 4, 40),
(17, 14, 1, 'Various Versions', 10, 4, 40),
(18, 15, 1, 'Various Versions', 10, 4, 40),
(19, 16, 2, 'Established Fact', 56, 1, 56),
(20, 17, 2, 'Established Fact', 56, 1, 56),
(21, 17, 1, 'Various Versions', 10, 1, 10),
(22, 18, 2, 'Established Fact', 56, 1, 56),
(23, 19, 4, 'Established Fact', 70, 2, 140);

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `page_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `alias` varchar(128) NOT NULL,
  `description` varchar(128) NOT NULL,
  `keywords` varchar(128) NOT NULL,
  `text` text NOT NULL,
  `position` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`page_id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=79 ;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`page_id`, `title`, `alias`, `description`, `keywords`, `text`, `position`) VALUES
(76, 'Главная', 'index', 'Описание главной', 'ключевики главной', 'Текст главной страницы', 1),
(77, 'О компании', 'about', 'Описание о компании', 'ключевики о компании', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magni, laudantium cum eos quia amet voluptates odit rem molestiae corporis architecto labore iure sed id? Officiis, esse, iure, consectetur tenetur labore magni quibusdam repudiandae beatae illum quidem optio repellendus deleniti adipisci mollitia nostrum ea earum voluptas ullam ex odio deserunt fugit dolore facilis qui sit! Fugit, ex, a, atque, deleniti repudiandae voluptatibus magni perspiciatis maxime dignissimos omnis iusto est doloribus doloremque repellat corporis expedita explicabo? Delectus, tempore, molestias ad officia quaerat velit vel veniam natus voluptatum autem quod veritatis harum ut consectetur tempora rem eveniet cum assumenda dolor ullam blanditiis dicta.</p>\r\n<p>Quia, dolores, culpa, incidunt nostrum nemo itaque error facere quod labore accusantium vel eos. Sint, odio, eligendi magni ut ullam aliquam qui iusto voluptatum a consequatur assumenda ea repudiandae maiores amet dignissimos nesciunt eveniet culpa cumque debitis in incidunt ipsum excepturi labore consectetur explicabo quis expedita perspiciatis fugit officiis distinctio? Numquam, blanditiis, ut, earum explicabo placeat repellat architecto provident a ex voluptas odit labore itaque ad! Voluptatibus, molestiae, eaque, sapiente, libero aspernatur non voluptate dolor cupiditate beatae ratione fugit eligendi magnam nesciunt quos reprehenderit nobis necessitatibus soluta ullam repellat possimus dicta consectetur porro quas maxime facere optio consequatur iusto placeat?</p>\r\n<p>Sint, magni, odit repudiandae ducimus velit inventore nihil veniam accusantium natus dolore non dolor totam quidem perspiciatis facere labore cupiditate vitae. Nisi, tempore, corporis, voluptatibus, delectus non architecto atque vel blanditiis sunt illum possimus eveniet veritatis dolorum dignissimos hic! Vero, dolorem eveniet quis blanditiis odit in numquam maxime unde voluptates non asperiores natus quasi. Fugiat, nobis quibusdam rem ullam reiciendis odio sint voluptate placeat impedit non quam odit est cupiditate omnis tempore reprehenderit cum inventore veniam commodi voluptates minima illum dolorum ex saepe quo deleniti quae a sunt ratione tenetur aliquid itaque corporis laborum facilis architecto voluptatem iusto. Officia, vero!</p>', 2),
(78, 'Контакты', 'contacts', 'Описание Контакты', 'ключевики контакты', 'Текст страницы Контакты', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) DEFAULT NULL,
  `text` text NOT NULL,
  `oth` varchar(128) DEFAULT NULL,
  `tem` varchar(128) DEFAULT NULL,
  `sohpol` varchar(128) DEFAULT NULL,
  `polotw` varchar(128) DEFAULT '' COMMENT 'на выбор',
  `stran` varchar(128) DEFAULT NULL,
  `index` int(11) DEFAULT NULL,
  `raion` varchar(128) DEFAULT NULL,
  `naspunct` varchar(128) DEFAULT NULL,
  `tipnas` varchar(128) DEFAULT NULL,
  `naimul` varchar(128) DEFAULT NULL,
  `tipul` varchar(128) DEFAULT NULL,
  `dom` int(11) DEFAULT NULL,
  `kor` int(11) DEFAULT NULL,
  `kwar` int(11) DEFAULT NULL,
  `region` varchar(128) DEFAULT NULL,
  `fam` varchar(128) DEFAULT NULL,
  `imageFile` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `name`, `email`, `text`, `oth`, `tem`, `sohpol`, `polotw`, `stran`, `index`, `raion`, `naspunct`, `tipnas`, `naimul`, `tipul`, `dom`, `kor`, `kwar`, `region`, `fam`, `imageFile`) VALUES
(1, 'алекс', 'spir@mail.ru', '<p>привет</p>\r\n', '', '', '', '', '', 0, '', '', '', '', '', 0, 0, 0, '', NULL, NULL),
(2, 'наташа', 'werter@mail.ru', '<p>новый год</p>\r\n', '', '', '', '', '', 0, '', '', '', '', '', 0, 0, 0, '', NULL, NULL),
(3, 'wer', 'konsspir@mail.ru', '<p>С новым годом</p>\r\n', '', '', '', '', '', 0, '', '', '', '', '', 0, 0, 0, '', NULL, NULL),
(4, 'алекс', 'spir@mail.ru', '<p>xgbcffxc</p>\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'алекс', 'spir@mail.ru', '<p>аааа</p>\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'алекс', 'spir@mail.ru', '<p>ааввава</p>\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'видов', NULL),
(7, 'алекс', 'spir@mail.ru', '<p>sdfsdfdsf</p>\r\n', 'петрович', 'вопрос', 'холост', 'письмено', 'росия', 210008, 'дск', 'город', 'город', 'стасова', 'улица', 10, 2, 35, 'витебск', 'видов', NULL),
(8, 'наташа', 'spir@mail.ru', '<p>С новым гадом</p>\r\n', 'петрович', 'вопрос', 'холост', 'письмено', 'белоруссия', 210008, 'дск', 'город', 'город', 'стасова', 'улица', 10, 5, 10, 'витебск', 'видов', NULL),
(9, 'алекс', 'spir@mail.ru', '<p>C</p>\r\n', 'петрович', 'вопрос', 'Array', 'письмено', 'белоруссия', 210008, 'дск', 'город', 'город', 'стасова', 'улица', 10, 2, 10, 'витебск', 'видов', NULL),
(10, 'алекс', 'werter@mail.ru', '<p>c</p>\r\n', 'петрович', 'вопрос', '1', 'письмено', 'белоруссия', 210008, 'дск', 'город', 'город', 'стасова', 'улица', 10, 2, 10, 'витебск', 'видов', NULL),
(11, 'алекс', 'spir@mail.ru', '<p>c</p>\r\n', 'петрович', 'вопрос', '2', 'письмено', 'белоруссия', 210008, 'дск', 'город', 'город', 'стасова', 'улица', 10, 2, 10, 'витебск', 'видов', NULL),
(12, 'алекс', 'spir@mail.ru', '<p>c</p>\r\n', 'петрович', 'вопрос', 'test', 'письмено', 'белоруссия', 210008, 'дск', 'город', 'город', 'стасова', 'улица', 10, 2, 10, 'витебск', 'видов', NULL),
(13, 'алекс', 'spir@mail.ru', '<p>С новым годом</p>\r\n', 'петрович', 'вопрос', 'рабочий', 'ПОЧТОВОЕ_ОТПРАВЛЕНИЕ', 'Белоруссия', 210008, 'дск', 'витебск', 'Город', 'бядули', 'Улица', 10, 3, 16, 'витебская область', 'видов', NULL),
(14, 'wer', 'konsspir@mail.ru', '<p>c</p>\r\n', 'евгеньевич', 'вопрос', 'рабочий', '', 'Россия', 21008, 'дск', 'витебск', 'Город', 'стасова', 'Улица', 10, 2, 64, 'витебская область', 'Видов', NULL),
(15, 'алекс', 'spir@mail.ru', '<p>С</p>\r\n', 'петрович', 'вопрос', 'рабочий', '', 'Россия', NULL, 'дск', 'город', 'Город', 'стасова', 'Улица', 10, 2, 10, 'витебск', 'видов', NULL),
(16, 'wer', NULL, '<p>C</p>\r\n', 'евгеньевич', 'вопрос', 'рабочий', '', 'Россия', 21008, 'дск', 'витебск', 'Город', 'стасова', 'Улица', 10, 2, 64, 'витебская область', 'Видов', NULL),
(17, 'wer', NULL, '<p>C</p>\r\n', 'евгеньевич', 'вопрос', 'рабочий', '', 'Россия', 0, 'дск', 'витебск', 'Город', 'стасова', 'Улица', 10, 2, 64, 'витебская область', 'Видов', NULL),
(18, 'Иван', NULL, '<p>C</p>\r\n', 'евгеньевич', 'вопрос', 'рабочий', '', 'Россия', 0, 'дск', 'витебск', 'Город', 'стасова', 'Улица', 10, 2, 64, 'витебская область', 'Видов', NULL),
(19, 'wer', 'konsspir@mail.ru', '<p>C</p>\r\n', 'евгеньевич', 'вопрос', 'рабочий', '', 'Россия', 0, 'дск', 'витебск', 'Город', 'стасова', 'Улица', 10, 2, 64, 'витебская область', 'Видов', NULL),
(20, 'алекс', 'нет', 'Текст_обращения_неболее_2000_символов', 'петрович', 'вопрос', 'рабочий', '', '1', 0, 'нет', 'нет', 'Город', 'нет', 'Улица', 0, 0, 0, '1', 'видов', NULL),
(21, 'wer', 'нет', 'Текст_обращения_неболее_2000_символов', 'евгеньевич', 'вопрос', 'рабочий', '', '1', 0, 'нет', 'нет', 'Выбирете статус', 'нет', 'Выбирете статус', 0, 0, 0, '1', 'Видов', NULL),
(22, 'алекс', 'нет', 'Текст_обращения_неболее_2000_символов', 'петрович', 'вопрос', 'инженер', '', '1', 0, 'нет', 'нет', 'Город', 'нет', 'Улица', 0, 0, 0, 'Выбирете статус', 'видов', NULL),
(23, 'алекс', 'нет', 'Текст_обращения_неболее_2000_символов', 'петрович', 'вопрос', 'инженер', '', '1', 0, 'нет', 'нет', 'Выбирете статус', 'нет', 'Выбирете статус', 0, 0, 0, '1', 'видов', NULL),
(24, 'алекс', 'нет', 'Текст_обращения_неболее_2000_символов', 'петрович', 'вопрос', 'рабочий', '', '1', 0, 'нет', 'нет', 'Выбирете статус', 'нет', 'Выбирете статус', 0, 0, 0, '1', 'видов', NULL),
(25, 'алекс', 'нет', 'Текст_обращения_неболее_2000_символов', 'петрович', 'вопрос', 'инженер', '', '1', 0, 'нет', 'нет', 'Выбирете статус', 'нет', 'Выбирете статус', 0, 0, 0, '1', 'видов', NULL),
(26, 'алекс', 'нет', 'Текст_обращения_неболее_2000_символов', 'петрович', 'вопрос', 'рабочий', '', '1', 0, 'нет', 'нет', 'Выбирете статус', 'нет', 'Выбирете статус', 0, 0, 0, '1', 'видов', NULL),
(27, 'wer', 'нет', 'Текст_обращения_неболее_2000_символов', 'евгеньевич', 'вопрос', 'инженер', '', '2', 0, 'нет', 'нет', 'Выбирете статус', 'нет', 'Выбирете статус', 0, 0, 0, '5', 'Видов', NULL),
(28, 'алекс', 'нет', 'Текст_обращения_неболее_2000_символов', 'петрович', 'вопрос', 'рабочий', '', '1', 0, 'нет', 'нет', 'Выбирете статус', 'нет', 'Выбирете статус', 0, 0, 0, '1', 'видов', NULL),
(29, 'алекс', 'нет', 'Текст_обращения_неболее_2000_символов', 'петрович', 'вопрос', 'рабочий', '', '1', 0, 'нет', 'нет', 'Выбирете статус', 'нет', 'Выбирете статус', 0, 0, 0, '1', 'видов', NULL),
(30, 'алекс', 'нет', 'Текст_обращения_неболее_2000_символов', 'петрович', 'вопрос', 'рабочий', '', '2', 0, 'нет', 'нет', 'Выбирете статус', 'нет', 'Выбирете статус', 0, 0, 0, '5', 'видов', NULL),
(31, 'наташа', 'нет', 'Текст_обращения_неболее_2000_символов', 'петрович', 'вопрос', 'рабочий', '', '1', 0, 'нет', 'нет', 'Выбирете статус', 'нет', 'Выбирете статус', 0, 0, 0, '2', 'видов', NULL),
(32, 'алекс', 'нет', 'Текст_обращения_неболее_2000_символов', 'петрович', 'вопрос', 'инженер', '', '1', 0, 'нет', 'нет', 'Выбирете статус', 'нет', 'Выбирете статус', 0, 0, 0, '1', 'видов', NULL),
(33, 'алекс', 'нет', 'Текст_обращения_неболее_2000_символов', 'петрович', 'вопрос', 'инженер', '', '1', 0, 'нет', 'нет', 'Выбирете статус', 'нет', 'Выбирете статус', 0, 0, 0, '1', 'видов', NULL),
(34, 'алекс', 'konstanti.spirin@mail.ru', 'Текст_обращения_неболее_2000_символов', 'петрович', 'вопрос', 'рабочий', '', '1', 0, 'нет', 'нет', 'Выбирете статус', 'нет', 'Выбирете статус', 0, 0, 0, '1', 'видов', NULL),
(35, 'алекс', 'konstanti.spirin@mail.ru', 'Текст_обращения_неболее_2000_символов', 'петрович', 'вопрос', 'рабочий', '', '1', 0, 'нет', 'нет', 'Выбирете статус', 'нет', 'Выбирете статус', 0, 0, 0, '2', 'видов', NULL),
(36, 'алекс', 'konstanti.spirin@mail.ru', 'Текст_обращения_неболее_2000_символов', 'петрович', 'вопрос', 'Выбирете статус', '', '2', 0, 'нет', 'нет', 'Выбирете статус', 'нет', 'Выбирете статус', 0, 0, 0, '5', 'видов', NULL),
(37, 'алекс', 'konstanti.spirin@mail.ru', 'Текст_обращения_неболее_2000_символов', 'петрович', 'вопрос', 'инженер', '', '1', 0, 'нет', 'нет', 'Выбирете статус', 'нет', 'Выбирете статус', 0, 0, 0, '1', 'видов', NULL),
(38, 'алекс', 'konstanti.spirin@mail.ru', 'Текст_обращения_неболее_2000_символов', 'петрович', 'вопрос', 'инженер', '', '1', 0, 'нет', 'нет', 'Выбирете статус', 'нет', 'Выбирете статус', 0, 0, 0, '1', 'видов', NULL),
(39, 'алекс', 'konstanti.spirin@mail.ru', 'Текст_обращения_неболее_2000_символов', 'петрович', 'вопрос', 'рабочий', '', '2', 0, 'нет', 'нет', 'Выбирете статус', 'нет', 'Выбирете статус', 0, 0, 0, '5', 'видов', NULL),
(40, 'алекс', 'konstanti.spirin@mail.ru', 'Текст_обращения_неболее_2000_символов', 'петрович', 'вопрос', 'Выбирете статус', '', '1', 0, 'нет', 'нет', 'Выбирете статус', 'нет', 'Выбирете статус', 0, 0, 0, '2', 'видов', NULL),
(41, 'алекс', 'konstanti.spirin@mail.ru', 'Текст_обращения_неболее_2000_символов', 'петрович', 'вопрос', 'Выбирете статус', '', '1', 0, 'нет', 'нет', 'Выбирете статус', 'нет', 'Выбирете статус', 0, 0, 0, '1', 'видов', NULL),
(42, 'алекс', 'konstanti.spirin@mail.ru', 'Текст_обращения_неболее_2000_символов', 'петрович', 'вопрос', 'Выбирете статус', '', '2', 0, 'нет', 'нет', 'Выбирете статус', 'нет', 'Выбирете статус', 0, 0, 0, '5', 'видов', NULL),
(43, 'алекс', 'konstanti.spirin@mail.ru', 'Текст_обращения_неболее_2000_символов', 'петрович', 'вопрос', 'Выбирете статус', '', '1', 0, 'нет', 'нет', 'Выбирете статус', 'нет', 'Выбирете статус', 0, 0, 0, '1', 'видов', NULL),
(44, 'алекс', 'konstanti.spirin@mail.ru', 'Текст_обращения_неболее_2000_символов', 'петрович', 'вопрос', 'Выбирете статус', '', '1', 0, 'нет', 'нет', 'Выбирете статус', 'нет', 'Выбирете статус', 0, 0, 0, '2', 'видов', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `posts3`
--

CREATE TABLE IF NOT EXISTS `posts3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) DEFAULT NULL,
  `text` text NOT NULL,
  `fam` varchar(128) NOT NULL,
  `oth` varchar(128) NOT NULL,
  `tem` varchar(128) NOT NULL,
  `sohpol` varchar(128) NOT NULL,
  `polotw` varchar(128) NOT NULL,
  `stran` varchar(128) NOT NULL,
  `index` int(11) NOT NULL,
  `raion` varchar(128) NOT NULL,
  `naspunct` varchar(128) NOT NULL,
  `tipnas` varchar(128) NOT NULL,
  `naimul` varchar(128) NOT NULL,
  `tipul` varchar(128) NOT NULL,
  `dom` int(11) NOT NULL,
  `kor` int(11) NOT NULL,
  `kwar` int(11) NOT NULL,
  `region` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `posts3`
--

INSERT INTO `posts3` (`id`, `name`, `email`, `text`, `fam`, `oth`, `tem`, `sohpol`, `polotw`, `stran`, `index`, `raion`, `naspunct`, `tipnas`, `naimul`, `tipul`, `dom`, `kor`, `kwar`, `region`) VALUES
(1, 'алекс', 'spir@mail.ru', '<p>привет</p>\r\n', '', '', '', '', '', '', 0, '', '', '', '', '', 0, 0, 0, ''),
(2, 'наташа', 'werter@mail.ru', '<p>новый год</p>\r\n', '', '', '', '', '', '', 0, '', '', '', '', '', 0, 0, 0, ''),
(3, 'wer', 'konsspir@mail.ru', '<p>С новым годом</p>\r\n', '', '', '', '', '', '', 0, '', '', '', '', '', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `pozel`
--

CREATE TABLE IF NOT EXISTS `pozel` (
  `naim` text NOT NULL,
  `pow` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pozel`
--

INSERT INTO `pozel` (`naim`, `pow`) VALUES
('aleks', NULL),
('aleks', NULL),
('aleks', NULL),
('aleks', NULL),
('aleks', NULL),
('aleks', NULL),
('aleks', NULL),
('aleks', NULL),
('aleks', NULL),
('aleks', NULL),
('aleks', NULL),
('aleks', NULL),
('sven+mk390', NULL),
('NINA', NULL),
('Various Versions', NULL),
('Various Versions', NULL),
('Various Versions', NULL),
('Various Versions', NULL),
('sven mk155', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `content` text,
  `price` float NOT NULL DEFAULT '0',
  `keywords` varchar(128) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `img` varchar(128) DEFAULT 'no-image.png',
  `hit` enum('0','1') NOT NULL DEFAULT '0',
  `new` enum('0','1') NOT NULL DEFAULT '0',
  `sale` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `content`, `price`, `keywords`, `description`, `img`, `hit`, `new`, `sale`) VALUES
(1, 4, 'MK-490', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Страна</td>\r\n			<td>Китай</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Гарантия производителя</td>\r\n			<td>1 год</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Основные характеристики</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Исполнение</td>\r\n			<td>Настольный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Кнопка отключения звука</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Звук</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Соотношение &quot;сигнал/шум&quot;</td>\r\n			<td>58 дБ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Частотный диапазон</td>\r\n			<td>30-16000 Гц</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Интерфейсы</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Подключение</td>\r\n			<td>Проводное</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3.5mm Mini-Jack</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Габариты</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Длина</td>\r\n			<td>24 см</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>146 г</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Цвет</td>\r\n			<td>Черный</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 10, '', '', '12.jpg', '1', '0', '0'),
(2, 4, 'TRUST Mico USB Microphone (20378)', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Страна</td>\r\n			<td>Китай</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Гарантия производителя</td>\r\n			<td>2 года</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Основные характеристики</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Исполнение</td>\r\n			<td>Настольный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Совместимость</td>\r\n			<td>MacOS, Windows</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип сенсора</td>\r\n			<td>Конденсатор</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Направленность</td>\r\n			<td>Всенаправленный</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Звук</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Соотношение &quot;сигнал/шум&quot;</td>\r\n			<td>58 дБ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Сопротивление</td>\r\n			<td>2200 Ом</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Частотный диапазон</td>\r\n			<td>50-16000 Гц</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Чувствительность</td>\r\n			<td>45 дБ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Уровень звукового давления</td>\r\n			<td>115 дБ</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Интерфейсы</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Подключение</td>\r\n			<td>Проводное</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3.5mm Mini-Jack</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Длина кабеля</td>\r\n			<td>1.8 м</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Габариты</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Высота</td>\r\n			<td>13 см</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ширина</td>\r\n			<td>3.5 см</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Длина</td>\r\n			<td>4.3 см</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>150 г</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Цвет</td>\r\n			<td>Черный</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 56, '', '', '12bg.jpg', '1', '0', '0'),
(3, 9, 'Vostro 3667-0765', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Страна</td>\r\n			<td>Китай</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Гарантия производителя</td>\r\n			<td>1 год</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Основные характеристики</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система</td>\r\n			<td>Windows 10 Домашняя x64</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Процессор</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Производитель процессора</td>\r\n			<td>Intel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Модель процессора</td>\r\n			<td>Core i3-6100</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тактовая частота</td>\r\n			<td>3.7 ГГц</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Кэш L3</td>\r\n			<td>3 Мб</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Оперативная память</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти</td>\r\n			<td>4 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Максимальный объем</td>\r\n			<td>16 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип оперативной памяти</td>\r\n			<td>DDR4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Частота памяти</td>\r\n			<td>2133 МГц</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Накопитель</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип накопителя</td>\r\n			<td>HDD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем накопителя</td>\r\n			<td>1 Тб</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Графическая система</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип видеокарты</td>\r\n			<td>Интегрированная</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Производитель видеокарты</td>\r\n			<td>Intel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Модель видеокарты</td>\r\n			<td>Intel HD Graphics 530</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Встроенное оборудование</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth-адаптер</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Wi-Fi</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Картридер</td>\r\n			<td>SD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LAN-адаптер</td>\r\n			<td>100/10 Мбит/с</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Интерфейсы</td>\r\n		</tr>\r\n		<tr>\r\n			<td>HDMI</td>\r\n			<td>1 шт.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>6 шт.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB 2.0</td>\r\n			<td>4 шт.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB 3.0</td>\r\n			<td>2 шт.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LAN разъем (RJ-45)</td>\r\n			<td>1 шт.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для микрофона</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Корпус</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Типоразмер корпуса</td>\r\n			<td>Mini-Tower</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Комплектация</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Клавиатура</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Мышь</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Габариты и вес</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Высота</td>\r\n			<td>35.3 см</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Глубина</td>\r\n			<td>29.4 см</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ширина</td>\r\n			<td>15.4 см</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>5.9 кг</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Цвет</td>\r\n			<td>Черный</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 20, '', '', '10.jpg', '1', '1', '0'),
(4, 19, 'SONY Xperia XA1 DS Black', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Страна</td>\r\n			<td>Китай</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Гарантия производителя</td>\r\n			<td>1 год</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Общие</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Форм-фактор</td>\r\n			<td>Моноблок</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Версия ОС на начало продаж</td>\r\n			<td>Android 7.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип SIM-карты</td>\r\n			<td>Nano-SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка 2-х SIM-карт</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Процессор</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Производитель</td>\r\n			<td>MediaTek</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип</td>\r\n			<td>MediaTek Helio P20 MT6757</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Частота</td>\r\n			<td>2.3 ГГц</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Графический ускоритель</td>\r\n			<td>Mali-880 MP2</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Память</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти</td>\r\n			<td>3 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти</td>\r\n			<td>32 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Карты памяти</td>\r\n			<td>microSD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Максимальный объем карт памяти</td>\r\n			<td>256 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Экран</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип</td>\r\n			<td>S-IPS, многоцветный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ</td>\r\n			<td>5&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Кол-во цветов</td>\r\n			<td>16777216</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разрешение</td>\r\n			<td>1280x720 Пикс</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Сенсорный</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Мультитач</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Стандарты сотовой связи</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Работа в 2G-сетях</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Стандарты GSM</td>\r\n			<td>1800, 900, 1900</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Работа в 3G-сетях</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Работа в 4G(LTE)-сетях</td>\r\n			<td>Есть&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Коммуникации и связь</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Wi-Fi</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация</td>\r\n			<td>ГЛОНАСС, GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Мультимедиа</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка аудио</td>\r\n			<td>MP3, WMA, WAV, Ogg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка видео</td>\r\n			<td>MP4, AVI, 3GP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>FM-тюнер</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Камера</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разрешение</td>\r\n			<td>23 Мпикс</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Встроенная вспышка</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автофокус</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разрешение фронтальной камеры</td>\r\n			<td>8 Мпикс</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Управление</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Экранная клавиатура</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Голосовые команды</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Датчики</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчик приближения</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчик освещенности</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Звонки</td>\r\n		</tr>\r\n		<tr>\r\n			<td>MP3 на звонке</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Виброзвонок</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Громкая связь</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Органайзер</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Календарь</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Калькулятор</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Секундомер</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Будильник</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диктофон</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Разъемы</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Интерфейсный разъем</td>\r\n			<td>Micro USB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников</td>\r\n			<td>3.5 мм</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Питание</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип аккумулятора</td>\r\n			<td>Li-Ion</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Емкость аккумулятора (мА*ч)</td>\r\n			<td>2300 мА*ч</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Комплектация</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Зарядное устройство</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Габариты и вес</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Высота</td>\r\n			<td>14.5 см</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ширина</td>\r\n			<td>6.7 см</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Глубина</td>\r\n			<td>0.8 см</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>143 г</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Цвет</td>\r\n			<td>Черный&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 70, '', '', '1.jpg', '1', '0', '1'),
(5, 19, 'Смартфон SONY Xperia XA2 Dual Silver', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Страна</td>\r\n			<td>Китай</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Гарантия производителя</td>\r\n			<td>1 год</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Общие</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Форм-фактор</td>\r\n			<td>Моноблок</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Материал корпуса</td>\r\n			<td>Металл, Пластик</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Версия ОС на начало продаж</td>\r\n			<td>8.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип SIM-карты</td>\r\n			<td>Nano-SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка 2-х SIM-карт</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Процессор</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Производитель</td>\r\n			<td>Qualcomm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип</td>\r\n			<td>Snapdragon 630</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Частота</td>\r\n			<td>2.2 ГГц</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Графический ускоритель</td>\r\n			<td>Adreno 508</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Память</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти</td>\r\n			<td>3 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти</td>\r\n			<td>32 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Карты памяти</td>\r\n			<td>microSDHC, microSDXC, microSD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Максимальный объем карт памяти</td>\r\n			<td>256 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Экран</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип</td>\r\n			<td>IPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ</td>\r\n			<td>5.2&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Кол-во цветов</td>\r\n			<td>16 млн</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разрешение</td>\r\n			<td>1920x1080 Пикс</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Сенсорный</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Мультитач</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Стандарты сотовой связи</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Работа в 2G-сетях</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Стандарты GSM</td>\r\n			<td>1800, 850, 900, 1900</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Работа в 3G-сетях</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Работа в 4G(LTE)-сетях</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Коммуникации и связь</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Wi-Fi</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Стандарт Wi-Fi</td>\r\n			<td>IEEE 802.11b, IEEE 802.11a, IEEE 802.11g, IEEE 802.11n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Версия Bluetooth</td>\r\n			<td>5.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>A2DP</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация</td>\r\n			<td>ГЛОНАСС, GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Модуль NFC</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Мультимедиа</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество динамиков</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка аудио</td>\r\n			<td>MP3, WAV</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка видео</td>\r\n			<td>AVI, MKV, 3GP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>FM-тюнер</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Камера</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Двойная камера</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разрешение</td>\r\n			<td>23 Мпикс</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Встроенная вспышка</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видео</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автофокус</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разрешение фронтальной камеры</td>\r\n			<td>8 Мпикс</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Управление</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Экранная клавиатура</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>QWERTY-клавиатура</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Датчики</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Акселерометр</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчик приближения</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчик освещенности</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Геомагнитный датчик (цифровой компас)</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Сканер отпечатков пальцев</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Звонки</td>\r\n		</tr>\r\n		<tr>\r\n			<td>MP3 на звонке</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Виброзвонок</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Громкая связь</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Органайзер</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Календарь</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Калькулятор</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Секундомер</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Будильник</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Разъемы</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Интерфейсный разъем</td>\r\n			<td>Micro USB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников</td>\r\n			<td>3.5 мм</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Питание</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип аккумулятора</td>\r\n			<td>Li-Ion</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Емкость аккумулятора (мА*ч)</td>\r\n			<td>3300 мА*ч</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Время работы в режиме разговора</td>\r\n			<td>39 ч</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Комплектация</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Кабель для связи с ПК</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Зарядное устройство</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Габариты и вес</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Высота</td>\r\n			<td>0.97 см</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ширина</td>\r\n			<td>7 см</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Глубина</td>\r\n			<td>14.2 см</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>171 г</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Цвет</td>\r\n			<td>Серебристый&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 20, '', '', '1bg.jpg', '1', '0', '0'),
(6, 4, 'sven mk150', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Страна</td>\r\n			<td>Китай</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Гарантия производителя</td>\r\n			<td>1 год</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Основные характеристики</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Исполнение</td>\r\n			<td>Прищепка</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Звук</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Соотношение &quot;сигнал/шум&quot;</td>\r\n			<td>58 дБ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Частотный диапазон</td>\r\n			<td>50-16000 Гц</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Интерфейсы</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Подключение</td>\r\n			<td>Проводное&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3.5mm Mini-Jack</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Длина кабеля</td>\r\n			<td>1.8 м</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Габариты</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>23 г</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Цвет</td>\r\n			<td>Черный</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 23, '', '', 'sven mk150.jpg', '0', '0', '0'),
(7, 4, 'sven mk200', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Страна</td>\r\n			<td>Китай</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Гарантия производителя</td>\r\n			<td>1 год</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Основные характеристики</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Исполнение</td>\r\n			<td>Прищепка</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Звук</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Соотношение &quot;сигнал/шум&quot;</td>\r\n			<td>58 дБ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Частотный диапазон</td>\r\n			<td>50-16000 Гц</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Интерфейсы</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Подключение</td>\r\n			<td>Проводное</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3.5mm Mini-Jack</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Длина кабеля</td>\r\n			<td>1.8 м</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Габариты</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>23 г</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Цвет</td>\r\n			<td>Черный</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 24, '', '', 'sven mk390.jpg', '0', '0', '0'),
(8, 4, 'OKLICK MP-M007', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Страна</td>\r\n			<td>Китай</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Гарантия производителя</td>\r\n			<td>1 год</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Основные характеристики</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Исполнение</td>\r\n			<td>Прищепка</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Звук</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Соотношение &quot;сигнал/шум&quot;</td>\r\n			<td>58 дБ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Частотный диапазон</td>\r\n			<td>50-16000 Гц</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Интерфейсы</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Подключение</td>\r\n			<td>Проводное</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3.5mm Mini-Jack</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Длина кабеля</td>\r\n			<td>1.8 м</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">Габариты</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Высота</td>\r\n			<td>4.9 см</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ширина</td>\r\n			<td>3.4 см</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>23 г</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Цвет</td>\r\n			<td>Белый</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 25, '', '', 'sven mk155.jpg', '0', '0', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_email` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_email` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `timezone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `profile`
--

INSERT INTO `profile` (`user_id`, `name`, `public_email`, `gravatar_email`, `gravatar_id`, `location`, `website`, `bio`, `timezone`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `raspis`
--

CREATE TABLE IF NOT EXISTS `raspis` (
  `email` char(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `raspis`
--

INSERT INTO `raspis` (`email`) VALUES
('spirin.costia@yandex.ru');

-- --------------------------------------------------------

--
-- Структура таблицы `region`
--

CREATE TABLE IF NOT EXISTS `region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naim` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `region`
--

INSERT INTO `region` (`id`, `naim`) VALUES
(1, 'Россия'),
(2, 'Страны СНГ и Балтии'),
(3, 'Страны Европы');

-- --------------------------------------------------------

--
-- Структура таблицы `sert`
--

CREATE TABLE IF NOT EXISTS `sert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(128) DEFAULT NULL,
  `img` char(128) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `sert`
--

INSERT INTO `sert` (`id`, `name`, `img`, `price`, `content`) VALUES
(1, 'sert1', 'sertifikat-1', 20, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `social_account`
--

CREATE TABLE IF NOT EXISTS `social_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_unique` (`provider`,`client_id`),
  UNIQUE KEY `account_unique_code` (`code`),
  KEY `fk_user_account` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `token`
--

CREATE TABLE IF NOT EXISTS `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  UNIQUE KEY `token_unique` (`user_id`,`code`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `last_login_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_unique_username` (`username`),
  UNIQUE KEY `user_unique_email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `flags`, `last_login_at`) VALUES
(1, 'konst', 'konstanti.spirin@mail.ru', '$2y$12$w4LuCvet7.sb6Nf0IGo7QO7xBJ0DHFVL6naitnsLY1K45CEEBAziq', '-r19Ld-B3tVFx3bkJHcHlJIN76n12GVh', 1549972144, NULL, NULL, '86.57.181.195', 1549972113, 1549972113, 0, 1549972166);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
