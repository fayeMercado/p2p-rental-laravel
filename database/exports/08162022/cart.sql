-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2022 at 03:49 PM
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
-- Database: `p2p-rental-database`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `cart_id` char(20) NOT NULL,
  `product_code` char(14) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `rent_fromDate` date DEFAULT NULL,
  `rent_toDate` date DEFAULT NULL,
  `rent_duration` int(11) NOT NULL DEFAULT 1,
  `total_rent` int(11) DEFAULT NULL,
  `shipping_method` char(30) DEFAULT NULL,
  `shipping_rates` int(11) NOT NULL DEFAULT 0,
  `orderId` char(13) DEFAULT NULL,
  `orderCreated` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `cart_id`, `product_code`, `quantity`, `rent_fromDate`, `rent_toDate`, `rent_duration`, `total_rent`, `shipping_method`, `shipping_rates`, `orderId`, `orderCreated`) VALUES
(42, 'xZEqj6M6Zo', '1660039917654', 2, '2022-07-17', '2022-07-24', 7, 400, 'pick-up', 0, NULL, NULL),
(43, 'xZEqj6M6Zo', '1660039925836', 1, '2022-07-22', '2022-07-31', 9, 470, 'delivery', 0, NULL, NULL),
(44, 'xZEqj6M6Zo', '1660039921660', 1, '2022-07-17', '2022-07-24', 7, 350, 'delivery', 0, NULL, NULL),
(45, 'xZEqj6M6Zo', '1660039923495', 1, '2022-07-28', '2022-07-31', 3, 1200, 'delivery', 0, NULL, NULL),
(46, 'xZEqj6M6Zo', '1660039925668', 2, '2022-07-28', '2022-07-31', 3, 300, 'delivery', 0, NULL, NULL),
(48, 'xZEqj6M6Zo', '1660039923789', 1, '2022-07-17', '2022-07-31', 14, 28176, 'delivery', 0, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
