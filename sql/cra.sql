-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2021 at 02:25 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cra`
--

-- --------------------------------------------------------

--
-- Table structure for table `agencies`
--

CREATE TABLE `agencies` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `agency_name` varchar(25) DEFAULT NULL,
  `agency_email` varchar(25) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agencies`
--

INSERT INTO `agencies` (`id`, `name`, `agency_name`, `agency_email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'me', 'Agency', 'agency@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2021-08-27 13:21:49', '2021-08-27 13:21:49'),
(4, 'naman', 'cra', 'cra1@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2021-08-28 09:47:48', '2021-08-28 09:47:48');

-- --------------------------------------------------------

--
-- Table structure for table `booked_cars`
--

CREATE TABLE `booked_cars` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL,
  `no_of_days` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booked_cars`
--

INSERT INTO `booked_cars` (`id`, `user_id`, `car_id`, `no_of_days`, `start_date`, `created_at`, `updated_at`) VALUES
(3, 1, 4, 2, '2021-08-28', '2021-08-28 07:05:20', '2021-08-28 07:05:20'),
(4, 2, 4, 5, '2021-09-02', '2021-08-28 09:08:26', '2021-08-28 09:08:26'),
(5, 2, 2, 4, '2021-09-03', '2021-08-28 09:08:35', '2021-08-28 09:08:35'),
(6, 2, 4, 3, '2021-09-04', '2021-08-28 09:08:42', '2021-08-28 09:08:42'),
(7, 1, 1, 4, '2021-08-28', '2021-08-28 09:17:16', '2021-08-28 09:17:16'),
(8, 2, 2, 10, '2021-09-11', '2021-08-28 09:39:51', '2021-08-28 09:39:51'),
(9, 4, 5, 5, '2021-08-28', '2021-08-28 09:54:04', '2021-08-28 09:54:04'),
(10, 1, 5, 8, '2021-09-04', '2021-08-28 10:46:32', '2021-08-28 10:46:32'),
(11, 1, 2, 4, '2021-08-28', '2021-08-28 10:59:51', '2021-08-28 10:59:51');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `vehicle_model` varchar(25) DEFAULT NULL,
  `vehicle_number` varchar(25) DEFAULT NULL,
  `no_of_seats` int(11) DEFAULT NULL,
  `rent_per_day` double DEFAULT NULL,
  `agency_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `is_available` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `vehicle_model`, `vehicle_number`, `no_of_seats`, `rent_per_day`, `agency_id`, `created_at`, `updated_at`, `is_available`) VALUES
(2, 'My car', 'b6123', 3, 100, 1, '2021-08-28 05:03:12', '2021-08-28 05:03:12', 1),
(3, 'bmw', '634', 5, 150, 1, '2021-08-28 05:03:34', '2021-08-28 05:03:34', 0),
(4, 'Audi', 'r81', 2, 200, 1, '2021-08-28 06:32:39', '2021-08-28 06:32:39', 1),
(5, 'mclaren', 'm1', 2, 310, 4, '2021-08-28 09:48:16', '2021-08-28 09:48:16', 1),
(6, 'Ninja', 'n1', 1, 100, 1, '2021-08-28 10:26:25', '2021-08-28 10:26:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `password`, `email`, `created_at`, `updated_at`) VALUES
(1, 'gaurav', '81dc9bdb52d04dc20036dbd8313ed055', 'gaurav@gmail.com', '2021-08-27 12:55:32', '2021-08-27 12:55:32'),
(2, 'rahul', '81dc9bdb52d04dc20036dbd8313ed055', 'rahul@gmail.com', '2021-08-28 09:06:04', '2021-08-28 09:06:04'),
(4, 'gaurav', '81dc9bdb52d04dc20036dbd8313ed055', 'gaurav1@gmail.com', '2021-08-28 09:53:48', '2021-08-28 09:53:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agencies`
--
ALTER TABLE `agencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `agency_email` (`agency_email`);

--
-- Indexes for table `booked_cars`
--
ALTER TABLE `booked_cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agencies`
--
ALTER TABLE `agencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `booked_cars`
--
ALTER TABLE `booked_cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
