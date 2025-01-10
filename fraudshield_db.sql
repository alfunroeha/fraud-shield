-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2025 at 06:11 AM
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
-- Database: `fraudshield_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `predictions`
--

CREATE TABLE `predictions` (
  `id` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `amt` float DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `time_category` varchar(255) DEFAULT NULL,
  `day_of_week` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `predictions`
--

INSERT INTO `predictions` (`id`, `category`, `amt`, `age`, `time_category`, `day_of_week`, `month`, `profession`, `result`, `created_at`) VALUES
(1, '0.0', 100, '0.0', '2.0', '3.0', '4.0', '0.0', 'Not Fraud', '2025-01-09 01:10:11'),
(2, '0.0', 1, '0.0', '2.0', '3.0', '4.0', '0.0', 'Not Fraud', '2025-01-09 02:08:47'),
(3, '0.0', 12, '0.0', '2.0', '3.0', '4.0', '0.0', 'Not Fraud', '2025-01-09 02:11:24'),
(4, '0.0', 1, '0.0', '2.0', '3.0', '4.0', '0.0', 'Not Fraud', '2025-01-09 02:11:24'),
(5, '0.0', 2, '0.0', '2.0', '3.0', '4.0', '0.0', 'Not Fraud', '2025-01-09 02:12:03'),
(6, '0.0', 3, '2.0', '2.0', '3.0', '4.0', '0.0', 'Not Fraud', '2025-01-09 02:15:35'),
(7, '0.0', 5, '2.0', '2.0', '3.0', '4.0', '0.0', 'Not Fraud', '2025-01-09 02:18:54'),
(8, '0.0', 5, '0.0', '2.0', '3.0', '4.0', '0.0', 'Not Fraud', '2025-01-09 02:19:02'),
(9, '0.0', 2, '0.0', '2.0', '3.0', '4.0', '0.0', 'Not Fraud', '2025-01-09 02:20:13'),
(10, '0.0', 2, '0.0', '2.0', '3.0', '4.0', '0.0', 'Not Fraud', '2025-01-09 02:23:51'),
(11, '0.0', 2, '0.0', '2.0', '3.0', '4.0', '0.0', 'Not Fraud', '2025-01-09 02:23:55'),
(12, '0.0', 2, '0.0', '2.0', '3.0', '4.0', '0.0', 'Not Fraud', '2025-01-09 02:25:18'),
(13, '0.0', 2, '0.0', '2.0', '3.0', '4.0', '0.0', 'Not Fraud', '2025-01-09 02:25:34'),
(14, '0.0', 2, '0.0', '2.0', '3.0', '4.0', '0.0', 'Not Fraud', '2025-01-09 02:25:34'),
(15, '0.0', 2, '0.0', '2.0', '3.0', '4.0', '0.0', 'Not Fraud', '2025-01-09 02:25:34'),
(16, '0.0', 2, '0.0', '2.0', '3.0', '4.0', '0.0', 'Not Fraud', '2025-01-09 02:25:35'),
(17, '0.0', 2, '0.0', '2.0', '3.0', '4.0', '0.0', 'Not Fraud', '2025-01-09 02:25:35'),
(18, '0.0', 1, '0.0', '2.0', '3.0', '4.0', '0.0', 'Not Fraud', '2025-01-09 02:25:43'),
(19, '0.0', 1, '0.0', '2.0', '3.0', '4.0', '0.0', 'Not Fraud', '2025-01-09 02:25:44'),
(20, '3.0', 14.37, '4.0', '3.0', '1.0', '0.0', '3.0', 'Fraud', '2025-01-09 02:40:37'),
(21, '3.0', 20, '4.0', '3.0', '1.0', '0.0', '3.0', 'Fraud', '2025-01-09 02:41:55'),
(22, '3.0', 20, '4.0', '3.0', '1.0', '0.0', '9.0', 'Fraud', '2025-01-09 02:42:02'),
(23, '3.0', 20, '0.0', '3.0', '1.0', '0.0', '9.0', 'Fraud', '2025-01-09 02:42:08'),
(24, '1.0', 20, '0.0', '3.0', '6.0', '2.0', '9.0', 'Fraud', '2025-01-09 02:42:21'),
(25, '1.0', 20, '0.0', '0.0', '6.0', '2.0', '9.0', 'Fraud', '2025-01-09 02:42:26'),
(26, '1.0', 300, '0.0', '0.0', '6.0', '2.0', '9.0', 'Not Fraud', '2025-01-09 02:42:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `predictions`
--
ALTER TABLE `predictions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `predictions`
--
ALTER TABLE `predictions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
