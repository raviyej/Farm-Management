-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2019 at 02:53 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodorder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Mobile`, `Subject`, `Message`) VALUES
('Ravitej V', 'ravitejvgowda26@gmail.com', '944705919', 'sa', ''),
('Sheikh Anum Hussain', 'ckj40856@gmail.com', '9487810674', 'sa', ''),
('Smith', 'ckj40856@gmail.com', '8903079750', 'asd', 'asdasdasd'),
('Enna', 'ckj40856@gmail.com', '9487810674', 'asd', 'hfgdsfsx');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('niki', 'NITHIN S', 'niki123@gmail.com', '8903079750', 'VTU, BOYS HOSTEL ROOM NUMBER-59,', 'niki123@'),
('ckumar', 'CHANDAN KUMAR', 'ckumar@gmail.com', '9487810674', 'VTU, SRK HOSTEL ROOM NUMBER-59,', 'Ckumar123@'),
('nidhi', 'Nidhi M', 'nidha@gmail.com', '998696572', 'Maharashtra', 'suhail'),
('pratheek', 'Pratheek D', 'pratheek@gmail.com', '8779546521', 'Hyderabad', 'pratheek083'),
('rakshithk', 'Rakshitha', 'rakshitha@gmail.com', '9547123658', 'Ahmedabad', 'rakshith00');

-- --------------------------------------------------------

--
-- Table structure for table `vegetables`
--

CREATE TABLE `vegetables` (
  `V_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vegetables`
--

INSERT INTO `vegetables` (`V_ID`, `name`, `price`, `description`, `F_ID`, `images_path`, `options`) VALUES
(58, 'onion', 40, 'onion small.', 1, 'i images/onion.jpg', 'ENABLE'),
(59, 'tomato', 60, 'jam tomato', 2, 'i images/tomato.jfif', 'ENABLE'),
(60, 'beans', 99, 'fibred beans.', 3, 'i images/beans.jfif', 'ENABLE'),
(61, 'carrot', 80, 'carrot -leaved and sweet', 1, 'i images/carrot.jpg', 'ENABLE'),
(62, 'cabbage', 65, 'leafy cabbage', 2, 'i images/cabbage.jfif', 'ENABLE'),
(63, 'cauliflower', 75, 'cauliflower -gobi', 3, 'i images/cauliflower.jfif', 'ENABLE'),
(65, 'Coffee powder', 25, 'coffee made by through finely ground coffee beans.', 4, 'i images/coffee.jfif', 'DISABLE'),
(66, 'Tea powder', 20, 'tea made by finely selected tea leaves', 4, 'i images/tea.jfif', 'DISABLE'),
(68, 'raddish', 85, 'juicy raddish', 4, 'i images/raddish.jpg', 'DISABLE'),
(69, 'broccoli', 25, 'broccoli-imported ', 2, 'i images/broccoli.jpg', 'ENABLE'),
(70, 'garlic', 20, 'sliced garlic', 2, 'i images/garlic.jfif', 'ENABLE'),
(71, 'cucumber', 40, 'white bitterless cucumber', 2, 'i images/cucumber.jfif', 'ENABLE'),
(72, 'brinjal ', 45, 'tall brinjal', 2, 'i images/brinjal.jfif', 'ENABLE'),
(73, 'ladies finger', 35, 'okra-bhendi:ladies finger', 2, 'i images/ladiesfinger.jfif', 'ENABLE'),
(74, 'potato', 200, 'Graded potato', 2, 'i images/potato.jfif', 'DISABLE'),
(75, 'pumpkin', 60, 'land built pumpkin', 2, 'i images/pumpkin.jfif', 'DISABLE'),
(76, 'sweet potato', 35, 'genasu-sweet potato', 2, 'i images/sweet_potato.jpg', 'DISABLE'),
(77, 'bottle gourd', 200, 'bottle gourd', 2, 'i images/bottlegourd.jfif', 'ENABLE'),
(78, 'drumstick', 75, 'tree grown -healthy', 2, 'i images/drumstick.jfif', 'ENABLE'),
(79, 'corn', 45, 'american-sweet corn', 2, 'i images/corn.jfif', 'ENABLE');

-- --------------------------------------------------------

--
-- Table structure for 'farmer`
--

