-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2017 at 12:29 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_jquery`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_refresh`
--

CREATE TABLE `tbl_refresh` (
  `id` int(11) NOT NULL,
  `body` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_refresh`
--

INSERT INTO `tbl_refresh` (`id`, `body`) VALUES
(1, 'Hello Dhaka'),
(2, 'Hello Rangpur'),
(3, 'Hello CTG'),
(4, 'Hello Barishal'),
(5, 'Hello USA\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_search`
--

CREATE TABLE `tbl_search` (
  `id` int(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_search`
--

INSERT INTO `tbl_search` (`id`, `name`, `address`, `gender`) VALUES
(1, 'Zimran', 'Dhaka', 'Male'),
(2, 'Suha', 'Chittagong', 'Female'),
(3, 'Nowroze', 'Chittagong', 'Male'),
(4, 'Shohan', 'Dhaka', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_skill`
--

CREATE TABLE `tbl_skill` (
  `skillid` int(12) NOT NULL,
  `skill` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_skill`
--

INSERT INTO `tbl_skill` (`skillid`, `skill`) VALUES
(1, 'Java'),
(2, 'PHP'),
(3, 'MySQL'),
(4, 'Oracle'),
(5, 'Python'),
(6, 'Laravel'),
(7, 'jQuery'),
(8, 'Angular');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `userid` int(10) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`userid`, `username`) VALUES
(1, 'Zimran'),
(2, 'Shohan'),
(3, 'Nowroze'),
(4, 'Suha');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_refresh`
--
ALTER TABLE `tbl_refresh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_search`
--
ALTER TABLE `tbl_search`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_skill`
--
ALTER TABLE `tbl_skill`
  ADD PRIMARY KEY (`skillid`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_refresh`
--
ALTER TABLE `tbl_refresh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_search`
--
ALTER TABLE `tbl_search`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_skill`
--
ALTER TABLE `tbl_skill`
  MODIFY `skillid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `userid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
