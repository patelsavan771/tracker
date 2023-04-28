-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2023 at 06:16 PM
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
('savan@test.test', 'asdf');

-- --------------------------------------------------------

--
-- Table structure for table `storage`
--

CREATE TABLE `storage` (
  `id` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(15) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `b_name` varchar(15) NOT NULL,
  `b_version` varchar(15) NOT NULL,
  `b_platform` varchar(15) NOT NULL,
  `device` varchar(120) NOT NULL,
  `country` varchar(20) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `storage`
--

INSERT INTO `storage` (`id`, `date`, `time`, `ip`, `b_name`, `b_version`, `b_platform`, `device`, `country`, `state`, `city`) VALUES
('asdfa', '2022-06-15', '05:03:29pm', '::1', 'Google Chrome', '102.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '', '', ''),
('savan', '2022-06-15', '05:09:24pm', '::1', 'Google Chrome', '102.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '', '', ''),
('savan', '2022-06-15', '05:10:21pm', '::1', 'Google Chrome', '102.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '', '', ''),
('savan', '2022-06-15', '05:10:22pm', '::1', 'Google Chrome', '102.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '', '', ''),
('savan', '2022-06-15', '05:10:35pm', '::1', 'Google Chrome', '102.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '', '', ''),
('savan', '2022-06-15', '05:10:35pm', '::1', 'Google Chrome', '102.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '', '', ''),
('savan', '2022-06-15', '05:10:36pm', '::1', 'Google Chrome', '102.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '', '', ''),
('savan', '2022-06-15', '05:12:33pm', '::1', 'Google Chrome', '102.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '', '', ''),
('savan', '2022-06-15', '05:12:52pm', '::1', 'Google Chrome', '102.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '', '', ''),
('savan', '2022-06-15', '05:12:53pm', '::1', 'Google Chrome', '102.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '', '', ''),
('savan', '2022-06-15', '05:13:03pm', '::1', 'Google Chrome', '102.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '', '', ''),
('savan', '2022-06-15', '05:15:05pm', '::1', 'Google Chrome', '102.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '', '', ''),
('savan', '2022-06-15', '05:16:02pm', '::1', 'Google Chrome', '102.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '', '', ''),
('savan', '2022-06-15', '05:19:56pm', '::1', 'Google Chrome', '102.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '', '', ''),
('savan', '2022-06-15', '05:20:28pm', '::1', 'Google Chrome', '102.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '', '', ''),
('savan', '2022-06-15', '05:20:30pm', '::1', 'Google Chrome', '102.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '', '', ''),
('savan', '2022-06-15', '05:20:30pm', '::1', 'Google Chrome', '102.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '', '', ''),
('savan', '2022-06-15', '05:30:20pm', '::1', 'Google Chrome', '102.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '', '', ''),
('savan', '2022-06-15', '05:30:23pm', '::1', 'Google Chrome', '102.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '', '', ''),
('savan', '2022-06-15', '05:32:18pm', '::1', 'Google Chrome', '102.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '', '', ''),
('savan', '2022-06-15', '05:32:18pm', '::1', 'Google Chrome', '102.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '', '', ''),
('savan', '2022-06-15', '05:32:23pm', '::1', 'Google Chrome', '102.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '', '', ''),
('asdfa', '2022-06-15', '07:55:40pm', '::1', 'Google Chrome', '101.0.4951.64', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36 Edg/', '', '', ''),
('savan', '2022-06-15', '07:59:54pm', '::1', 'Google Chrome', '102.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '', '', ''),
('savan', '2022-06-15', '08:00:19pm', '::1', 'Google Chrome', '102.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '', '', ''),
('qwe', '2022-06-15', '08:00:58pm', '::1', 'Google Chrome', '102.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '', '', ''),
('savan@test.test', '2023-04-28', '08:57:38pm', '::1', 'Google Chrome', '112.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '', '', ''),
('savan@test.test', '2023-04-28', '09:19:46pm', '::1', 'Google Chrome', '112.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'India', '', 'Ahmedabad'),
('savan@test.test', '2023-04-28', '09:26:35pm', '::1', 'Google Chrome', '112.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'India', 'Gujarat', 'Ahmedabad'),
('savan@test.test', '2023-04-28', '09:28:57pm', '::1', 'Google Chrome', '112.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'India', 'Gujarat', 'Ahmedabad'),
('savan@test.test', '2023-04-28', '09:29:11pm', '::1', 'Google Chrome', '112.0.0.0', 'windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'India', 'Gujarat', 'Ahmedabad');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