CREATE TABLE `farmer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('rama068', 'ramappa', 'ramanna@gmail.com', '8654751259', 'hassan', 'ramappanna'),
('krishna073', 'Krishne Gowda', 'krishnagowda@gmail.com', '9632587412', 'mandya', 'krishna'),
('dileep', 'Dileep Nayak', 'dileep@gmail.com', '9487810674', 'tumkur', 'Ckumar123'),
('mancha', 'MancheGowda', 'manchegowda@gmail.com', '8903079750', 'vijayapura', 'manchappa'),
('kempa07', 'KempeGowda', 'kempegowda@gmail.com', '9541258761', 'kolar', 'kempanna');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(30) NOT NULL,
  `V_ID` int(30) NOT NULL,
  `vegetablename` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `F_ID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `V_ID`, `vegetablename`, `price`, `quantity`, `order_date`, `username`, `F_ID`) VALUES
(1, 58, 'onion', 40, 1, '2019-03-03', 'ckumar', 1),
(2, 61, 'Carrot', 80, 2, '2019-03-03', 'ckumar', 1),
(3, 61, 'Carrot', 80, 2, '2019-03-03', 'ckumar', 1),
(4, 65, 'Coffee powder', 25, 4, '2019-03-03', 'ckumar', 4),
(5, 58, 'onion', 40, 7, '2019-03-03', 'ckumar', 1),
(6, 65, 'Coffee powder', 25, 2, '2019-03-03', 'ckumar', 4),
(7, 58, 'onion', 40, 7, '2019-03-03', 'ckumar', 1),
(8, 65, 'Coffee powder', 25, 2, '2019-03-03', 'ckumar', 4),
(9, 60, 'Beans', 99, 1, '2019-03-03', 'ckumar', 3),
(10, 59, 'tomato', 60, 1, '2019-03-05', 'ckumar', 2),
(11, 60, 'Beans', 99, 1, '2019-03-05', 'ckumar', 3),
(12, 65, 'Coffee powder', 25, 1, '2019-03-05', 'ckumar', 4),
(13, 59, 'tomato', 60, 4, '2019-03-05', 'ckumar', 2),
(14, 58, 'onion', 40, 1, '2019-03-05', 'ckumar', 1),
(15, 60, 'Beans', 99, 4, '2019-03-05', 'ckumar', 3),
(16, 65, 'Coffee powder', 25, 1, '2019-03-05', 'ckumar', 4),
(17, 66, 'Garlic', 20, 7, '2019-03-05', 'ckumar', 4),
(18, 59, 'tomato', 60, 5, '2019-03-05', 'niki', 2),
(19, 63, 'Cauliflower', 75, 1, '2019-03-05', 'niki', 3),
(20, 68, 'Raddish', 75, 1, '2019-03-05', 'niki', 6),
(21, 62, 'Cabbage', 65, 1, '2019-03-05', 'niki', 2),
(22, 68, 'Raddish', 75, 1, '2019-03-05', 'niki', 6),
(23, 62, 'Cabbage', 65, 1, '2019-03-05', 'niki', 2),
(24, 65, 'Coffee powder', 25, 1, '2019-03-05', 'niki', 4),
(25, 68, 'Raddish', 75, 1, '2019-03-05', 'niki', 6),
(26, 59, 'tomato', 60, 6, '2019-03-05', 'niki', 2),
(27, 58, 'onion', 40, 1, '2019-03-05', 'niki', 1),
(28, 59, 'tomato', 60, 1, '2019-03-05', 'niki', 2),
(29, 58, 'onion', 40, 1, '2019-03-05', 'niki', 1),
(30, 60, 'Beans', 99, 1, '2019-03-15', 'ckumar', 3),
(31, 59, 'tomato', 60, 1, '2019-03-15', 'ckumar', 2),
(32, 61, 'Carrot', 80, 1, '2019-03-15', 'ckumar', 1),
(33, 60, 'Beans', 99, 1, '2019-03-15', 'ckumar', 3),
(34, 59, 'tomato', 60, 1, '2019-03-15', 'ckumar', 2),
(35, 61, 'Carrot', 80, 1, '2019-03-15', 'ckumar', 1),
(36, 62, 'Cabbage', 65, 1, '2019-03-15', 'ckumar', 2),
(37, 72, 'Raddish', 45, 6, '2019-03-15', 'ckumar', 2),
(38, 78, 'Drum stick', 75, 7, '2019-03-15', 'ckumar', 2),
(39, 78, 'Drum stick', 75, 1, '2019-03-15', 'ckumar', 2),
(40, 73, 'Ladies Finger', 35, 1, '2019-03-15', 'ckumar', 2),
(41, 77, 'Bottle gourd', 200, 2, '2019-03-16', 'ckumar', 2),
(42, 70, 'Garlic', 20, 1, '2019-03-16', 'ckumar', 2),
(43, 60, 'Beans', 99, 2, '2019-03-16', 'ckumar', 3),
(44, 70, 'Garlic', 20, 1, '2019-03-16', 'ckumar', 2),
(45, 60, 'Beans', 99, 2, '2019-03-16', 'ckumar', 3),
(46, 70, 'Garlic', 20, 1, '2019-03-16', 'ckumar', 2),
(47, 60, 'Beans', 99, 2, '2019-03-16', 'ckumar', 3),
(48, 60, 'Beans', 99, 4, '2019-03-25', 'ckumar', 3),
(49, 62, 'Cabbage', 65, 6, '2019-03-25', 'ckumar', 2),
(50, 70, 'Garlic', 20, 5, '2019-03-25', 'ckumar', 2),
(51, 73, 'Ladies Finger', 35, 3, '2019-03-25', 'ckumar', 2),
(52, 70, 'Garlic', 20, 1, '2019-03-30', 'ckumar', 2),
(53, 60, 'Beans', 99, 5, '2019-03-30', 'ckumar', 3),
(54, 69, 'Coffee powder', 25, 7, '2019-03-30', 'ckumar', 2),
(55, 62, 'Cabbage', 65, 1, '2019-04-01', 'ckumar', 2),
(56, 70, 'Garlic', 20, 4, '2019-04-01', 'ckumar', 2),
(57, 70, 'Garlic', 20, 1, '2019-04-01', 'ckumar', 2),
(58, 60, 'Beans', 99, 1, '2019-04-01', 'ckumar', 3),
(59, 59, 'tomato', 60, 6, '2019-04-02', 'ckumar', 2),
(60, 61, 'Carrot', 80, 1, '2019-04-02', 'ckumar', 1),
(61, 71, 'Cucumber', 40, 3, '2019-04-17', 'ckumar', 2),
(62, 70, 'Garlic', 20, 4, '2019-04-17', 'ckumar', 2),
(63, 72, 'Raddish', 45, 2, '2019-04-17', 'ckumar', 2),
(64, 71, 'Cucumber', 40, 3, '2019-04-17', 'ckumar', 2),
(65, 70, 'Garlic', 20, 4, '2019-04-17', 'ckumar', 2),
(66, 72, 'Raddish', 45, 2, '2019-04-17', 'ckumar', 2),
(67, 60, 'Beans', 99, 1, '2019-04-18', 'ckumar', 3),
(68, 71, 'Cucumber', 40, 1, '2019-04-18', 'ckumar', 2);

