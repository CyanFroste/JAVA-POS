-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2019 at 06:11 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `catalogtable`
--

CREATE TABLE `catalogtable` (
  `PID` int(12) NOT NULL,
  `prodname` varchar(10) NOT NULL,
  `description` text DEFAULT NULL,
  `PCID` int(12) NOT NULL,
  `MRP` decimal(14,2) NOT NULL,
  `costprice` decimal(14,2) DEFAULT NULL,
  `qty` int(12) NOT NULL,
  `prodstatus` varchar(200) NOT NULL,
  `prodcode` int(12) NOT NULL,
  `tax` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CID` int(12) NOT NULL,
  `catname` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `productsold`
--

CREATE TABLE `productsold` (
  `ID` int(12) NOT NULL,
  `SID` int(12) NOT NULL,
  `prodcode` int(12) NOT NULL,
  `MRP` decimal(14,2) NOT NULL,
  `total` decimal(14,2) NOT NULL,
  `qty` int(12) NOT NULL,
  `discount` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `salestable`
--

CREATE TABLE `salestable` (
  `SID` int(12) NOT NULL,
  `date` varchar(200) NOT NULL,
  `total` decimal(14,2) NOT NULL,
  `paid` decimal(14,2) NOT NULL,
  `balance` decimal(14,2) NOT NULL,
  `user` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(12) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `username`, `password`, `status`, `type`) VALUES
(9, 'user', 'user', 'Active', 'user'),
(17, 'manager', 'filler', 'Active', 'manager');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catalogtable`
--
ALTER TABLE `catalogtable`
  ADD PRIMARY KEY (`PID`),
  ADD UNIQUE KEY `prodname` (`prodname`),
  ADD UNIQUE KEY `prodcode` (`prodcode`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CID`),
  ADD UNIQUE KEY `catname` (`catname`);

--
-- Indexes for table `productsold`
--
ALTER TABLE `productsold`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `salestable`
--
ALTER TABLE `salestable`
  ADD PRIMARY KEY (`SID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catalogtable`
--
ALTER TABLE `catalogtable`
  MODIFY `PID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `productsold`
--
ALTER TABLE `productsold`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `salestable`
--
ALTER TABLE `salestable`
  MODIFY `SID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
