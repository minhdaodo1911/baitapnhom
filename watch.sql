-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2021 at 04:39 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `watch`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_news_watch`
--

CREATE TABLE `category_news_watch` (
  `pk_category_news_watch_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category_watch`
--

CREATE TABLE `category_watch` (
  `pk_category_watch_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category_watch`
--

INSERT INTO `category_watch` (`pk_category_watch_id`, `name`, `parent_id`) VALUES
(1, 'Nam', 0),
(2, 'Nữ', 0),
(3, 'Phụ kiện', 0),
(4, 'Đồng hồ Hublot', 1),
(5, 'Đồng hồ ABC', 1),
(6, 'Đồng hồ DEF', 1),
(7, 'Đồng hồ GHIIIIII', 2),
(8, 'Đồng hồ KLM', 2),
(9, 'Đồng hồ NOU', 2),
(10, 'Vòng tay ', 3),
(11, 'Dây đeo đồng hồ', 3),
(12, 'Kính mắt', 3);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `fk_watch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `content`, `customer_id`, `fk_watch_id`) VALUES
(73, 'Tốt', 1, 0),
(77, 'hang dep', 1, 0),
(78, 'ben bi', 1, 0),
(79, 'rat tot', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact_customer`
--

CREATE TABLE `contact_customer` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `comment` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `fullname_customer` varchar(500) NOT NULL,
  `phone_number_customer` int(11) NOT NULL,
  `address_customer` varchar(500) NOT NULL,
  `email_customer` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `fullname_customer`, `phone_number_customer`, `address_customer`, `email_customer`, `password`) VALUES
(1, 'Đỗ Đạo', 97186341, 'Tam trinh', 'dao@gmail.com', '96e79218965eb72c92a549dd5a330112'),
(2, 'khánh', 978818037, 'Lĩnh nam', 'khanh@gmail.com', '96e79218965eb72c92a549dd5a330112'),
(11, 'Nguyễn Như Giang', 971317504, 'Từ sơn', 'giangquynh2k@gmail.com', '96e79218965eb72c92a549dd5a330112');

-- --------------------------------------------------------

--
-- Table structure for table `news_watch`
--

CREATE TABLE `news_watch` (
  `pk_news_watch_id` int(11) NOT NULL,
  `fk_category_news_watch` int(11) NOT NULL,
  `name_news` varchar(500) NOT NULL,
  `img_news` varchar(500) NOT NULL,
  `description_news` varchar(500) NOT NULL,
  `info_detail_news` varchar(1000) NOT NULL,
  `hot_news` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_customer`
--

CREATE TABLE `order_customer` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `time_buying` date NOT NULL,
  `cost` float NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_customer`
--

INSERT INTO `order_customer` (`order_id`, `customer_id`, `time_buying`, `cost`, `state`) VALUES
(25, 1, '2021-11-10', 8650000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `fk_watch_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`order_detail_id`, `fk_watch_id`, `order_id`, `order_number`) VALUES
(16, 18, 3, 1),
(17, 17, 3, 1),
(18, 9, 3, 1),
(20, 4, 4, 1),
(21, 9, 4, 1),
(22, 13, 4, 1),
(23, 6, 4, 1),
(24, 12, 5, 1),
(25, 4, 6, 1),
(26, 9, 6, 2),
(27, 16, 6, 2),
(28, 9, 7, 2),
(29, 13, 7, 2),
(30, 9, 8, 2),
(32, 19, 9, 1),
(33, 22, 10, 1),
(34, 22, 11, 1),
(35, 1, 12, 2),
(36, 15, 13, 1),
(37, 15, 14, 4),
(39, 22, 15, 1),
(40, 19, 16, 1),
(41, 4, 17, 2),
(42, 14, 17, 2),
(43, 23, 17, 2),
(44, 30, 18, 1),
(45, 25, 19, 3),
(46, 12, 19, 3),
(47, 20, 20, 1),
(48, 20, 21, 1),
(49, 20, 22, 1),
(50, 20, 23, 1),
(51, 33, 0, 1),
(52, 4, 0, 1),
(53, 20, 25, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_watch`
--

CREATE TABLE `product_watch` (
  `pk_watch_id` int(11) NOT NULL,
  `fk_category_watch_id` int(11) NOT NULL,
  `name_watch` varchar(500) NOT NULL,
  `img_watch` varchar(500) NOT NULL,
  `img_watch2` varchar(500) NOT NULL,
  `img_watch3` varchar(500) NOT NULL,
  `img_watch4` varchar(500) NOT NULL,
  `color_watch` varchar(500) NOT NULL,
  `count_watch` int(11) NOT NULL,
  `material_watch` varchar(500) NOT NULL,
  `display_watch` varchar(500) NOT NULL,
  `diameter_watch` int(11) NOT NULL,
  `thickness_watch` int(11) NOT NULL,
  `width_strap_watch` int(11) NOT NULL,
  `material_glass_watch` varchar(500) NOT NULL,
  `water_resistant_watch` float NOT NULL,
  `brand_name_watch` varchar(500) NOT NULL,
  `price_watch` float NOT NULL,
  `short_description_watch` varchar(500) NOT NULL,
  `info_detail_watch` varchar(500) NOT NULL,
  `hot_watch` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_watch`
--

INSERT INTO `product_watch` (`pk_watch_id`, `fk_category_watch_id`, `name_watch`, `img_watch`, `img_watch2`, `img_watch3`, `img_watch4`, `color_watch`, `count_watch`, `material_watch`, `display_watch`, `diameter_watch`, `thickness_watch`, `width_strap_watch`, `material_glass_watch`, `water_resistant_watch`, `brand_name_watch`, `price_watch`, `short_description_watch`, `info_detail_watch`, `hot_watch`, `parent_id`) VALUES
(1, 4, 'Crux', '1569857245dong-ho-mvmt-black-link-master.jpg', '1569857245dong-ho-mvmt-black-link-2-master.jpg', '1569857245dong-ho-mvmt-black-link-3-master.jpg', '1569857245dong-ho-mvmt-black-link-4-master.jpg', 'gold', 4, 'gold', 'Kim', 30, 10, 20, 'Da', 5, 'áđa', 500000000, '<p>Thiết kế tối giản, vượt thời gian của đồng hồ Kashmir kết hợp với d&acirc;y da trở th&agrave;nh biểu tượng cho vẻ ngo&agrave;i lịch l&atilde;m, sang trọng.</p>\r\n\r\n<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />\r\n-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian</p>\r\n', '<p>Thiết kế tối giản, vượt thời gian của đồng hồ Kashmir kết hợp với d&acirc;y da trở th&agrave;nh biểu tượng cho vẻ ngo&agrave;i lịch l&atilde;m, sang trọng.</p>\r\n\r\n<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />\r\n-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian</p>\r\n', 0, 0),
(4, 4, 'Hublot', '15698568181-11695803e29a4e9bbd9f3efd62c975dd-master.jpg', '15698568182-7924b629b302406c9a553e3ef00763a1-master.jpg', '15698568183-5020539dda2b48c7b362981d05532676-master.jpg', '15698568184-1c7f6cd42b3c4d0dbf7736d0d856acc8-master.jpg', 'Vàng nổi', 10000, 'gold nổi', 'No display =)))', 100, 302, 99, 'Dây buộc lúa', 500, 'eeee', 500000000, '<p>Thiết kế tối giản, vượt thời gian của đồng hồ Kashmir kết hợp với d&acirc;y da trở th&agrave;nh biểu tượng cho vẻ ngo&agrave;i lịch l&atilde;m, sang trọng.</p>\r\n\r\n<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />\r\n-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian</p>\r\n', '<p>Thiết kế tối giản, vượt thời gian của đồng hồ Kashmir kết hợp với d&acirc;y da trở th&agrave;nh biểu tượng cho vẻ ngo&agrave;i lịch l&atilde;m, sang trọng.</p>\r\n\r\n<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />\r\n-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian</p>\r\n', 0, 0),
(5, 5, 'Casio', '1569857419dong-ho-mvmt-crux-master.jpg', '1569857419dong-ho-mvmt-crux-2-master.jpg', '1569857419dong-ho-mvmt-crux-3-master.jpg', '1569857419dong-ho-mvmt-crux-4-master.jpg', 'Trắng', 20, 'Nhựa', 'Kim', 30, 15, 20, 'Da', 30, 'Casio', 5000000, '<p>Thiết kế tối giản, vượt thời gian của đồng hồ Kashmir kết hợp với d&acirc;y da trở th&agrave;nh biểu tượng cho vẻ ngo&agrave;i lịch l&atilde;m, sang trọng.</p>\r\n\r\n<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />\r\n-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian</p>\r\n', '<p>Thiết kế tối giản, vượt thời gian của đồng hồ Kashmir kết hợp với d&acirc;y da trở th&agrave;nh biểu tượng cho vẻ ngo&agrave;i lịch l&atilde;m, sang trọng.</p>\r\n\r\n<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />\r\n-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian</p>\r\n', 0, 0),
(6, 5, 'Gunmetal Rose', '1569950134dong-ho-mvmt-gotham-master.jpg', '1570374344dong-ho-mvmt-gotham-2-master (1).jpg', '1569950134dong-ho-mvmt-gotham-3-master.jpg', '1569950134dong-ho-mvmt-gotham-4-master.jpg', 'vàng đồng', 20, 'Kim loại', 'Analog', 30, 20, 10, 'Kim loại', 4.5, 'Gunmetal', 30000000, '<p>Thiết kế tối giản, vượt thời gian của đồng hồ Kashmir kết hợp với d&acirc;y da trở th&agrave;nh biểu tượng cho vẻ ngo&agrave;i lịch l&atilde;m, sang trọng.</p>\r\n\r\n<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />\r\n-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian</p>\r\n', '<p>Thiết kế tối giản, vượt thời gian của đồng hồ Kashmir kết hợp với d&acirc;y da trở th&agrave;nh biểu tượng cho vẻ ngo&agrave;i lịch l&atilde;m, sang trọng.</p>\r\n\r\n<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />\r\n-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian</p>\r\n', 0, 0),
(8, 6, 'Super man', '1570091374dong-ho-mvmt-gunmetal-sandstone-master.jpg', '1570091374dong-ho-mvmt-gunmetal-sandstone-2-master.jpg', '1570091374dong-ho-mvmt-gunmetal-sandstone-3-master.jpg', '1570091374dong-ho-mvmt-gunmetal-sandstone-4-master.jpg', 'Bạc', 1, 'Kim loại', 'Analog', 40, 10, 20, 'saphire', 4.5, 'Avenger', 10000000000, '<p>Thiết kế tối giản, vượt thời gian của đồng hồ Kashmir kết hợp với d&acirc;y da trở th&agrave;nh biểu tượng cho vẻ ngo&agrave;i lịch l&atilde;m, sang trọng.</p>\r\n\r\n<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />\r\n-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian</p>\r\n', '<p>Thiết kế tối giản, vượt thời gian của đồng hồ Kashmir kết hợp với d&acirc;y da trở th&agrave;nh biểu tượng cho vẻ ngo&agrave;i lịch l&atilde;m, sang trọng.</p>\r\n\r\n<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />\r\n-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian</p>\r\n', 0, 0),
(9, 7, 'Hello kitty', '15701806481-11695803e29a4e9bbd9f3efd62c975dd-master.jpg', '15701806482-7924b629b302406c9a553e3ef00763a1-master.jpg', '15701806483-5020539dda2b48c7b362981d05532676-master.jpg', '15701806484-1c7f6cd42b3c4d0dbf7736d0d856acc8-master.jpg', 'pink', 325, 'Kim loại', 'Analog', 35, 20, 25, 'saphire', 5, 'Disney', 30000000, '<p>&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore totam, nihil magnam doloribus quasi omnis, molestiae voluptas iste harum mollitia optio. Tempora harum labore ut molestias vel, nemo est dolorum!</p>\r\n', '<p>&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore totam, nihil magnam doloribus quasi omnis, molestiae voluptas iste harum mollitia optio. Tempora harum labore ut molestias vel, nemo est dolorum!&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore totam, nihil magnam doloribus quasi omnis, molestiae voluptas iste harum mollitia optio. Tempora harum labore ut molestias vel, nemo est dolorum!</p>\r\n', 0, 0),
(10, 8, 'Donal duck', '1570180817dong-ho-mvmt-black-link-master.jpg', '1570180817dong-ho-mvmt-black-link-2-master.jpg', '1570180817dong-ho-mvmt-black-link-3-master.jpg', '1570180817dong-ho-mvmt-black-link-4-master.jpg', 'Black', 10000, 'Sắt', 'Analog', 40, 10, 25, 'Kính thấm nước', 5, 'Disney', 7777780000, '<p>&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore totam, nihil magnam doloribus quasi omnis, molestiae voluptas iste harum mollitia optio. Tempora harum labore ut molestias vel, nemo est dolorum!</p>\r\n', '<p>&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore totam, nihil magnam doloribus quasi omnis, molestiae voluptas iste harum mollitia optio. Tempora harum labore ut molestias vel, nemo est dolorum!&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore totam, nihil magnam doloribus quasi omnis, molestiae voluptas iste harum mollitia optio. Tempora harum labore ut molestias vel, nemo est dolorum!</p>\r\n', 0, 0),
(11, 9, 'Tom', '1570181055dong-ho-mvmt-crux-master.jpg', '1570181055dong-ho-mvmt-crux-2-master.jpg', '1570181055dong-ho-mvmt-crux-3-master.jpg', '1570181055dong-ho-mvmt-crux-4-master.jpg', 'Grey', 33, 'Kim loại', 'Analog', 40, 10, 20, 'Dây buộc lúa', 4.5, 'Disney', 10000000000, '<p>&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore totam, nihil magnam doloribus quasi omnis, molestiae voluptas iste harum mollitia optio. Tempora harum labore ut molestias vel, nemo est dolorum!</p>\r\n', '<p>&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore totam, nihil magnam doloribus quasi omnis, molestiae voluptas iste harum mollitia optio. Tempora harum labore ut molestias vel, nemo est dolorum!&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore totam, nihil magnam doloribus quasi omnis, molestiae voluptas iste harum mollitia optio. Tempora harum labore ut molestias vel, nemo est dolorum!&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing e', 0, 0),
(12, 7, 'Hulk', '1570211972dong-ho-mvmt-gotham-master.jpg', '1570374263dong-ho-mvmt-gotham-2-master (1).jpg', '1570211972dong-ho-mvmt-gotham-3-master.jpg', '1570211972dong-ho-mvmt-gotham-4-master.jpg', 'Bạc', 17, 'Kim loại', 'Analog', 40, 10, 20, 'saphire', 4.5, 'Avenger', 10000000000, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolo', 0, 0),
(13, 8, 'Thor', '1570212090dong-ho-mvmt-gunmetal-sandstone-master.jpg', '1570212090dong-ho-mvmt-gunmetal-sandstone-2-master.jpg', '1570212090dong-ho-mvmt-gunmetal-sandstone-3-master.jpg', '1570212090dong-ho-mvmt-gunmetal-sandstone-4-master.jpg', 'Nâu', 12, 'Kim loại', 'Analog', 30, 10, 25, 'saphire', 5, 'Avenger', 800000000000000, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolo', 0, 0),
(14, 10, 'Vòng tay curnon', '157035398771740693_2397652253808193_603282269016162304_o.jpg', '157035398771660684_2397652243808194_5481353914466959360_o.jpg', '157035398771049038_2397652140474871_6514635600350412800_o.jpg', '157035398771740693_2397652253808193_603282269016162304_o.jpg', 'Bạc', 33, 'Bạc', '0', 40, 0, 0, '0', 0, 'Curnon', 250000, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum aliquid, consequuntur illo obcaecati voluptatem saepe quas, rerum nisi dignissimos ut delectus labore exercitationem at molestiae maiores aspernatur, quisquam numquam quia.</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum aliquid, consequuntur illo obcaecati voluptatem saepe quas, rerum nisi dignissimos ut delectus labore exercitationem at molestiae maiores aspernatur, quisquam numquam quia.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum aliquid, consequuntur illo obcaecati voluptatem saepe quas, rerum nisi dignissimos ut delectus labore exercitationem at molestiae maiores aspernatur, quisquam numquam quia.</p>\r\n', 0, 0),
(15, 10, 'Vòng tay curnon', '157035406464849500_2278089032245448_8108813343344558080_n.jpg', '157035406466692537_2273924426058636_7295104185362546688_n (1).jpg', '157035406466692537_2273924426058636_7295104185362546688_n.jpg', '157035406466853642_2328905590536644_4006258864218439680_n.jpg', 'gold', 15, 'gold', '0', 40, 0, 0, '0', 0, 'Curnon', 500000, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum aliquid, consequuntur illo obcaecati voluptatem saepe quas, rerum nisi dignissimos ut delectus labore exercitationem at molestiae maiores aspernatur, quisquam numquam quia.</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum aliquid, consequuntur illo obcaecati voluptatem saepe quas, rerum nisi dignissimos ut delectus labore exercitationem at molestiae maiores aspernatur, quisquam numquam quia.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum aliquid, consequuntur illo obcaecati voluptatem saepe quas, rerum nisi dignissimos ut delectus labore exercitationem at molestiae maiores aspernatur, quisquam numquam quia.</p>\r\n', 0, 0),
(16, 11, 'Dây da curnon', '157035427271838727_2378129125615969_3208770676726956032_n.jpg', '157035427271407208_2648407381856607_2181757371057963008_n.jpg', '157035427271501395_2420698671377087_5208687971514974208_n.jpg', '157035427271838727_2378129125615969_3208770676726956032_n.jpg', 'Nâu', 33, '0', '0', 0, 0, 0, '0', 0, 'Curnon', 60000000, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum aliquid, consequuntur illo obcaecati voluptatem saepe quas, rerum nisi dignissimos ut delectus labore exercitationem at molestiae maiores aspernatur, quisquam numquam quia.</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum aliquid, consequuntur illo obcaecati voluptatem saepe quas, rerum nisi dignissimos ut delectus labore exercitationem at molestiae maiores aspernatur, quisquam numquam quia.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum aliquid, consequuntur illo obcaecati voluptatem saepe quas, rerum nisi dignissimos ut delectus labore exercitationem at molestiae maiores aspernatur, quisquam numquam quia.</p>\r\n', 0, 0),
(17, 11, 'Dây da curnon', '157035441522160458_2050306251653417_341446425403457536_n.jpg', '157035441526757435_1622824624451889_3212264426463821824_n.jpg', '157035441526757437_1396836297095143_6236578696052867072_n.jpg', '157035441526757435_1622824624451889_3212264426463821824_n.jpg', 'Black', 50, 'da', '0', 60, 0, 30, '0', 0, 'Curnon', 350000, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum aliquid, consequuntur illo obcaecati voluptatem saepe quas, rerum nisi dignissimos ut delectus labore exercitationem at molestiae maiores aspernatur, quisquam numquam quia.</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum aliquid, consequuntur illo obcaecati voluptatem saepe quas, rerum nisi dignissimos ut delectus labore exercitationem at molestiae maiores aspernatur, quisquam numquam quia.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum aliquid, consequuntur illo obcaecati voluptatem saepe quas, rerum nisi dignissimos ut delectus labore exercitationem at molestiae maiores aspernatur, quisquam numquam quia.</p>\r\n', 0, 0),
(18, 11, 'Dây da curnon', '157035448048986433_2065779916778339_2693749208254513152_n.jpg', '157035448049038567_1951900194859902_2082257229511131136_n.jpg', '157035448049009661_2374669772561492_4716759756214108160_n.jpg', '157035448049054186_2138281056193256_6391996734813241344_n.jpg', 'Blue', 20, 'da', '0', 60, 0, 25, '0', 0, 'Curnon', 5000000, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum aliquid, consequuntur illo obcaecati voluptatem saepe quas, rerum nisi dignissimos ut delectus labore exercitationem at molestiae maiores aspernatur, quisquam numquam quia.</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum aliquid, consequuntur illo obcaecati voluptatem saepe quas, rerum nisi dignissimos ut delectus labore exercitationem at molestiae maiores aspernatur, quisquam numquam quia.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum aliquid, consequuntur illo obcaecati voluptatem saepe quas, rerum nisi dignissimos ut delectus labore exercitationem at molestiae maiores aspernatur, quisquam numquam quia.</p>\r\n', 0, 0),
(19, 5, 'Loki', '1570355477br-potent-2-1024x1024-2x.jpg', '1570355477vd-sharp-1024x1024-2x (1).jpg', '1571195959vd-sharp-1024x1024-2x (1).jpg', '1571195937vd-sharp-1024x1024-2x (1).jpg', 'Nâu', 0, 'bạc', 'Analog', 30, 10, 20, 'saphire', 5, 'Avenger', 8000000000, '<p>Thiết kế tối giản, vượt thời gian của đồng hồ Kashmir kết hợp với d&acirc;y da trở th&agrave;nh biểu tượng cho vẻ ngo&agrave;i lịch l&atilde;m, sang trọng.</p>\r\n\r\n<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />\r\n-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian</p>\r\n', '<p>Thiết kế tối giản, vượt thời gian của đồng hồ Kashmir kết hợp với d&acirc;y da trở th&agrave;nh biểu tượng cho vẻ ngo&agrave;i lịch l&atilde;m, sang trọng.</p>\r\n\r\n<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />\r\n-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian</p>\r\n', 0, 0),
(20, 4, 'Jerry', '1571463066silver-nightfall-1024x1024-2x-9dc4aca0-04db-4ae9-aae3-7acc96cc4515.jpg', '15714630664-1c7f6cd42b3c4d0dbf7736d0d856acc8-master.jpg', '1571463066ban-biet-gi-ve-dong-ho-chronograph-1552766551.jpg', '1571463066br-sharp-2-1024x1024-2x.jpg', 'gold', 17, 'gold', 'Kim', 30, 10, 25, 'saphire', 5, 'Hublot', 2000000000, '<p>fdgsgfsgag&aacute;gsfgdfs</p>\r\n', '<p>sdfsdhdhfsagfadhsdhsthsdh</p>\r\n', 0, 0),
(21, 8, 'VGD', '1571470458Adele_1024x1024@2x.webp', '1571470458Adele.2_1024x1024@2x.webp', '1571470458IMG_1975_6d545a63-2645-4590-a167-891394e80495_1024x1024@2x.webp', '1571470458Adele_1024x1024@2x.webp', 'Hồng', 20, 'Kim loại', 'Kim', 40, 20, 30, 'saphire', 4.5, 'Curnon', 2000000000, '<p>D&acirc;y da kết hợp c&ugrave;ng đồng hồ Melissani tạo n&ecirc;n sứt h&uacute;t v&agrave; n&eacute;t c&aacute; t&iacute;nh tr&ecirc;n cổ tay của mọi người phụ nữ</p>\r\n\r\n<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />\r\n-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian<br /', '<p>D&acirc;y da kết hợp c&ugrave;ng đồng hồ Melissani tạo n&ecirc;n sứt h&uacute;t v&agrave; n&eacute;t c&aacute; t&iacute;nh tr&ecirc;n cổ tay của mọi người phụ nữ</p>\r\n\r\n<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />\r\n-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian<br /', 0, 0),
(22, 7, 'tutu', '1571470711Blossom_1_a83dc148-e641-48ff-aca4-8bfff61ddae3_1024x1024@2x.webp', '1571470711Blossom.2_d2f3e585-13ae-4dc2-8a3a-e35702abcf8b_1024x1024@2x.webp', '1571470711Blossom1_1024x1024@2x.webp', '1571470711IMG_1975_bf8b7648-0560-4efd-97bd-f9f3b0454ac3_1024x1024@2x.webp', 'Hồng xám', 328, 'Kim loại', 'Kim', 40, 10, 25, 'saphire', 5, 'Curnon', 30000000, '<p>D&acirc;y da kết hợp c&ugrave;ng đồng hồ Melissani tạo n&ecirc;n sứt h&uacute;t v&agrave; n&eacute;t c&aacute; t&iacute;nh tr&ecirc;n cổ tay của mọi người phụ nữ</p>\r\n\r\n<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />\r\n-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian<br /', '<p>D&acirc;y da kết hợp c&ugrave;ng đồng hồ Melissani tạo n&ecirc;n sứt h&uacute;t v&agrave; n&eacute;t c&aacute; t&iacute;nh tr&ecirc;n cổ tay của mọi người phụ nữ</p>\r\n\r\n<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />\r\n-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian<br /', 0, 0),
(23, 9, 'Garena', '1571470849Cora_1024x1024@2x.webp', '1571470849Cora.2_1024x1024@2x.webp', '1571470849dx-01563_copy_1024x1024@2x.webp', '1571470849IMG_1975_290352c3-1d71-4e54-9052-90970ef5786b_1024x1024@2x.webp', 'Hồng xám', 30, 'bạc', 'Kim', 30, 10, 20, 'saphire', 4.5, 'Curnon', 5000000000, '<p>Đồng hồ Melissani rất được ưa chuộng khi đi c&ugrave;ng d&acirc;y kim loại bởi vẻ đẹp quyến rũ, thanh lịch v&agrave; ph&ugrave; hợp với nhiều phong c&aacute;ch kh&aacute;c nhau</p>\r\n\r\n<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />\r\n-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với', '<p>Đồng hồ Melissani rất được ưa chuộng khi đi c&ugrave;ng d&acirc;y kim loại bởi vẻ đẹp quyến rũ, thanh lịch v&agrave; ph&ugrave; hợp với nhiều phong c&aacute;ch kh&aacute;c nhau</p>\r\n\r\n<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />\r\n-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với', 0, 0),
(24, 7, 'Larva', '1571470963Chloe_1024x1024@2x.webp', '1571470963Chloe.2_1024x1024@2x.webp', '1571470963dx-01392_1024x1024@2x.webp', '1571470963IMG_1975_2b8db5bc-6866-4fa7-bf89-f2b955a241bc_1024x1024@2x.webp', 'Hồng', 2, 'Kim loại', 'Kim', 25, 10, 30, 'saphire', 5, 'Curnon', 5000000, '<p>Đồng hồ Melissani rất được ưa chuộng khi đi c&ugrave;ng d&acirc;y kim loại bởi vẻ đẹp quyến rũ, thanh lịch v&agrave; ph&ugrave; hợp với nhiều phong c&aacute;ch kh&aacute;c nhau</p>\r\n\r\n<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />\r\n-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với', '<p>Đồng hồ Melissani rất được ưa chuộng khi đi c&ugrave;ng d&acirc;y kim loại bởi vẻ đẹp quyến rũ, thanh lịch v&agrave; ph&ugrave; hợp với nhiều phong c&aacute;ch kh&aacute;c nhau</p>\r\n\r\n<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />\r\n-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với', 0, 0),
(25, 9, 'PHP', '1571471061Moon_1024x1024@2x.webp', '1571471061Moon.2_1024x1024@2x.webp', '1571471061moon2_1024x1024@2x.webp', '1571471061NDP9171_1_16e1043d-e63c-4960-868a-bd3e864694e0_80x80@2x.webp', 'Đen', 17, 'bạc', 'Kim', 35, 15, 25, 'saphire', 4.5, 'Curnon', 70000000, '<p>Đồng hồ Melissani rất được ưa chuộng khi đi c&ugrave;ng d&acirc;y kim loại bởi vẻ đẹp quyến rũ, thanh lịch v&agrave; ph&ugrave; hợp với nhiều phong c&aacute;ch kh&aacute;c nhau</p>\r\n\r\n<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />\r\n-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với', '<p>Đồng hồ Melissani rất được ưa chuộng khi đi c&ugrave;ng d&acirc;y kim loại bởi vẻ đẹp quyến rũ, thanh lịch v&agrave; ph&ugrave; hợp với nhiều phong c&aacute;ch kh&aacute;c nhau</p>\r\n\r\n<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />\r\n-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với', 0, 0),
(26, 6, 'hkt', '1571471306Mace_1024x1024@2x.webp', '1571471306Mace2_1024x1024@2x (1).webp', '1571471306Mace2_1024x1024@2x.webp', '1571471306IMG_1975_bf8b7648-0560-4efd-97bd-f9f3b0454ac3_1024x1024@2x.webp', 'Bạc', 20, 'bạc', 'Kim', 30, 10, 25, 'saphire', 4.5, 'Curnon', 50000000, '<p>Thiết kế tối giản, vượt thời gian của đồng hồ Kashmir kết hợp với d&acirc;y da trở th&agrave;nh biểu tượng cho vẻ ngo&agrave;i lịch l&atilde;m, sang trọng.</p>\r\n\r\n<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />\r\n-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian</p>\r\n', '<p>Thiết kế tối giản, vượt thời gian của đồng hồ Kashmir kết hợp với d&acirc;y da trở th&agrave;nh biểu tượng cho vẻ ngo&agrave;i lịch l&atilde;m, sang trọng.</p>\r\n\r\n<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />\r\n-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian</p>\r\n', 0, 0),
(27, 6, 'Garen', '1571471465D.Fearless_1024x1024@2x.webp', '1571471465D.Fearless.2_1024x1024@2x.webp', '1571471465Gun_Abyss_1024x1024@2x.webp', '1571471465NDP9171_1_e73fb856-f9c2-4bb8-8178-282fb7843242_1024x1024@2x.webp', 'Đen', 0, 'Kim loại', 'Kim', 40, 15, 20, 'saphire', 4.5, 'Curnon', 9000000000, '<p>Thiết kế tối giản, vượt thời gian của đồng hồ Kashmir kết hợp với d&acirc;y da trở th&agrave;nh biểu tượng cho vẻ ngo&agrave;i lịch l&atilde;m, sang trọng.</p>\r\n\r\n<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />\r\n-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian</p>\r\n', '<p>Thiết kế tối giản, vượt thời gian của đồng hồ Kashmir kết hợp với d&acirc;y da trở th&agrave;nh biểu tượng cho vẻ ngo&agrave;i lịch l&atilde;m, sang trọng.</p>\r\n\r\n<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />\r\n-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian</p>\r\n', 0, 0),
(28, 6, 'Yasuo', '1571471583Heinz_1024x1024@2x.webp', '1571471583Gun_Abyss_1024x1024@2x.webp', '1571471583Heinz_1024x1024@2x.webp', '1571471583IMG_1975_290352c3-1d71-4e54-9052-90970ef5786b_1024x1024@2x.webp', 'Bạc', 33, 'bạc', 'Kim', 30, 15, 25, 'saphire', 4.5, 'Avenger', 5000000, '<p>Thiết kế tối giản, vượt thời gian của đồng hồ Kashmir kết hợp với d&acirc;y da trở th&agrave;nh biểu tượng cho vẻ ngo&agrave;i lịch l&atilde;m, sang trọng.</p>\r\n\r\n<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />\r\n-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian</p>\r\n', '<p>Thiết kế tối giản, vượt thời gian của đồng hồ Kashmir kết hợp với d&acirc;y da trở th&agrave;nh biểu tượng cho vẻ ngo&agrave;i lịch l&atilde;m, sang trọng.</p>\r\n\r\n<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />\r\n-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian</p>\r\n', 0, 0),
(29, 5, 'Sona', '1571471744BX.Grand_1024x1024@2x.webp', '1571471744BX.Grand.2_1024x1024@2x.webp', '1571471744LBKM.Grand_1024x1024@2x.webp', '1571471744NDP9171_1_16e1043d-e63c-4960-868a-bd3e864694e0_80x80@2x.webp', 'Đen', 33, 'Kim loại', 'Kim', 30, 10, 25, 'saphire', 4.5, 'Curnon', 2000000000, '<p>Thiết kế tối giản, vượt thời gian của đồng hồ Kashmir kết hợp với d&acirc;y da trở th&agrave;nh biểu tượng cho vẻ ngo&agrave;i lịch l&atilde;m, sang trọng.</p>\r\n\r\n<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />\r\n-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian</p>\r\n', '<p>Thiết kế tối giản, vượt thời gian của đồng hồ Kashmir kết hợp với d&acirc;y da trở th&agrave;nh biểu tượng cho vẻ ngo&agrave;i lịch l&atilde;m, sang trọng.</p>\r\n\r\n<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />\r\n-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian</p>\r\n', 0, 0),
(30, 10, 'Soraka', '1571472153IR1_1024x1024@2x.webp', '1571472153IR2_1024x1024@2x.webp', '1571472153IMG_1975_290352c3-1d71-4e54-9052-90970ef5786b_1024x1024@2x.webp', '1571472153IR1_1024x1024@2x.webp', 'Hồng', 19, 'bạc', '0', 50, 0, 0, '0', 0, 'Curnon', 500000, '<p>Iris Cuff l&agrave; mẫu v&ograve;ng tay d&agrave;nh cho những c&ocirc; n&agrave;ng c&aacute; t&iacute;nh với&nbsp;thiết kế đinh t&aacute;n như &ldquo;sự gai g&oacute;c&rdquo; sau bao thăng trầm v&agrave; lời nhắn nhủ rằng h&atilde;y lu&ocirc;n tự tin l&agrave; ch&iacute;nh m&igrave;nh.</p>\r\n', '<p>Iris Cuff l&agrave; mẫu v&ograve;ng tay d&agrave;nh cho những c&ocirc; n&agrave;ng c&aacute; t&iacute;nh với&nbsp;thiết kế đinh t&aacute;n như &ldquo;sự gai g&oacute;c&rdquo; sau bao thăng trầm v&agrave; lời nhắn nhủ rằng h&atilde;y lu&ocirc;n tự tin l&agrave; ch&iacute;nh m&igrave;nh.</p>\r\n', 0, 0),
(31, 12, 'TF', '157147246765732317_1833292193482646_1116856836021026816_n.jpg', '157147246765248133_1833292156815983_2799725980095086592_n.jpg', '157147246765373132_1833292186815980_4820096012225871872_n.jpg', '157147246765248133_1833292156815983_2799725980095086592_n.jpg', 'Đen', 20, 'Nhựa', '0', 0, 0, 0, '0', 0, 'Disney', 60000000, '<p>K&iacute;nh r&acirc;m&nbsp;gi&uacute;p bạn ngăn ngừa tia tử ngoại (tia cực t&iacute;m) - một loại tia c&oacute; hại trong phổ &aacute;nh s&aacute;ng mặt trời khỏi g&acirc;y hại cho mắt. Tia cực t&iacute;m - tia UV đ&atilde; được biết đến từ l&acirc;u l&agrave; mối nguy hiểm tức th&igrave; v&agrave; tiềm t&agrave;ng cho mắt. Bỏng mắt do tia UV hay gặp với người tắm nắng qu&aacute; l&acirc;u, người đi trượt tuyết. L&acirc;u d&agrave;i nếu phơi nhiễm với tia UV qu&aacute; đ&aacute;ng ta có thể ', '<p>k&iacute;nh r&acirc;m c&ograve;n gi&uacute;p bạn ngăn ngừa tia tử ngoại (tia cực t&iacute;m) - một loại tia c&oacute; hại trong phổ &aacute;nh s&aacute;ng mặt trời khỏi g&acirc;y hại cho mắt. Tia cực t&iacute;m - tia UV đ&atilde; được biết đến từ l&acirc;u l&agrave; mối nguy hiểm tức th&igrave; v&agrave; tiềm t&agrave;ng cho mắt. Bỏng mắt do tia UV hay gặp với người tắm nắng qu&aacute; l&acirc;u, người đi trượt tuyết. L&acirc;u d&agrave;i nếu phơi nhiễm với tia UV qu&aacute; đ&aacute;ng ta co', 0, 0),
(32, 5, 'dong ho abc', '15738877811569857245dong-ho-mvmt-black-link-2-master.jpg', '15738877811569857419dong-ho-mvmt-crux-4-master.jpg', '15738877811569857419dong-ho-mvmt-crux-master.jpg', '15738877811570091374dong-ho-mvmt-gunmetal-sandstone-3-master.jpg', 'đen', 1, 'vàng', 'màn hợp kim', 6, 3, 5, 'safire', 5, 'abc', 20000000, '<p>jhsdjfdsff</p>\r\n', '<p>dsaffdgdgd fd</p>\r\n', 0, 0),
(33, 6, 'ĐỒng hồ Rolex', '15738886561570355477vd-sharp-1024x1024-2x (1).jpg', '15738886561569857419dong-ho-mvmt-crux-3-master.jpg', '15738886561569950134dong-ho-mvmt-gotham-2-master.jpg', '15738886561570091374dong-ho-mvmt-gunmetal-sandstone-2-master.jpg', 'Bạc', 20, 'bạc', 'Kim', 4, 5, 2, 'saphire', 5, 'Rolex', 20000000, '<p>qửqwr</p>\r\n', '<p>qưeqwe</p>\r\n', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `slide_top`
--

CREATE TABLE `slide_top` (
  `slide_id` int(11) NOT NULL,
  `img` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slide_top`
--

INSERT INTO `slide_top` (`slide_id`, `img`) VALUES
(1, '1571472857aaa.png'),
(2, '157146899012.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `username` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `email`, `password`, `admin_id`, `username`) VALUES
(1, 'giang@gmail.com', '96e79218965eb72c92a549dd5a330112', 1, 'giang còi'),
(3, 'dao@gmail.com', '96e79218965eb72c92a549dd5a330112', 1, 'Đạo đỗ'),
(4, 'khanh@gmail.com', '96e79218965eb72c92a549dd5a330112', 1, 'Khánh tin12a1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_news_watch`
--
ALTER TABLE `category_news_watch`
  ADD PRIMARY KEY (`pk_category_news_watch_id`);

--
-- Indexes for table `category_watch`
--
ALTER TABLE `category_watch`
  ADD PRIMARY KEY (`pk_category_watch_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `contact_customer`
--
ALTER TABLE `contact_customer`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `news_watch`
--
ALTER TABLE `news_watch`
  ADD PRIMARY KEY (`pk_news_watch_id`),
  ADD KEY `fk_category_news_watch` (`fk_category_news_watch`);

--
-- Indexes for table `order_customer`
--
ALTER TABLE `order_customer`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `fk_watch_id` (`fk_watch_id`);

--
-- Indexes for table `product_watch`
--
ALTER TABLE `product_watch`
  ADD PRIMARY KEY (`pk_watch_id`),
  ADD KEY `fk_category_watch_id` (`fk_category_watch_id`);

--
-- Indexes for table `slide_top`
--
ALTER TABLE `slide_top`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_news_watch`
--
ALTER TABLE `category_news_watch`
  MODIFY `pk_category_news_watch_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category_watch`
--
ALTER TABLE `category_watch`
  MODIFY `pk_category_watch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `contact_customer`
--
ALTER TABLE `contact_customer`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `news_watch`
--
ALTER TABLE `news_watch`
  MODIFY `pk_news_watch_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_customer`
--
ALTER TABLE `order_customer`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `product_watch`
--
ALTER TABLE `product_watch`
  MODIFY `pk_watch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `slide_top`
--
ALTER TABLE `slide_top`
  MODIFY `slide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `news_watch`
--
ALTER TABLE `news_watch`
  ADD CONSTRAINT `news_watch_ibfk_1` FOREIGN KEY (`fk_category_news_watch`) REFERENCES `category_news_watch` (`pk_category_news_watch_id`);

--
-- Constraints for table `order_customer`
--
ALTER TABLE `order_customer`
  ADD CONSTRAINT `order_customer_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`fk_watch_id`) REFERENCES `product_watch` (`pk_watch_id`);

--
-- Constraints for table `product_watch`
--
ALTER TABLE `product_watch`
  ADD CONSTRAINT `product_watch_ibfk_1` FOREIGN KEY (`fk_category_watch_id`) REFERENCES `category_watch` (`pk_category_watch_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
