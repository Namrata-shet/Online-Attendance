-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2021 at 09:08 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `att_id` int(10) NOT NULL,
  `member_id` int(10) NOT NULL,
  `date` date NOT NULL,
  `attendance` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`att_id`, `member_id`, `date`, `attendance`) VALUES
(1, 1, '2021-07-11', 1),
(2, 2, '2021-07-12', 0),
(19, 9, '2021-07-12', 0),
(20, 10, '2021-07-12', 0),
(21, 11, '2021-07-12', 0),
(22, 1, '2021-07-11', 0),
(23, 8, '2021-07-11', 0),
(24, 9, '2021-07-11', 0),
(25, 10, '2021-07-11', 1),
(26, 11, '2021-07-11', 0),
(27, 1, '2021-07-11', 0),
(28, 8, '2021-07-11', 0),
(29, 9, '2021-07-11', 1),
(30, 10, '2021-07-11', 0),
(31, 11, '2021-07-11', 0),
(32, 1, '2021-07-12', 0),
(33, 8, '2021-07-12', 0),
(34, 9, '2021-07-12', 1),
(35, 10, '2021-07-12', 0),
(36, 11, '2021-07-12', 0),
(37, 1, '2021-07-13', 0),
(38, 8, '2021-07-13', 0),
(39, 9, '2021-07-13', 1),
(40, 10, '2021-07-13', 0),
(41, 11, '2021-07-13', 0),
(42, 1, '2021-07-16', 0),
(43, 8, '2021-07-16', 0),
(44, 9, '2021-07-16', 0),
(45, 10, '2021-07-16', 0),
(46, 11, '2021-07-16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(10) NOT NULL,
  `enrolment_no` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `enrolment_no`, `name`, `mobile`, `email`) VALUES
(1, 123, 'Test', '8574968575', 'test@mail.com'),
(2, 20212, 'Ravi', '8576958475', 'ravi@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`att_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `att_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
