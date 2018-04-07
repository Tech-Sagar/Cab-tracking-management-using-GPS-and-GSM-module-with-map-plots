-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 06, 2015 at 08:37 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `terminal_bdis`
--
CREATE DATABASE IF NOT EXISTS `terminal_bdis` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `terminal_bdis`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `branchid` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `confirm_password` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `branchid`, `firstname`, `lastname`, `username`, `password`, `confirm_password`,`date_added`) VALUES
(1, 1, 'ram', 'kumar', 'ram', 'admin', 'password', 'Aug 27 2017 11:37 AM'),
(2, 4, 'shyam', 'reddy', 'rolly', 'admin', 'admin', 'Aug 27 2017 11:37 AM'),
(3, 4, 'jatin', 'bansal', 'jonathan', 'admin', 'admin', 'Aug 27 2017 11:38 AM'),
(4, 2, 'abishek', 'jha', 'elias', 'admin', 'admin', 'Aug 27 2017 11:38 AM'),
(5, 3, 'guru', 'ratan', 'rene', 'admin', 'admin', 'Aug 27 2017 11:39 AM'),
(6, 1, 'akhil', 'reddy', 'nixon', 'admin', 'admin','Aug 27 2017 11:40 AM'),
(9, 3, 'dhruv', 'goel', 'Daniel', 'admin', 'admin', 'Aug 27 2017 11:40 AM');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE IF NOT EXISTS `branch` (
  `branchid` int(11) NOT NULL AUTO_INCREMENT,
  `branch_location` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  PRIMARY KEY (`branchid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branchid`, `branch_location`, `date_added`) VALUES
(1, 'VIT VELLORE', 'Aug 27 2013 11:36 AM'),
(2, 'VIT CHENNAI', 'Aug 27 2015 11:36 AM'),
(3, 'VIT BHOPAL', 'Aug 27 2017 11:36 AM'),
(4, 'VIT AMRAVATI', 'Aug 27 2017 11:37 AM');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE IF NOT EXISTS `cab` (
  `cabid` int(11) NOT NULL AUTO_INCREMENT,
  `cab_number` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `cab_travel` varchar(100) NOT NULL,
  PRIMARY KEY (`cabid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `bus`
--

INSERT INTO `cab` (`cabid`, `cab_number`, `date_added`, `cab_travel`) VALUES
(3, '113','Aug 29 2015 02:56 PM', 'No'),
(4, '675', 'Aug 29 2015 02:56 PM', 'Yes'),
(5, '355', 'Sep 07 2015 12:46 PM', 'Yes'),
(6, '234', 'Sep 15 2015 04:54 PM', 'No'),
(7, '3542', 'Sep 17 2015 02:09 PM', 'No'),
(8, '5225', 'September 22,2015 8:05AM', 'No'),
(9, '5532', 'September 22,2015 8:15AM', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE IF NOT EXISTS `driver` (
  `driverid` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `contact_number` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `driver_travel` varchar(100) NOT NULL,
  PRIMARY KEY (`driverid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driverid`, `firstname`, `lastname`, `contact_number`, `date_added`, `driver_travel`) VALUES
(1, 'guru', 'ratan', '09226628436', 'Sep 15 2015 04:44 PM', 'No'),
(2, 'Sahil', 'Chopra', '09102837465','Sep 15 2015 04:45 PM', 'Yes'),
(3, 'Rahul', 'Raj', '09101635443', 'Sep 15 2015 04:57 PM', 'Yes'),
(4, 'Ramit', 'krishna', '09277407245',  'Sep 16 2015 05:53 PM', 'No'),
(5, 'Aman', 'sai', '092476544382', 'September 22,2015 7:51AM', 'No'),
(6, 'Bholu', 'raz', '09193547273', 'Sep 22 2015 07:55 AM', 'No'),
(7, 'Rounak', 'Gupta', '09248788675',  'Sep 22 2015 07:56 AM', 'No'),


--
-- Table structure for table `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
  `scheduleid` int(11) NOT NULL AUTO_INCREMENT,
  `cabid` varchar(100) NOT NULL,
  `driverid` varchar(100) NOT NULL,
  `from_location` varchar(100) NOT NULL,
  `destination_location` varchar(100) NOT NULL,
  `departure_time` datetime NOT NULL,
  `arrival_time` datetime NOT NULL,
  `terminal_location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `status_operation` varchar(100) NOT NULL,
  `arrived_at_destination` varchar(100) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`scheduleid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`scheduleid`, `cabid`, `driverid`, `from_location`, `destination_location`, `departure_time`, `arrival_time`, `terminal_location`, `status`, `status_operation`, `arrived_at_destination`, `date_added`) VALUES
(1, '3', '1', 'allmart', 'SJT', '2015-10-06 15:39:38', '2015-10-06 15:42:11', 'hostel', 'Arrived at hostel', 'Arrived', 'YES', '2015-10-06 15:39:38'),
(2, '4', '2', 'allmart', 'hostel', '2015-10-06 15:39:43', '2015-10-06 15:40:53', 'allmart', 'Arrived at allmart', 'Arrived', 'YES', '2015-10-06 15:39:43'),
(3, '3', '1', 'SJT', 'allmart', '2015-10-06 15:50:53', '2015-10-06 16:26:18', 'SJT', 'Arrived at SJT', 'Cancelled', 'YES', '2015-10-06 15:50:53'),
(4, '4', '2', 'hostel', 'allmart', '2015-10-06 16:02:59', '2017-05-02 04:00:00', 'Travel', 'Travel', 'On Travel', 'Not Yet', '2015-10-06 16:02:59'),
(5, '5', '3', 'hostel', 'SJT', '2015-10-06 16:24:40', '2016-06-04 03:00:00', 'Travel', 'Travel', 'On Travel', 'Not Yet', '2015-10-06 16:24:40');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
