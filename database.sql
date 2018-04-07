-- phpMyAdmin SQL Dump
-- version 3.3.7deb7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 08, 2012 at 07:14 PM
-- Server version: 5.1.61
-- PHP Version: 5.3.3-7+squeeze8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gpstracks`
--

-- --------------------------------------------------------

--
-- Table structure for table `tracks`
--

CREATE TABLE IF NOT EXISTS `tracks` (
  `pointid` int(11) NOT NULL AUTO_INCREMENT,
  `runnerid` varchar(255) NOT NULL,
  `lat` decimal(7,5) NOT NULL,
  `lon` decimal(8,5) NOT NULL,
  `time` varchar(255) NOT NULL,
  PRIMARY KEY (`pointid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=642 ;

--
-- Dumping data for table `tracks`
--

INSERT INTO `tracks` (`pointid`, `runnerid`, `lat`, `lon`, `time`) VALUES
(595, 'ram', '12.9714', '79.1581', '2017-10-23T100:21:41Z'),
(596, 'ram', '12.9715', '79.1582', '2017-10-23T100:21:41Z'),
(597, 'ram', '12.9716', '79.1583', '2017-10-23T100:21:41Z'),
(598, 'ram', '12.9717', '79.1584', '2017-10-23T100:21:41Z'),
(599, 'ram', '12.9718', '79.1585', '2017-10-23T100:21:41Z'),
(600, 'ram', '12.9719', '79.1586', '2017-10-23T100:21:41Z');



