-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 16, 2012 at 06:47 PM
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
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `id` int(3) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `location` varchar(20) DEFAULT NULL,
  `place` text NOT NULL,
  `created` date DEFAULT NULL,
  `event_type` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `location`, `place`, `created`, `event_type`) VALUES
(1, 'Inundacion', '-38.0122645, -57.540', 'Mar del Plata,ARG.', '2012-12-15', 1),
(2, 'Apagon', '36.597889,-96.328125', 'Ocklahoma, US.', '2012-12-15', 2);

-- --------------------------------------------------------

--
-- Table structure for table `event_hash`
--

CREATE TABLE IF NOT EXISTS `event_hash` (
  `id_event` int(11) NOT NULL,
  `id_hashtag` int(11) NOT NULL,
  PRIMARY KEY (`id_event`,`id_hashtag`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_hash`
--

INSERT INTO `event_hash` (`id_event`, `id_hashtag`) VALUES
(1, 1),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `event_type`
--

CREATE TABLE IF NOT EXISTS `event_type` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_type`
--

INSERT INTO `event_type` (`id`, `name`) VALUES
(1, 'flood'),
(2, 'shutdown');

-- --------------------------------------------------------

--
-- Table structure for table `hashtag`
--

CREATE TABLE IF NOT EXISTS `hashtag` (
  `id` int(11) NOT NULL,
  `hashtag` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hashtag`
--

INSERT INTO `hashtag` (`id`, `hashtag`) VALUES
(1, 'event1_hashtag1'),
(2, 'event1_hashtag2'),
(3, 'event2_hashtag1'),
(4, 'event2_hashtag2');
