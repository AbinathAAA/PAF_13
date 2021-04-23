-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2021 at 05:16 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abinath`
--

-- --------------------------------------------------------

--
-- Table structure for table `project management`
--

CREATE TABLE `project management` (
  `Id` int(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Description` varchar(30) NOT NULL,
  `Language` varchar(20) NOT NULL,
  `Developername` varchar(20) NOT NULL,
  `Price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project management`
--

INSERT INTO `project management` (`Id`, `Name`, `Description`, `Language`, `Developername`, `Price`) VALUES
(3, 'de', 'ee', 'ss', 'wwss', 12),
(6, 'a i', 'xxx', 'java', 'aaa', 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `project management`
--
ALTER TABLE `project management`
  ADD PRIMARY KEY (`Id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `project management`
--
ALTER TABLE `project management`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
