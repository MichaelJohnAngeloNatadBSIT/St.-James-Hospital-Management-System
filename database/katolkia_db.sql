-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2021 at 06:59 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `katolkia_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_accounts`
--

CREATE TABLE `tbl_customer_accounts` (
  `customer_id` int(11) NOT NULL,
  `customer_lastname` varchar(50) NOT NULL,
  `customer_firstname` varchar(50) NOT NULL,
  `customer_address` varchar(50) NOT NULL,
  `customer_username` varchar(50) NOT NULL,
  `customer_password` varchar(500) NOT NULL,
  `customer_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_customer_accounts`
--

INSERT INTO `tbl_customer_accounts` (`customer_id`, `customer_lastname`, `customer_firstname`, `customer_address`, `customer_username`, `customer_password`, `customer_email`) VALUES
(1, 'Natad', 'Michael', '36b Fontaine Ext. East Tapinac Olongapo City', 'root', '$2y$10$oMK8R3O4kHJCJPX2sVWTzO9NDpLA7UA8gr9ZEyRe.4dhfqzcy75qW', 'angetry@gmail.com'),
(2, 'Natad', 'Michael', '36b Fontaine Ext. East Tapinac Olongapo City', 'root123', '$2y$10$LM20QTVsZIUO1LWdnVo8RuSblkpVwdAuSBTgy/flEQV3LDn.UV3c2', 'angetry@gmail.com'),
(3, 'Natad', 'Michael', '36b Fontaine Ext. East Tapinac Olongapo City', 'roo', '$2y$10$vF5iiLkLxIKEfsDw8ormnuT8nfm5LjVW69HjBjoWIRJKg.tbGY9S6', 'angetry@gmail.com'),
(4, 'alberto', 'neilsen', '123123 asjdasjdaj osaod', 'root1234', '$2y$10$mbGgQ8niGUEcJxGg7J8e/OqnUBx.n/yvPqPRoxvZm8u5yCKQqhWBS', 'neilsen@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_houses_renting`
--

CREATE TABLE `tbl_houses_renting` (
  `house_id` int(11) NOT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `house_name` varchar(50) NOT NULL,
  `house_price` decimal(10,2) NOT NULL,
  `house_img` varchar(50) NOT NULL,
  `house_address` varchar(50) NOT NULL,
  `house_type` varchar(50) NOT NULL,
  `house_living_room` int(11) DEFAULT NULL,
  `house_bedroom` int(11) DEFAULT NULL,
  `house_kitchen` int(11) DEFAULT NULL,
  `house_comfort_room` int(11) DEFAULT NULL,
  `house_garage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_houses_renting`
--

INSERT INTO `tbl_houses_renting` (`house_id`, `agent_id`, `house_name`, `house_price`, `house_img`, `house_address`, `house_type`, `house_living_room`, `house_bedroom`, `house_kitchen`, `house_comfort_room`, `house_garage`) VALUES
(1, 9, 'Softy House', '1500000.00', 'img/house-1.jpg', 'Tyler St. Dema New Yankee City', 'Bungalow', 1, 3, 1, 3, 0),
(2, 12, 'Softy House', '1200000.00', 'img/house-2.jpg', 'Clancy St. Dema New Yankee City', 'Modern House', 1, 2, 1, 2, 0),
(3, 9, 'Camel Homes', '5000000.00', 'img/house-3.jpg', 'Clancy St. Diliman Qezon City', 'Bungalow', 1, 3, 1, 3, 0),
(4, 6, 'Comfty Homes', '3000000.00', 'img/house-4.jpg', 'Kessing St. Dadural Qezon City', 'Bungalow', 1, 2, 1, 2, 0),
(5, 10, 'Drade House Co.', '4000000.00', 'img/house-5.jpg', 'Jade St. Rasengan Village Makati City', 'Bungalow', 1, 2, 1, 2, 0),
(6, 13, 'Drade House Co.', '5000000.00', 'img/house-6.jpg', 'Azula St. Angel Vill Taguig City', 'Bungalow', 1, 3, 1, 3, 0),
(7, 9, 'Camel Homes', '6000000.00', 'img/house-7.jpg', 'Draven St. Diliman Quezon City', 'Single Family', 1, 3, 1, 3, 0),
(8, 10, 'Loft Homes Co.', '5000000.00', 'img/house-8.jpg', 'Debby St. Bilge Ville Batangas', 'Single Family', 1, 3, 1, 3, 0),
(9, 5, 'Camel Homes', '3000000.00', 'img/house-9.jpg', 'Levington St. Dadural Qezon City', 'Bungalow', 1, 2, 1, 2, 1),
(10, 9, 'Drade House Co.', '4000000.00', 'img/house-10.jpg', 'Hidan St. Hashirama Village Makati City', 'Bungalow', 1, 3, 1, 3, 0),
(11, 3, 'Drade House Co.', '5000000.00', 'img/house-11.jpg', 'Zuko St. Northern Village Marikina City', 'Single Family', 1, 2, 1, 2, 1),
(12, 11, 'Camel Homes', '6000000.00', 'img/house-12.jpg', 'Quinn St. Levito Village Quezon City', 'Single Family', 1, 2, 1, 2, 2),
(13, 6, '', '5000000.00', 'img/house-13.jpg', 'Sacarver St. Noxus Ville Pampanga', 'Single Family', 1, 3, 1, 3, 1),
(14, 11, 'Softy House', '5000000.00', 'img/house-14.jpg', 'Levito St. Dreamland Marikina City', 'Single Family', 1, 2, 1, 2, 1),
(15, 9, 'Drade House Co.', '4000000.00', 'img/house-15.jpg', 'Kakuzu St. Tobirama Village Makati City', 'Bungalow', 1, 2, 1, 2, 1),
(16, 6, 'Drade House Co.', '5000000.00', 'img/house-16.jpg', 'Aang St. Northern Village Marikina City', 'Single Family', 1, 3, 1, 3, 1),
(17, 8, 'Camel Homes', '6000000.00', 'img/house-17.jpg', 'Fiora St. Nico Village Quezon City', 'Single Family', 1, 3, 1, 3, 1),
(18, 10, 'Loft Homes Co.', '6000000.00', 'img/house-18.jpg', 'Reisdro St. Dema Ville Pampanga', 'Single Family', 1, 3, 1, 3, 2),
(19, 5, 'Comfty Homes', '5000000.00', 'img/house-19.jpg', 'Irving St. Minato Village Qezon City', 'Single Family', 1, 3, 1, 3, 1),
(20, 11, 'Drade House Co.', '2000000.00', 'img/house-19.jpg', 'Obito St. Hashirama Village Makati City', 'Bungalow', 1, 2, 1, 2, 0),
(21, 6, 'Drade House Co.', '5000000.00', 'img/house-21.jpg', 'Katara St. Northern Village Marikina City', 'Bungalow', 1, 3, 1, 3, 1),
(22, 9, 'Camel Homes', '6000000.00', 'img/house-22.jpg', 'Darius St. Diliman Quezon City', 'Single Family', 1, 3, 1, 3, 0),
(23, 14, 'Loft Homes Co.', '5000000.00', 'img/house-23.jpg', 'Josh St. Bilge Ville Batangas', 'Single Family', 1, 3, 1, 3, 1),
(24, 8, 'Camel Homes', '5000000.00', 'img/house-24.jpg', 'Berril St. Diliman Qezon City', 'Single Family', 1, 3, 1, 3, 1),
(25, 14, 'Drade House Co.', '4000000.00', 'img/house-25.jpg', '', 'Single Family', 1, 3, 1, 3, 0),
(26, 3, 'Drade House Co.', '7000000.00', 'img/house-26.jpg', 'Toph St. Northern Village Marikina City', 'Single Family', 1, 3, 1, 3, 0),
(27, 7, 'Camel Homes', '6000000.00', 'img/house-27.jpg', 'Leblanc St. Konoha Village Quezon City', 'Single Family', 1, 3, 1, 3, 0),
(28, 10, 'Loft Homes Co.', '5000000.00', 'img/house-28.jpg', 'Tesla St. Choji Ville Pampanga', 'Single Family', 1, 3, 1, 3, 1),
(29, 4, 'Comfty Homes', '5000000.00', 'img/house-29.jpg', 'Diggers St. Dema Mabini City', 'Modern House', 1, 3, 1, 3, 1),
(30, 13, 'Drade House Co.', '5000000.00', 'img/house-30.jpg', 'Deidara St. Hashirama Village Makati City', 'Single Family', 1, 3, 1, 3, 1),
(31, 7, 'Drade House Co.', '5000000.00', 'img/house-31.jpg', 'Iroh St. Northern Village Marikina City', 'Single Family', 1, 3, 1, 3, 0),
(32, 8, 'Camel Homes', '6000000.00', 'img/house-32.jpg', 'Leblanc St. Konoha Village Quezon City', 'Single Family', 1, 3, 1, 3, 0),
(33, 13, 'Loft Homes Co.', '10000000.00', 'img/house-33.jpg', 'Einstein St. Choji Ville Pampanga', 'Single Family', 1, 3, 1, 3, 1),
(34, 1, 'Comfty Homes', '10000000.00', 'img/house-34.jpg', 'Nagato St. Dreamland Marikina City', 'Modern House', 1, 3, 1, 3, 1),
(35, 11, 'Drade House Co.', '5000000.00', 'img/house-35.jpg', 'Minato St. Hashirama Village Makati City', 'Bungalow', 1, 3, 1, 3, 0),
(36, 7, 'Drade House Co.', '7000000.00', 'img/house-36.jpg', 'Luten St. Northern Village Marikina City', 'Single Family', 1, 3, 1, 3, 0),
(37, 12, 'Camel Homes', '3000000.00', 'img/house-37.jpg', 'Graves St. Diliman Quezon City', 'Single Family', 1, 3, 1, 3, 0),
(38, 13, 'Loft Homes Co.', '5000000.00', 'img/house-38.jpg', 'Curie St. Choji Ville Pampanga', 'Single Family', 1, 3, 1, 3, 0),
(39, 3, 'Comfty Homes', '6000000.00', 'img/house-39.jpg', 'Bennington St. Dadural Qezon City', 'Single Family', 1, 3, 1, 3, 0),
(40, 13, 'Drade House Co.', '5000000.00', 'img/house-40.jpg', 'Kakashi St. Hashirama Village Makati City', 'Single Family', 1, 3, 1, 3, 0),
(41, 9, 'Drade House Co.', '7000000.00', 'img/house-41.jpg', 'Ozai St. Northern Village Marikina City', 'Single Family', 1, 3, 1, 3, 0),
(42, 14, 'Camel Homes', '3000000.00', 'img/house-42.jpg', 'Elise St. Diliman Quezon City', 'Single Family', 1, 3, 1, 3, 0),
(43, 14, 'Loft Homes Co.', '3000000.00', 'img/house-43.jpg', 'Planck St. Choji Ville Pampanga', 'Single Family', 1, 3, 1, 3, 0),
(44, 7, 'Comfty Homes', '10000000.00', 'img/house-44.jpg', 'Ranger St. Dadural Qezon City', 'Modern House', 0, 0, 0, 0, 0),
(45, 13, 'Drade House Co.', '8000000.00', 'img/house-46.jpg', 'Hiruzen St. Hashirama Village Makati City', 'Single Family', 1, 3, 1, 3, 1),
(46, 3, 'Drade House Co.', '5000000.00', 'img/house-47.jpg', 'Azulon St. Northern Village Marikina City', 'Single Family', 1, 3, 1, 3, 0),
(47, 11, 'Camel Homes', '6000000.00', 'img/house-48.jpg', 'Yone St. Konoha Village Quezon City', 'Single Family', 1, 3, 1, 3, 0),
(48, 10, 'Loft Homes Co.', '5000000.00', 'img/house-49.jpg', 'Bohr St. Choji Ville Pampanga', 'Single Family', 1, 3, 1, 3, 0),
(49, 14, 'Comfty Homes', '10000000.00', 'img/house-50.jpg', 'Rasen Shuriken St. Choji Ville Pampanga', 'Single Family', 1, 3, 1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_houses_selling`
--

CREATE TABLE `tbl_houses_selling` (
  `house_id` int(11) NOT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `house_name` varchar(50) NOT NULL,
  `house_price` decimal(10,2) NOT NULL,
  `house_img` varchar(50) NOT NULL,
  `house_address` varchar(50) NOT NULL,
  `house_type` varchar(50) NOT NULL,
  `house_living_room` int(11) DEFAULT NULL,
  `house_bedroom` int(11) DEFAULT NULL,
  `house_kitchen` int(11) DEFAULT NULL,
  `house_comfort_room` int(11) DEFAULT NULL,
  `house_garage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_houses_selling`
--

INSERT INTO `tbl_houses_selling` (`house_id`, `agent_id`, `house_name`, `house_price`, `house_img`, `house_address`, `house_type`, `house_living_room`, `house_bedroom`, `house_kitchen`, `house_comfort_room`, `house_garage`) VALUES
(1, 1, 'Softy House', '1500000.00', 'img/house-1.jpg', 'Tyler St. Dema New Yankee City', 'Bungalow', 1, 3, 1, 3, 0),
(2, 6, 'Softy House', '1200000.00', 'img/house-2.jpg', 'Clancy St. Dema New Yankee City', 'Modern House', 1, 2, 1, 2, 0),
(3, 13, 'Camel Homes', '5000000.00', 'img/house-3.jpg', 'Clancy St. Diliman Qezon City', 'Bungalow', 1, 3, 1, 3, 0),
(4, 7, 'Comfty Homes', '3000000.00', 'img/house-4.jpg', 'Kessing St. Dadural Qezon City', 'Bungalow', 1, 2, 1, 2, 0),
(5, 8, 'Drade House Co.', '4000000.00', 'img/house-5.jpg', 'Jade St. Rasengan Village Makati City', 'Bungalow', 1, 2, 1, 2, 0),
(6, 10, 'Drade House Co.', '5000000.00', 'img/house-6.jpg', 'Azula St. Angel Vill Taguig City', 'Bungalow', 1, 3, 1, 3, 0),
(7, 12, 'Camel Homes', '6000000.00', 'img/house-7.jpg', 'Draven St. Diliman Quezon City', 'Single Family', 1, 3, 1, 3, 0),
(8, 4, 'Loft Homes Co.', '5000000.00', 'img/house-8.jpg', 'Debby St. Bilge Ville Batangas', 'Single Family', 1, 3, 1, 3, 0),
(9, 4, 'Camel Homes', '3000000.00', 'img/house-9.jpg', 'Levington St. Dadural Qezon City', 'Bungalow', 1, 2, 1, 2, 1),
(10, 10, 'Drade House Co.', '4000000.00', 'img/house-10.jpg', 'Hidan St. Hashirama Village Makati City', 'Bungalow', 1, 3, 1, 3, 0),
(11, 7, 'Drade House Co.', '5000000.00', 'img/house-11.jpg', 'Zuko St. Northern Village Marikina City', 'Single Family', 1, 2, 1, 2, 1),
(12, 2, 'Camel Homes', '6000000.00', 'img/house-12.jpg', 'Quinn St. Levito Village Quezon City', 'Single Family', 1, 2, 1, 2, 2),
(13, 8, 'Softy Homes', '5000000.00', 'img/house-13.jpg', 'Sacarver St. Noxus Ville Pampanga', 'Single Family', 1, 3, 1, 3, 1),
(14, 2, 'Softy House', '5000000.00', 'img/house-14.jpg', 'Levito St. Dreamland Marikina City', 'Single Family', 1, 2, 1, 2, 1),
(15, 8, 'Drade House Co.', '4000000.00', 'img/house-15.jpg', 'Kakuzu St. Tobirama Village Makati City', 'Bungalow', 1, 2, 1, 2, 1),
(16, 7, 'Drade House Co.', '5000000.00', 'img/house-16.jpg', 'Aang St. Northern Village Marikina City', 'Single Family', 1, 3, 1, 3, 1),
(17, 7, 'Camel Homes', '6000000.00', 'img/house-17.jpg', 'Fiora St. Nico Village Quezon City', 'Single Family', 1, 3, 1, 3, 1),
(18, 10, 'Loft Homes Co.', '6000000.00', 'img/house-18.jpg', 'Reisdro St. Dema Ville Pampanga', 'Single Family', 1, 3, 1, 3, 2),
(19, 13, 'Comfty Homes', '5000000.00', 'img/house-19.jpg', 'Irving St. Minato Village Qezon City', 'Single Family', 1, 3, 1, 3, 1),
(20, 9, 'Drade House Co.', '2000000.00', 'img/house-19.jpg', 'Obito St. Hashirama Village Makati City', 'Bungalow', 1, 2, 1, 2, 0),
(21, 7, 'Drade House Co.', '5000000.00', 'img/house-21.jpg', 'Katara St. Northern Village Marikina City', 'Bungalow', 1, 3, 1, 3, 1),
(22, 10, 'Camel Homes', '6000000.00', 'img/house-22.jpg', 'Darius St. Diliman Quezon City', 'Single Family', 1, 3, 1, 3, 0),
(23, 13, 'Loft Homes Co.', '5000000.00', 'img/house-23.jpg', 'Josh St. Bilge Ville Batangas', 'Single Family', 1, 3, 1, 3, 1),
(24, 2, 'Camel Homes', '5000000.00', 'img/house-24.jpg', 'Berril St. Diliman Qezon City', 'Single Family', 1, 3, 1, 3, 1),
(25, 5, 'Drade House Co.', '4000000.00', 'img/house-25.jpg', '', 'Single Family', 1, 3, 1, 3, 0),
(26, 8, 'Drade House Co.', '7000000.00', 'img/house-26.jpg', 'Toph St. Northern Village Marikina City', 'Single Family', 1, 3, 1, 3, 0),
(27, 3, 'Camel Homes', '6000000.00', 'img/house-27.jpg', 'Leblanc St. Konoha Village Quezon City', 'Single Family', 1, 3, 1, 3, 0),
(28, 4, 'Loft Homes Co.', '5000000.00', 'img/house-28.jpg', 'Tesla St. Choji Ville Pampanga', 'Single Family', 1, 3, 1, 3, 1),
(29, 6, 'Comfty Homes', '5000000.00', 'img/house-29.jpg', 'Diggers St. Dema Mabini City', 'Modern House', 1, 3, 1, 3, 1),
(30, 5, 'Drade House Co.', '5000000.00', 'img/house-30.jpg', 'Deidara St. Hashirama Village Makati City', 'Single Family', 1, 3, 1, 3, 1),
(31, 12, 'Drade House Co.', '5000000.00', 'img/house-31.jpg', 'Iroh St. Northern Village Marikina City', 'Single Family', 1, 3, 1, 3, 0),
(32, 2, 'Camel Homes', '6000000.00', 'img/house-32.jpg', 'Leblanc St. Konoha Village Quezon City', 'Single Family', 1, 3, 1, 3, 0),
(33, 3, 'Loft Homes Co.', '10000000.00', 'img/house-33.jpg', 'Einstein St. Choji Ville Pampanga', 'Single Family', 1, 3, 1, 3, 1),
(34, 8, 'Comfty Homes', '10000000.00', 'img/house-34.jpg', 'Nagato St. Dreamland Marikina City', 'Modern House', 1, 3, 1, 3, 1),
(35, 11, 'Drade House Co.', '5000000.00', 'img/house-35.jpg', 'Minato St. Hashirama Village Makati City', 'Bungalow', 1, 3, 1, 3, 0),
(36, 5, 'Drade House Co.', '7000000.00', 'img/house-36.jpg', 'Luten St. Northern Village Marikina City', 'Single Family', 1, 3, 1, 3, 0),
(37, 7, 'Camel Homes', '3000000.00', 'img/house-37.jpg', 'Graves St. Diliman Quezon City', 'Single Family', 1, 3, 1, 3, 0),
(38, 8, 'Loft Homes Co.', '5000000.00', 'img/house-38.jpg', 'Curie St. Choji Ville Pampanga', 'Single Family', 1, 3, 1, 3, 0),
(39, 14, 'Comfty Homes', '6000000.00', 'img/house-39.jpg', 'Bennington St. Dadural Qezon City', 'Single Family', 1, 3, 1, 3, 0),
(40, 4, 'Drade House Co.', '5000000.00', 'img/house-40.jpg', 'Kakashi St. Hashirama Village Makati City', 'Single Family', 1, 3, 1, 3, 0),
(41, 9, 'Drade House Co.', '7000000.00', 'img/house-41.jpg', 'Ozai St. Northern Village Marikina City', 'Single Family', 1, 3, 1, 3, 0),
(42, 7, 'Camel Homes', '3000000.00', 'img/house-42.jpg', 'Elise St. Diliman Quezon City', 'Single Family', 1, 3, 1, 3, 0),
(43, 11, 'Loft Homes Co.', '3000000.00', 'img/house-43.jpg', 'Planck St. Choji Ville Pampanga', 'Single Family', 1, 3, 1, 3, 0),
(44, 13, 'Comfty Homes', '10000000.00', 'img/house-44.jpg', 'Ranger St. Dadural Qezon City', 'Modern House', 0, 0, 0, 0, 0),
(45, 12, 'Drade House Co.', '8000000.00', 'img/house-46.jpg', 'Hiruzen St. Hashirama Village Makati City', 'Single Family', 1, 3, 1, 3, 1),
(46, 1, 'Drade House Co.', '5000000.00', 'img/house-47.jpg', 'Azulon St. Northern Village Marikina City', 'Single Family', 1, 3, 1, 3, 0),
(47, 2, 'Camel Homes', '6000000.00', 'img/house-48.jpg', 'Yone St. Konoha Village Quezon City', 'Single Family', 1, 3, 1, 3, 0),
(48, 15, 'Loft Homes Co.', '5000000.00', 'img/house-49.jpg', 'Bohr St. Choji Ville Pampanga', 'Single Family', 1, 3, 1, 3, 0),
(49, 12, 'Comfty Homes', '10000000.00', 'img/house-50.jpg', 'Rasen Shuriken St. Choji Ville Pampanga', 'Single Family', 1, 3, 1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_house_agents`
--

CREATE TABLE `tbl_house_agents` (
  `agent_id` int(11) NOT NULL,
  `agent_firstname` varchar(50) NOT NULL,
  `agent_lastname` varchar(50) NOT NULL,
  `agent_img` varchar(50) NOT NULL,
  `agent_contact_number` varchar(15) NOT NULL,
  `agent_email_address` varchar(50) NOT NULL,
  `agent_address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_house_agents`
--

INSERT INTO `tbl_house_agents` (`agent_id`, `agent_firstname`, `agent_lastname`, `agent_img`, `agent_contact_number`, `agent_email_address`, `agent_address`) VALUES
(1, 'Robert', 'Weide', 'img/agent-1', '09283756298', 'robert_weide@gmail.com', 'Kessing St. East Tapinac Olongapo City'),
(2, 'Berto', 'Rodriguez', 'img/agent-2', '09875636363', 'berto_dbest@gmail.com', '14th Ave East Bajac Bajac Caloocan City'),
(3, 'Chong ', 'Lim', 'img/agent-3', '09283746592', 'chong_dgreat@gmail.com', '32 St. West Virginia Quezon City'),
(4, 'Jeff', 'Ozoz', 'img/agent-4', '028573729487', 'Ozoz_jeff@gmail.com', '43231 Dreamland Oklahoma City'),
(5, 'Chad', 'Wick ', 'img/agent-5', '12318347482', 'd_chad@protonmail.com', '1231241 Western Union Smallville'),
(6, 'Melinda', 'Wark', 'img/agent-6', '12318462826', 'mel_works@gmail.com', '334123 West Klokas Memeland'),
(7, 'Brenda', 'Tiangco', 'img/agent-7', '293991239', 'brend_iz_ur_friend@gmail.com', '12134 skalf St Bongo Cat Ville'),
(8, 'Mellisa ', 'Chang', 'img/agent-8', '23863927', 'mellisa_cutie@gmail.com', '121434 West Ave East Ville'),
(9, 'Lee', 'Mapohgi', 'img/agent-9', '28432832', 'lee_uknowit@gmail.com', '12414 North St. South City'),
(10, 'Harold', 'Hidethepain', 'img/agent-10', '4206921', 'harold_knowspain@gmail.com', '223123 Well St. Memeland'),
(11, 'Howard', 'Stark', 'img/agent-11', '9827162534', 'howard_dStrong@gmail.com', '3241 Fontaine St. East Tapinac Olongapo City'),
(12, 'Edgar', 'Parokyani', 'img/agent-12', '927362917', 'edgar_happy@gmail.com', '11235 Galagher St. Brgy. Asinan Olongapo City'),
(13, 'Princess', 'Tsunade', 'img/agent13', '828276333', 'tsunade_sama@gmail.com', '12342 Kessing St. East Tapinac Olongapo City'),
(14, 'Sakura', 'Haruno', 'img/agent-14', '8265253626', 'sakura_haruno2234@gmail.com', '2536 Hansen st. East Tapinac Olongapo City'),
(15, 'Joe', 'Big', 'img/agent-15', '282726382', 'joe_big250@gmail.com', '27263 14th st. East Tapinac');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reservation`
--

CREATE TABLE `tbl_reservation` (
  `reservation_id` int(11) NOT NULL,
  `house_id` int(11) NOT NULL,
  `house_name` varchar(50) NOT NULL,
  `house_address` varchar(100) NOT NULL,
  `date_of_visit` varchar(15) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_lastname` varchar(50) NOT NULL,
  `customer_firstname` varchar(50) NOT NULL,
  `customer_address` varchar(50) NOT NULL,
  `customer_contact` varchar(15) NOT NULL,
  `customer_username` varchar(50) NOT NULL,
  `customer_email` varchar(50) NOT NULL,
  `date_placed` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_reservation`
--

INSERT INTO `tbl_reservation` (`reservation_id`, `house_id`, `house_name`, `house_address`, `date_of_visit`, `agent_id`, `customer_id`, `customer_lastname`, `customer_firstname`, `customer_address`, `customer_contact`, `customer_username`, `customer_email`, `date_placed`) VALUES
(7, 49, 'Comfty Homes', 'Rasen Shuriken St. Choji Ville Pampanga', '2021-01-20', 2, 2, 'Natad', 'Michael', '36b Fontaine Ext. East Tapinac Olongapo City', '09283727272', 'root123', 'angetry@gmail.com', '2021-01-04'),
(8, 49, 'Comfty Homes', 'Rasen Shuriken St. Choji Ville Pampanga', '2021-02-12', 7, 2, 'Natad', 'Michael', '36b Fontaine Ext. East Tapinac Olongapo City', '09283727272', 'root123', 'angetry@gmail.com', '2021-01-04'),
(9, 48, 'Loft Homes Co.', 'Bohr St. Choji Ville Pampanga', '', 10, 2, 'alberto', 'neilsen', '123123 asjdasjdaj osaod', '0928273728', 'root123', 'neilsen@gmail.com', '2021-01-05'),
(14, 1, 'Softy House', 'Tyler St. Dema New Yankee City', '2021-01-29', 1, 2, 'alberto', 'neilsen', '123123 asjdasjdaj osaod', '0928273728', 'root123', 'neilsen@gmail.com', '2021-01-05'),
(15, 6, 'Drade House Co.', 'Azula St. Angel Vill Taguig City', '2021-02-26', 10, 2, 'alberto', 'neilsen', '123123 asjdasjdaj osaod', '0928273728', 'root123', 'neilsen@gmail.com', '2021-01-05'),
(16, 48, 'Loft Homes Co.', 'Bohr St. Choji Ville Pampanga', '2021-01-14', 10, 2, 'alberto', 'neilsen', '123123 asjdasjdaj osaod', '0928273728', 'root123', 'neilsen@gmail.com', '2021-01-05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_customer_accounts`
--
ALTER TABLE `tbl_customer_accounts`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_houses_renting`
--
ALTER TABLE `tbl_houses_renting`
  ADD PRIMARY KEY (`house_id`),
  ADD KEY `agent_id` (`agent_id`);

--
-- Indexes for table `tbl_houses_selling`
--
ALTER TABLE `tbl_houses_selling`
  ADD PRIMARY KEY (`house_id`),
  ADD KEY `agent_id` (`agent_id`);

--
-- Indexes for table `tbl_house_agents`
--
ALTER TABLE `tbl_house_agents`
  ADD PRIMARY KEY (`agent_id`);

--
-- Indexes for table `tbl_reservation`
--
ALTER TABLE `tbl_reservation`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `house_id` (`house_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `agent_id` (`agent_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_customer_accounts`
--
ALTER TABLE `tbl_customer_accounts`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_houses_renting`
--
ALTER TABLE `tbl_houses_renting`
  MODIFY `house_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tbl_houses_selling`
--
ALTER TABLE `tbl_houses_selling`
  MODIFY `house_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tbl_house_agents`
--
ALTER TABLE `tbl_house_agents`
  MODIFY `agent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_reservation`
--
ALTER TABLE `tbl_reservation`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_houses_renting`
--
ALTER TABLE `tbl_houses_renting`
  ADD CONSTRAINT `tbl_houses_renting_ibfk_1` FOREIGN KEY (`agent_id`) REFERENCES `tbl_house_agents` (`agent_id`);

--
-- Constraints for table `tbl_houses_selling`
--
ALTER TABLE `tbl_houses_selling`
  ADD CONSTRAINT `tbl_houses_selling_ibfk_1` FOREIGN KEY (`agent_id`) REFERENCES `tbl_house_agents` (`agent_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
