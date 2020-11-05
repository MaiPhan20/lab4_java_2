-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2020 at 11:45 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookID` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(50) DEFAULT NULL,
  `years` date DEFAULT NULL,
  `genre` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL CHECK (`status` regexp '[1-3]{1}'),
  `qty` int(11) DEFAULT NULL,
  `price` decimal(10,1) DEFAULT NULL,
  `createddate` date DEFAULT NULL,
  `updateddate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookID`, `title`, `author`, `years`, `genre`, `status`, `qty`, `price`, `createddate`, `updateddate`) VALUES
(1, 'Lang Le Sapa', 'Nguyen Huy Hoang', '0000-00-00', 2, 3, 22, '15.6', '2020-11-04', NULL),
(2, 'Tuyen Ngon Doc Lap', 'Ho Chi Minh', '0000-00-00', 3, 3, 23, '12.6', '2020-11-04', NULL),
(3, 'Tay Tien', 'Quang Dung', '0000-00-00', 3, 2, 13, '12.6', '2020-11-04', NULL),
(4, 'Dat Nuoc', 'Nguyen Khoa Diiem', '0000-00-00', 2, 3, 13, '23.6', '2020-11-04', NULL),
(5, 'Song', 'Xuan Quynh', '0000-00-00', 3, 3, 13, '23.5', '2020-11-04', NULL),
(6, 'Dan ghita cua Lorca', 'Thanh Thao', '0000-00-00', 3, 2, 3, '24.6', '2020-11-04', NULL),
(7, 'Nguoi lai  do song Da', 'Nguyen Tuan', '0000-00-00', 3, 3, 13, '12.2', '2020-11-04', NULL),
(8, 'Vo Chong A Phu', 'To Hoai', '0000-00-00', 1, 2, 24, '23.3', '2020-11-04', NULL),
(9, 'Vo Nhat', 'Kim Lan', '0000-00-00', 2, 2, 22, '23.4', '2020-11-04', NULL),
(10, 'Rung Xa Nu', 'Nguyen Trung Thanh', '0000-00-00', 2, 3, 31, '38.9', '2020-11-04', NULL),
(11, 'Don Ve Lang', 'Nong Quoc Chan', '0000-00-00', 2, 2, 5, '15.4', '2020-11-04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `genre` int(11) NOT NULL,
  `nameCate` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`genre`, `nameCate`) VALUES
(1, 'Literary'),
(2, 'History'),
(3, 'Math');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerID` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL CHECK (`phone` regexp '[0-9]{10}'),
  `member` int(11) DEFAULT NULL CHECK (`member` regexp '[1-4]{1}'),
  `createddate` datetime DEFAULT NULL,
  `updateddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerID`, `name`, `address`, `email`, `phone`, `member`, `createddate`, `updateddate`) VALUES
(1001, 'Vu Huy Hung', 'Hung Yen', 'vuhuyhung@gmail.com', '0937972344', 3, '2020-11-04 00:00:00', NULL),
(1002, 'Hoang Van Thanh', 'Nam Dinh', 'hoangvanthanh@gmail.com', '0937972345', 3, '2020-11-04 00:00:00', NULL),
(1003, 'Vu Hong Anh', 'Thai Binh', 'vuhonganh@gmail.com', '0937972346', 4, '2020-11-04 00:00:00', NULL),
(1004, 'Mai Van Phan', 'Nam Dinh', 'phanvanmai@gmail.com', '0937972347', 2, '2020-11-04 00:00:00', NULL),
(1005, 'Tran long Vu', 'Phu Tho', 'tranlongvu@gmail.com', '0937972348', 2, '2020-11-04 00:00:00', NULL),
(1006, 'Nguyen Van Thien', 'Ha Noi', 'nguyenvanthien@gmail.com', '0937972349', 3, '2020-11-04 00:00:00', NULL),
(1007, 'Hoang Huy Anh', 'Hai Phong', 'hoanghuyanh@gmail.com', '0937972444', 4, '2020-11-04 00:00:00', NULL),
(1008, 'Vu Quan', 'Nam Dinh', 'vuquan@gmail.com', '0937972444', 3, '2020-11-04 00:00:00', NULL),
(1009, 'Vu Anh Tuan', 'Ha Noi', 'vuanhtuan@gmail.com', '0937972644', 2, '2020-11-04 00:00:00', NULL),
(1010, 'Mai Hai Huy', 'Hai Phong', 'maihaihuy@gmail.com', '0937972744', 1, '2020-11-04 00:00:00', NULL),
(1011, 'Hoang Hai', 'Bac Giang', 'hoanghai@gmail.com', '0937972844', 2, '2020-11-04 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `orderID` int(11) DEFAULT NULL,
  `bookID` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `price` decimal(10,1) DEFAULT NULL,
  `createddate` date DEFAULT NULL,
  `updateddate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL,
  `customerID` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `total` decimal(10,1) DEFAULT NULL,
  `orderdate` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL CHECK (`status` regexp '[0-5]{1}'),
  `createddate` date DEFAULT NULL,
  `updateddate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `customerID`, `discount`, `total`, `orderdate`, `status`, `createddate`, `updateddate`) VALUES
(2001, 1001, 0, '20.2', '2020-03-05', 0, '2020-11-04', NULL),
(2002, 1002, 10, '76.6', '2020-07-08', 0, '2020-11-04', NULL),
(2003, 1004, 20, '33.3', '2020-11-20', 4, '2020-11-04', NULL),
(2004, 1003, 10, '21.3', '2020-03-12', 3, '2020-11-04', NULL),
(2005, 1001, 30, '22.9', '2020-07-05', 2, '2020-11-04', NULL),
(2006, 1011, 20, '23.6', '2020-12-05', 5, '2020-11-04', NULL),
(2007, 1002, 20, '34.3', '2020-04-13', 1, '2020-11-04', NULL),
(2008, 1005, 30, '13.4', '2020-04-09', 5, '2020-11-04', NULL),
(2009, 1006, 30, '14.6', '2020-03-28', 4, '2020-11-04', NULL),
(2010, 1007, 20, '13.3', '2020-03-20', 2, '2020-11-04', NULL),
(2011, 1008, 0, '33.6', '2020-04-13', 3, '2020-11-04', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookID`,`title`),
  ADD KEY `fk_category` (`genre`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`genre`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD KEY `fk_detail` (`bookID`,`title`),
  ADD KEY `fk_detail2` (`orderID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `fk_customer` (`customerID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `fk_category` FOREIGN KEY (`genre`) REFERENCES `category` (`genre`);

--
-- Constraints for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `fk_detail` FOREIGN KEY (`bookID`,`title`) REFERENCES `books` (`bookID`, `title`),
  ADD CONSTRAINT `fk_detail2` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_customer` FOREIGN KEY (`customerID`) REFERENCES `customers` (`customerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
