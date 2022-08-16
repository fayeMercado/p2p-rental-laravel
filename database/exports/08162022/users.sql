-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2022 at 03:50 PM
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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `address`, `mobile`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `username`, `cart_id`) VALUES
(2, 'Juan', 'Cruz', 'MM', '09123456789', 'user@gmail.com', '$2y$10$d7Z2XPirdwDu3ggZwlrSAeu5sswzysYH1rU/EY4O3Tu3iRaMj/dK6', NULL, '2022-08-15 05:53:48', '2022-08-15 05:53:48', 'admin1234', 'xZEqj6M6Zo'),
(4, 'sfdgg', 'fgsgdf', 'ABR', '09123456789', 'aaaa@gmail.com', '$2y$10$qes4uXwVM1lwjSYH1P69auBPSovMqASp6U8saw4UYQNifX23eQZU6', NULL, '2022-08-15 22:02:04', '2022-08-15 22:02:04', 'aaaa', 'IrmHveHAjA'),
(5, 'Juan', 'Cruz', 'MM', '09123456789', 'user_email@gmail.com', '$2y$10$s.A4MyPGESFuxAzwaKr3guXzXqQoQ1e6kZjISvjuCdEOuthQgdXhq', NULL, '2022-08-15 23:18:00', '2022-08-15 23:18:00', 'user01', 'Cy9P6zFGj7'),
(6, 'aaaaa', 'aaaaa', 'MM', '09123456789', 'userAAAA@gmail.com', '$2y$10$MT4rFd9aoq1l2JXqoZUAceq4axSKymNci.9MdwUlZ4LEtWLyNnOwO', NULL, '2022-08-16 04:48:32', '2022-08-16 04:48:32', 'aaaaaa', 'YUTaQOcdIG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
