-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2019 at 11:52 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartscan`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit`
--

CREATE TABLE `audit` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `page` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(255) NOT NULL,
  `viewed` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `audit`
--

INSERT INTO `audit` (`id`, `user`, `page`, `timestamp`, `ip`, `viewed`) VALUES
(1, 0, '90', '2019-06-17 13:26:02', '::1', 0),
(2, 2, '90', '2019-06-20 16:55:30', '::1', 0),
(3, 2, '90', '2019-06-20 16:55:31', '::1', 0),
(4, 2, '90', '2019-06-20 16:55:32', '::1', 0),
(5, 2, '90', '2019-06-20 16:55:33', '::1', 0),
(6, 2, '90', '2019-06-20 16:55:33', '::1', 0),
(7, 2, '90', '2019-06-20 16:55:34', '::1', 0),
(8, 2, '90', '2019-06-20 16:55:35', '::1', 0),
(9, 2, '90', '2019-06-20 16:55:36', '::1', 0),
(10, 2, '90', '2019-06-20 16:55:36', '::1', 0),
(11, 2, '90', '2019-06-20 17:11:25', '::1', 0),
(12, 2, '90', '2019-06-20 17:11:27', '::1', 0),
(13, 3, '4', '2019-06-20 17:12:01', '::1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `crons`
--

CREATE TABLE `crons` (
  `id` int(11) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  `sort` int(3) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `createdby` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crons`
--

INSERT INTO `crons` (`id`, `active`, `sort`, `name`, `file`, `createdby`, `created`, `modified`) VALUES
(1, 0, 100, 'Auto-Backup', 'backup.php', 1, '2017-09-16 07:49:22', '2017-11-11 20:15:36');

-- --------------------------------------------------------

--
-- Table structure for table `crons_logs`
--

CREATE TABLE `crons_logs` (
  `id` int(11) NOT NULL,
  `cron_id` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `website_name` varchar(100) NOT NULL,
  `smtp_server` varchar(100) NOT NULL,
  `smtp_port` int(10) NOT NULL,
  `email_login` varchar(150) NOT NULL,
  `email_pass` varchar(100) NOT NULL,
  `from_name` varchar(100) NOT NULL,
  `from_email` varchar(150) NOT NULL,
  `transport` varchar(255) NOT NULL,
  `verify_url` varchar(255) NOT NULL,
  `email_act` int(1) NOT NULL,
  `debug_level` int(1) NOT NULL DEFAULT '0',
  `isSMTP` int(1) NOT NULL DEFAULT '0',
  `isHTML` varchar(5) NOT NULL DEFAULT 'true',
  `useSMTPauth` varchar(6) NOT NULL DEFAULT 'true'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `website_name`, `smtp_server`, `smtp_port`, `email_login`, `email_pass`, `from_name`, `from_email`, `transport`, `verify_url`, `email_act`, `debug_level`, `isSMTP`, `isHTML`, `useSMTPauth`) VALUES
(1, 'User Spice2', 'smtp.gmail.com', 587, 'yourEmail@gmail.com', '1234', 'User Spice', 'yourEmail@gmail.com', 'tls', 'http://localhost/43', 0, 0, 0, 'true', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `groups_menus`
--

CREATE TABLE `groups_menus` (
  `id` int(11) UNSIGNED NOT NULL,
  `group_id` int(11) UNSIGNED NOT NULL,
  `menu_id` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups_menus`
--

INSERT INTO `groups_menus` (`id`, `group_id`, `menu_id`) VALUES
(30, 2, 9),
(29, 0, 8),
(28, 0, 7),
(27, 0, 21),
(5, 0, 3),
(6, 0, 1),
(7, 0, 2),
(8, 0, 51),
(9, 0, 52),
(10, 0, 37),
(11, 0, 38),
(12, 2, 39),
(13, 2, 40),
(14, 2, 41),
(15, 2, 42),
(16, 2, 43),
(17, 2, 44),
(18, 2, 45),
(19, 0, 46),
(20, 0, 47),
(21, 0, 49),
(26, 0, 20),
(25, 0, 18),
(31, 2, 10),
(32, 2, 11),
(33, 2, 12),
(34, 2, 13),
(35, 2, 14),
(36, 2, 15),
(37, 0, 16),
(47, 3, 23),
(46, 2, 23),
(49, 3, 24),
(48, 2, 24),
(51, 3, 25),
(50, 2, 25);

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `stripe_ts` varchar(255) NOT NULL,
  `stripe_tp` varchar(255) NOT NULL,
  `stripe_ls` varchar(255) NOT NULL,
  `stripe_lp` varchar(255) NOT NULL,
  `recap_pub` varchar(100) NOT NULL,
  `recap_pri` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` int(3) NOT NULL,
  `logdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logtype` varchar(25) NOT NULL,
  `lognote` text NOT NULL,
  `ip` varchar(75) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `logdate`, `logtype`, `lognote`, `ip`) VALUES
(1, 1, '2019-06-16 22:55:00', 'System Updates', 'Inserted ip to logs table', '::1'),
(2, 1, '2019-06-16 22:55:00', 'System Updates', 'Update 2ZB9mg1l0JXe successfully deployed.', '::1'),
(3, 1, '2019-06-16 22:55:00', 'System Updates', 'Update B9t6He7qmFXa successfully deployed.', '::1'),
(4, 1, '2019-06-16 22:55:00', 'System Updates', 'Updated group_menu int columns to 11 and unsigned', '::1'),
(5, 1, '2019-06-16 22:55:00', 'System Updates', 'Updated users int columns to 11 and unsigned', '::1'),
(6, 1, '2019-06-16 22:55:00', 'System Updates', 'Update 86FkFVV4TGRg successfully deployed.', '::1'),
(7, 1, '2019-06-16 22:55:00', 'System Updates', 'Added default language to settings table', '::1'),
(8, 1, '2019-06-16 22:55:00', 'System Updates', 'Added default language to settings table', '::1'),
(9, 1, '2019-06-16 22:55:00', 'System Updates', 'Added language info to settings table', '::1'),
(10, 1, '2019-06-16 22:55:00', 'System Updates', 'Added default language to settings table', '::1'),
(11, 1, '2019-06-16 22:55:00', 'System Updates', 'Modified menus for multilanguage', '::1'),
(12, 1, '2019-06-16 22:55:00', 'System Updates', 'Modified menus for multilanguage', '::1'),
(13, 1, '2019-06-16 22:55:00', 'System Updates', 'Modified menus for multilanguage', '::1'),
(14, 1, '2019-06-16 22:55:00', 'System Updates', 'Modified menus for multilanguage', '::1'),
(15, 1, '2019-06-16 22:55:00', 'System Updates', 'Modified menus for multilanguage', '::1'),
(16, 1, '2019-06-16 22:55:00', 'System Updates', 'Modified menus for multilanguage', '::1'),
(17, 1, '2019-06-16 22:55:00', 'System Updates', 'Modified menus for multilanguage', '::1'),
(18, 1, '2019-06-16 22:55:00', 'System Updates', 'Modified menus for multilanguage', '::1'),
(19, 1, '2019-06-16 22:55:00', 'System Updates', 'Modified menus for multilanguage', '::1'),
(20, 1, '2019-06-16 22:55:00', 'System Updates', 'Modified menus for multilanguage', '::1'),
(21, 1, '2019-06-16 22:55:00', 'System Updates', 'Modified menus for multilanguage', '::1'),
(22, 1, '2019-06-16 22:55:00', 'System Updates', 'Modified menus for multilanguage', '::1'),
(23, 1, '2019-06-16 22:55:00', 'System Updates', 'Modified menus for multilanguage', '::1'),
(24, 1, '2019-06-16 22:55:00', 'System Updates', 'Modified menus for multilanguage', '::1'),
(25, 1, '2019-06-16 22:55:00', 'System Updates', 'Modified menus for multilanguage', '::1'),
(26, 1, '2019-06-16 22:55:00', 'System Updates', 'Update y4A1Y0u9n2Rt successfully deployed.', '::1'),
(27, 1, '2019-06-16 22:55:00', 'System Updates', 'Modified menus for multilanguage', '::1'),
(28, 1, '2019-06-16 22:55:00', 'System Updates', 'Update Tm5xY22MM8eC successfully deployed.', '::1'),
(29, 1, '2019-06-16 22:55:00', 'System Updates', 'Update 0YXdrInkjV86F successfully deployed.', '::1'),
(30, 1, '2019-06-16 22:55:00', 'System Updates', 'Added us_plugin_hooks table', '::1'),
(31, 1, '2019-06-16 22:55:00', 'System Updates', 'Update 99plgnkjV86 successfully deployed.', '::1'),
(32, 1, '2019-06-16 22:55:00', 'System Updates', 'Update 0DaShInkjV86 successfully deployed.', '::1'),
(33, 1, '2019-06-16 22:55:00', 'System Updates', 'Update 0DaShInkjVz1 successfully deployed.', '::1'),
(34, 1, '2019-06-16 22:55:25', 'User', 'User logged in.', NULL),
(35, 1, '2019-06-16 22:56:47', 'USPlugins', 'performancechecker installed', '::1'),
(36, 1, '2019-06-16 22:56:47', 'USPlugins', 'spice_shaker installed', '::1'),
(37, 1, '2019-06-17 13:24:43', 'Permissions Manager', 'Added Permission Level named Manager.', '::1'),
(38, 1, '2019-06-17 13:25:28', 'Pages Manager', 'Added 2 permission(s) to new_student.php.', '::1'),
(39, 1, '2019-06-17 13:25:28', 'Pages Manager', 'Retitled \'new_student.php\' to \'New Student\'.', '::1'),
(40, 1, '2019-06-17 13:35:47', 'Menu Manager', 'Added new dropdown', '::1'),
(41, 1, '2019-06-17 13:36:40', 'Menu Manager', 'Updated 23', '::1'),
(42, 1, '2019-06-17 13:36:55', 'Menu Manager', 'Added new item', '::1'),
(43, 1, '2019-06-17 13:37:31', 'Menu Manager', 'Updated 24', '::1'),
(44, 1, '2019-06-17 13:37:53', 'Menu Manager', 'Updated 24', '::1'),
(45, 1, '2019-06-17 13:58:25', 'Pages Manager', 'Added 2 permission(s) to student_search.php.', '::1'),
(46, 1, '2019-06-17 13:58:25', 'Pages Manager', 'Retitled \'student_search.php\' to \'Student Search\'.', '::1'),
(47, 1, '2019-06-19 11:22:04', 'User', 'User logged in.', NULL),
(48, 1, '2019-06-19 11:23:15', 'User', 'User logged in.', NULL),
(49, 1, '2019-06-19 11:51:27', 'Menu Manager', 'Added new item', '::1'),
(50, 1, '2019-06-19 11:52:00', 'Menu Manager', 'Updated 25', '::1'),
(51, 1, '2019-06-19 11:53:31', 'Menu Manager', 'Updated 23', '::1'),
(52, 1, '2019-06-19 11:54:08', 'Menu Manager', 'Updated 24', '::1'),
(53, 1, '2019-06-19 11:54:42', 'Menu Manager', 'Updated 25', '::1'),
(54, 1, '2019-06-19 12:24:25', 'Money', 'Added new user Dan Hoover with a balance of 333.', '::1'),
(55, 1, '2019-06-19 12:35:04', 'User Manager', 'Updated username for Sample from user to kiosk.', '::1'),
(56, 1, '2019-06-19 12:35:04', 'User Manager', 'Updated first name for Sample from Sample to Kiosk.', '::1'),
(57, 1, '2019-06-19 12:35:04', 'User Manager', 'Updated last name for Sample from User to Computer.', '::1'),
(58, 1, '2019-06-19 12:35:29', 'Permissions Manager', 'Added Permission Level named kiosk.', '::1'),
(59, 1, '2019-06-19 12:36:52', 'Pages Manager', 'Added 3 permission(s) to kiosk_check_balance.php.', '::1'),
(60, 1, '2019-06-19 12:36:52', 'Pages Manager', 'Retitled \'kiosk_check_balance.php\' to \'Check your balance\'.', '::1'),
(61, 1, '2019-06-19 14:06:48', 'Permissions Manager', 'Added Permission Level named Cashier.', '::1'),
(62, 1, '2019-06-19 14:07:45', 'Pages Manager', 'Added 3 permission(s) to snack_shop.php.', '::1'),
(63, 1, '2019-06-19 14:07:45', 'Pages Manager', 'Retitled \'snack_shop.php\' to \'Snack Shop\'.', '::1'),
(64, 1, '2019-06-19 15:14:49', 'Pages Manager', 'Added 3 permission(s) to argue.php.', '::1'),
(65, 1, '2019-06-19 15:14:49', 'Pages Manager', 'Retitled \'argue.php\' to \'Argument Settler\'.', '::1'),
(66, 1, '2019-06-19 16:05:47', 'Pages Manager', 'Added 3 permission(s) to argue.php.', '::1'),
(67, 1, '2019-06-19 16:05:47', 'Pages Manager', 'Retitled \'argue.php\' to \'Argument Settler\'.', '::1'),
(68, 1, '2019-06-20 16:24:42', 'User', 'User logged in.', NULL),
(69, 1, '2019-06-20 16:29:17', 'User', 'User logged in.', NULL),
(70, 1, '2019-06-20 16:54:27', 'User Manager', 'Deleted 1 permission(s) from Kiosk Computer.', '::1'),
(71, 2, '2019-06-20 16:54:59', 'User', 'User logged in.', NULL),
(72, 1, '2019-06-20 16:55:42', 'User', 'User logged in.', NULL),
(73, 1, '2019-06-20 17:09:04', 'User Manager', 'Added 1 permission(s) to Kiosk Computer.', '::1'),
(74, 1, '2019-06-20 17:09:42', 'User Manager', 'Added user manager.', '::1'),
(75, 1, '2019-06-20 17:09:54', 'User Manager', 'Added 3 permission(s) to Manager Manager.', '::1'),
(76, 1, '2019-06-20 17:10:37', 'User Manager', 'Added user cashier.', '::1'),
(77, 1, '2019-06-20 17:10:49', 'User Manager', 'Added 2 permission(s) to Cashier Cashier.', '::1'),
(78, 2, '2019-06-20 17:11:15', 'User', 'User logged in.', NULL),
(79, 3, '2019-06-20 17:11:38', 'User', 'User logged in.', NULL),
(80, 4, '2019-06-20 17:12:12', 'User', 'User logged in.', NULL),
(81, 1, '2019-06-20 17:14:05', 'User', 'User logged in.', NULL),
(82, 1, '2019-06-20 17:33:02', 'Argue', 'Bob Smithye won an arguement', '::1'),
(83, 1, '2019-06-20 17:33:16', 'Argue', 'Jenny James won an arguement', '::1'),
(84, 1, '2019-06-20 17:38:36', 'Balance', 'A balance was checked', '::1'),
(85, 1, '2019-06-20 17:38:42', 'Balance', 'A balance was checked', '::1'),
(86, 1, '2019-06-20 17:38:45', 'Balance', 'A balance was checked', '::1'),
(87, 1, '2019-06-20 17:42:58', 'Search', 'Searched for smith', '::1'),
(88, 1, '2019-06-20 17:43:11', 'Search', 'Searched for smith', '::1'),
(89, 1, '2019-06-20 18:08:57', 'Balance', 'A balance was checked', '::1'),
(90, 1, '2019-06-20 18:09:14', 'Balance', 'A balance was checked', '::1'),
(91, 1, '2019-06-20 18:09:32', 'Balance', 'A balance was checked', '::1'),
(92, 1, '2019-06-20 18:11:19', 'Balance', 'A balance was checked', '::1'),
(93, 1, '2019-06-20 18:11:47', 'Balance', 'A balance was checked', '::1'),
(94, 1, '2019-06-20 18:17:21', 'Balance', 'A balance was checked', '::1'),
(95, 1, '2019-06-20 18:17:22', 'Balance', 'A balance was checked', '::1'),
(96, 1, '2019-06-20 18:17:23', 'Balance', 'A balance was checked', '::1'),
(97, 1, '2019-06-20 18:17:24', 'Balance', 'A balance was checked', '::1'),
(98, 1, '2019-06-20 18:17:24', 'Balance', 'A balance was checked', '::1'),
(99, 1, '2019-06-20 18:17:37', 'Balance', 'A balance was checked', '::1'),
(100, 1, '2019-06-20 18:19:45', 'Balance', 'A balance was checked', '::1'),
(101, 1, '2019-06-20 18:24:10', 'Balance', 'A balance was checked', '::1'),
(102, 1, '2019-06-20 19:27:09', 'Search', 'Searched for dan', '::1'),
(103, 1, '2019-06-20 19:27:53', 'Money', 'Added new user test test with a balance of 1.00.', '::1'),
(104, 1, '2019-06-20 19:31:42', 'Pages Manager', 'Added 2 permission(s) to students.php.', '::1'),
(105, 1, '2019-06-20 19:31:42', 'Pages Manager', 'Retitled \'students.php\' to \'Student Manager\'.', '::1'),
(106, 1, '2019-06-20 19:36:35', 'Money', 'Added new user Cole Hamels with a balance of 5.00.', '::1'),
(107, 1, '2019-06-20 19:37:27', 'Money', 'Added new user Trent Hamels with a balance of 15.00.', '::1'),
(108, 1, '2019-06-20 19:41:01', 'Search', 'Searched for greys', '::1'),
(109, 1, '2019-06-20 19:42:01', 'Search', 'Searched for greys', '::1'),
(110, 1, '2019-06-20 19:42:06', 'Search', 'Searched for smith', '::1'),
(111, 1, '2019-06-20 19:42:16', 'Search', 'Searched for cole', '::1'),
(112, 1, '2019-06-20 19:43:50', 'Search', 'Searched for cole', '::1'),
(113, 1, '2019-06-20 19:44:02', 'Search', 'Searched for cole', '::1'),
(114, 1, '2019-06-20 19:51:21', 'Search', 'Searched for cole', '::1'),
(115, 1, '2019-06-20 19:51:26', 'Search', 'Searched for cole', '::1'),
(116, 1, '2019-06-20 19:51:56', 'Search', 'Searched for cole', '::1'),
(117, 1, '2019-06-20 19:53:40', 'Search', 'Searched for grant', '::1'),
(118, 1, '2019-06-20 19:53:45', 'Search', 'Searched for smith', '::1'),
(119, 1, '2019-06-20 19:58:55', 'Search', 'Searched for smith', '::1'),
(120, 1, '2019-06-20 19:59:09', 'Search', 'Searched for smith', '::1'),
(121, 1, '2019-06-20 19:59:59', 'Search', 'Searched for smith', '::1'),
(122, 1, '2019-06-20 20:00:46', 'Pages Manager', 'Added 2 permission(s) to student.php.', '::1'),
(123, 1, '2019-06-20 20:00:46', 'Pages Manager', 'Retitled \'student.php\' to \'Student Viewer\'.', '::1'),
(124, 1, '2019-06-20 20:00:51', 'Search', 'Searched for smith', '::1'),
(125, 1, '2019-06-20 20:04:23', 'Search', 'Searched for smith', '::1'),
(126, 1, '2019-06-20 20:05:27', 'Search', 'Searched for smith', '::1'),
(127, 1, '2019-06-20 20:06:35', 'Search', 'Searched for smith', '::1'),
(128, 1, '2019-06-20 20:06:44', 'Search', 'Searched for hoover', '::1'),
(129, 1, '2019-06-20 20:06:53', 'Search', 'Searched for hoover', '::1'),
(130, 1, '2019-06-20 20:07:32', 'Search', 'Searched for hoover', '::1'),
(131, 1, '2019-06-20 20:56:05', 'Search', 'Searched for hoover', '::1'),
(132, 1, '2019-06-20 20:56:35', 'Search', 'Searched for hoover', '::1'),
(133, 1, '2019-06-21 09:33:49', 'Search', 'Searched for hoover', '::1'),
(134, 1, '2019-06-21 09:43:41', 'Info', 'Modified info of student 4', '::1'),
(135, 1, '2019-06-21 09:43:44', 'Search', 'Searched for hoover', '::1'),
(136, 1, '2019-06-21 09:47:10', 'Info', 'Modified info of student 4', '::1'),
(137, 1, '2019-06-21 09:47:19', 'Search', 'Searched for hoover', '::1'),
(138, 1, '2019-06-21 09:47:26', 'Info', 'Modified info of student 4', '::1'),
(139, 1, '2019-06-21 09:47:37', 'Search', 'Searched for hoover', '::1'),
(140, 1, '2019-06-21 09:47:42', 'Search', 'Searched for hoover2', '::1'),
(141, 1, '2019-06-21 09:49:20', 'Search', 'Searched for Hoover', '::1'),
(142, 1, '2019-06-21 09:51:52', 'Search', 'Searched for Hoover', '::1'),
(143, 1, '2019-06-21 09:51:59', 'Info', 'Modified info of student 4', '::1'),
(144, 1, '2019-06-21 09:52:02', 'Search', 'Searched for Hoover', '::1'),
(145, 1, '2019-06-21 09:52:07', 'Search', 'Searched for Hoover2', '::1'),
(146, 1, '2019-06-21 09:53:58', 'Search', 'Searched for Hoover2', '::1'),
(147, 1, '2019-06-21 09:54:27', 'Info', 'Modified info of student 4', '::1'),
(148, 1, '2019-06-21 09:54:48', 'Search', 'Searched for Hoover', '::1'),
(149, 1, '2019-06-21 09:54:54', 'Info', 'Modified info of student 4', '::1'),
(150, 1, '2019-06-21 09:54:58', 'Search', 'Searched for Hoover', '::1'),
(151, 1, '2019-06-21 10:06:30', 'Menu Manager', 'Deleted menu 23', '::1'),
(152, 1, '2019-06-21 10:07:07', 'Search', 'Searched for Hoover', '::1'),
(153, 1, '2019-06-21 10:08:14', 'Search', 'Searched for Hoover', '::1'),
(154, 1, '2019-06-21 10:08:17', 'Search', 'Searched for Hoover', '::1'),
(155, 1, '2019-06-21 10:08:54', 'Pages Manager', 'Added 2 permission(s) to student_add_funds.php.', '::1'),
(156, 1, '2019-06-21 10:08:54', 'Pages Manager', 'Retitled \'student_add_funds.php\' to \'Add Funds to Student Account\'.', '::1'),
(157, 1, '2019-06-21 10:23:48', 'Add Money', 'Added 2.50 to balance. New Bal:15.00', '::1'),
(158, 1, '2019-06-21 10:23:55', 'Search', 'Searched for Hoover', '::1'),
(159, 1, '2019-06-21 10:24:03', 'Search', 'Searched for Hoover', '::1'),
(160, 1, '2019-06-21 10:24:07', 'Search', 'Searched for Hoover', '::1'),
(161, 1, '2019-06-21 10:33:19', 'Search', 'Searched for Hoover', '::1'),
(162, 1, '2019-06-21 10:33:42', 'Search', 'Searched for Hoover', '::1'),
(163, 1, '2019-06-21 10:34:03', 'Search', 'Searched for Hoover', '::1'),
(164, 1, '2019-06-21 10:34:28', 'Search', 'Searched for Hoover', '::1'),
(165, 1, '2019-06-21 10:36:11', 'Add Money', 'Added 3.33 to balance. New Bal:18.33', '::1'),
(166, 1, '2019-06-21 10:36:21', 'Search', 'Searched for Hoover', '::1'),
(167, 1, '2019-06-21 10:37:01', 'Search', 'Searched for Hoover', '::1'),
(168, 1, '2019-06-21 10:37:09', 'Add Money', 'Added 0.25 to balance. New Bal:0.75', '::1'),
(169, 1, '2019-06-21 16:37:14', 'Search', 'Searched for Hoover', '::1'),
(170, 1, '2019-06-21 16:41:57', 'Search', 'Searched for Hoover', '::1'),
(171, 1, '2019-06-21 16:42:29', 'Search', 'Searched for Hoover', '::1'),
(172, 1, '2019-06-21 16:42:59', 'Search', 'Searched for Hoover', '::1'),
(173, 1, '2019-06-21 16:43:10', 'Search', 'Searched for Hoover', '::1'),
(174, 1, '2019-06-21 16:43:34', 'Search', 'Searched for Hoover', '::1'),
(175, 1, '2019-06-21 16:43:48', 'Search', 'Searched for Hoover', '::1'),
(176, 1, '2019-06-21 16:47:06', 'Search', 'Searched for Hoover', '::1'),
(177, 1, '2019-06-21 16:47:19', 'Search', 'Searched for Hoover', '::1'),
(178, 1, '2019-06-21 17:19:07', 'Search', 'Searched for Hoover', '::1'),
(179, 1, '2019-06-21 17:27:24', 'Pages Manager', 'Added 3 permission(s) to check_in.php.', '::1'),
(180, 1, '2019-06-21 17:27:24', 'Pages Manager', 'Retitled \'check_in.php\' to \'Check In\'.', '::1'),
(181, 1, '2019-06-21 17:27:29', 'CICO', 'Kimberly Hoover checked in', '::1'),
(182, 1, '2019-06-21 17:27:40', 'Search', 'Searched for kimberly', '::1'),
(183, 1, '2019-06-21 17:28:54', 'Pages Manager', 'Added 3 permission(s) to check_out.php.', '::1'),
(184, 1, '2019-06-21 17:28:54', 'Pages Manager', 'Retitled \'check_out.php\' to \'Check Out\'.', '::1'),
(185, 1, '2019-06-21 17:28:58', 'CICO', 'Kimberly Hoover checked out', '::1'),
(186, 1, '2019-06-21 17:29:06', 'Search', 'Searched for Kimberly', '::1'),
(187, 2, '2019-06-21 20:15:41', 'User', 'User logged in.', NULL),
(188, 2, '2019-06-21 20:17:31', 'User', 'User logged in.', NULL),
(189, 1, '2019-06-21 20:17:57', 'User', 'User logged in.', NULL),
(190, 1, '2019-06-21 20:21:45', 'Search', 'Searched for Hoover', '::1'),
(191, 1, '2019-06-21 20:21:52', 'Search', 'Searched for Hoover', '::1'),
(192, 1, '2019-06-21 20:21:57', 'Search', 'Searched for Hoover', '::1'),
(193, 2, '2019-06-21 20:24:37', 'User', 'User logged in.', NULL),
(194, 1, '2019-06-21 20:25:47', 'User', 'User logged in.', NULL),
(195, 1, '2019-06-22 09:10:19', 'Search', 'Searched for Hoover', '::1'),
(196, 1, '2019-06-22 09:12:25', 'Search', 'Searched for Hoover', '::1'),
(197, 1, '2019-06-22 09:17:10', 'Search', 'Searched for Hoover', '::1'),
(198, 1, '2019-06-22 09:25:26', 'Money', 'Added new user Dan Hoover with a balance of 5.00.', '::1'),
(199, 1, '2019-06-22 09:39:16', 'Money', 'Added new user Jim Jonny with a balance of 5.00.', '::1'),
(200, 1, '2019-06-22 09:48:14', 'Money', 'Added new user Carson Wentz with a balance of 66000000.00.', '::1'),
(201, 1, '2019-06-22 09:48:56', 'Search', 'Searched for wentz', '::1'),
(202, 1, '2019-06-22 09:49:04', 'Add Money', 'Added 5.00 to balance. New Bal:66000005.00', '::1'),
(203, 1, '2019-06-22 09:49:33', 'Add Money', 'Added 3.00 to balance. New Bal:66000008.00', '::1'),
(204, 1, '2019-06-22 09:51:26', 'Add Money', 'Added 3.00 to balance. New Bal:66000011.00', '::1'),
(205, 1, '2019-06-22 09:51:33', 'Add Money', 'Added 4.00 to balance. New Bal:66000015.00', '::1'),
(206, 1, '2019-06-22 09:56:04', 'Search', 'Searched for wentz', '::1'),
(207, 1, '2019-06-22 10:25:21', 'Money', 'Added new user Dak Prescott with a balance of 5.00.', '::1'),
(208, 1, '2019-06-22 10:25:27', 'Search', 'Searched for dak', '::1'),
(209, 1, '2019-06-22 10:25:57', 'Search', 'Searched for dak', '::1'),
(210, 1, '2019-06-22 10:26:03', 'Search', 'Searched for dak', '::1'),
(211, 1, '2019-06-22 10:26:07', 'Add Money', 'Added 6.00 to balance. New Bal:10.00', '::1'),
(212, 1, '2019-06-22 10:26:14', 'Search', 'Searched for Hoover', '::1'),
(213, 1, '2019-06-22 10:26:22', 'Balance', 'A balance was checked', '::1'),
(214, 1, '2019-06-22 10:26:40', 'Argue', 'Carson Wentz won an arguement', '::1'),
(215, 1, '2019-06-22 10:26:52', 'CICO', 'Dak Prescott checked in', '::1'),
(216, 1, '2019-06-22 10:26:58', 'CICO', 'Carson Wentz checked in', '::1'),
(217, 1, '2019-06-22 10:55:18', 'Search', 'Searched for 0014195588', '::1'),
(218, 1, '2019-06-22 11:01:33', 'Search', 'Searched for 0009333166', '::1'),
(219, 1, '2019-06-22 11:01:47', 'Add Money', 'Added 100.00 to balance. New Bal:100.00', '::1'),
(220, 1, '2019-06-22 11:01:53', 'Search', 'Searched for 0009333166', '::1'),
(221, 1, '2019-06-22 11:02:07', 'CICO', 'Jenny James checked in', '::1'),
(222, 1, '2019-06-22 11:02:11', 'CICO', 'Bob Smithye checked in', '::1'),
(223, 1, '2019-06-22 11:02:27', 'Search', 'Searched for 0009333166', '::1'),
(224, 1, '2019-07-22 18:55:04', 'User', 'User logged in.', NULL),
(225, 1, '2019-07-22 18:55:18', 'Money', 'Added new user ???? ?????? ???? ?????? with a balance of 10.', '::1'),
(226, 1, '2019-07-22 18:58:34', 'Money', 'Added new user ???? ?????? ???? ?????? with a balance of 10.00.', '::1'),
(227, 1, '2019-07-22 19:03:20', 'Money', 'Added new user ???? ?????? ???? ?????? with a balance of 11.', '::1'),
(228, 1, '2019-07-22 19:06:55', 'Money', 'Added new user ???? ?????? ???? ?????? with a balance of 11.', '::1'),
(229, 1, '2019-07-22 19:09:22', 'Money', 'Added new user ???? ?????? ???? ?????? with a balance of 11.', '::1'),
(230, 1, '2019-07-22 19:10:35', 'Money', 'Added new user ???? ?????? ???? ?????? with a balance of 112.', '::1'),
(231, 1, '2019-07-22 19:11:10', 'Search', 'Searched for ???? ??????', '::1'),
(232, 1, '2019-07-22 19:12:16', 'Money', 'Added new user Dan Hoover with a balance of 11.', '::1'),
(233, 1, '2019-07-23 10:48:21', 'User', 'User logged in.', NULL),
(234, 1, '2019-07-23 10:49:14', 'Money', 'Added new user ???? ?????? ???? ?????? with a balance of 11.', '::1'),
(235, 1, '2019-07-23 10:50:05', 'Money', 'Added new user ???? ?????? ???? ?????? with a balance of 11.', '::1'),
(236, 1, '2019-07-23 10:50:52', 'Money', 'Added new user ???? ?????? ???? ?????? with a balance of 11.', '::1'),
(237, 1, '2019-07-23 10:52:40', 'Money', 'Added new user ???? ?????? ???? ?????? with a balance of 11.', '::1'),
(238, 1, '2019-07-23 10:53:37', 'Money', 'Added new user ???? ?????? ???? ?????? with a balance of 12.', '::1'),
(239, 1, '2019-07-23 10:53:51', 'Search', 'Searched for ???? ??????', '::1'),
(240, 1, '2019-07-23 10:55:15', 'Search', 'Searched for ???? ??????', '::1'),
(241, 1, '2019-07-23 10:55:17', 'Search', 'Searched for Dan', '::1'),
(242, 1, '2019-07-23 10:55:22', 'Search', 'Searched for Da', '::1'),
(243, 1, '2019-07-23 10:55:37', 'Search', 'Searched for Da', '::1'),
(244, 1, '2019-08-29 16:52:41', 'User', 'User logged in.', NULL),
(245, 1, '2019-08-29 17:09:39', 'Argue', 'Kimberly Hoover won an arguement', '::1'),
(246, 1, '2019-08-29 17:09:54', 'Argue', 'Kimberly Hoover won an arguement', '::1'),
(247, 1, '2019-09-06 09:26:13', 'Search', 'Searched for dan', '::1'),
(248, 1, '2019-09-06 09:32:33', 'Search', 'Searched for dan', '::1'),
(249, 1, '2019-09-06 09:32:37', 'Search', 'Searched for dan', '::1'),
(250, 1, '2019-09-06 09:34:43', 'Search', 'Searched for dan', '::1'),
(251, 1, '2019-09-06 09:40:12', 'Search', 'Searched for dan', '::1'),
(252, 1, '2019-09-06 09:41:31', 'Search', 'Searched for dan', '::1'),
(253, 1, '2019-09-06 09:43:32', 'Search', 'Searched for dan', '::1'),
(254, 3, '2019-09-06 09:50:05', 'User', 'User logged in.', NULL),
(255, 1, '2019-09-06 09:51:27', 'User', 'User logged in.', NULL),
(256, 1, '2019-09-06 09:51:40', 'User Manager', 'Added 1 permission(s) to Manager Manager.', '::1'),
(257, 1, '2019-09-06 09:51:52', 'User Manager', 'Deleted 1 permission(s) from Manager Manager.', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `logs_exempt`
--

CREATE TABLE `logs_exempt` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `createdby` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) NOT NULL,
  `menu_title` varchar(255) NOT NULL,
  `parent` int(10) NOT NULL,
  `dropdown` int(1) NOT NULL,
  `logged_in` int(1) NOT NULL,
  `display_order` int(10) NOT NULL,
  `label` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `icon_class` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `menu_title`, `parent`, `dropdown`, `logged_in`, `display_order`, `label`, `link`, `icon_class`) VALUES
(1, 'main', 2, 0, 1, 1, '{{home}}', '', 'fa fa-fw fa-home'),
(2, 'main', -1, 1, 1, 14, '', '', 'fa fa-fw fa-cogs'),
(3, 'main', -1, 0, 1, 11, '{{username}}', 'users/account.php', 'fa fa-fw fa-user'),
(4, 'main', -1, 1, 0, 3, '{{help}}', '', 'fa fa-fw fa-life-ring'),
(5, 'main', -1, 0, 0, 2, '{{register}}', 'users/join.php', 'fa fa-fw fa-plus-square'),
(6, 'main', -1, 0, 0, 1, '{{login}}', 'users/login.php', 'fa fa-fw fa-sign-in'),
(7, 'main', 2, 0, 1, 2, '{{account}}', 'users/account.php', 'fa fa-fw fa-user'),
(8, 'main', 2, 0, 1, 3, '{{hr}}', '', ''),
(9, 'main', 2, 0, 1, 4, '{{dashboard}}', 'users/admin.php', 'fa fa-fw fa-cogs'),
(10, 'main', 2, 0, 1, 5, '{{users}}', 'users/admin.php?view=users', 'fa fa-fw fa-user'),
(11, 'main', 2, 0, 1, 6, '{{perms}}', 'users/admin.php?view=permissions', 'fa fa-fw fa-lock'),
(12, 'main', 2, 0, 1, 7, '{{pages}}', 'users/admin.php?view=pages', 'fa fa-fw fa-wrench'),
(13, 'main', 2, 0, 1, 8, '{{messages}}', 'users/admin.php?view=messages', 'fa fa-fw fa-envelope'),
(14, 'main', 2, 0, 1, 9, '{{logs}}', 'users/admin.php?view=logs', 'fa fa-fw fa-search'),
(15, 'main', 2, 0, 1, 10, '{{hr}}', '', ''),
(16, 'main', 2, 0, 1, 11, '{{logout}}', 'users/logout.php', 'fa fa-fw fa-sign-out'),
(17, 'main', -1, 0, 0, 0, '{{home}}', '', 'fa fa-fw fa-home'),
(18, 'main', -1, 0, 1, 10, '{{home}}', '', 'fa fa-fw fa-home'),
(19, 'main', 4, 0, 0, 1, '{{forgot}}', 'users/forgot_password.php', 'fa fa-fw fa-wrench'),
(20, 'main', -1, 0, 1, 12, '{{notifications}}', '', ''),
(21, 'main', -1, 0, 1, 13, '{{messages}}', '', ''),
(22, 'main', 4, 0, 0, 99999, '{{resend}}', 'users/verify_resend.php', 'fa fa-exclamation-triangle'),
(24, 'main', 23, 0, 1, 0, 'New Student', 'new_student.php', 'fa fa-fw fa-user-plus'),
(25, 'main', 23, 0, 1, 99999, 'Student Search', 'student_search.php', 'fa fa-fw fa-search');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `msg_from` int(11) NOT NULL,
  `msg_to` int(11) NOT NULL,
  `msg_body` text NOT NULL,
  `msg_read` int(1) NOT NULL,
  `msg_thread` int(11) NOT NULL,
  `deleted` int(1) NOT NULL,
  `sent_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `msg_from`, `msg_to`, `msg_body`, `msg_read`, `msg_thread`, `deleted`, `sent_on`) VALUES
(1, 1, 2, '&lt;p&gt;fgds&lt;/p&gt;', 0, 1, 0, '2017-08-06 00:13:47'),
(2, 1, 2, '&lt;p&gt;Did it work?&lt;/p&gt;', 0, 2, 0, '2017-09-09 15:10:09');

-- --------------------------------------------------------

--
-- Table structure for table `message_threads`
--

CREATE TABLE `message_threads` (
  `id` int(11) NOT NULL,
  `msg_to` int(11) NOT NULL,
  `msg_from` int(11) NOT NULL,
  `msg_subject` varchar(255) NOT NULL,
  `last_update` datetime NOT NULL,
  `last_update_by` int(11) NOT NULL,
  `archive_from` int(1) NOT NULL DEFAULT '0',
  `archive_to` int(1) NOT NULL DEFAULT '0',
  `hidden_from` int(1) NOT NULL DEFAULT '0',
  `hidden_to` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_threads`
--

INSERT INTO `message_threads` (`id`, `msg_to`, `msg_from`, `msg_subject`, `last_update`, `last_update_by`, `archive_from`, `archive_to`, `hidden_from`, `hidden_to`) VALUES
(1, 2, 1, 'Testiing123', '2017-08-06 00:13:47', 1, 0, 0, 0, 0),
(2, 2, 1, 'Testing Message Badge', '2017-09-09 15:10:09', 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` mediumtext NOT NULL,
  `is_read` tinyint(4) NOT NULL,
  `is_archived` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_read` datetime DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `page` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `private` int(11) NOT NULL DEFAULT '0',
  `re_auth` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page`, `title`, `private`, `re_auth`) VALUES
(1, 'index.php', 'Home', 0, 0),
(2, 'z_us_root.php', '', 0, 0),
(3, 'users/account.php', 'Account Dashboard', 1, 0),
(4, 'users/admin.php', 'Admin Dashboard', 1, 0),
(14, 'users/forgot_password.php', 'Forgotten Password', 0, 0),
(15, 'users/forgot_password_reset.php', 'Reset Forgotten Password', 0, 0),
(16, 'users/index.php', 'Home', 0, 0),
(17, 'users/init.php', '', 0, 0),
(18, 'users/join.php', 'Join', 0, 0),
(19, 'users/joinThankYou.php', 'Join', 0, 0),
(20, 'users/login.php', 'Login', 0, 0),
(21, 'users/logout.php', 'Logout', 0, 0),
(24, 'users/user_settings.php', 'User Settings', 1, 0),
(25, 'users/verify.php', 'Account Verification', 0, 0),
(26, 'users/verify_resend.php', 'Account Verification', 0, 0),
(28, 'usersc/empty.php', '', 0, 0),
(31, 'users/oauth_success.php', '', 0, 0),
(33, 'users/fb-callback.php', '', 0, 0),
(38, 'users/google_helpers.php', '', 0, 0),
(41, 'users/messages.php', 'Messages', 1, 0),
(42, 'users/message.php', 'Messages', 1, 0),
(45, 'users/maintenance.php', 'Maintenance', 0, 0),
(49, 'users/admin_verify.php', 'Password Verification', 1, 0),
(68, 'users/update.php', 'Update Manager', 1, 0),
(74, 'users/admin_notifications.php', 'Notifications Manager', 1, 0),
(76, 'users/enable2fa.php', 'Enable 2 Factor Auth', 1, 0),
(77, 'users/disable2fa.php', 'Disable 2 Factor Auth', 1, 0),
(82, 'users/manage2fa.php', 'Manage Two FA', 1, 0),
(83, 'users/manage_sessions.php', 'Session Manager', 1, 0),
(86, 'users/SSP.php', '', 1, 0),
(87, 'users/features.ini.php', '', 1, 0),
(88, 'users/loader.php', '', 1, 0),
(89, 'users/twofa.php', '', 1, 0),
(90, 'new_student.php', 'New Student', 1, 0),
(91, 'student_search.php', 'Student Search', 1, 0),
(92, 'kiosk_check_balance.php', 'Check your balance', 1, 0),
(93, 'snack_shop.php', 'Snack Shop', 1, 0),
(95, 'users/user_agreement_acknowledge.php', '', 1, 0),
(96, 'argue.php', 'Argument Settler', 1, 0),
(97, 'students.php', 'Student Manager', 1, 0),
(98, 'student.php', 'Student Viewer', 1, 0),
(99, 'student_add_funds.php', 'Add Funds to Student Account', 1, 0),
(100, 'check_in.php', 'Check In', 1, 0),
(101, 'check_out.php', 'Check Out', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`) VALUES
(1, 'User'),
(2, 'Admin'),
(3, 'Manager'),
(4, 'Kiosk'),
(5, 'Cashier');

-- --------------------------------------------------------

--
-- Table structure for table `permission_page_matches`
--

CREATE TABLE `permission_page_matches` (
  `id` int(11) NOT NULL,
  `permission_id` int(15) NOT NULL,
  `page_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission_page_matches`
--

INSERT INTO `permission_page_matches` (`id`, `permission_id`, `page_id`) VALUES
(2, 2, 27),
(3, 1, 24),
(4, 1, 22),
(5, 2, 13),
(6, 2, 12),
(7, 1, 11),
(8, 2, 10),
(9, 2, 9),
(10, 2, 8),
(11, 2, 7),
(12, 2, 6),
(13, 2, 5),
(14, 2, 4),
(15, 1, 3),
(16, 2, 37),
(17, 2, 39),
(19, 2, 40),
(21, 2, 41),
(23, 2, 42),
(27, 1, 42),
(28, 1, 27),
(29, 1, 41),
(30, 1, 40),
(31, 2, 44),
(32, 2, 47),
(33, 2, 51),
(34, 2, 50),
(35, 2, 49),
(36, 2, 53),
(37, 2, 52),
(38, 2, 68),
(39, 2, 55),
(40, 2, 56),
(41, 2, 71),
(42, 2, 58),
(43, 2, 57),
(44, 2, 53),
(45, 2, 74),
(46, 2, 75),
(47, 1, 75),
(48, 1, 76),
(49, 2, 76),
(50, 1, 77),
(51, 2, 77),
(52, 2, 78),
(53, 2, 80),
(54, 1, 81),
(55, 1, 82),
(56, 1, 83),
(57, 2, 84),
(58, 2, 90),
(59, 3, 90),
(60, 2, 91),
(61, 3, 91),
(62, 2, 92),
(63, 3, 92),
(64, 4, 92),
(65, 2, 93),
(66, 3, 93),
(67, 5, 93),
(68, 2, 94),
(69, 3, 94),
(70, 4, 94),
(71, 2, 96),
(72, 3, 96),
(73, 4, 96),
(74, 2, 97),
(75, 3, 97),
(76, 2, 98),
(77, 3, 98),
(78, 2, 99),
(79, 3, 99),
(80, 2, 100),
(81, 3, 100),
(82, 4, 100),
(83, 2, 101),
(84, 3, 101),
(85, 4, 101);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `bio`) VALUES
(1, 1, '&lt;h1&gt;This is the Admin&#039;s bio.&lt;/h1&gt;'),
(2, 2, 'This is your bio');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(50) NOT NULL,
  `recaptcha` int(1) NOT NULL DEFAULT '0',
  `force_ssl` int(1) NOT NULL,
  `css_sample` int(1) NOT NULL,
  `us_css1` varchar(255) NOT NULL,
  `us_css2` varchar(255) NOT NULL,
  `us_css3` varchar(255) NOT NULL,
  `site_name` varchar(100) NOT NULL,
  `language` varchar(255) NOT NULL,
  `track_guest` int(1) NOT NULL,
  `site_offline` int(1) NOT NULL,
  `force_pr` int(1) NOT NULL,
  `glogin` int(1) NOT NULL DEFAULT '0',
  `fblogin` int(1) NOT NULL,
  `gid` varchar(255) NOT NULL,
  `gsecret` varchar(255) NOT NULL,
  `gredirect` varchar(255) NOT NULL,
  `ghome` varchar(255) NOT NULL,
  `fbid` varchar(255) NOT NULL,
  `fbsecret` varchar(255) NOT NULL,
  `fbcallback` varchar(255) NOT NULL,
  `graph_ver` varchar(255) NOT NULL,
  `finalredir` varchar(255) NOT NULL,
  `req_cap` int(1) NOT NULL,
  `req_num` int(1) NOT NULL,
  `min_pw` int(2) NOT NULL,
  `max_pw` int(3) NOT NULL,
  `min_un` int(2) NOT NULL,
  `max_un` int(3) NOT NULL,
  `messaging` int(1) NOT NULL,
  `snooping` int(1) NOT NULL,
  `echouser` int(11) NOT NULL,
  `wys` int(1) NOT NULL,
  `change_un` int(1) NOT NULL,
  `backup_dest` varchar(255) NOT NULL,
  `backup_source` varchar(255) NOT NULL,
  `backup_table` varchar(255) NOT NULL,
  `msg_notification` int(1) NOT NULL,
  `permission_restriction` int(1) NOT NULL,
  `auto_assign_un` int(1) NOT NULL,
  `page_permission_restriction` int(1) NOT NULL,
  `msg_blocked_users` int(1) NOT NULL,
  `msg_default_to` int(1) NOT NULL,
  `notifications` int(1) NOT NULL,
  `notif_daylimit` int(3) NOT NULL,
  `recap_public` varchar(100) NOT NULL,
  `recap_private` varchar(100) NOT NULL,
  `page_default_private` int(1) NOT NULL,
  `navigation_type` tinyint(1) NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `custom_settings` int(1) NOT NULL,
  `system_announcement` varchar(255) NOT NULL,
  `twofa` int(1) DEFAULT '0',
  `force_notif` tinyint(1) DEFAULT NULL,
  `cron_ip` varchar(255) DEFAULT NULL,
  `registration` tinyint(1) DEFAULT NULL,
  `join_vericode_expiry` int(9) UNSIGNED NOT NULL,
  `reset_vericode_expiry` int(9) UNSIGNED NOT NULL,
  `admin_verify` tinyint(1) NOT NULL,
  `admin_verify_timeout` int(9) NOT NULL,
  `session_manager` tinyint(1) NOT NULL,
  `template` varchar(255) DEFAULT 'default',
  `saas` tinyint(1) DEFAULT NULL,
  `redirect_uri_after_login` text,
  `show_tos` tinyint(1) DEFAULT '1',
  `default_language` varchar(11) DEFAULT NULL,
  `allow_language` tinyint(1) DEFAULT NULL,
  `spice_api` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `recaptcha`, `force_ssl`, `css_sample`, `us_css1`, `us_css2`, `us_css3`, `site_name`, `language`, `track_guest`, `site_offline`, `force_pr`, `glogin`, `fblogin`, `gid`, `gsecret`, `gredirect`, `ghome`, `fbid`, `fbsecret`, `fbcallback`, `graph_ver`, `finalredir`, `req_cap`, `req_num`, `min_pw`, `max_pw`, `min_un`, `max_un`, `messaging`, `snooping`, `echouser`, `wys`, `change_un`, `backup_dest`, `backup_source`, `backup_table`, `msg_notification`, `permission_restriction`, `auto_assign_un`, `page_permission_restriction`, `msg_blocked_users`, `msg_default_to`, `notifications`, `notif_daylimit`, `recap_public`, `recap_private`, `page_default_private`, `navigation_type`, `copyright`, `custom_settings`, `system_announcement`, `twofa`, `force_notif`, `cron_ip`, `registration`, `join_vericode_expiry`, `reset_vericode_expiry`, `admin_verify`, `admin_verify_timeout`, `session_manager`, `template`, `saas`, `redirect_uri_after_login`, `show_tos`, `default_language`, `allow_language`, `spice_api`) VALUES
(1, 0, 0, 0, '../users/css/color_schemes/bootstrap.min.css', '../users/css/sb-admin.css', '../users/css/custom.css', 'SmartScan', 'en', 1, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, 6, 30, 4, 30, 0, 1, 0, 1, 0, '/', 'everything', '', 0, 0, 0, 0, 0, 1, 0, 7, '6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI', '6LeIxAcTAAAAAGG-vFI1TnRWxMZNFuojJ4WifJWe', 1, 1, 'The SmartScan Team', 1, '', 0, 0, 'off', 1, 24, 15, 1, 120, 0, 'simplex', NULL, NULL, 1, 'en-US', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `rfid` varchar(255) DEFAULT NULL,
  `balance` decimal(11,2) DEFAULT NULL,
  `checked_in` tinyint(1) NOT NULL DEFAULT '0',
  `qr` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `fname`, `lname`, `rfid`, `balance`, `checked_in`, `qr`) VALUES
(1, 'Dan', 'Hoover', '12340007731564', '46.75', 1, '2019-09-06 09:28:51');

-- --------------------------------------------------------

--
-- Table structure for table `students_form`
--

CREATE TABLE `students_form` (
  `id` int(11) NOT NULL,
  `ord` int(11) NOT NULL,
  `col` varchar(255) NOT NULL,
  `form_descrip` varchar(255) NOT NULL,
  `table_descrip` varchar(255) NOT NULL,
  `col_type` varchar(255) NOT NULL,
  `field_type` varchar(100) NOT NULL,
  `length` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `validation` text NOT NULL,
  `label_class` varchar(255) NOT NULL,
  `field_class` varchar(255) NOT NULL,
  `input_html` text NOT NULL,
  `select_opts` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students_form`
--

INSERT INTO `students_form` (`id`, `ord`, `col`, `form_descrip`, `table_descrip`, `col_type`, `field_type`, `length`, `required`, `validation`, `label_class`, `field_class`, `input_html`, `select_opts`) VALUES
(1, 10, 'fname', 'First Name', 'First', 'varchar', 'text', 0, 1, '', '', 'form-control', '', '{\"\":\"\"}'),
(2, 20, 'lname', 'Last Name', 'Last', 'varchar', 'text', 0, 1, '', '', 'form-control', '', '{\"\":\"\"}'),
(3, 30, 'rfid', 'RFID', 'RFID', 'varchar', 'text', 0, 0, '', '', 'form-control', '', '{\"\":\"\"}'),
(4, 25, 'balance', 'Balance', 'Balance', 'money', 'money', 0, 0, '', '', 'form-control', '', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `student` int(11) NOT NULL,
  `done_by` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `date_created` datetime NOT NULL,
  `transaction_type` int(11) NOT NULL,
  `receipt` int(11) NOT NULL,
  `department` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `student`, `done_by`, `amount`, `date_created`, `transaction_type`, `receipt`, `department`) VALUES
(1, 21, 1, '66000000.00', '2019-06-22 05:48:14', 3, 0, 0),
(2, 21, 1, '5.00', '2019-06-22 05:49:04', 3, 0, 0),
(3, 21, 1, '3.00', '2019-06-22 05:49:33', 3, 0, 0),
(4, 21, 1, '3.00', '2019-06-22 05:51:26', 3, 0, 0),
(5, 21, 1, '4.00', '2019-06-22 05:51:33', 3, 0, 0),
(6, 21, 1, '-100.01', '2019-06-22 05:52:03', 1, 0, 0),
(7, 22, 1, '5.00', '2019-06-22 06:25:21', 3, 0, 0),
(8, 22, 1, '-1.00', '2019-06-22 06:25:49', 1, 0, 0),
(9, 22, 1, '6.00', '2019-06-22 06:26:07', 3, 0, 0),
(10, 6, 1, '100.00', '2019-06-22 07:01:47', 3, 0, 0),
(11, 23, 1, '10.00', '2019-07-22 14:55:18', 3, 0, 0),
(12, 24, 1, '10.00', '2019-07-22 14:58:34', 3, 0, 0),
(13, 25, 1, '11.00', '2019-07-22 15:03:20', 3, 0, 0),
(14, 26, 1, '11.00', '2019-07-22 15:06:55', 3, 0, 0),
(15, 27, 1, '11.00', '2019-07-22 15:09:22', 3, 0, 0),
(16, 28, 1, '112.00', '2019-07-22 15:10:35', 3, 0, 0),
(17, 29, 1, '11.00', '2019-07-22 15:12:16', 3, 0, 0),
(18, 30, 1, '11.00', '2019-07-23 06:49:14', 3, 0, 0),
(19, 31, 1, '11.00', '2019-07-23 06:50:05', 3, 0, 0),
(20, 32, 1, '11.00', '2019-07-23 06:50:52', 3, 0, 0),
(21, 33, 1, '11.00', '2019-07-23 06:52:40', 3, 0, 0),
(22, 34, 1, '12.00', '2019-07-23 06:53:37', 3, 0, 0),
(23, 1, 1, '-3.25', '2019-08-29 13:13:00', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_types`
--

CREATE TABLE `transaction_types` (
  `id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_types`
--

INSERT INTO `transaction_types` (`id`, `description`) VALUES
(1, 'Snack Shop'),
(2, 'Fee'),
(3, 'Money Added');

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `id` int(11) NOT NULL,
  `migration` varchar(15) NOT NULL,
  `applied_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_skipped` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `updates`
--

INSERT INTO `updates` (`id`, `migration`, `applied_on`, `update_skipped`) VALUES
(15, '1XdrInkjV86F', '2018-02-18 22:33:24', NULL),
(16, '3GJYaKcqUtw7', '2018-04-25 16:51:08', NULL),
(17, '3GJYaKcqUtz8', '2018-04-25 16:51:08', NULL),
(18, '69qa8h6E1bzG', '2018-04-25 16:51:08', NULL),
(19, '2XQjsKYJAfn1', '2018-04-25 16:51:08', NULL),
(20, '549DLFeHMNw7', '2018-04-25 16:51:08', NULL),
(21, '4Dgt2XVjgz2x', '2018-04-25 16:51:08', NULL),
(22, 'VLBp32gTWvEo', '2018-04-25 16:51:08', NULL),
(23, 'Q3KlhjdtxE5X', '2018-04-25 16:51:08', NULL),
(24, 'ug5D3pVrNvfS', '2018-04-25 16:51:08', NULL),
(25, '69FbVbv4Jtrz', '2018-04-25 16:51:09', NULL),
(26, '4A6BdJHyvP4a', '2018-04-25 16:51:09', NULL),
(27, '37wvsb5BzymK', '2018-04-25 16:51:09', NULL),
(28, 'c7tZQf926zKq', '2018-04-25 16:51:09', NULL),
(29, 'ockrg4eU33GP', '2018-04-25 16:51:09', NULL),
(30, 'XX4zArPs4tor', '2018-04-25 16:51:09', NULL),
(31, 'pv7r2EHbVvhD', '2018-04-26 00:00:00', NULL),
(32, 'uNT7NpgcBDFD', '2018-04-26 00:00:00', NULL),
(33, 'mS5VtQCZjyJs', '2018-12-11 14:19:16', NULL),
(34, '23rqAv5elJ3G', '2018-12-11 14:19:51', NULL),
(35, 'hcA5B3PLhq6E', '2019-06-16 22:54:59', NULL),
(36, 'FyMYJ2oeGCTX', '2019-06-16 22:54:59', NULL),
(37, 'iit5tHSLatiS', '2019-06-16 22:54:59', NULL),
(38, 'VNEno3E4zaNz', '2019-06-16 22:54:59', NULL),
(39, 'qPEARSh49fob', '2019-06-16 22:54:59', NULL),
(40, '2ZB9mg1l0JXe', '2019-06-16 22:55:00', NULL),
(41, 'B9t6He7qmFXa', '2019-06-16 22:55:00', NULL),
(42, '86FkFVV4TGRg', '2019-06-16 22:55:00', NULL),
(43, 'y4A1Y0u9n2Rt', '2019-06-16 22:55:00', NULL),
(44, 'Tm5xY22MM8eC', '2019-06-16 22:55:00', NULL),
(45, '0YXdrInkjV86F', '2019-06-16 22:55:00', NULL),
(46, '99plgnkjV86', '2019-06-16 22:55:00', NULL),
(47, '0DaShInkjV86', '2019-06-16 22:55:00', NULL),
(48, '0DaShInkjVz1', '2019-06-16 22:55:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(155) NOT NULL,
  `email_new` varchar(155) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `pin` varchar(255) DEFAULT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `permissions` int(11) NOT NULL,
  `logins` int(11) UNSIGNED NOT NULL,
  `account_owner` tinyint(4) NOT NULL DEFAULT '0',
  `account_id` int(11) NOT NULL DEFAULT '0',
  `company` varchar(255) NOT NULL,
  `join_date` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `email_verified` tinyint(4) NOT NULL DEFAULT '0',
  `vericode` varchar(15) NOT NULL,
  `active` int(1) NOT NULL,
  `oauth_provider` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `oauth_uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gpluslink` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `fb_uid` varchar(255) NOT NULL,
  `un_changed` int(1) NOT NULL,
  `msg_exempt` int(1) NOT NULL DEFAULT '0',
  `last_confirm` datetime DEFAULT NULL,
  `protected` int(1) NOT NULL DEFAULT '0',
  `dev_user` int(1) NOT NULL DEFAULT '0',
  `msg_notification` int(1) NOT NULL DEFAULT '1',
  `force_pr` int(1) NOT NULL DEFAULT '0',
  `twoKey` varchar(16) DEFAULT NULL,
  `twoEnabled` int(1) DEFAULT '0',
  `twoDate` datetime DEFAULT NULL,
  `cloak_allowed` tinyint(1) NOT NULL DEFAULT '0',
  `org` int(11) DEFAULT NULL,
  `account_mgr` int(11) DEFAULT '0',
  `oauth_tos_accepted` tinyint(1) DEFAULT NULL,
  `vericode_expiry` datetime DEFAULT NULL,
  `language` varchar(255) DEFAULT 'en-US'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_new`, `username`, `password`, `pin`, `fname`, `lname`, `permissions`, `logins`, `account_owner`, `account_id`, `company`, `join_date`, `last_login`, `email_verified`, `vericode`, `active`, `oauth_provider`, `oauth_uid`, `gender`, `locale`, `gpluslink`, `picture`, `created`, `modified`, `fb_uid`, `un_changed`, `msg_exempt`, `last_confirm`, `protected`, `dev_user`, `msg_notification`, `force_pr`, `twoKey`, `twoEnabled`, `twoDate`, `cloak_allowed`, `org`, `account_mgr`, `oauth_tos_accepted`, `vericode_expiry`, `language`) VALUES
(1, 'userspicephp@gmail.com', NULL, 'admin', '$2y$12$1v06jm2KMOXuuo3qP7erTuTIJFOnzhpds1Moa8BadnUUeX0RV3ex.', NULL, 'The', 'Admin', 1, 13, 1, 0, 'UserSpice', '2016-01-01 00:00:00', '2019-09-06 05:51:27', 1, 'nlPsJDtyeqFWsS', 0, '', '', '', '', '', '', '0000-00-00 00:00:00', '1899-11-30 00:00:00', '', 0, 1, '2017-10-08 15:24:37', 1, 0, 1, 0, NULL, 0, NULL, 0, NULL, 0, 1, NULL, 'en-US'),
(2, 'noreply@userspice.com', NULL, 'kiosk', '$2y$12$HZa0/d7evKvuHO8I3U8Ff.pOjJqsGTZqlX8qURratzP./EvWetbkK', NULL, 'Kiosk', 'Computer', 1, 5, 1, 0, 'none', '2016-01-02 00:00:00', '2019-06-21 16:24:37', 1, 'H65OzSzbYK5CsQa', 1, '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 0, NULL, 0, 0, 1, 0, NULL, 0, NULL, 0, NULL, 0, 1, '2019-06-20 13:24:04', 'en-US'),
(3, 'manager@aol.com', NULL, 'manager', '$2y$12$.ayp3R1QQU3Inl526ylCBO0QKDAXeHcNnKNqPLgviE/eX2CWxWibe', NULL, 'Manager', 'Manager', 1, 2, 1, 0, '', '2019-06-20 13:09:41', '2019-09-06 05:50:05', 1, 'Pxdt3e1R9jQSSPa', 1, '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 0, NULL, 0, 0, 1, 0, NULL, 0, NULL, 0, NULL, 0, 1, '2019-09-06 06:06:52', 'en-US'),
(4, 'cashier@aol.com', NULL, 'cashier', '$2y$12$6rAk3/JTaq6H93OWO2kw5.hup6BR3eRqG4Y46Ov458FGKKCZXb0tG', NULL, 'Cashier', 'Cashier', 1, 1, 1, 0, '', '2019-06-20 13:10:37', '2019-06-20 13:12:12', 1, 'Ue674gmoJlaY7b9', 1, '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 0, NULL, 0, 0, 1, 0, NULL, 0, NULL, 0, NULL, 0, 1, '2019-06-20 13:25:49', 'en-US');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(10) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `timestamp` varchar(15) NOT NULL,
  `user_id` int(10) NOT NULL,
  `session` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `ip`, `timestamp`, `user_id`, `session`) VALUES
(1, '::1', '1567763396', 1, ''),
(2, '::1', '1561148677', 2, ''),
(3, '::1', '1567763475', 3, ''),
(4, '::1', '1561050732', 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `users_session`
--

CREATE TABLE `users_session` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `uagent` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_permission_matches`
--

CREATE TABLE `user_permission_matches` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_permission_matches`
--

INSERT INTO `user_permission_matches` (`id`, `user_id`, `permission_id`) VALUES
(100, 1, 1),
(101, 1, 2),
(102, 2, 1),
(104, 2, 4),
(105, 3, 1),
(106, 3, 3),
(107, 3, 4),
(108, 3, 5),
(109, 4, 1),
(110, 4, 4),
(111, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `us_announcements`
--

CREATE TABLE `us_announcements` (
  `id` int(11) NOT NULL,
  `dismissed` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `ignore` varchar(50) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `us_announcements`
--

INSERT INTO `us_announcements` (`id`, `dismissed`, `link`, `title`, `message`, `ignore`, `class`) VALUES
(1, 3, 'https://www.userspice.com/updates', 'New Version', 'December 11, 2018 - Thank you for trying UserSpice Beta!', '4.5.0', 'warning'),
(2, 15, '#', 'New Version!', 'April 28, 2019 - UserSpice 4.4.11 Released. SECURITY RELEASE - Fixes jQuery vulnerability.', '4.4.11', 'danger'),
(3, 16, 'https://userspice.com/meta-tags/', 'Notice!', 'April 30, 2019 - If your site is not zoomed properly on mobile after updating to .11, click this box for more info.', '4.4.11', 'warning');

-- --------------------------------------------------------

--
-- Table structure for table `us_fingerprints`
--

CREATE TABLE `us_fingerprints` (
  `kFingerprintID` int(11) UNSIGNED NOT NULL,
  `fkUserID` int(11) NOT NULL,
  `Fingerprint` varchar(32) NOT NULL,
  `Fingerprint_Expiry` datetime NOT NULL,
  `Fingerprint_Added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `us_fingerprint_assets`
--

CREATE TABLE `us_fingerprint_assets` (
  `kFingerprintAssetID` int(11) UNSIGNED NOT NULL,
  `fkFingerprintID` int(11) NOT NULL,
  `IP_Address` varchar(255) NOT NULL,
  `User_Browser` varchar(255) NOT NULL,
  `User_OS` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `us_forms`
--

CREATE TABLE `us_forms` (
  `id` int(11) NOT NULL,
  `form` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `us_forms`
--

INSERT INTO `us_forms` (`id`, `form`) VALUES
(1, 'students');

-- --------------------------------------------------------

--
-- Table structure for table `us_form_validation`
--

CREATE TABLE `us_form_validation` (
  `id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `params` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `us_form_validation`
--

INSERT INTO `us_form_validation` (`id`, `value`, `description`, `params`) VALUES
(1, 'min', 'Minimum # of Characters', 'number'),
(2, 'max', 'Maximum # of Characters', 'number'),
(3, 'is_numeric', 'Must be a number', 'true'),
(4, 'valid_email', 'Must be a valid email address', 'true'),
(5, '<', 'Must be a number less than', 'number'),
(6, '>', 'Must be a number greater than', 'number'),
(7, '<=', 'Must be a number less than or equal to', 'number'),
(8, '>=', 'Must be a number greater than or equal to', 'number'),
(9, '!=', 'Must not be equal to', 'text'),
(10, '==', 'Must be equal to', 'text'),
(11, 'is_integer', 'Must be an integer', 'true'),
(12, 'is_timezone', 'Must be a valid timezone name', 'true'),
(13, 'is_datetime', 'Must be a valid DateTime', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `us_form_views`
--

CREATE TABLE `us_form_views` (
  `id` int(11) NOT NULL,
  `form_name` varchar(255) NOT NULL,
  `view_name` varchar(255) NOT NULL,
  `fields` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `us_ip_blacklist`
--

CREATE TABLE `us_ip_blacklist` (
  `id` int(11) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `last_user` int(11) NOT NULL DEFAULT '0',
  `reason` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `us_ip_blacklist`
--

INSERT INTO `us_ip_blacklist` (`id`, `ip`, `last_user`, `reason`) VALUES
(3, '192.168.0.21', 1, 0),
(4, '192.168.0.22', 1, 0),
(10, '192.168.0.222', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `us_ip_list`
--

CREATE TABLE `us_ip_list` (
  `id` int(11) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `us_ip_list`
--

INSERT INTO `us_ip_list` (`id`, `ip`, `user_id`, `timestamp`) VALUES
(1, '::1', 1, '2019-09-06 09:51:27');

-- --------------------------------------------------------

--
-- Table structure for table `us_ip_whitelist`
--

CREATE TABLE `us_ip_whitelist` (
  `id` int(11) NOT NULL,
  `ip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `us_ip_whitelist`
--

INSERT INTO `us_ip_whitelist` (`id`, `ip`) VALUES
(2, '192.168.0.21'),
(3, '192.168.0.23');

-- --------------------------------------------------------

--
-- Table structure for table `us_management`
--

CREATE TABLE `us_management` (
  `id` int(11) NOT NULL,
  `page` varchar(255) NOT NULL,
  `view` varchar(255) NOT NULL,
  `feature` varchar(255) NOT NULL,
  `access` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `us_management`
--

INSERT INTO `us_management` (`id`, `page`, `view`, `feature`, `access`) VALUES
(1, '_admin_manage_ip.php', 'ip', 'IP Whitelist/Blacklist', ''),
(2, '_admin_messages.php', 'messages', 'Messages', ''),
(3, '_admin_nav.php', 'nav', 'Navigation', ''),
(4, '_admin_nav_item.php', 'nav_item', 'Navigation', ''),
(5, '_admin_notifications.php', 'notifications', 'Notifications', ''),
(6, '_admin_page.php', 'page', 'Page Management', ''),
(7, '_admin_pages.php', 'pages', 'Page Management', ''),
(10, '_admin_security_logs.php', 'security_logs', 'Security Logs', ''),
(11, '_admin_sessions.php', 'sessions', 'Session Management', ''),
(12, '_admin_templates.php', 'templates', 'Templates', ''),
(13, '_admin_tools_check_updates.php', 'updates', 'Check Updates', '');

-- --------------------------------------------------------

--
-- Table structure for table `us_plugins`
--

CREATE TABLE `us_plugins` (
  `id` int(11) NOT NULL,
  `plugin` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `updates` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `us_plugins`
--

INSERT INTO `us_plugins` (`id`, `plugin`, `status`, `updates`) VALUES
(1, 'performancechecker', 'installed', NULL),
(2, 'spice_shaker', 'installed', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `us_plugin_hooks`
--

CREATE TABLE `us_plugin_hooks` (
  `id` int(11) UNSIGNED NOT NULL,
  `page` varchar(255) NOT NULL,
  `folder` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `hook` varchar(255) NOT NULL,
  `disabled` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `us_saas_levels`
--

CREATE TABLE `us_saas_levels` (
  `id` int(11) NOT NULL,
  `level` varchar(255) NOT NULL,
  `users` int(11) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `us_saas_orgs`
--

CREATE TABLE `us_saas_orgs` (
  `id` int(11) NOT NULL,
  `org` varchar(255) NOT NULL,
  `owner` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `us_user_sessions`
--

CREATE TABLE `us_user_sessions` (
  `kUserSessionID` int(11) UNSIGNED NOT NULL,
  `fkUserID` int(11) UNSIGNED NOT NULL,
  `UserFingerprint` varchar(255) NOT NULL,
  `UserSessionIP` varchar(255) NOT NULL,
  `UserSessionOS` varchar(255) NOT NULL,
  `UserSessionBrowser` varchar(255) NOT NULL,
  `UserSessionStarted` datetime NOT NULL,
  `UserSessionLastUsed` datetime DEFAULT NULL,
  `UserSessionLastPage` varchar(255) NOT NULL,
  `UserSessionEnded` tinyint(1) NOT NULL DEFAULT '0',
  `UserSessionEnded_Time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit`
--
ALTER TABLE `audit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crons`
--
ALTER TABLE `crons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crons_logs`
--
ALTER TABLE `crons_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups_menus`
--
ALTER TABLE `groups_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs_exempt`
--
ALTER TABLE `logs_exempt`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `logs_exempt_type` (`name`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_threads`
--
ALTER TABLE `message_threads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_page_matches`
--
ALTER TABLE `permission_page_matches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students_form`
--
ALTER TABLE `students_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_types`
--
ALTER TABLE `transaction_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EMAIL` (`email`) USING BTREE;

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_session`
--
ALTER TABLE `users_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_permission_matches`
--
ALTER TABLE `user_permission_matches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_announcements`
--
ALTER TABLE `us_announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_fingerprints`
--
ALTER TABLE `us_fingerprints`
  ADD PRIMARY KEY (`kFingerprintID`);

--
-- Indexes for table `us_fingerprint_assets`
--
ALTER TABLE `us_fingerprint_assets`
  ADD PRIMARY KEY (`kFingerprintAssetID`);

--
-- Indexes for table `us_forms`
--
ALTER TABLE `us_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_form_validation`
--
ALTER TABLE `us_form_validation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_form_views`
--
ALTER TABLE `us_form_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_ip_blacklist`
--
ALTER TABLE `us_ip_blacklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_ip_list`
--
ALTER TABLE `us_ip_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_ip_whitelist`
--
ALTER TABLE `us_ip_whitelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_management`
--
ALTER TABLE `us_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_plugins`
--
ALTER TABLE `us_plugins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_plugin_hooks`
--
ALTER TABLE `us_plugin_hooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_saas_levels`
--
ALTER TABLE `us_saas_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_saas_orgs`
--
ALTER TABLE `us_saas_orgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_user_sessions`
--
ALTER TABLE `us_user_sessions`
  ADD PRIMARY KEY (`kUserSessionID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit`
--
ALTER TABLE `audit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `crons`
--
ALTER TABLE `crons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `crons_logs`
--
ALTER TABLE `crons_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `groups_menus`
--
ALTER TABLE `groups_menus`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `logs_exempt`
--
ALTER TABLE `logs_exempt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `message_threads`
--
ALTER TABLE `message_threads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permission_page_matches`
--
ALTER TABLE `permission_page_matches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `students_form`
--
ALTER TABLE `students_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `transaction_types`
--
ALTER TABLE `transaction_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users_session`
--
ALTER TABLE `users_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_permission_matches`
--
ALTER TABLE `user_permission_matches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `us_announcements`
--
ALTER TABLE `us_announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `us_fingerprints`
--
ALTER TABLE `us_fingerprints`
  MODIFY `kFingerprintID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `us_fingerprint_assets`
--
ALTER TABLE `us_fingerprint_assets`
  MODIFY `kFingerprintAssetID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `us_forms`
--
ALTER TABLE `us_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `us_form_validation`
--
ALTER TABLE `us_form_validation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `us_form_views`
--
ALTER TABLE `us_form_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `us_ip_blacklist`
--
ALTER TABLE `us_ip_blacklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `us_ip_list`
--
ALTER TABLE `us_ip_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `us_ip_whitelist`
--
ALTER TABLE `us_ip_whitelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `us_management`
--
ALTER TABLE `us_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `us_plugins`
--
ALTER TABLE `us_plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `us_plugin_hooks`
--
ALTER TABLE `us_plugin_hooks`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `us_saas_levels`
--
ALTER TABLE `us_saas_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `us_saas_orgs`
--
ALTER TABLE `us_saas_orgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `us_user_sessions`
--
ALTER TABLE `us_user_sessions`
  MODIFY `kUserSessionID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
