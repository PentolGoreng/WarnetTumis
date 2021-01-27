-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2021 at 01:25 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `javawarnet`
--

-- --------------------------------------------------------

--
-- Table structure for table `aktivitas`
--

CREATE TABLE `aktivitas` (
  `no` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelas` varchar(30) NOT NULL,
  `start` time(6) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aktivitas`
--

INSERT INTO `aktivitas` (`no`, `nama`, `kelas`, `start`, `status`) VALUES
(1, 'Ade', 'Proplayer', '20:19:05.000000', 'Online'),
(2, 'akun1', 'Standar', '20:14:35.000000', 'Online'),
(4, 'Orang', 'Standar', '20:17:34.000000', 'Online'),
(8, 'Siapa', 'Standar', '20:14:17.000000', 'Online'),
(9, 'Orang1', 'Standar', '20:16:21.000000', 'Online');

-- --------------------------------------------------------

--
-- Table structure for table `plg`
--

CREATE TABLE `plg` (
  `no` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plg`
--

INSERT INTO `plg` (`no`, `nama`) VALUES
(1, 'Ade'),
(2, 'akun1'),
(3, 'akun'),
(4, 'Orang'),
(5, 'Orang1'),
(6, 'Orang2'),
(7, 'Orang3'),
(8, 'Siapa'),
(9, 'Orangan');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `akses` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `akses`) VALUES
(1, 'MANAGER', '202cb962ac59075b964b07152d234b70', 'DEWA'),
(2, 'ALEX', 'bcbe3365e6ac95ea2c0343a2395834dd', 'TEST'),
(3, 'USER', '2e40ad879e955201df4dedbf8d479a12', 'ADMIN');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aktivitas`
--
ALTER TABLE `aktivitas`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `plg`
--
ALTER TABLE `plg`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aktivitas`
--
ALTER TABLE `aktivitas`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `plg`
--
ALTER TABLE `plg`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
