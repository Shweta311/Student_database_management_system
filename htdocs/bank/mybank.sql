-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2018 at 06:24 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+05:30";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mybank`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branchId` int(11) NOT NULL,
  `branchNo` varchar(111) NOT NULL,
  `branchName` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branchId`, `branchNo`, `branchName`) VALUES
(1, '100101', 'Pune'),
(2, '100102', 'Jalgaon');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedbackId` int(11) NOT NULL,
  `message` text NOT NULL,
  `userId` double NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedbackId`, `message`, `userId`, `date`) VALUES
(1, 'This is testing message to admin or manager', 1, '05-01-2022 04:30:48'),
(3, 'This is testing message to admin or manager', 2, '05-01-2022 04:30:48'),
(4, 'This is help card for admin', 1, '05-01-2022 06:45:20');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL,
  `type` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`, `type`, `date`) VALUES
(1, 'cashier@cashier.com', 'cashier', 'cashier', '06-01-2022 04:36:27'),
(2, 'manager@manager.com', 'manager', 'manager', '06-01-2022 04:36:27'),
(3, 'rppatil@gmail.com', 'rppatil', 'type', '06-01-2022 07:13:12'),
(4, 'rohit@gmail.com', 'rohit', 'type', '06-01-2022 07:13:18'),
(6, 'cashier2@cashier.com', 'cashier2', 'cashier', '06-01-2022 07:14:47');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `userId` varchar(111) NOT NULL,
  `notice` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `userId`, `notice`, `date`) VALUES
(1, '1', 'Dear Customer! <br> Our privacy policy has been changed. For account information get new prospectus from your nearest branch', '01-01-2022 13:11:46'),
(6, '2', 'Dear All,<br>\r\nOur privacy policy has been changed. Please visit nearest <kbd> KRSS </kbd> branch for new prospectus.', '04-01-2022 06:29:23');

-- --------------------------------------------------------

--
-- Table structure for table `otheraccounts`
--

CREATE TABLE `otheraccounts` (
  `id` int(11) NOT NULL,
  `accountNo` varchar(111) NOT NULL,
  `bankName` varchar(111) NOT NULL,
  `holderName` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otheraccounts`
--

INSERT INTO `otheraccounts` (`id`, `accountNo`, `bankName`, `holderName`, `balance`, `date`) VALUES
(1, '12001122', 'PPD', 'Pratik Deshmukh', '40800', '05-01-2022 11:55:07'),
(2, '12001123', 'KSSP', 'Vedant Patil', '71000', '05-01-2022 11:55:07'),
(3, '12001124', 'PPD', 'Amit Pawar', '71000', '05-01-2022 11:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transactionId` int(11) NOT NULL,
  `action` varchar(111) NOT NULL,
  `credit` varchar(111) NOT NULL,
  `debit` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `beneId` varchar(111) NOT NULL,
  `other` varchar(111) NOT NULL,
  `userId` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transactionId`, `action`, `credit`, `debit`, `balance`, `beneId`, `other`, `userId`, `date`) VALUES
(4, 'transfer', '', '200', '', '', '12001122', 1, '06-01-2022 12:33:40'),
(5, 'transfer', '', '200', '', '', '10054777', 1, '06-01-2022 12:56:48'),
(6, 'transfer', '', '333', '', '', '10054777', 1, '06-01-2022 12:57:20'),
(7, 'transfer', '', '222', '', '', '10054777', 1, '06-01-2022 12:58:19'),
(8, 'transfer', '', '333', '', '', '10054777', 1, '06-01-2022 13:00:23'),
(16, 'withdraw', '', '100', '', '', '23423', 1, '05-01-2022 08:31:59'),
(17, 'deposit', '1200', '', '', '', '234232', 1, '05-01-2022 08:32:17'),
(18, 'transfer', '', '467', '', '', '12001122', 1, '04-01-2022 06:44:48'),
(22, 'deposit', '1200', '', '', '', '32424', 2, '03-01-2022 06:56:29'),
(23, 'withdraw', '', '12', '', '', '23423', 2, '03-01-2022 06:59:02'),
(24, 'deposit', '12', '', '', '', '21321', 2, '03-01-2022 06:59:20'),
(25, 'transfer', '', '1200', '', '', '10054777', 1, '02-01-2022 07:01:37'),
(26, 'deposit', '600', '', '', '', '342342', 2, '02-01-2022 07:04:39'),
(27, 'withdraw', '', '1012', '', '', '23423', 2, '01-01-2022 07:04:58');

-- --------------------------------------------------------

--
-- Table structure for table `useraccounts`
--

CREATE TABLE `useraccounts` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `name` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `cnic` varchar(111) NOT NULL,
  `number` varchar(111) NOT NULL,
  `city` varchar(111) NOT NULL,
  `address` varchar(111) NOT NULL,
  `source` varchar(111) NOT NULL,
  `accountNo` varchar(111) NOT NULL,
  `branch` varchar(111) NOT NULL,
  `accountType` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useraccounts`
--

INSERT INTO `useraccounts` (`id`, `email`, `password`, `name`, `balance`, `cust_id`, `number`, `city`, `address`, `source`, `accountNo`, `branch`, `accountType`, `date`) VALUES
(1, 'some@gmail.com', 'some', 'Pratik Deshmukh', '9800', '3210375555426', '03356910260', 'Mumbai', 'Byculla', 'Programmer', '1005469', '1', 'Current', '05-02-2022 05:50:06'),
(2, 'some2@gmail.com', 'some2', 'Shubham Patil', '16000', '3210375555343', '03356910260', 'Thane', 'Badlapur', 'Programmer', '10054777', '1', 'Saving', '05-02-2022 04:50:06'),
(6, 'sample@gmail.com', 'sample', 'Tejas Patil', '234234', '3240338834902', '03356910260', 'Pune', 'Katraj', 'Govt. job', '1513410739', '1', 'saving', '07-02-2022 07:52:40'),
(7, 'sample2@gmail.com', 'sample2', 'Nikhil Chaudhari', '12121', '3240338834902', '03356910260', 'Nagpur', 'Shastri Nagar', 'Govt. job', '1513410837', '1', 'current', '07-02-2022 07:54:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branchId`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackId`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otheraccounts`
--
ALTER TABLE `otheraccounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transactionId`);

--
-- Indexes for table `useraccounts`
--
ALTER TABLE `useraccounts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branchId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedbackId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `otheraccounts`
--
ALTER TABLE `otheraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transactionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `useraccounts`
--
ALTER TABLE `useraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
