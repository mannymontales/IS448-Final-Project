-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2019 at 05:01 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prj_is448`
--

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(4) DEFAULT NULL,
  `username` varchar(65) DEFAULT NULL,
  `password` varchar(65) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `username`, `password`) VALUES
(1, 'Kamran', 'kamran1'),
(2, 'test', 'test'),
(5, 'user', 'passsword');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `catid` int(6) UNSIGNED NOT NULL,
  `catname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`catid`, `catname`) VALUES
(1, 'WORLSNEWS'),
(2, 'SPORTS'),
(3, 'LOCALNEWS'),
(21, 'Test11'),
(22, 'Test12345');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomment`
--

CREATE TABLE `tblcomment` (
  `commentid` int(4) UNSIGNED NOT NULL,
  `comment` varchar(65) DEFAULT NULL,
  `newsid` int(6) DEFAULT NULL,
  `showhide` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomment`
--

INSERT INTO `tblcomment` (`commentid`, `comment`, `newsid`, `showhide`) VALUES
(2, ' test 1', 1, 1),
(3, ' test 2', 1, 0),
(4, ' Test 3', 1, 1),
(5, ' Test 4', 1, 0),
(6, ' Test News 2 Comments Comments Comments Comments Comments Comment', 2, 1),
(7, ' Test News 2\r\nTest News 2 Test News 2 Test News 2 Test News 2 Tes', 2, 1),
(8, ' fgfdgfd', 31, 1),
(9, ' 43543543', 31, 1),
(10, ' QQQQQ', 31, 0),
(11, ' 7777', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblnews`
--

CREATE TABLE `tblnews` (
  `newsid` int(6) UNSIGNED NOT NULL,
  `newsheadline` varchar(30) NOT NULL,
  `newsdetails` longtext NOT NULL,
  `newsimage` varchar(30) DEFAULT NULL,
  `newsdate` date DEFAULT NULL,
  `newsautor` varchar(30) DEFAULT NULL,
  `newscatid` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblnews`
--

INSERT INTO `tblnews` (`newsid`, `newsheadline`, `newsdetails`, `newsimage`, `newsdate`, `newsautor`, `newscatid`) VALUES
(1, 'Test News 1 ', 'Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test New Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test NewTest News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test NewTest News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test NewTest News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test NewTest News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test NewTest News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test NewTest News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test NewTest News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test NewTest News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test NewTest News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test NewTest News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test NewTest News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test NewTest News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test NewTest News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test NewTest News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test NewTest News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test News 1 Test New', 'download.jpg', '0000-00-00', 'UMBC', 1),
(2, 'Test News 2', 'Test News 2 Test News 2 Test News 2 Test News 2 Test News 2 Test News 2 Test News 2 Test News 2 Test News 2 Test News 2 Test News 2 Test News 2 Test News 2 ', 'download1.jpg', '0000-00-00', 'User1', 2),
(3, 'Test News 3', 'Test News 3 Test News 3 Test News 3 Test News 3 Test News 3 Test News 3 Test News 3 Test News 3 Test News 3 Test News 3 ', 'download2.jpg', '0000-00-00', 'news', 1),
(4, 'Test News NEWS 4', 'Test News NEWS 4 Test News NEWS 4 Test News NEWS 4 Test News NEWS 4 Test News NEWS 4 Test News NEWS 4 Test News NEWS 4 Test News NEWS 4 Test News NEWS 4 ', 'download3.jpg', '0000-00-00', 'cnn', 1),
(5, 'LOCAL NEWS 1', ' LOCAL NEWS 1  LOCAL NEWS 1  LOCAL NEWS 1  LOCAL NEWS 1  LOCAL NEWS 1  LOCAL NEWS 1  LOCAL NEWS 1  LOCAL NEWS 1 ', 'download5.jpg', '0000-00-00', 'Baltimore', 3),
(6, 'Cars ', ' CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS <img src=images/1.jpg /> a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS <img src=images/2.jpg />a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS <img src=images/3.png />a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS  CARS a', 'download6.jpg', '0000-00-00', 'BMW', 12),
(7, 'UMBC_Sports', '  UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports   UMBC_Sports ', 'download7.jpg', '0000-00-00', 'umbc', 2),
(30, '12345', ' 123451234512345123451\r\n2345123451234512345123451\r\n2345123451234512345123\r\n45123451234512345123\r\n451234512345123451\r\n234512345123451\r\n234512345123451234\r\n51234512345123451234512\r\n3451234512345123451234512345 ', 'MB4.png', '2019-04-05', '12345', 22),
(31, 'Insert T', '  Kamran T   Kamran T   Kamran T   Kamran T   Kamran T   Kamran T   Kamran T   Kamran T   Kamran T   Kamran T   Kamran T   Kamran T   Kamran T   Kamran T   Kamran T   Kamran T   Kamran T   Kamran T   Kamran T   Kamran T   Kamran T   Kamran T  ', 'MB3.png', '2019-04-03', 'Kamran T', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblstyle`
--

CREATE TABLE `tblstyle` (
  `styleid` int(6) UNSIGNED NOT NULL,
  `tag` varchar(30) NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstyle`
--

INSERT INTO `tblstyle` (`styleid`, `tag`, `value`) VALUES
(1, 'H1', '#f34160'),
(2, 'H2', '#1adf37'),
(3, 'H3', '#bcbcbc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `tblcomment`
--
ALTER TABLE `tblcomment`
  ADD PRIMARY KEY (`commentid`);

--
-- Indexes for table `tblnews`
--
ALTER TABLE `tblnews`
  ADD PRIMARY KEY (`newsid`);

--
-- Indexes for table `tblstyle`
--
ALTER TABLE `tblstyle`
  ADD PRIMARY KEY (`styleid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `catid` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tblcomment`
--
ALTER TABLE `tblcomment`
  MODIFY `commentid` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblnews`
--
ALTER TABLE `tblnews`
  MODIFY `newsid` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tblstyle`
--
ALTER TABLE `tblstyle`
  MODIFY `styleid` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
