-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2022 at 03:34 AM
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
-- Database: `flashcards`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220621161148', '2022-06-21 18:12:29', 32);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `positive` smallint(6) NOT NULL,
  `negative` smallint(6) NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `date`, `positive`, `negative`, `type`) VALUES
(1, '2022-06-21 20:01:42', 3, 2, 'flag'),
(2, '2022-06-21 20:04:37', 2, 3, 'capital'),
(3, '2022-06-22 01:18:17', 2, 3, 'capital'),
(4, '2022-06-22 12:49:03', 5, 0, 'flag'),
(5, '2022-06-22 12:49:21', 5, 0, 'flag'),
(8, '2022-06-22 12:51:37', 2, 3, 'capital'),
(9, '2022-06-22 12:52:00', 3, 2, 'capital'),
(10, '2022-06-22 19:34:12', 4, 1, 'capital'),
(68, '2022-06-22 22:55:00', 0, 5, 'flag'),
(70, '2022-06-22 23:25:17', 5, 0, 'flag'),
(78, '2022-06-22 23:27:19', 1, 4, 'flag'),
(82, '2022-06-23 00:51:06', 3, 2, 'capital'),
(83, '2022-06-23 00:53:30', 4, 1, 'flag'),
(84, '2022-06-23 01:08:48', 4, 1, 'flag'),
(87, '2022-06-23 01:17:47', 2, 3, 'flag'),
(88, '2022-06-23 01:18:58', 3, 2, 'flag'),
(89, '2022-06-23 01:50:12', 2, 3, 'capital'),
(90, '2022-06-23 03:21:09', 3, 2, 'flag');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
