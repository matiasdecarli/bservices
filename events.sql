-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 15, 2012 at 04:21 PM
-- Server version: 5.1.44
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bservices`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(3) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `location` varchar(20) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `event_type` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `location`, `created`, `event_type`) VALUES
(0, 'evento_test', '-38.0122645, -57.540', '2012-12-15', 1),
(1, 'evento_test2', '36.597889,-96.328125', '2012-12-15', 2);
