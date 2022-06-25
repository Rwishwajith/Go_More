-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2019 at 08:35 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `go_more`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`name`, `password`, `email`, `phone`) VALUES
('bharatha', '123', 'sachintha@gmail.com', 715610898),
('Ruchira', '123456', 'ruchiraworld@gmail.com', 774421795),
('asiru', '123456', 'asiru@gmail.com', 774421796);

-- --------------------------------------------------------

--
-- Table structure for table `beach`
--

CREATE TABLE `beach` (
  `date` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `number` int(15) NOT NULL,
  `type` varchar(30) NOT NULL,
  `activity` varchar(30) NOT NULL,
  `adult` int(4) NOT NULL,
  `child` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beach`
--

INSERT INTO `beach` (`date`, `name`, `email`, `number`, `type`, `activity`, `adult`, `child`) VALUES
('2018-10-10', 'Ruchira', 'ruchiraworld@gmail.com', 745821, 'Arugam Bay Beach', 'Key Sailing', 8, 2),
('2018-12-01', 'Maroon', 'Maroon@gmail.com', 666666, 'Kalpitiya Beach', 'SuperBowl Fishing', 6, 1),
('2018-11-21', 'Dasun', 'dasun@gmail.com', 124578963, 'Kalpitiya Beach', 'Jolly Sailing & Dolphin Cruise', 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `msg` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `hotel` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` int(30) NOT NULL,
  `location` varchar(30) NOT NULL,
  `arravi` varchar(30) NOT NULL,
  `Departure` varchar(30) NOT NULL,
  `adult` varchar(30) NOT NULL,
  `child` varchar(30) NOT NULL,
  `comment` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`hotel`, `name`, `email`, `phone`, `location`, `arravi`, `Departure`, `adult`, `child`, `comment`) VALUES
('Jade Green Hambantota (150 USD', 'Ruchira', 'ruchiraworld@gmail.com', 774421796, 'Kandy', '2018-12-24', '2018-12-23', '5', '8', ''),
('Bandagiri Village Eco Resort (', 'Kamal Perera', 'kamla@gmail.com', 721179955, 'Galle', '2018-12-31', '2018-12-31', '7', '2', 'Hello');

