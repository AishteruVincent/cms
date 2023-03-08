-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 08, 2023 at 04:02 PM
-- Server version: 10.5.16-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u853565338_aero`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_list`
--

CREATE TABLE `account_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `student_id` int(30) NOT NULL,
  `room_id` int(30) NOT NULL,
  `rate` float(12,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_list`
--

INSERT INTO `account_list` (`id`, `code`, `student_id`, `room_id`, `rate`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, '202205070001', 1, 5, 5000.00, 1, 0, '2022-05-07 13:46:00', '2022-05-07 13:46:00'),
(2, '202205070002', 2, 3, 3500.00, 1, 0, '2022-05-07 14:58:55', '2022-05-07 14:58:55');

-- --------------------------------------------------------

--
-- Table structure for table `applicant`
--

CREATE TABLE `applicant` (
  `id` int(11) NOT NULL,
  `idnumber` varchar(50) NOT NULL,
  `studentname` varchar(100) NOT NULL,
  `program` varchar(100) NOT NULL,
  `contact_number` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `parentname` varchar(100) NOT NULL,
  `parent_address` varchar(100) NOT NULL,
  `parent_contact` varchar(100) NOT NULL,
  `floor` varchar(100) NOT NULL,
  `room` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `remarks` text NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `applicant`
--

INSERT INTO `applicant` (`id`, `idnumber`, `studentname`, `program`, `contact_number`, `email`, `parentname`, `parent_address`, `parent_contact`, `floor`, `room`, `status`, `remarks`, `date_added`) VALUES
(1, '123', 'shervie', 'Bachelor of Science in Aeronautical Engineering', '123', 'shervie@gmail.com', 'pat', 'Baclaran', '123', '3rd Floor', 'Room 308', 1, '', '2023-02-23 02:24:00'),
(3, '2023010003', 'Test', 'Bachelor of Science in Aviation Information Technology', '09301653187', 'vincentcunanan53@gmail.com', 'Test', 'Test', 'Test', '2nd Floor', 'Room 209', 1, '', '2023-02-23 07:31:56'),
(5, '00000', 'Dowee Donut', 'Bachelor of Science in Aviation Logistics', '00000', 'donut@gmail.com', 'Dowee Donut', 'Cavite', '00000', '2nd Floor', 'Room 209', 1, '', '2023-03-08 14:31:49'),
(6, '123', 'sheska', 'Bachelor of Science in Aeronautical Engineering', '123', 'sheska@gmail.com', 'pat', 'Baclaran', '+639993449634', '3rd Floor', 'Room 302', 1, '', '2023-02-24 22:51:55'),
(7, '202301004', 'Vincent Cunanan', 'Bachelor of Science in Aviation Information Technology', '09301653187', 'vincentcunanan53@gmail.com', 'Test', 'Test', '09301653187', '4th Floor', 'Room 409', 1, '', '2023-02-26 15:20:02'),
(9, '2023010005', 'Lelouch Lamperouge', 'Bachelor of Science in Aeronautical Engineering', '09301653187', 'vincentcunanan53@gmail.com', 'Test', 'Test', '09301653187', '4th Floor', 'Room 409', 1, '', '2023-03-02 15:31:26'),
(33, '1234567', 'W', 'Bachelor of Science in Aeronautical Engineering', '09301653187', 'vincentcunanan53@gmail.com', 'G', 'G', 'G', '4th Floor', 'Room 409', 1, '', '2023-03-03 07:34:17'),
(34, '123444444', 'G', 'Bachelor of Science in Aeronautical Engineering', '4444444444444', 'vincentcunanan53@gmail.com', 'G', 'G', '111111111111111', '3rd Floor', 'Room 309', 1, '', '2023-03-03 07:53:27'),
(40, '18010143', 'Random Student', 'Bachelor of Science in Aeronautical Engineering', '09301653187', 'vincentcunanan53@gmail.com', 'G', 'G', 'G', '4th Floor', 'Room 408', 1, '', '2023-03-07 16:57:20');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_attachment`
--

CREATE TABLE `applicant_attachment` (
  `id` int(11) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `attachment` text NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `applicant_attachment`
--

INSERT INTO `applicant_attachment` (`id`, `applicant_id`, `attachment`, `status`) VALUES
(1, 1, '1677118179LIE DETECTIONS TECHNIQUES.docx', 'active'),
(2, 1, '1677118179print.docx', 'active'),
(3, 3, '1677137499Taylor_Swift_(6966830273).jpg', 'active'),
(4, 4, '1677138375319075797_5795467880522895_3303545777965571404_n.jpg', 'active'),
(5, 6, '1677279076Adminpng.png', 'active'),
(6, 6, '1677279076Untitled.png', 'active'),
(7, 6, '1677279076student.png', 'active'),
(8, 7, '1677335575319075797_5795467880522895_3303545777965571404_n.jpg', 'active'),
(9, 8, '1677476374Screenshot_20230227_095954.jpg', 'active'),
(10, 9, '1677771073319075797_5795467880522895_3303545777965571404_n.jpg', 'active'),
(11, 10, '1677771536Adminpng.png', 'active'),
(12, 10, '1677771536Untitled.png', 'active'),
(13, 35, '1677831887student.png', 'active'),
(14, 36, '1677933960Letter-of-Intent-2022 (1).pdf', 'active'),
(15, 37, '1677990540NetAcad Learning Transcript.pdf', 'active'),
(16, 41, '1678285571Human-rights-CHR_Philippines.pdf', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `client_list`
--

CREATE TABLE `client_list` (
  `id` int(30) NOT NULL,
  `client_code` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `fullname` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = Active, 2= Inactive',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_list`
--

INSERT INTO `client_list` (`id`, `client_code`, `password`, `fullname`, `status`, `date_created`, `date_updated`) VALUES
(1, '20210001', 'a88df23ac492e6e2782df6586a0c645f', 'Williams, Mike D', 1, '2021-11-05 13:12:15', '2021-11-05 14:58:01'),
(18, '2023010002', 'ba4031775428739ad624b6324ea4e389', 'Swift, Taylor ', 1, '2023-02-20 12:10:28', '2023-02-25 06:37:07'),
(24, '202301004', 'e16e717fc8122e33aaf89332d4be5c02', 'Cunanan, Vincent ', 1, '2023-02-25 14:32:55', '2023-03-02 19:21:14'),
(26, '2023010005', 'deec9ac7978062cc45865094d518ef5d', 'Lamperouge, Lelouch ', 1, '2023-03-02 15:31:13', '2023-03-02 15:32:11'),
(51, '1234567', '1234567', 'W', 1, '2023-03-03 07:21:37', '2023-03-03 07:21:37'),
(68, '18010143', 'b410b5e9b1250e2317087fa61f4d3b9b', 'Random Student', 1, '2023-03-07 16:57:09', '2023-03-07 16:57:31'),
(70, '', '', '', 1, '2023-03-08 14:31:49', '2023-03-08 14:31:49');

-- --------------------------------------------------------

--
-- Table structure for table `client_meta`
--

CREATE TABLE `client_meta` (
  `client_id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_meta`
--

INSERT INTO `client_meta` (`client_id`, `meta_field`, `meta_value`) VALUES
(1, 'lastname', 'Williams'),
(1, 'firstname', 'Mike'),
(1, 'middlename', 'D'),
(1, 'gender', 'Male'),
(1, 'dob', '1997-06-23'),
(1, 'contact', '09223554991'),
(1, 'address', 'My Address, Here City, There Province, 2306'),
(1, 'email', 'mwilliams@sample.com'),
(1, 'cpassword', 'mwilliams'),
(1, 'cur_password', '20210001'),
(18, 'lastname', 'Swift'),
(18, 'firstname', 'Taylor'),
(18, 'middlename', ''),
(18, 'gender', 'Female'),
(18, 'dob', '1998-12-13'),
(18, 'contact', '09301653187'),
(18, 'address', 'G'),
(18, 'email', 'buybackisavailable@gmail.com'),
(26, 'lastname', 'Lamperouge'),
(26, 'firstname', 'Lelouch'),
(26, 'middlename', ''),
(26, 'gender', 'Male'),
(26, 'dob', '2000-03-09'),
(26, 'contact', '09301653187'),
(26, 'address', 'Test'),
(26, 'email', 'vincentcunanan53@gmail.com'),
(24, 'lastname', 'Cunanan'),
(24, 'firstname', 'Vincent'),
(24, 'middlename', ''),
(24, 'gender', 'Male'),
(24, 'dob', '2000-03-25'),
(24, 'contact', '09301653187'),
(24, 'address', 'Test'),
(24, 'email', 'vincentcunanan53@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `dorm_list`
--

CREATE TABLE `dorm_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dorm_list`
--

INSERT INTO `dorm_list` (`id`, `name`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Male Dorm 1', 1, 0, '2022-05-07 10:07:55', '2022-05-07 10:08:04'),
(2, 'Female Dorm 1', 1, 0, '2022-05-07 10:08:15', '2022-05-07 10:08:15'),
(3, 'Male Dorm 2', 1, 0, '2022-05-07 10:08:32', '2022-05-07 10:08:32'),
(4, 'Female Dorm 2', 1, 0, '2022-05-07 10:08:41', '2022-05-07 10:08:41'),
(5, 'Male Dorm 101', 1, 0, '2022-05-07 10:09:45', '2023-02-16 16:55:45');

-- --------------------------------------------------------

--
-- Table structure for table `floor`
--

CREATE TABLE `floor` (
  `id` int(11) NOT NULL,
  `floor` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'active',
  `date_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `floor`
--

INSERT INTO `floor` (`id`, `floor`, `status`, `date_added`) VALUES
(1, '4th Floor', 'active', '2023-02-09 19:44:30'),
(2, '3rd Floor', 'active', '2023-02-09 19:44:30'),
(3, '2nd Floor', 'active', '2023-02-09 19:44:57'),
(4, '1st Floor', 'active', '2023-02-09 19:44:57');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_list`
--

CREATE TABLE `invoice_list` (
  `id` int(30) NOT NULL,
  `invoice_code` varchar(50) NOT NULL,
  `client_id` int(30) NOT NULL,
  `total_amount` float NOT NULL DEFAULT 0,
  `discount_perc` float NOT NULL DEFAULT 0,
  `discount` float NOT NULL DEFAULT 0,
  `tax_perc` float NOT NULL DEFAULT 0,
  `tax` float NOT NULL DEFAULT 0,
  `remarks` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=pending, 1=Paid',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice_list`
--

INSERT INTO `invoice_list` (`id`, `invoice_code`, `client_id`, `total_amount`, `discount_perc`, `discount`, `tax_perc`, `tax`, `remarks`, `status`, `date_created`, `date_updated`) VALUES
(1, '202100001', 1, 592.9, 2, 12.1, 12, 72.6, 'Sample Only', 1, '2021-11-05 13:12:43', '2021-11-05 13:45:49'),
(3, '202100002', 4, 717.24, 5, 37.7495, 12, 90.5988, 'Sample Invoice 2', 1, '2021-11-05 15:10:47', '2021-11-05 15:19:56'),
(57, '202300001', 4, 355, 0, 0, 0, 0, '', 0, '2023-02-19 05:14:07', '2023-02-19 05:14:07'),
(58, '202300002', 17, 2500, 0, 0, 0, 0, '', 1, '2023-02-19 05:42:50', '2023-02-19 05:44:03'),
(59, '202300003', 14, 2925.45, 1, 29.55, 1, 29.55, '', 1, '2023-02-21 03:39:47', '2023-02-21 03:40:20'),
(60, '202300004', 17, 2855, 0, 0, 0, 0, '', 1, '2023-02-23 02:12:48', '2023-02-23 02:13:36'),
(61, '202300005', 17, 2955, 0, 0, 0, 0, '', 1, '2023-02-23 02:13:03', '2023-02-23 02:13:23'),
(62, '202300006', 24, 2955, 0, 0, 0, 0, 'Test', 0, '2023-02-25 15:38:10', '2023-02-25 15:38:10'),
(63, '202300007', 24, 2500, 0, 0, 0, 0, '', 1, '2023-02-27 05:56:33', '2023-02-27 05:56:49'),
(64, '202300008', 18, 2855, 0, 0, 0, 0, '', 0, '2023-02-27 06:01:27', '2023-02-27 06:01:27'),
(65, '202300009', 64, 100, 0, 0, 0, 0, 'Test', 0, '2023-03-04 21:44:16', '2023-03-04 21:44:16');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_services`
--

CREATE TABLE `invoice_services` (
  `invoice_id` int(30) NOT NULL,
  `service_id` int(30) NOT NULL,
  `price` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice_services`
--

INSERT INTO `invoice_services` (`invoice_id`, `service_id`, `price`) VALUES
(1, 1, 250),
(1, 3, 355),
(2, 3, 355),
(2, 1, 250),
(2, 2, 399.99),
(3, 2, 399.99),
(3, 3, 355),
(1, 1, 250),
(1, 3, 355),
(2, 3, 355),
(2, 1, 250),
(2, 2, 399.99),
(3, 2, 399.99),
(3, 3, 355),
(5, 5, 5000),
(5, 6, 2500),
(6, 5, 5000),
(7, 7, 200),
(8, 5, 5000),
(9, 7, 200),
(10, 5, 5000),
(11, 5, 5000),
(12, 7, 200),
(13, 7, 200),
(14, 8, 3000),
(15, 6, 2500),
(16, 6, 2500),
(17, 6, 2500),
(18, 6, 2500),
(19, 6, 2500),
(20, 6, 2500),
(21, 6, 2500),
(22, 6, 2500),
(23, 6, 2500),
(24, 6, 2500),
(25, 6, 2500),
(26, 6, 2500),
(27, 6, 2500),
(28, 6, 2500),
(29, 6, 2500),
(30, 6, 2500),
(31, 6, 2500),
(32, 6, 2500),
(33, 6, 2500),
(34, 6, 2500),
(35, 6, 2500),
(4, 6, 2500),
(36, 6, 2500),
(37, 6, 2500),
(38, 6, 2500),
(39, 6, 2500),
(40, 6, 2500),
(41, 6, 2500),
(42, 6, 2500),
(43, 6, 2500),
(44, 6, 2500),
(45, 6, 2500),
(46, 6, 2500),
(47, 6, 2500),
(48, 6, 2500),
(49, 6, 2500),
(50, 6, 2500),
(51, 6, 2500),
(52, 6, 2500),
(53, 6, 2500),
(54, 6, 2500),
(55, 6, 2500),
(56, 6, 2500),
(57, 3, 355),
(58, 6, 2500),
(59, 3, 355),
(59, 5, 100),
(59, 6, 2500),
(61, 3, 355),
(61, 5, 100),
(61, 6, 2500),
(60, 3, 355),
(60, 6, 2500),
(62, 3, 355),
(62, 6, 2500),
(62, 5, 100),
(63, 6, 2500),
(64, 6, 2500),
(64, 3, 355),
(65, 5, 100);

-- --------------------------------------------------------

--
-- Table structure for table `payment_list`
--

CREATE TABLE `payment_list` (
  `id` int(30) NOT NULL,
  `account_id` int(30) NOT NULL,
  `month_of` varchar(10) NOT NULL,
  `amount` float(12,2) NOT NULL DEFAULT 0.00,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_list`
--

INSERT INTO `payment_list` (`id`, `account_id`, `month_of`, `amount`, `date_created`, `date_updated`) VALUES
(3, 1, '2022-04', 5000.00, '2022-05-07 14:55:37', '2022-05-07 14:55:37'),
(4, 1, '2022-05', 5000.00, '2022-05-07 14:58:27', '2022-05-07 15:10:56'),
(5, 2, '2022-05', 3500.00, '2022-05-07 14:59:04', '2022-05-07 14:59:04');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `client_id` int(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `concern` text NOT NULL,
  `floor` varchar(100) NOT NULL,
  `room` varchar(100) NOT NULL,
  `status` varchar(11) NOT NULL DEFAULT '0',
  `srfnumber` varchar(100) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `client_id`, `name`, `username`, `concern`, `floor`, `room`, `status`, `srfnumber`, `date_created`) VALUES
(1, 24, 'Vincent Cunanan', '', 'Test', 'Ground Floor', '103', '1', 'SRF-825328', '2023-03-06 05:04:42'),
(2, 24, 'Vincent Cunanan', '', 'G', '304', '12', '1', 'SRF-ae7222', '2023-03-07 15:33:50'),
(3, 24, 'Vincent Cunanan', '', 'G', '104', '104', '0', 'SRF-bdbfee', '2023-03-07 15:44:27'),
(5, 68, 'Random Student', '', 'Testing', '12', '12', '1', 'SRF-89617a', '2023-03-07 16:59:30'),
(6, 0, '', '', 'busted lights', '', '', '0', 'SRF-ab4aab', '2023-03-08 14:44:30');

-- --------------------------------------------------------

--
-- Table structure for table `room_list`
--

CREATE TABLE `room_list` (
  `id` int(30) NOT NULL,
  `dorm_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `slots` int(10) NOT NULL DEFAULT 0,
  `price` float(12,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_list`
--

INSERT INTO `room_list` (`id`, `dorm_id`, `name`, `slots`, `price`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 1, 'Room 101', 4, 3500.00, 1, 0, '2022-05-07 10:35:39', '2022-05-07 10:35:39'),
(2, 1, 'Room 102', 4, 3500.00, 1, 0, '2022-05-07 10:35:53', '2022-05-07 10:35:53'),
(3, 2, 'Room 101', 4, 3500.00, 1, 0, '2022-05-07 10:36:08', '2022-05-07 10:36:08'),
(4, 2, 'Room 102', 4, 3500.00, 1, 0, '2022-05-07 10:36:19', '2022-05-07 10:36:19'),
(5, 3, 'Room 101', 2, 5000.00, 1, 0, '2022-05-07 10:36:34', '2022-05-07 10:36:34'),
(6, 4, 'Room 101', 2, 5000.00, 1, 0, '2022-05-07 10:36:43', '2022-05-07 10:36:43'),
(7, 2, 'Room 103', 6, 1000.00, 1, 0, '2022-05-07 10:37:20', '2023-02-16 17:16:19'),
(8, 1, 'Vincent Cunanan', 1, 1000.00, 1, 1, '2023-02-16 17:20:16', '2023-02-16 17:21:13'),
(9, 1, 'Room 111', 0, 0.00, 1, 1, '2023-02-16 17:20:46', '2023-02-16 17:21:13'),
(10, 1, '', 0, 0.00, 1, 1, '2023-02-16 17:21:05', '2023-02-16 17:21:13'),
(11, 1, 'Room 123', 1, 1000.00, 1, 1, '2023-02-16 17:26:44', '2023-02-16 17:29:31'),
(12, 1, 'Room 124', 1, 999.00, 1, 1, '2023-02-16 17:29:25', '2023-02-16 17:29:31'),
(13, 1, 'Room 123', 1, 1000.00, 1, 1, '2023-02-16 17:31:53', '2023-02-16 17:44:04'),
(14, 1, 'G', 1, 1.00, 1, 1, '2023-02-16 17:43:47', '2023-02-16 17:44:04'),
(15, 1, 'qwe', 1, 10.00, 1, 1, '2023-02-16 17:47:30', '2023-02-16 18:11:43'),
(23, 3, 'Q', 1, 1000.00, 1, 0, '2023-02-16 18:14:50', '2023-02-16 18:14:50');

-- --------------------------------------------------------

--
-- Table structure for table `services_list`
--

CREATE TABLE `services_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services_list`
--

INSERT INTO `services_list` (`id`, `name`, `description`, `price`, `status`, `date_created`, `date_updated`) VALUES
(3, 'Parts Replacements', 'Parts Replacements', 355, 1, '2021-11-05 09:51:53', '2021-11-05 09:51:53'),
(5, 'Testing', 'No', 100, 1, '2023-02-16 16:26:15', '2023-02-16 23:07:20'),
(6, 'Rent', 'Rental Payment', 2500, 1, '2022-08-29 22:18:12', '2022-08-29 22:18:12');

-- --------------------------------------------------------

--
-- Table structure for table `student_list`
--

CREATE TABLE `student_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `department` text NOT NULL,
  `course` text NOT NULL,
  `gender` varchar(20) NOT NULL,
  `contact` text NOT NULL,
  `email` text NOT NULL,
  `address` text NOT NULL,
  `emergency_name` text NOT NULL,
  `emergency_contact` text NOT NULL,
  `emergency_address` text NOT NULL,
  `emergency_relation` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_list`
--

INSERT INTO `student_list` (`id`, `code`, `firstname`, `middlename`, `lastname`, `department`, `course`, `gender`, `contact`, `email`, `address`, `emergency_name`, `emergency_contact`, `emergency_address`, `emergency_relation`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, '6231415', 'Mark', 'D', 'Cooper', 'College of Engineering', 'Bachelor of Science in Computer  Science', 'Male', '09123456789', 'mcooper@gmail.com', '23 St, Here City, Over There Province,  2306', 'Kevin Cooper', '09654789123', '23 St, Here City, Over There Province,  2306', 'Father', 1, 0, '2022-05-07 11:12:38', '2022-05-07 11:12:38'),
(2, '101497', 'Claire', 'C', 'Blake', 'College of Social Science', 'Bachelor of Science in Psychology', 'Female', '09654789123', 'cblake@gmail.com', '15 St., There City, Anywhere Province, 1014', 'Cynthia Blake', '09123456987', '15 St., There City, Anywhere Province, 1014', 'Mother', 1, 0, '2022-05-07 11:17:22', '2022-05-07 11:17:22');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Philippine State College of Aeronautics'),
(6, 'short_name', 'AeroDorm'),
(11, 'logo', 'uploads/logo-1676531565.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1676531565.png'),
(15, 'content', 'Array');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `status`, `date_added`, `date_updated`) VALUES
(1, 'Admin', NULL, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/avatar-1.png?v=1635556826', NULL, 1, 0, '2021-01-20 14:02:37', '2023-02-16 15:13:27'),
(11, 'Claire', NULL, 'Blake', 'cblake', 'cd74fae0a3adf459f73bbf187607ccea', 'uploads/avatar-11.png?v=1635920566', NULL, 1, 0, '2021-11-03 14:22:46', '2023-02-16 18:39:15'),
(14, 'John', NULL, 'Smith', 'jsmith', '39ce7e2a8573b41ce73b5ba41617f8f7', 'uploads/avatar-14.png?v=1636074078', NULL, 1, 0, '2021-11-05 09:01:18', '2023-02-16 15:56:29'),
(23, 'qwe', NULL, 'qwe', 'qwerty', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'uploads/avatar-23.png?v=1676686526', NULL, 1, 0, '2023-02-18 02:15:26', '2023-02-21 06:11:30'),
(27, 'Princess Edalia', NULL, 'Bautista', 'cess', '202cb962ac59075b964b07152d234b70', NULL, NULL, 1, 0, '2023-02-23 02:14:36', NULL),
(28, 'Random', NULL, 'Test', 'randomtest', 'ffa0d7be709ac0ab29c7c140a618fc87', 'uploads/avatar-28.png?v=1677155578', NULL, 2, 0, '2023-02-23 12:32:58', '2023-02-23 13:10:06');

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `user_id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_meta`
--

INSERT INTO `user_meta` (`user_id`, `meta_field`, `meta_value`, `date_created`) VALUES
(28, 'status', '1', '2023-02-23 13:08:28'),
(28, 'status', '0', '2023-02-23 13:08:38'),
(28, 'status', '1', '2023-02-23 13:08:44'),
(28, 'status', '1', '2023-02-23 13:09:38'),
(28, 'status', '0', '2023-02-23 13:10:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicant`
--
ALTER TABLE `applicant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applicant_attachment`
--
ALTER TABLE `applicant_attachment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_list`
--
ALTER TABLE `client_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_meta`
--
ALTER TABLE `client_meta`
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `floor`
--
ALTER TABLE `floor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_list`
--
ALTER TABLE `invoice_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `invoice_services`
--
ALTER TABLE `invoice_services`
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `room_list`
--
ALTER TABLE `room_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_list`
--
ALTER TABLE `services_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicant`
--
ALTER TABLE `applicant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `applicant_attachment`
--
ALTER TABLE `applicant_attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `client_list`
--
ALTER TABLE `client_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `floor`
--
ALTER TABLE `floor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `invoice_list`
--
ALTER TABLE `invoice_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `room_list`
--
ALTER TABLE `room_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `services_list`
--
ALTER TABLE `services_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `client_meta`
--
ALTER TABLE `client_meta`
  ADD CONSTRAINT `client_meta_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
