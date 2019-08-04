-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2019 at 03:48 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pretest`
--

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `module_id` double NOT NULL,
  `module_code` varchar(255) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`module_id`, `module_code`, `module_name`) VALUES
(1, 'Promo', 'PromoCard'),
(2, 'Category', 'CategoryCard'),
(3, 'FlashSale', 'FlashSaleCard'),
(4, 'History', 'HistoryCard'),
(5, 'News', 'NewsCard');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` double NOT NULL,
  `USER_CODE` varchar(20) DEFAULT NULL,
  `USER_NAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `USER_CODE`, `USER_NAME`) VALUES
(1, 'user_a', 'UserA'),
(2, 'user_b', 'UserB'),
(3, 'user_c', 'UserC');

-- --------------------------------------------------------

--
-- Table structure for table `user_module`
--

CREATE TABLE `user_module` (
  `user_id` double NOT NULL,
  `MODULE_ID` double NOT NULL,
  `MODULE_ORDER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_module`
--

INSERT INTO `user_module` (`user_id`, `MODULE_ID`, `MODULE_ORDER`) VALUES
(1, 1, 1),
(1, 2, 2),
(1, 3, 3),
(1, 4, 4),
(1, 5, 5),
(2, 1, 1),
(2, 5, 2),
(2, 3, 3),
(2, 2, 4),
(2, 5, 5),
(3, 1, 1),
(3, 3, 2),
(3, 2, 3),
(3, 5, 4),
(3, 4, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`module_id`),
  ADD UNIQUE KEY `module_code` (`module_code`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `USER_CODE` (`USER_CODE`);

--
-- Indexes for table `user_module`
--
ALTER TABLE `user_module`
  ADD KEY `FKdumwbspcn1puuim2ksbj3s4ix` (`user_id`),
  ADD KEY `FKqp0fom6we9us1fljjhk6d1i80` (`MODULE_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `module_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_module`
--
ALTER TABLE `user_module`
  ADD CONSTRAINT `FKdumwbspcn1puuim2ksbj3s4ix` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FKqp0fom6we9us1fljjhk6d1i80` FOREIGN KEY (`MODULE_ID`) REFERENCES `module` (`module_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
