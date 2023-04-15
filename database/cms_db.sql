-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2023 at 03:37 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms_db`
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
(12, '012345', 'John Doe', 'Associate in Aviation Electronics Technology', '09000000000', 'johndoe@gmail.com', 'John Mother', 'Area 51', '090000000000', '2nd Floor', 'Room 209', 1, 'Approved\n                            ', '2023-02-16 14:57:00'),
(13, '18010123', 'Test Student', 'Bachelor of Science in Aeronautical Engineering', '09301653187', 'vincentcunanan53@gmail.com', 'qwe', 'qwe', 'qwe', '4th Floor', 'Room 409', 1, '', '2023-02-16 15:18:45'),
(14, '18010123', 'Test Student', 'Bachelor of Science in Aeronautical Engineering', '09301653187', 'vincentcunanan53@gmail.com', 'qwe', 'qwe', 'qwe', '4th Floor', 'Room 409', 1, '', '2023-02-16 15:19:11'),
(15, '18010123', 'Test Student', 'Bachelor of Science in Aeronautical Engineering', '09301653187', 'vincentcunanan53@gmail.com', 'qwe', 'qwe', 'qwe', '4th Floor', 'Room 409', 1, '', '2023-02-16 15:19:17'),
(16, '18010123', 'Test Student', 'Bachelor of Science in Aeronautical Engineering', '09301653187', 'vincentcunanan53@gmail.com', 'qwe', 'qwe', 'qwe', '4th Floor', 'Room 409', 1, '', '2023-02-16 17:05:38'),
(17, '18010123', 'Test Student', 'Bachelor of Science in Aeronautical Engineering', '09301653187', 'vincentcunanan53@gmail.com', 'qwe', 'qwe', 'qwe', '4th Floor', 'Room 409', 0, '', '2023-02-16 14:18:00'),
(18, '181818', 'Taylor Swift', 'Bachelor of Science in Aeronautical Engineering', '09301653187', 'taylorswift13@gmail.com', 'qwe', 'qwe', '09301653187', '3rd Floor', 'Room 309', 0, '', '2023-02-16 14:19:22'),
(19, '181818', 'Taylor Swift', 'Bachelor of Science in Aeronautical Engineering', '09301653187', 'taylorswift13@gmail.com', 'qwe', 'qwe', '09301653187', '3rd Floor', 'Room 309', 0, '', '2023-02-16 14:19:22'),
(20, '181818', 'Taylor Swift', 'Bachelor of Science in Aeronautical Engineering', '09301653187', 'taylorswift13@gmail.com', 'qwe', 'qwe', '09301653187', '3rd Floor', 'Room 309', 0, '', '2023-02-16 14:20:11'),
(21, '181818', 'Taylor Swift', 'Bachelor of Science in Aeronautical Engineering', '09301653187', 'taylorswift13@gmail.com', 'qwe', 'qwe', '09301653187', '3rd Floor', 'Room 309', 0, '', '2023-02-16 14:20:11'),
(22, '18010123', 'Taylor Swift', 'Bachelor of Science in Aeronautical Engineering', '09301653187', 'taylorswift@gmail.com', 'qwe', 'qwe', 'qwe', '3rd Floor', 'Room 309', 0, '', '2023-02-16 14:20:53');

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
(20, 12, '1675963347IMG_9117.HEIC', 'active'),
(21, 12, '1675963347IMG_9110.HEIC', 'active');

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
(4, '20210002', '100af4e620024b40bbfc49214ea66509', 'Lou, Samantha Jane C', 1, '2021-11-05 14:59:58', '2021-11-05 15:19:32'),
(14, '20230001', '05e2b841411d095d8836e21d8f10ee79', 'Test, Test ', 1, '2023-02-17 00:40:25', '2023-02-17 00:40:25');

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
(4, 'lastname', 'Lou'),
(4, 'firstname', 'Samantha Jane'),
(4, 'middlename', 'C'),
(4, 'gender', 'Female'),
(4, 'dob', '1997-10-14'),
(4, 'contact', '097876546522'),
(4, 'address', 'Sample Address Only, Anywhere, 2306'),
(4, 'email', 'sjlou@sample.com'),
(4, 'cpassword', ''),
(4, 'cur_password', '20210002'),
(14, 'lastname', 'Test'),
(14, 'firstname', 'Test'),
(14, 'middlename', ''),
(14, 'gender', 'Male'),
(14, 'dob', '2000-02-17'),
(14, 'contact', '09301653187'),
(14, 'address', 'qwe'),
(14, 'email', 'buybackisavailable@gmail.com');

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
(3, '202100002', 4, 717.24, 5, 37.7495, 12, 90.5988, 'Sample Invoice 2', 1, '2021-11-05 15:10:47', '2021-11-05 15:19:56');

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
(56, 6, 2500);

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

INSERT INTO `reports` (`id`, `name`, `username`, `concern`, `floor`, `room`, `status`, `srfnumber`, `date_created`) VALUES
(8, 'Carlo Santos', '12345678', '4th Floor 409 , sssssssssssssssss', '4th Floor', '409', '1', 'SRF-2aa734', '2023-02-16 15:11:45'),
(11, 'Test Test', '20230001', 'Test', 'Ground Floor', '104', '1', 'SRF-77b084', '2023-02-16 17:14:01'),
(12, 'Test Test', '20230001', 'Test', '3rd Floor', '309', '1', 'SRF-6db088', '2023-02-16 17:14:12'),
(13, 'Test Test', '20230001', 'qwe', '2nd Floor', '209', '0', 'SRF-37991b', '2023-02-16 17:07:31'),
(14, 'Test Test', '20230001', 'Test', '4th Floor', '409', '1', 'SRF-6410af', '2023-02-16 17:13:56'),
(15, '', '', '', '', '', '0', 'SRF-00c660', '2023-02-16 17:16:52'),
(16, '', '', '', '', '', '0', 'SRF-3a69ee', '2023-02-16 17:28:23');

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
(1, 'Device Cleaning', 'Device Cleaning', 250, 1, '2021-11-05 09:48:30', '2021-11-05 09:48:30'),
(2, 'Software Trouble Shooting', 'Software Trouble Shooting', 399.99, 1, '2021-11-05 09:50:34', '2021-11-05 09:50:34'),
(3, 'Parts Replacements', 'Parts Replacements', 355, 1, '2021-11-05 09:51:53', '2021-11-05 09:51:53'),
(5, 'Testing', 'No', 100, 1, '2023-02-16 16:26:15', '2023-02-16 23:07:20'),
(6, 'Rent', 'Rental Payment', 2500, 1, '2022-08-29 22:18:12', '2022-08-29 22:18:12'),
(14, 's', 's\n                        ', 22, 1, '2023-02-10 03:37:51', '2023-02-10 03:37:51'),
(15, 'as', '\n  erer                      ', 220000, 1, '2023-02-10 03:40:25', '2023-02-10 03:40:25'),
(16, '', '', 0, 1, '2023-02-16 20:18:26', '2023-02-16 20:18:26');

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
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL,
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
(15, '', NULL, '', '18010123', '18010123', NULL, NULL, 0, 0, '2023-02-16 22:15:39', NULL),
(16, '', NULL, '', '181818', '181818', NULL, NULL, 0, 0, '2023-02-16 22:19:22', NULL);

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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `applicant_attachment`
--
ALTER TABLE `applicant_attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `client_list`
--
ALTER TABLE `client_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `floor`
--
ALTER TABLE `floor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `invoice_list`
--
ALTER TABLE `invoice_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `room_list`
--
ALTER TABLE `room_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `services_list`
--
ALTER TABLE `services_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
