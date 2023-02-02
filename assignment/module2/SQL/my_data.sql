-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2023 at 11:17 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CNM` int(11) NOT NULL,
  `CNAME` varchar(255) DEFAULT NULL,
  `CITY` varchar(255) DEFAULT NULL,
  `RATING` int(11) DEFAULT NULL,
  `SNO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CNM`, `CNAME`, `CITY`, `RATING`, `SNO`) VALUES
(201, 'HOFFMAN', 'LONDON', 100, 1001),
(202, 'GIOVANNE', 'ROME', 200, 1003),
(203, 'LIU', 'SAN JOSE', 300, 1002),
(204, 'GRASS', 'BARCELONA', 100, 1002),
(205, 'CLEMENS', 'LONDON', 300, 1004),
(206, 'PEREIRA', 'ROME', 100, 1004);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMPLOYEE_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `SALARY` float DEFAULT NULL,
  `JOINNING_DATE` date DEFAULT NULL,
  `DEPARTMENT` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMPLOYEE_ID`, `FIRST_NAME`, `LAST_NAME`, `SALARY`, `JOINNING_DATE`, `DEPARTMENT`) VALUES
(1, 'JOHN\r\n', 'ABRAHAM', 80000, '2023-01-01', 'BANKING'),
(2, 'MICHAEL', 'CLERK', 800000, '2023-02-02', 'INSURANCE'),
(5, 'ROY', 'THOMAS', 70000, '2023-02-08', 'BANKING'),
(6, 'TOM', 'JOSE', 600000, '2023-02-06', 'INSURANCE'),
(7, 'JERRY', 'PINTO', 650000, '2023-02-05', 'INSURANCE'),
(8, 'PHILIP', 'MATHEW', 750000, '2023-02-13', 'SERVICE'),
(9, 'TESTNAME1', '123', 650000, '2023-02-15', 'SERVICE'),
(10, 'TESTNAME2', 'LNAME%', 600000, '2023-02-03', 'INSURANCE');

-- --------------------------------------------------------

--
-- Table structure for table `incentives`
--

CREATE TABLE `incentives` (
  `insentive_id` int(11) NOT NULL,
  `EMPLOYEE_REF_ID` int(11) DEFAULT NULL,
  `INCENTIVE_DATE` date DEFAULT NULL,
  `INCENTIVE_AMT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `incentives`
--

INSERT INTO `incentives` (`insentive_id`, `EMPLOYEE_REF_ID`, `INCENTIVE_DATE`, `INCENTIVE_AMT`) VALUES
(1, 1, '2023-02-07', 5000),
(2, 2, '2023-02-09', 3000),
(3, 3, '2023-02-15', 4000),
(4, 1, '2023-02-15', 4500),
(5, 2, '2023-02-16', 3500);

-- --------------------------------------------------------

--
-- Table structure for table `order_`
--

CREATE TABLE `order_` (
  `O_NUMBER` int(11) NOT NULL,
  `AMT` float DEFAULT NULL,
  `O_DATE` date DEFAULT NULL,
  `CNM` int(11) DEFAULT NULL,
  `SNO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_`
--

INSERT INTO `order_` (`O_NUMBER`, `AMT`, `O_DATE`, `CNM`, `SNO`) VALUES
(3001, 18.69, '2023-02-07', 201, 1007),
(3002, 1900.1, '2023-02-15', 207, 1004),
(3003, 767.19, '2023-02-14', 201, 1001),
(3004, 3005, '2023-02-18', 203, 1002),
(3005, 3006, '2023-02-11', 201, 1007),
(3006, 3007, '2023-02-09', 204, 1002),
(3007, 3008, '2023-02-13', 206, 1001),
(3008, 3009, '2023-02-08', 202, 1003),
(3009, 3010, '2023-02-13', 204, 1002),
(3010, 3011, '2023-02-25', 206, 1001);

-- --------------------------------------------------------

--
-- Table structure for table `sales_person`
--

CREATE TABLE `sales_person` (
  `SNO` int(11) NOT NULL,
  `SNAME` varchar(255) DEFAULT NULL,
  `CITY` varchar(255) DEFAULT NULL,
  `COMM` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_person`
--

INSERT INTO `sales_person` (`SNO`, `SNAME`, `CITY`, `COMM`) VALUES
(1001, 'PEEL', 'LONDON', 0.12),
(1002, 'SERRES', 'SAN JOSE', 0.13),
(1003, 'AXELROD', 'NEW YORK', 0.1),
(1004, 'MOTIKA', 'LONDON', 0.11),
(1005, 'RAFKIN', 'BARCELONA', 0.15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CNM`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EMPLOYEE_ID`);

--
-- Indexes for table `incentives`
--
ALTER TABLE `incentives`
  ADD PRIMARY KEY (`insentive_id`);

--
-- Indexes for table `order_`
--
ALTER TABLE `order_`
  ADD PRIMARY KEY (`O_NUMBER`);

--
-- Indexes for table `sales_person`
--
ALTER TABLE `sales_person`
  ADD PRIMARY KEY (`SNO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CNM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EMPLOYEE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `incentives`
--
ALTER TABLE `incentives`
  MODIFY `insentive_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_`
--
ALTER TABLE `order_`
  MODIFY `O_NUMBER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3013;

--
-- AUTO_INCREMENT for table `sales_person`
--
ALTER TABLE `sales_person`
  MODIFY `SNO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1007;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
