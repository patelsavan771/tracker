-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2023 at 04:41 PM
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
-- Database: `ip_tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `password`) VALUES
('asdf', 'asdf'),
('asdfa', ''),
('savan', 'asdf'),
('qwe', 'qwe'),
('savan@test.test', 'asdf'),
('qwerty', 'asdf');

-- --------------------------------------------------------

--
-- Table structure for table `storage`
--

CREATE TABLE `storage` (
  `id` int(3) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(15) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `b_name` varchar(15) NOT NULL,
  `b_version` varchar(15) NOT NULL,
  `b_platform` varchar(15) NOT NULL,
  `device` varchar(120) NOT NULL,
  `country` varchar(20) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `latitude` varchar(15) NOT NULL,
  `longitude` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `storage`
--

INSERT INTO `storage` (`id`, `user_id`, `date`, `time`, `ip`, `b_name`, `b_version`, `b_platform`, `device`, `country`, `state`, `city`, `latitude`, `longitude`) VALUES
(1, 'asdf', '2023-05-01', '07:06:25pm', '103.206.137.0', 'Google Chrome', '112.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'India', 'Gujarat', 'Ahmedabad', '11', '12'),
(2, 'asdf', '2023-05-01', '07:11:47pm', '103.206.137.0', 'Google Chrome', '112.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'India', 'Gujarat', 'Ahmedabad', '', ''),
(3, 'asdf', '2023-05-01', '07:13:10pm', '103.206.137.0', 'Google Chrome', '112.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'India', 'Gujarat', 'Ahmedabad', '', ''),
(4, 'asdf', '2023-05-01', '07:16:18pm', '103.206.137.0', 'Google Chrome', '112.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'India', 'Gujarat', 'Ahmedabad', '', ''),
(5, 'asdf', '2023-05-01', '07:16:31pm', '103.206.137.0', 'Google Chrome', '112.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'India', 'Gujarat', 'Ahmedabad', '', ''),
(6, 'asdf', '2023-05-01', '07:32:59pm', '103.206.137.0', 'Google Chrome', '112.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'India', 'Gujarat', 'Ahmedabad', '', ''),
(7, 'asdf', '2023-05-01', '07:34:01pm', '103.206.137.0', 'Google Chrome', '112.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'India', 'Gujarat', 'Ahmedabad', '', ''),
(8, 'asdf', '2023-05-01', '07:34:18pm', '103.206.137.0', 'Google Chrome', '112.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'India', 'Gujarat', 'Ahmedabad', '', ''),
(9, 'asdf', '2023-05-01', '07:34:33pm', '103.206.137.0', 'Google Chrome', '112.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'India', 'Gujarat', 'Ahmedabad', '', ''),
(10, 'asdf', '2023-05-01', '07:34:59pm', '103.206.137.0', 'Google Chrome', '112.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'India', 'Gujarat', 'Ahmedabad', '23.5982782', '72.3834041'),
(11, 'asdf', '2023-05-01', '07:47:32pm', '103.206.137.0', 'Google Chrome', '112.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'India', 'Gujarat', 'Ahmedabad', '23.5982782', '72.3834041'),
(12, 'qwerty', '2023-05-01', '08:09:21pm', '103.206.137.0', 'Google Chrome', '112.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'India', 'Gujarat', 'Ahmedabad', '', ''),
(13, 'qwerty', '2023-05-01', '08:09:28pm', '103.206.137.0', 'Google Chrome', '112.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'India', 'Gujarat', 'Ahmedabad', '23.5982782', '72.3834041');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `storage`
--
ALTER TABLE `storage`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `storage`
--
ALTER TABLE `storage`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
