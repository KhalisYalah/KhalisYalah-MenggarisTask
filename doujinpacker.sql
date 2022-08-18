-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2022 at 02:31 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doujinpacker`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `iconName` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `iconName`, `desc`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'Anime Figures', NULL, 'A wide range of anime figures that you dream of. Pick your waifu!!.', 1, '2022-08-18 08:54:42', '2022-08-18 08:54:42'),
(2, 'T-Shirts', NULL, 'We have acquired and printed the best selection of shirts for your selections.', 1, '2022-08-18 08:54:42', '2022-08-18 08:54:42'),
(3, 'Gunpla', NULL, 'Gundam models, repair kit, parts. Search our wares, maybe you find what you need.', 1, '2022-08-18 09:00:00', '2022-08-18 09:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `catid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `catid`, `name`, `image`, `url`, `createdAt`, `updatedAt`) VALUES
(2, 1, 'Ali', 'b740722016cdf812468ebfa3b59bf547.jpg', 'http://localhost:3000/api/images/b740722016cdf812468ebfa3b59bf547.jpg', '2022-08-16 13:22:31', '2022-08-18 11:01:55'),
(3, 1, 'Minuri', 'd8ef16b183aa92f8949f68a6e9b68a93.jpg', 'http://localhost:3000/api/images/d8ef16b183aa92f8949f68a6e9b68a93.jpg', '2022-08-16 13:22:54', '2022-08-16 13:22:54'),
(4, 1, 'Naruto', '30d28ecdfd0fdf9a44c3e6ed6cfc89d4.jpg', 'http://localhost:3000/api/images/30d28ecdfd0fdf9a44c3e6ed6cfc89d4.jpg', '2022-08-16 13:28:41', '2022-08-16 13:28:41'),
(6, 2, 'tshirt3', '0cf927c885a3f45c585ba6ca8ddb6d2f.jpg', 'http://localhost:3000/api/images/0cf927c885a3f45c585ba6ca8ddb6d2f.jpg', '2022-08-17 12:14:17', '2022-08-17 12:14:17'),
(13, 2, 'New AHO Shirt', '626a17e41498b89c31cf6caa9bcf6c78.jpg', 'http://localhost:3000/api/images/626a17e41498b89c31cf6caa9bcf6c78.jpg', '2022-08-18 11:06:38', '2022-08-18 11:06:38'),
(14, 2, 'tshirt4', '4eb7e51bac9f130efbbe0c93a5ab0f97.jpg', 'http://localhost:3000/api/images/4eb7e51bac9f130efbbe0c93a5ab0f97.jpg', '2022-08-18 11:07:48', '2022-08-18 11:07:48'),
(17, 0, 'Gunpla1', '0f571c95449bad17ca1a7279469fbf45.jpg', 'http://localhost:3000/api/images/0f571c95449bad17ca1a7279469fbf45.jpg', '2022-08-18 12:02:20', '2022-08-18 12:09:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
