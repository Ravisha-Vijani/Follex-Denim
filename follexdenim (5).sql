-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2022 at 04:43 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `follexdenim`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('vijani', 'my1stweb');

-- --------------------------------------------------------

--
-- Table structure for table `order_table`
--

CREATE TABLE `order_table` (
  `order_nu` int(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `product_name` varchar(20) NOT NULL,
  `quantity` int(20) NOT NULL,
  `contact_nu` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_table`
--

INSERT INTO `order_table` (`order_nu`, `username`, `product_name`, `quantity`, `contact_nu`) VALUES
(0, 'Tharani', 'mom jean', 12, 331),
(0, 'Thikshanee', 'leo jean', 1, 766429569);

-- --------------------------------------------------------

--
-- Table structure for table `product_table`
--

CREATE TABLE `product_table` (
  `product_no` int(50) NOT NULL,
  `product_name` varchar(20) NOT NULL,
  `size` text NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_table`
--

INSERT INTO `product_table` (`product_no`, `product_name`, `size`, `price`, `quantity`, `image`) VALUES
(31, 'fsd', '2f', 23424, 11, '7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `registered_table`
--

CREATE TABLE `registered_table` (
  `username` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL,
  `confirm_password` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registered_table`
--

INSERT INTO `registered_table` (`username`, `password`, `confirm_password`, `email`) VALUES
('Tharani', '2002', '2002', 'tharani@gmail.com'),
('Sahithya', '2008', '2008', 'sahi2998@gmail.com'),
('Pabasara', '2007', '2007', 'paba@gmail.com'),
('Rangana', '1997', '1997', 'rangana@gmail.com'),
('Ravindu', '2007jan', '2007jan', 'ravindu@gmail.com'),
('Shilpa', '2012', '2012', 'shilpa@gmail.com'),
('Chalani', '2001', '2001', 'chalani@gmail.com'),
('', '', '', ''),
('Hirumi', '1221', '1221', 'hirumi@gmail.com'),
('Jithmi', '2000', '2000', 'jimi@gmail.com'),
('Thikshanee', '111', '111', 'thikshani@gmail.com'),
('Achini', '1119', '1119', 'achini@gmail.com'),
('Achini', '1119', '1119', 'achini@gmail.com'),
('aaa', 'aaa', 'aaa', 'aaa@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `order_table`
--
ALTER TABLE `order_table`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
