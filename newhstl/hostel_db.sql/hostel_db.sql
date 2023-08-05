-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 07, 2013 at 04:19 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hostel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `hstlabls`
--

CREATE TABLE IF NOT EXISTS `hstlabls` (
  `srl_no` int(5) NOT NULL AUTO_INCREMENT,
  `studid` int(5) NOT NULL,
  `rmnum` varchar(5) NOT NULL,
  `rent` bigint(7) NOT NULL,
  `mesfe` bigint(7) NOT NULL,
  `ayear` varchar(5) NOT NULL,
  `amonth` varchar(15) NOT NULL,
  `othexpn` bigint(7) NOT NULL,
  `total` bigint(9) NOT NULL,
  PRIMARY KEY (`srl_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `hstlabls`
--

INSERT INTO `hstlabls` (`srl_no`, `studid`, `rmnum`, `rent`, `mesfe`, `ayear`, `amonth`, `othexpn`, `total`) VALUES
(1, 1, '11', 1000, 2000, '2012', '3', 100, 3100),
(2, 1, '11', 1000, 1000, '2013', 'September', 1, 2001),
(3, 2, '13', 2000, 1000, '2013', 'April', 100, 3100);

-- --------------------------------------------------------

--
-- Table structure for table `hstlatt`
--

CREATE TABLE IF NOT EXISTS `hstlatt` (
  `day` int(3) NOT NULL,
  `mnth` varchar(15) NOT NULL,
  `year` int(5) NOT NULL,
  `stdid` int(3) NOT NULL,
  `stdname` varchar(20) NOT NULL,
  `attStat` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hstlatt`
--

INSERT INTO `hstlatt` (`day`, `mnth`, `year`, `stdid`, `stdname`, `attStat`) VALUES
(8, 'November', 2013, 1, 'liya', 'Present'),
(8, 'November', 2013, 2, 'ttty', 'Present'),
(8, 'November', 2013, 3, 'ammu', 'Present'),
(8, 'November', 2013, 4, 'hht', 'Absent'),
(7, 'October', 2012, 1, 'liya', 'Absent'),
(7, 'October', 2012, 2, 'ttty', 'Absent'),
(7, 'October', 2012, 3, 'ammu', 'Absent'),
(7, 'October', 2012, 4, 'hht', 'Absent'),
(31, 'October', 2012, 1, 'liya', 'Present'),
(31, 'October', 2012, 3, 'ammu', 'Present'),
(31, 'October', 2012, 2, 'ttty', 'Absent'),
(31, 'October', 2012, 4, 'hht', 'Absent'),
(29, 'December', 2012, 1, 'liya', 'Present'),
(29, 'December', 2012, 2, 'ttty', 'Present'),
(29, 'December', 2012, 3, 'ammu', 'Present'),
(29, 'December', 2012, 4, 'hht', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `hstlblok`
--

CREATE TABLE IF NOT EXISTS `hstlblok` (
  `blok_id` int(5) NOT NULL AUTO_INCREMENT,
  `bloknum` int(5) NOT NULL,
  `blokname` varchar(20) NOT NULL,
  `blokstatus` varchar(15) NOT NULL,
  PRIMARY KEY (`blok_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `hstlblok`
--

INSERT INTO `hstlblok` (`blok_id`, `bloknum`, `blokname`, `blokstatus`) VALUES
(1, 1, 'kkk', 'Available'),
(2, 2, 'uio', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `hstlfloor`
--

CREATE TABLE IF NOT EXISTS `hstlfloor` (
  `flor_id` int(5) NOT NULL AUTO_INCREMENT,
  `flrblokname` varchar(20) NOT NULL,
  `flornum` int(5) NOT NULL,
  `florname` varchar(20) NOT NULL,
  `florstatus` varchar(15) NOT NULL,
  PRIMARY KEY (`flor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `hstlfloor`
--

INSERT INTO `hstlfloor` (`flor_id`, `flrblokname`, `flornum`, `florname`, `florstatus`) VALUES
(1, 'kkk', 1, 'ddd', 'Available'),
(2, 'uio', 2, 'ppp', 'Available'),
(3, 'kkk', 3, 'qaqa', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `hstlgrand`
--

CREATE TABLE IF NOT EXISTS `hstlgrand` (
  `grand_id` int(5) NOT NULL AUTO_INCREMENT,
  `grndstudid` int(5) NOT NULL,
  `grndblknam` varchar(20) NOT NULL,
  `grndflrnam` varchar(15) NOT NULL,
  `grndrmnum` varchar(8) NOT NULL,
  `grndrmrent` bigint(8) NOT NULL,
  `grndstat` varchar(10) NOT NULL,
  PRIMARY KEY (`grand_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `hstlgrand`
--

INSERT INTO `hstlgrand` (`grand_id`, `grndstudid`, `grndblknam`, `grndflrnam`, `grndrmnum`, `grndrmrent`, `grndstat`) VALUES
(1, 1, 'kkk', 'ddd', '11', 1000, 'Active'),
(2, 2, 'ttty', 'ppp', '13', 2000, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `hstlroom`
--

CREATE TABLE IF NOT EXISTS `hstlroom` (
  `rm_id` int(5) NOT NULL AUTO_INCREMENT,
  `rmBlkname` varchar(20) NOT NULL,
  `rmFlrnum` int(5) NOT NULL,
  `rmnum` int(5) NOT NULL,
  `rmtotbed` int(5) NOT NULL,
  `rmstatus` varchar(15) NOT NULL,
  PRIMARY KEY (`rm_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `hstlroom`
--

INSERT INTO `hstlroom` (`rm_id`, `rmBlkname`, `rmFlrnum`, `rmnum`, `rmtotbed`, `rmstatus`) VALUES
(1, 'kkk', 1, 11, 10, 'Available'),
(2, 'uio', 2, 12, 15, 'Available'),
(3, 'uio', 2, 13, 5, 'Available'),
(4, 'kkk', 3, 5, 11, 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `hstlstud`
--

CREATE TABLE IF NOT EXISTS `hstlstud` (
  `std_id` int(5) NOT NULL AUTO_INCREMENT,
  `stdname` varchar(20) NOT NULL,
  `stdgend` varchar(10) NOT NULL,
  `stddob` varchar(11) NOT NULL,
  `stdaddr` varchar(40) NOT NULL,
  `stdph` bigint(12) NOT NULL,
  `stdemail` varchar(20) NOT NULL,
  `stdparnam` varchar(20) NOT NULL,
  `stdparph` bigint(12) NOT NULL,
  `stdparem` varchar(20) NOT NULL,
  `stdstat` varchar(10) NOT NULL,
  PRIMARY KEY (`std_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `hstlstud`
--

INSERT INTO `hstlstud` (`std_id`, `stdname`, `stdgend`, `stddob`, `stdaddr`, `stdph`, `stdemail`, `stdparnam`, `stdparph`, `stdparem`, `stdstat`) VALUES
(1, 'liya', 'Female', '11-01-1995', 'aassd', 2121233321, 'wewe', 'paulose', 8989898989, 'sdsd', 'Active'),
(2, 'ttty', 'Male', '21-1-1990', 'sdfsdfsd', 2323423423, 'ert', 'yyys', 3231344323, 'wqwq', 'Active'),
(3, 'ammu', 'Female', '03-10-1996', 'asdfsa', 2323344234, 'dfdf', 'sdfs', 3423424243, 'ewer', 'Active'),
(4, 'hht', 'Male', '15-6-1992', 'sdfsd', 3234324223, 'dfs', 'dfdf', 7564564554, 'sdsd', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `hstlvstr`
--

CREATE TABLE IF NOT EXISTS `hstlvstr` (
  `vist_seri` int(7) NOT NULL AUTO_INCREMENT,
  `vistname` varchar(20) NOT NULL,
  `vistph` bigint(12) NOT NULL,
  `viststudnam` varchar(20) NOT NULL,
  `vistrelat` varchar(15) NOT NULL,
  `vistdate` varchar(11) NOT NULL,
  `enterytm` varchar(11) NOT NULL,
  `leavtm` varchar(11) NOT NULL,
  `vistpurps` varchar(30) NOT NULL,
  PRIMARY KEY (`vist_seri`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `hstlvstr`
--

INSERT INTO `hstlvstr` (`vist_seri`, `vistname`, `vistph`, `viststudnam`, `vistrelat`, `vistdate`, `enterytm`, `leavtm`, `vistpurps`) VALUES
(3, 'jitha p', 88000221, 'ttty', 'Friend', '02-11-2013', '03:41 PM', '11:30 AM', 'ewrdfdudcdksdse'),
(4, 'r', 232323, 'hht', 'Sister', '06-11-2013', '03:52 PM', '11:30 AM', 'ttt'),
(5, 'ww', 2323, 'ammu', 'Father', '07-11-2013', '04:16 PM', '11:30 AM', 'sd'),
(6, 'rrrt', 45454, 'liya', 'Friend', '30-11-2013', '04:18 PM', '11:30 AM', 'yttrfckd');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `password`, `status`) VALUES
(1, 'admin', 'admin', 'Active'),
(2, 'subusr', 'subusr', 'Active'),
(8, 'user', 'user', 'Active');
