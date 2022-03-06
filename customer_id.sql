-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2022 at 08:06 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ytb`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_id`
--

CREATE TABLE `customer_id` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `order` varchar(250) NOT NULL,
  `address` varchar(200) NOT NULL,
  `telepone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_id`
--

INSERT INTO `customer_id` (`id`, `name`, `order`, `address`, `telepone`) VALUES
(1, 'Andrew', 'Banana Juice', 'Street 5th Amsterdam', '+42 90231290'),
(2, 'Benjamin', 'Salad', 'Street 3rd Amsterdam', '+43 19038232'),
(3, 'Clara', 'Apple Juice', 'Street 4th Amsterdam', '+43 808923480'),
(4, 'Dominic', 'Fried Chicken', 'Street 1st Amsterdam', '+43 98109312');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_id`
--
ALTER TABLE `customer_id`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer_id`
--
ALTER TABLE `customer_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
