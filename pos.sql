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
-- Dumping data for table `catalogtable`
--

INSERT INTO `catalogtable` (`PID`, `prodname`, `description`, `PCID`, `MRP`, `costprice`, `qty`, `prodstatus`, `prodcode`, `tax`) VALUES
(51, 'potato', '', 51, '5.00', '3.00', 41, 'Active', 1, 2),
(54, 'brownie', '', 53, '40.75', '32.00', 23, 'Active', 4, 3),
(55, 'mango', 'a fruit', 55, '15.00', '10.00', 452, 'Active', 2, 4),
(57, '22', '', 51, '22.00', '22.00', 22, 'Active', 22, 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CID` int(12) NOT NULL,
  `catname` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CID`, `catname`, `status`) VALUES
(51, 'vegetable', 'Active'),
(53, 'baked', 'Active'),
(54, 'chocolates', 'Active'),
(55, 'fruit', 'Active'),
(56, 'drinks', 'Active');

-- --------------------------------------------------------

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
-- Dumping data for table `productsold`
--

INSERT INTO `productsold` (`ID`, `SID`, `prodcode`, `MRP`, `total`, `qty`, `discount`) VALUES
(69, 68, 1, '5.00', '14.25', 3, '5'),
(70, 68, 2, '25.00', '71.25', 3, '5'),
(71, 68, 4, '40.75', '81.50', 2, ''),
(72, 69, 1, '5.00', '15.00', 3, ''),
(73, 70, 1, '5.00', '35.00', 7, '5'),
(74, 71, 1, '5.00', '23.70', 5, '5'),
(75, 72, 1, '5.00', '17.50', 7, '50'),
(76, 72, 2, '25.00', '67.50', 3, '10'),
(77, 73, 1, '5.00', '15.00', 3, ''),
(78, 74, 1, '5.00', '20.00', 4, ''),
(79, 75, 1, '5.00', '20.00', 4, ''),
(80, 76, 1, '5.00', '23.10', 6, '23'),
(81, 77, 3, '25.00', '150.00', 6, ''),
(82, 78, 5, '15.00', '78.75', 7, '25'),
(83, 78, 2, '25.00', '50.00', 2, ''),
(84, 78, 3, '25.00', '50.00', 2, ''),
(85, 79, 5, '15.00', '78.75', 7, '25'),
(86, 79, 2, '25.00', '50.00', 2, ''),
(87, 80, 2, '15.00', '60.00', 4, ''),
(88, 80, 1, '5.00', '20.00', 4, '');

-- --------------------------------------------------------

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
-- Dumping data for table `salestable`
--

INSERT INTO `salestable` (`SID`, `date`, `total`, `paid`, `balance`, `user`) VALUES
(68, '15/09/2019', '167.00', '200.00', '33.00', 'cyan'),
(69, '15/09/2019', '15.00', '23.00', '8.00', 'cyan'),
(70, '15/09/2019', '35.00', '45.00', '10.00', 'cyan'),
(71, '15/09/2019', '23.70', '13.79', '-9.91', 'admin'),
(72, '16/09/2019', '85.00', '50.13', '-34.88', 'admin'),
(73, '16/09/2019', '15.00', '15.18', '0.18', 'admin'),
(74, '16/09/2019', '20.00', '157.00', '137.00', 'admin'),
(75, '16/09/2019', '20.00', '146.00', '126.00', 'cyan'),
(76, '16/09/2019', '23.10', '24.00', '0.90', 'cyan'),
(77, '28/09/2019', '150.00', '200.00', '50.00', 'admin'),
(78, '29/09/2019', '178.75', '200.00', '21.25', 'admin'),
(79, '29/09/2019', '128.75', '200.00', '71.25', 'admin'),
(80, '02/10/2019', '80.00', '100.00', '20.00', 'user');

-- --------------------------------------------------------

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
(17, 'manager', 'filler', 'Active', 'manager'),
(24, 'vengi', 'vengi', 'Active', 'admin');

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