--
-- Triggers `hotel`
--
DELIMITER $$
CREATE TRIGGER `insertlog` AFTER INSERT ON `hotel` FOR EACH ROW INSERT INTO hotel_logs VALUES (null, new.hotel, new.name,NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `hoteldetails`
--

CREATE TABLE `hoteldetails` (
  `name` varchar(70) NOT NULL,
  `phone` int(16) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hoteldetails`
--

INSERT INTO `hoteldetails` (`name`, `phone`, `email`) VALUES
('hoora Tented Safari Camp - Kumana (2800 USD)', 702228222, 'mahoorabooking.kumana.com'),
('saru', 98, 'sach@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_logs`
--

CREATE TABLE `hotel_logs` (
  `code` int(11) NOT NULL,
  `hotel` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `booked_date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_logs`
--

INSERT INTO `hotel_logs` (`code`, `hotel`, `name`, `booked_date`) VALUES
(1, 'Earls', 'Ruchira', '2018-11-16 19:43:03'),
(2, 'Earls', 'Ruchira', '2018-11-16 19:43:10'),
(3, 'Earls', 'Ruchira', '2018-11-16 19:43:12'),
(4, 'Bandagiri Village Ec', 'Kamal Perera', '2018-11-16 19:45:49'),
(5, 'Kandiyan Reach Hotel', 'Kasun Perera', '2018-11-21 13:13:55'),
(6, 'Jade Green Hambantot', 'Ruchira', '2018-12-03 21:24:27'),
(7, 'Bandagiri Village Ec', 'Kamal Perera', '2018-12-30 19:20:54');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `name` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `price` int(5) NOT NULL,
  `size` varchar(10) NOT NULL,
  `id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`name`, `type`, `price`, `size`, `id`) VALUES
('Wooden Mask | Mayura Raksha', 'Wood', 13750, '54 cm', 1),
('Wooden Mask | Gini Raksha', 'Wood', 53750, '60 cm', 2),
('Wooden Mask | Mayura Raksha', 'Wood', 13750, '54 cm', 1),
('Wooden Mask | Gini Raksha', 'Wood', 53750, '60 cm', 2),
(' Wooden Mask | Ratnakuta', 'Wood', 7150, '50 cm', 3),
(' Wooden Mask | Ratnakuta', 'Wood', 7150, '50 cm', 3),
(' God Ghanesh', 'Wood', 10000, '45 cm', 4),
(' God Ghanesh', 'Wood', 10000, '45 cm', 4);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `name` varchar(30) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` int(10) NOT NULL,
  `country` varchar(20) NOT NULL,
  `number` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`name`, `email`, `password`, `country`, `number`) VALUES
('Ruchira', 'ruchiraworld@gmail.c', 124578, 'Sri Lanka', 774421795),
('', '', 0, '', 0),
('', '', 0, '', 0),
('', '', 0, '', 0),
('', '', 0, '', 0),
('', '', 0, '', 0),
('Ruchira', 'ruchiraworld@gmail.c', 0, 'Sri Lanka', 0),
('Ruchira', 'ruchiraworld@gmail.c', 0, 'Sri Lanka', 0),
('Ruchira', 'ruchiraworld@gmail.c', 0, 'Sri Lanka', 0),
('Ruchira', 'ruchiraworld@gmail.c', 0, 'Sri Lanka', 0),
('Ruchira', 'ruchiraworld@gmail.c', 0, 'Sri Lanka', 0);

-- --------------------------------------------------------

--
-- Table structure for table `log_count`
--

CREATE TABLE `log_count` (
  `user_no` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_count`
--

INSERT INTO `log_count` (`user_no`, `name`, `date`) VALUES
(1, 'Malaka Perera', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `shopping`
--

CREATE TABLE `shopping` (
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `zip` int(10) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `cnum` text NOT NULL,
  `month` int(15) NOT NULL,
  `year` varchar(4) NOT NULL,
  `cvv` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopping`
--

INSERT INTO `shopping` (`name`, `email`, `address`, `city`, `state`, `zip`, `cname`, `cnum`, `month`, `year`, `cvv`) VALUES
('', '0', '', '', '', 0, '', '', 0, '', 0),
('Ruchira', '0', '45555', '12233', 'new york', 722, 'Ruchira Herath', '366666', 0, '4521', 231),
('Ruchira', '0', '45555', '12233', 'new york', 722, 'Ruchira Herath', '4444', 0, '2010', 321),
('Asiru', 'ruchiraworld@gmail.com', '45555', '12233', 'new york', 60000, 'Asiru', '1247855', 1, '2200', 456),
('', '', '', '', '', 0, '', '', 0, '44', 0),
('Ruchira', 'ruchiraworld@gmail.com', '45555', '12233', 'new york', 722, 'Ruchira Herath', '55555', 21, '2013', 888),
('', '', '', '', '', 0, '', '', 0, '', 0),
('', '', '', '', '', 0, '', '', 0, '', 4),
('', '', '', '', '', 0, '', '', 0, '', 0),
('Kasun', '', '', '', '', 0, '', '', 0, '', 0),
('', '', '', '', '', 0, '', '', 0, '', 0),
('', '', '', '', '', 0, '', '', 0, '', 0),
('', '', '', '', '', 0, '', '', 0, '', 0),
('', '', '', '', '', 0, '', '', 0, '', 0),
('', '', '', '', '', 0, '', '', 0, '', 0),
('', '', '', '', '', 0, '', '', 0, '', 0),
('', '', '', '', '', 0, '', '', 0, '', 0),
('', '', '', '', '', 0, '', '', 0, '', 0),
('', '', '', '', '', 0, '', '', 0, '', 0),
('Ruchira', 'ruchiraworld@gmail.com', '45555', '12233', 'new york', 722, 'Ruchira Herath', '44124777', 7, '2022', 665),
('Bastile', 'john@gmail.com', '7858,Star Road.', 'DC', 'DC', 12000, 'Bastile Jackson', '741258963', 4, '2020', 123),
('', '', '', '', '', 0, '', '', 0, '', 0),
('', '', '', '', '', 0, '', '', 0, '', 0),
('', '', '', '', '', 0, '', '', 0, '', 0),
('Ruchira Herath', 'ruchiraworld@gmail.com', 'Kurunegala', 'Kurunegala', 'North', 2555, 'Ruchira Herath', '12457963', 12, '2019', 32),
('Gayna', 'G2@gmail.com', 'Havelock', 'Colombo', 'Western', 96857, 'Gayana Fernando', '789456123', 10, '2018', 231),
('aa', 'aa@gmail.com', '11', 'sss', 'aaa', 1111, 'ss', '111', 120102, '2255', 222),
('Dasun Madushan', 'danun@gmail.com', 'shred road', 'London', 'North wales', 85206, 'Dasun Jerry', '5741025896369855', 8, '2041', 854),
('ssssssssssssss', 'sss@gmail.com', 'sss', 'aaa', 'aaa', 111111111, 'sxxxxxxxxxxxx', '1111111111111111', 5, '2022', 222),
('ssssssssssssss', 'sss@gmail.com', 'sss', 'aaa', 'aaa', 111111111, 'sxxxxxxxxxxxx', '1111111111111111', 5, '2022', 222),
('Paul Hammber', 'paul@gmail.com', 'Clock Road', 'London', 'UK', 2652, 'Paul Hamber', '2789635555555555', 12, '2019', 256);

-- --------------------------------------------------------

--
-- Table structure for table `sign`
--

CREATE TABLE `sign` (
  `name` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `country` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sign`
--

INSERT INTO `sign` (`name`, `password`, `email`, `country`) VALUES
('Ruchira', '789456', 'ruchiraworld@gmail.com', 'Sri Lanka'),
('kasun', '1234', 'kasun@gmail.com', 'Sri Lanka'),
('Asiru', '789456123', 'asiru@gmail.com', 'USA'),
('Ruchira1', '123', 'ruchiraworld@gmail.com', 'Sri Lanka'),
('Bastile', '1235', 'bas@gmail.com', 'Canada'),
('Herath', '456789', 'herath@gmail.com', 'Australia'),
('ruchira', '123456', 'ruchiraworld@gmail.com', 'Sri Lanka'),
('Deshani', '12345578', 'deshani@gmail.com', 'Sri Lanka'),
('Asitha Sudarman', '789456123', 'asith@gmail.com', 'Sri Lanka'),
('Md5', '2147483647', 'md5@gmail.com', 'Canada'),
('Miththa Pabasara', '123456789', 'pabasara@gmail.com', 'Russia'),
('Khalid', 'khalid888', 'khalid@gmail.com', 'USA'),
('Madura', '456789her', 'madura@gmail.com', 'NZ'),
('maroon5', 'maroon5123456', 'maroon5@gmail.com', 'USA'),
('Malaka Perera', 'malaka123456', 'malaka@gmail.com', 'Canada');

--
-- Triggers `sign`
--
DELIMITER $$
CREATE TRIGGER `user_count` AFTER INSERT ON `sign` FOR EACH ROW INSERT INTO log_count VALUES (null, new.name,NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `spice`
--

CREATE TABLE `spice` (
  `date` varchar(10) NOT NULL,
  `time` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `spice` varchar(20) NOT NULL,
  `msg` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spice`
--

INSERT INTO `spice` (`date`, `time`, `email`, `name`, `spice`, `msg`) VALUES
('2018-11-05', '16:27', 'ruchiraworld@gmail.com', 'Ruchira', 'New Ranweli Spice Ga', 'Hello World'),
('2018-11-13', '05:02', 'john@gmail.com', 'John', 'Susantha Spice & Her', 'On The World'),
('2018-11-13', '05:02', 'john@gmail.com', 'John', 'Susantha Spice & Her', 'On The World'),
('2018-11-20', '05:02', 'kasun@gmail.com', 'kasun', 'Royal Spice Garden |', 'thanks'),
('', '', '', '', 'Royal Spice Garden |', ''),
('2018-11-13', '05:10', 'ruchiraherath@gmail.com', 'Bastile', 'Spice Garden | Inama', 'Hello Guys'),
('2018-11-16', '21:55', 'ruchiraworld@gmail.com', 'Ruchira Wishwajith', 'Spice Garden | Inama', ''),
('2018-11-14', '09:08', 'ruchiraworld@gmail.com', 'Sachin', 'New Ranweli Spice Ga', ''),
('2079-02-07', '02:44', 'Shame@gmail.com', 'Shamila', 'Royal Spice Garden |', '');

-- --------------------------------------------------------

--
-- Table structure for table `thrill`
--

CREATE TABLE `thrill` (
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `date` varchar(10) NOT NULL,
  `city` varchar(15) NOT NULL,
  `pkg` varchar(20) NOT NULL,
  `level` varchar(20) NOT NULL,
  `lenght` varchar(10) NOT NULL,
  `company` varchar(15) NOT NULL,
  `adult` int(4) NOT NULL,
  `children` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thrill`
--

INSERT INTO `thrill` (`name`, `email`, `date`, `city`, `pkg`, `level`, `lenght`, `company`, `adult`, `children`) VALUES
('Abba', 'Abba@gmail.com', '2018-10-16', 'Kegalle', 'Rafting (1 Day)', 'Any', '2 Days', 'Team 36', 8, 2),
('Punsara', 'punsara@gmail.com', '2018-11-08', 'Kithulgala', 'Rafting And Adventur', 'Any', '3 Days', 'White Rafting', 6, 2),
('Pabasara', 'paba@gmail.com', '2018-11-30', 'Kegalle', 'Camping (3 Days)', 'Intermediate', '5 Days', 'Team 36', 4, 2),
('Bharatha', 'baratha@gmail.com', '2018-11-28', 'Kegalle', 'Rafting And Adventur', 'Mild', '10 Days', 'Team 36', 4, 12),
('Fenando', 'fs@gmail.com', '2018-11-20', 'Kithulgala', 'Water Sliding (1 Day', 'Mild', '3 Days', 'White Rafting', 5, 2),
('Khalid', 'khalid@gmail.com', '2018-11-19', 'Kegalle', 'Water Sliding (1 Day', 'Mild', '3 Days', 'White Rafting', 5, 5),
('Adam Levine', 'adamlevi@gmail.com', '2018-11-23', 'Kithulgala', 'Water Sliding (1 Day', 'Mild', '2 Days', 'Team 36', 4, 2),
('Kamal', 'kamal@gmail.com', '2018-11-14', 'Kegalle', 'Water Sliding (1 Day', 'Intermediate', '2 Days', 'Team 36', 8, 0),
('Nayana Kasun', 'nayana@gmail.com', '2018-11-23', 'Kithulgala', 'Camping (3 Days)', 'Mild', '3 Days', 'Team 36', 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(10) NOT NULL,
  `type_id` int(10) NOT NULL,
  `type_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wild`
--

CREATE TABLE `wild` (
  `date` date NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `number` int(15) NOT NULL,
  `city` varchar(30) NOT NULL,
  `type` varchar(20) NOT NULL,
  `adult` int(2) NOT NULL,
  `child` int(2) NOT NULL,
  `vehicle` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wild`
--

INSERT INTO `wild` (`date`, `name`, `email`, `number`, `city`, `type`, `adult`, `child`, `vehicle`) VALUES
('2018-12-10', 'Ruchira Wishwajith', 'ruchiraworld@gmail.com', 774421795, 'Kithulgala', 'Elephants Watching', 8, 2, 'Cab'),
('2018-12-19', 'Ruchira', 'rghs@gmail.com', 774427952, 'Kithulgala', 'Historical/Architect', 2, 1, 'Jeep');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hotel_logs`
--
ALTER TABLE `hotel_logs`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `log_count`
--
ALTER TABLE `log_count`
  ADD PRIMARY KEY (`user_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hotel_logs`
--
ALTER TABLE `hotel_logs`
  MODIFY `code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `log_count`
--
ALTER TABLE `log_count`
  MODIFY `user_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