-- --------------------------------------------------------

--
-- Table structure for table `farms`
--

CREATE TABLE `farms` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `farms`
--

INSERT INTO `farms` (`F_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(1, 'veerappas Farm', 'veerappas@farms.com', '7998562145', 'Karnataka', 'rama068'),
(2, 'Maregowdas Farm', 'maregowda@farms.com', '9887546821', 'Bihar', 'krishna073'),
(3, 'sonnappas Farm', 'sonnappa@farms.com', '7778564231', 'Goa', 'dileep'),
(4, 'Veggy Exploria', 'vegexp006@gmail.com', '09487810674', 'C:\xampp\\htdocs\\FoodExploria-master\\images/coffee.', 'mancha'),
(6, 'Farm Culture', 'farmculturebang234@gmail.com', '9443369040', 'Pondicherry,rock beach Near,Le cafe', 'kempa07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `vegetables`
--
ALTER TABLE `vegetables`
  ADD PRIMARY KEY (`V_ID`,`F_ID`),
  ADD KEY `F_ID` (`F_ID`);

--
-- Indexes for table `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `V_ID` (`V_ID`),
  ADD KEY `username` (`username`),
  ADD KEY `F_ID` (`F_ID`);

--
-- Indexes for table `farms`
--
ALTER TABLE `farms`
  ADD PRIMARY KEY (`F_ID`),
  ADD UNIQUE KEY `M_ID_2` (`M_ID`),
  ADD KEY `M_ID` (`M_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vegetables`
--
ALTER TABLE `vegetables`
  MODIFY `V_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `farms`
--
ALTER TABLE `farms`
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `vegetables`
--
ALTER TABLE `vegetables`
  ADD CONSTRAINT `vegetables_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `farms` (`F_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`V_ID`) REFERENCES `vegetables` (`V_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`F_ID`) REFERENCES `farms` (`F_ID`);

--
-- Constraints for table `farms`
--
ALTER TABLE `farms`
  ADD CONSTRAINT `farms_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `farmer` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
