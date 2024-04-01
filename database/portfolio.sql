-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 04, 2024 at 11:31 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(1500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `description`) VALUES
(1, 'Motion graphics', '3D modeling developed with cinema 4D or spline 3D'),
(2, 'Photography', 'Capturing moments with a DSRL camera and editing with Adobe programs such as Lightroom and Photoshop.'),
(3, 'Graphic Design', 'Developing visual content to convey information in an effective way.'),
(4, 'Web Development', 'Creating websites with a range of activities mixing user interface and experience. \r\n');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(300) NOT NULL,
  `last_name` varchar(300) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(1500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `first_name`, `last_name`, `email`, `message`) VALUES
(1, 'Erika', 'Ibanez', 'erika.ibanez@accenture.ca', 'Hi! I\'d like to join you to collaborate on upgrading a small business website.\r\n'),
(2, 'Erika', 'Ibanez', 'erika.ibanez@accenture.ca', 'Hi! I\'d like to join you to collaborate on upgrading a small business website.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE IF NOT EXISTS `media` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `image_filename` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `projectId` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `projectId` (`projectId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `image_filename`, `projectId`) VALUES
(1, 'emapanada.jpg', 0),
(2, 'taquitosDorados.jpg', 0),
(3, 'downtown.jpg', 0),
(4, 'parkDowntown.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image_filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(1500) NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `credits` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `image_filename`, `description`, `category_id`, `credits`) VALUES
(1, 'True Taco Photography', '', 'A photoshoot for True Taco Mexican restaurant was developed with the purpose of providing a modern', 0, 'Camila Romero'),
(2, 'Street Photography', '', 'London, ON from a foreigner\'s perspective. Photos taken with a DSLR camera. \r\n', 0, 'Camila Romero');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
