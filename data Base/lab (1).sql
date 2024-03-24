-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 24, 2024 at 08:27 AM
-- Server version: 8.0.31
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lab`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `test_type` varchar(255) DEFAULT NULL,
  `doctor_name` varchar(255) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `test_type`, `doctor_name`, `datetime`) VALUES
(1, 'blood test', 'Azeem', '2024-03-05 13:55:04');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_information`
--

DROP TABLE IF EXISTS `doctor_information`;
CREATE TABLE IF NOT EXISTS `doctor_information` (
  `id` int NOT NULL AUTO_INCREMENT,
  `doctor_name` varchar(255) DEFAULT NULL,
  `specialty` varchar(255) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `doctor_information`
--

INSERT INTO `doctor_information` (`id`, `doctor_name`, `specialty`, `contact_number`, `email`) VALUES
(2, 'Azeem', 'MBBS', '0758156579', 'Azeem@gmail.com'),
(3, 'Madhan', 'Dental', '0776628218', 'madhandr@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `test_register`
--

DROP TABLE IF EXISTS `test_register`;
CREATE TABLE IF NOT EXISTS `test_register` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patient` varchar(255) DEFAULT NULL,
  `doctor_name` varchar(255) DEFAULT NULL,
  `test_type` varchar(255) DEFAULT NULL,
  `test_sample_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `test_register`
--

INSERT INTO `test_register` (`id`, `patient`, `doctor_name`, `test_type`, `test_sample_id`) VALUES
(1, 'JM.Jathaf', 'Madhan', 'Body Test', '4002001'),
(3, 'miqqi', 'Madhan', 'Body Test', '4002002');

-- --------------------------------------------------------

--
-- Table structure for table `test_result`
--

DROP TABLE IF EXISTS `test_result`;
CREATE TABLE IF NOT EXISTS `test_result` (
  `id` int NOT NULL AUTO_INCREMENT,
  `test_register_id` int DEFAULT NULL,
  `patient_name` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `test_register_id` (`test_register_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `test_result`
--

INSERT INTO `test_result` (`id`, `test_register_id`, `patient_name`, `result`) VALUES
(1, 204001, 'Jameel', 'Good Health\r\n'),
(2, 204002, 'JM.Jack', 'Good');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(191) DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nic` varchar(12) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `role` enum('admin','user','guest') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `nic`, `password`, `role`) VALUES
(1, 'narkis', 'jathaf@gmail.com', '200172502823', '123', 'admin'),
(2, 'amrish', 'kis@gmail.com', '25365', '123', 'user'),
(4, 'muna', 'amrishabrar13@gmail.com', '200172502823', '1234', 'user'),
(5, 'admin', 'admin@gmail.com', '1', '123', 'user'),
(6, 'admin', 'jathafjm@gmail.com', '200319100434', '1234', 'admin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
