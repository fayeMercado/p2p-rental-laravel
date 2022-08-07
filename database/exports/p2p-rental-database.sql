-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2022 at 07:02 PM
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
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `user_id` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `fullname` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`fullname`)),
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(255) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `code` char(14) DEFAULT NULL,
  `item_name` varchar(300) NOT NULL DEFAULT 'Item Name',
  `category` varchar(300) DEFAULT NULL,
  `location` varchar(300) DEFAULT NULL,
  `available_quantity` int(255) NOT NULL DEFAULT 1,
  `rent_rates` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '{"day" : 0, "week" : 0, "month" : 0}' CHECK (json_valid(`rent_rates`)),
  `ref_deposit` int(255) NOT NULL DEFAULT 0,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `date_created`, `code`, `item_name`, `category`, `location`, `available_quantity`, `rent_rates`, `ref_deposit`, `images`) VALUES
(1, '2022-08-07 18:26:18', '1658469412709', 'Stanley 1800W 10\" Table Saw', 'tools-equipment', 'Metro Manila', 1, '{\"day\" : 20, \"week\" : 1000, \"month\" : 3500}', 2000, '[\"https://adamimages.sbdinc.com/GEM/Stanley/1000x1000_144r/STST1825_1.jpg\", \"https://adamimages.sbdinc.com/GEM/Stanley/1000x1000_144r/STST1825_2.jpg\", \"https://adamimages.sbdinc.com/GEM/Stanley/1000x1000_144r/STST1825_3.jpg\", \"https://adamimages.sbdinc.com/GEM/Stanley/1000x1000_144r/STST1825_4.jpg\", \"https://cdn.store-assets.com/s/14425/i/23731082.jpg?width=1024\"]'),
(2, '2022-08-07 19:09:37', '1658469424081', '750W 9mm Planer', 'tools-equipment', 'Metro Manila', 2, '{\"day\" : 50, \"week\" : 350, \"month\" : 1000}', 750, '[\"https://adamimages.sbdinc.com/GEM/Stanley/1000x1000_144r/STEL630_1.jpg\", \"https://adamimages.sbdinc.com/GEM/Stanley/1000x1000_144r/10-STEL630_A1.jpg\"]'),
(3, '2022-08-07 15:18:11', '1659885491449', 'Bosch GWS 750-100 Professional Angle Grinder Set', 'tools-equipment', 'Cavite', 4, '{\"day\" : 60, \"week\" : 350, \"month\" : 1100}', 2000, '[\"https://www.goldtoolsmanila.com/wp-content/uploads/2017/08/GWS-750-100-2-600x600.jpg\", \"https://www.goldtoolsmanila.com/wp-content/uploads/2017/08/GWS-750-100-4.jpg\", \"https://cdn.shopify.com/s/files/1/0728/1777/products/GWS750-100SPECS2.jpg?v=1644394025\"]'),
(6, '2022-08-07 15:28:38', '1659886118930', 'VR Shinecon Virtual Reality Glasses Headset Box for 4.0 - 6.6 inch Smartphone', 'electronics-accessories', 'Laguna', 3, '{\"day\" : 30, \"week\" : 200, \"month\" : 700}', 500, '[\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDQs-DS-Ef4Prx5MowuYRWX7E3aLISVkSwh6V1FdFxJko6NvYBqWtGO_ErA23HP9R4ZSQ&usqp=CAU\"]'),
(7, '2022-08-07 15:29:41', '1659886181463', 'NESCAFÉ Dolce Gusto Mini Me Machine', 'home-furniture-appliances', 'Cavite', 1, '{\"day\" : 60, \"week\" : 350, \"month\" : 2000}', 3000, '[\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQi6TdrtbHbmvjMCO85MB3RZvpAB2C74G3EJg&usqp=CAU\"]'),
(8, '2022-08-07 15:33:17', '1659886397867', 'Bestway Steel Pro Frame Swimming Pool Set ( 8.5 feet by 5.5 feet by 24 inches)', 'party-event-items', 'Bulacan', 2, '{\"day\" : 400, \"week\" : 2000, \"month\" : null}', 1500, '[\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS338FtDCEtEAByE7fhXMUSoGhFDPdPSDSkNg&usqp=CAU\"]'),
(9, '2022-08-07 15:37:06', '1659886626338', 'Decathlon Pongori TTT100 Indoor Table Tennis Table', 'toys-sports', 'Laguna', 1, '{\"day\" : 300, \"week\" : 1200, \"month\" : 4500}', 3500, '[\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7sj4qjStIqiDqoUlFOBAoisR9k-aO4rw7gQb9HSNG-kXR2yKx0y3rT77_PbDF3EXj9pg&usqp=CAU\"]'),
(10, '2022-08-07 15:38:12', '1659886692651', 'Harry Potter: The Complete Series (Paperback) by J.K. Rowling', 'books-hobbies', 'Nueva Ecija', 1, '{\"day\" : 80, \"week\" : 300, \"month\" : 1000}', 500, '[\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmU-ECJLx5pEYnbfB7I_71e8CaNLKnbmv16g&usqp=CAU\"]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
