-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2020 at 07:30 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amysql1`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `f_name` varchar(200) DEFAULT NULL,
  `l_name` varchar(200) DEFAULT NULL,
  `contact` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `family` varchar(200) DEFAULT NULL,
  `family_description` varchar(200) DEFAULT NULL,
  `entertain` varchar(200) DEFAULT NULL,
  `contemporary` varchar(200) DEFAULT NULL,
  `duration` varchar(200) DEFAULT NULL,
  `rooms` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `f_name`, `l_name`, `contact`, `email`, `family`, `family_description`, `entertain`, `contemporary`, `duration`, `rooms`) VALUES
(1, 'g', '', '', '', 'undefined', '', '', 'on', 'on', 'living'),
(3, 'Ravi', 'Prakash', '', 'raviprakash01a@gmail.com', 'undefined', 'ftgh', 'dfgh', 'undefined', 'on', 'entireHouse'),
(4, 'Ravidfgsfg', 'Prakash', '', 'raviprakash01a@gmail.com', 'undefined', 'dfg', 'dfg', 'on', 'on', 'living'),
(5, 'Ravidfgsfg', 'Prakash', '', 'raviprakash01a@gmail.com', 'undefined', 'dfg', 'dfg', 'on', 'on', 'living'),
(6, 'Ravidfgsfg', 'Prakash', '', 'raviprakash01a@gmail.com', 'undefined', 'dfg', 'dfg', 'on', 'on', 'living'),
(7, 'Ravi', 'Prakash', '', 'raviprakash01a@gmail.com', 'undefined', 'gjk', 'hgj', 'on', 'on', 'living');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_pass` varchar(32) NOT NULL,
  `user_fname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_email`, `user_pass`, `user_fname`) VALUES
(1, 'raviprakash01a@gmail.com', '202cb962ac59075b964b07152d234b70', 'Ravi Prakash');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `UK_user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
