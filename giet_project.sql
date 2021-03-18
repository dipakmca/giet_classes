-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2021 at 05:05 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `giet_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `username` varchar(21) NOT NULL,
  `password` varchar(15) NOT NULL,
  `contactno` varchar(11) NOT NULL,
  `emailid` varchar(32) NOT NULL,
  `gender` varchar(12) NOT NULL,
  `district` varchar(15) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `language` varchar(40) NOT NULL,
  `address` text NOT NULL,
  `status` varchar(10) NOT NULL,
  `cr_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `emailid` (`emailid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `username`, `password`, `contactno`, `emailid`, `gender`, `district`, `dob`, `language`, `address`, `status`, `cr_date`) VALUES
(2, 'Dipak', 'dipak', 'dipak@123', '888', 'd@gmail.com', 'Male', 'Puri', '2021-02-25', 'Oriya', 'Patia,Bhuabneswar', '', '2021-02-25 00:00:00'),
(7, 'Dillip', 'dillip', 'dillip@123', '99999', 'dillip@gmail.com', 'Male', 'Khurda', '2021-02-24', 'Oriya,English,Hindi', 'sxdsd', 'active', '2021-02-25 00:00:00'),
(11, '', '', '', '', '', '', '', '', '', '', 'active', '2021-02-25 00:00:00'),
(12, 'Dillip', 'dillip', 'asdasdasd', '99999', 'dillipik@gmail.com', 'Male', 'Khurda', '2021-02-24', 'Oriya,English,Hindi', 'sxdsd', 'active', '2021-02-25 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
