-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2020 at 04:46 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `acc_no` bigint(20) NOT NULL,
  `balance` int(40) NOT NULL,
  `location` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `acc_no`, `balance`, `location`) VALUES
(1, 'Rameez', 'rmz@gmail.com', 244556980213, 24155, 'Kerala'),
(2, 'Darshana', 'darsh@gmail.com', 934576980911, 101345, 'Karnataka'),
(3, 'Athul', 'atk@gmail.com', 999801223651, 49820, 'Delhi'),
(4, 'Rithik', 'rtk@gmail.com', 999555444222, 84277, 'Kerala'),
(5, 'Shwetha', 'shwe@gmail.com', 666555222333, 19500, 'Karnataka'),
(6, 'Nakshatra', 'nakki@gmail.com', 999555222000, 50700, 'Kerala'),
(7, 'Punita', 'puni@gmail.com', 455562229111, 6203, 'Karnataka'),
(8, 'Anagh', 'anagh@gmail.com', 755422411300, 9998, 'Kerala'),
(9, 'Aishwarya', 'kirukki@gmail.com', 544622911300, 20002, 'Kerala'),
(10, 'Soumya', 'somu@gmail.com', 988522733411, 59500, 'Karnataka');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` int(20) NOT NULL,
  `senderName` varchar(40) NOT NULL,
  `senderAcc` int(20) NOT NULL,
  `recieverName` varchar(40) NOT NULL,
  `recieverAcc` int(20) NOT NULL,
  `Amount` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`id`, `senderName`, `senderAcc`, `recieverName`, `recieverAcc`, `Amount`) VALUES
(5, 'Rameez', 0, 'Darshana', 0, 645),
(6, 'Rithik', 0, 'Rameez', 0, 5000),
(7, 'Athul', 0, 'Punita', 0, 680),
(8, 'Soumya', 0, 'Nakshatra', 0, 500),
(9, 'Shwetha', 0, 'Rithik', 0, 20500),
(10, 'Rithik', 0, 'Rameez', 0, 500),
(11, 'Anagh', 0, 'Aishwarya', 0, 1),
(12, 'Anagh', 0, 'Aishwarya', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
