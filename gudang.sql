-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2020 at 03:27 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gudang`
--

-- --------------------------------------------------------

--
-- Table structure for table `adjust_stok`
--

CREATE TABLE `adjust_stok` (
  `udjust_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `adjustment` int(12) NOT NULL,
  `stok_quantity` int(8) NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjust_stok`
--

INSERT INTO `adjust_stok` (`udjust_id`, `location_id`, `adjustment`, `stok_quantity`, `update_at`) VALUES
(19, 1, 22, 85, '2020-11-11 19:38:47'),
(20, 1, -12, 73, '2020-11-11 19:38:56'),
(23, 2, 22, 78, '2020-11-11 21:05:51'),
(24, 2, -10, 68, '2020-11-11 21:06:00'),
(25, 3, 100, 132, '2020-11-11 21:06:19'),
(26, 3, -50, 82, '2020-11-11 21:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `all_stok`
--

CREATE TABLE `all_stok` (
  `id` int(10) NOT NULL,
  `location` varchar(10) NOT NULL,
  `product` varchar(50) NOT NULL,
  `quantity` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `all_stok`
--

INSERT INTO `all_stok` (`id`, `location`, `product`, `quantity`) VALUES
(1, 'Tangerang', 'Tanggo', 73),
(2, 'Jakarta', 'Kukubima', 68),
(3, 'Bandung', 'Aqua', 82);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `log_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `adjustment` int(11) NOT NULL,
  `adjust_quantity` int(8) NOT NULL,
  `type` enum('Inbound','Outbound') NOT NULL,
  `create_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`log_id`, `location_id`, `adjustment`, `adjust_quantity`, `type`, `create_at`) VALUES
(5, 1, 22, 85, 'Inbound', '2020-11-11 19:38:47'),
(6, 1, -12, 73, 'Outbound', '2020-11-11 19:38:56'),
(7, 2, 22, 78, 'Inbound', '2020-11-11 21:05:51'),
(8, 2, -10, 68, 'Outbound', '2020-11-11 21:06:00'),
(9, 3, 100, 132, 'Inbound', '2020-11-11 21:06:19'),
(10, 3, -50, 82, 'Outbound', '2020-11-11 21:06:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adjust_stok`
--
ALTER TABLE `adjust_stok`
  ADD PRIMARY KEY (`udjust_id`);

--
-- Indexes for table `all_stok`
--
ALTER TABLE `all_stok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adjust_stok`
--
ALTER TABLE `adjust_stok`
  MODIFY `udjust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `all_stok`
--
ALTER TABLE `all_stok`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
