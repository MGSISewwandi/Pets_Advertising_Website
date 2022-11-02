-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2022 at 03:01 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `ProfilePicture` varchar(255) NOT NULL,
  `LastLogIn` datetime NOT NULL,
  `UserRole` varchar(10) NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `FirstName`, `LastName`, `Email`, `Password`, `ProfilePicture`, `LastLogIn`, `UserRole`, `IsDeleted`) VALUES
(1, 'Yuresh', 'Tharushika', 'yuresht@gmail.com', '1444852df254dd74c4292bf5fddbf2f62dcb86e7', 'adminpropic1.jpg', '2021-08-25 23:44:05', 'Admin', 0),
(2, 'Sachini', 'Imasha', 'sachinii@gmail.com', '9d4e1e23bd5b727046a9e3b4b7db57bd8d6ee684', '', '2021-08-14 20:15:51', 'Admin', 0),
(3, 'Rajitha', 'Sandeera', 'rajithas@gmail.com', '9d4e1e23bd5b727046a9e3b4b7db57bd8d6ee684', '', '2021-08-14 20:16:19', 'Admin', 0),
(4, 'Chathura', 'Jeewantha', 'chathuraj@gmail.com', 'd884db4b95685259b3ad5d7e9c4e9c93f28807e2', 'index1.jpg', '2022-10-13 15:26:57', 'Admin', 0),
(5, 'Admin', 'Panel', 'admin@gmail.com', '7af2d10b73ab7cd8f603937f7697cb5fe432c7ff', '', '0000-00-00 00:00:00', 'Admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `AddId` int(11) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Details` varchar(10000) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `Price` int(50) NOT NULL,
  `Contact` varchar(40) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `PostedAt` datetime NOT NULL,
  `PublishedAt` datetime NOT NULL,
  `SellerId` varchar(100) NOT NULL,
  `IsApproved` varchar(50) NOT NULL,
  `IsDeleted` varchar(11) NOT NULL,
  `Payment` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`AddId`, `Category`, `Title`, `Details`, `Location`, `Price`, `Contact`, `Image`, `PostedAt`, `PublishedAt`, `SellerId`, `IsApproved`, `IsDeleted`, `Payment`) VALUES
(1, 'food items', 'Pedigree Dog Food', 'Pedigree high quality dog food.now you can choose from 4 different flavours and 5 different amounts including 250g, 500g, 900g ,2kg and 5kg.\r\nBoth wet and dry food types are available.', 'Badulla', 1200, '0771234567', '0e8c4299-e2d2-39c0-bc54-158730339f85.png', '2021-08-25 19:38:35', '2021-08-25 20:36:00', '1', 'true', '0', 800),
(2, 'pets', 'Labrador Retriever Puppies', 'Labrador retriever puppies for sale. Imported parents.3 months old and trained for solid food.', 'Badulla', 25000, '0771234567', 'AdobeStock_213598662-678x381.png', '2021-08-25 19:43:14', '2021-08-25 20:35:56', '2', 'true', '0', 1000),
(3, 'pets', 'Beagle Puppies', 'Beagle puppies for sale. 2 months old. parvo vaccinated.parents can be seen.prices are negotiable ', 'Matara', 30000, '0771234567', 'beagle-price-range-6.png', '2021-08-25 20:22:22', '2021-08-25 20:35:52', '2', 'true', '0', 1000),
(4, 'pets', 'Rottweiler Dog', 'Rottweiler adult dog for sale. 2 years old. vaccination complete imported parents.(owners are leaving the country).', 'Matara', 70000, '0771234567', 'download (1).png', '2021-08-25 20:26:43', '2021-08-25 20:35:29', '3', 'true', '0', 1000),
(5, 'pets', 'Labrador Retriever Puppy', 'Labrador Retriever Puppy for sale.4 months old. vaccination almost complete. trained for basic commands.', 'Kandy', 28000, '0771234567', 'How_Much_To_Feed_A_Lab_Puppy.png', '2021-08-25 20:29:34', '2021-08-25 20:35:23', '1', 'true', '0', 1000),
(6, 'accessories', 'Dog Toys', 'All kinds of toys for your pet dogs. Balls, chew toys, edible toy bones and etc. affordable prices hurry up stocks are limited.', 'Colombo', 1000, '0112577698', 'image.png', '2021-08-25 20:33:03', '2021-08-25 20:35:11', '3', 'true', '0', 600),
(7, 'pets', 'Rottweiler puppy', 'Rottweiler puppy for sale. 2 months old and vaccinated. trained for solid food. ckc registered.', 'Hambanthota', 34000, '0719876543', 'download.png', '2021-08-25 20:40:49', '2021-08-25 20:50:28', '3', 'true', '0', 1000),
(8, 'pets', 'German shepherd puppy', 'German shepherd puppy.3 months old. imported parents. very healthy and playful. parvo vaccinated.prices are negotiable', 'Kalutara', 30000, '0719876543', 'main-qimg-a20e8803c235fcbbacc35ad668d13bff.png', '2021-08-25 20:44:01', '2021-08-25 20:50:32', '2', 'true', '0', 1000),
(9, 'accessories', 'Dog leash', 'High quality dog leashes and other pet accessories. adjustable leash length.6 diffrent colors. strong and durable.', 'Monaragala', 1500, '0719876543', 'Web-40354-Roamer-Leash-Granite-Gray_1024x1024_596de5bd-3d01-490e-b3cc-21cfbcf3c88c_1024x683.png', '2021-08-25 20:47:10', '2021-08-25 20:50:36', '1', 'true', '0', 600),
(10, 'food items', 'Whiskas cat food', 'Whiskas cat food. high quality cat food. both wet and dry food types are available. now you can choose from 4 different flavours and colors.', 'Galle', 3000, '0719876543', 'whiskas-cat-food-product.png', '2021-08-25 20:49:54', '2021-08-25 20:51:03', '1', 'true', '0', 800),
(11, 'pets', 'Labrador Retriever puppy', 'Labrador Retriever puppy for sale', 'Matara', 20000, '0771234567', 'yellow-labrador-puppy-garden.png', '2021-08-25 20:52:41', '0000-00-00 00:00:00', '2', 'false', '0', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `Id` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Rate` int(50) NOT NULL,
  `SellerId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`Id`, `Email`, `Rate`, `SellerId`) VALUES
(1, 'captainyuresh@gmail.com', 5, 2),
(2, 'captainyuresh@gmail.com', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `ID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Password` varchar(225) NOT NULL,
  `ProfilePicture` varchar(255) NOT NULL,
  `LastLogIn` datetime NOT NULL,
  `UserRole` varchar(11) NOT NULL,
  `IsActive` int(5) NOT NULL,
  `IsDeleted` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`ID`, `FirstName`, `LastName`, `Email`, `Location`, `Password`, `ProfilePicture`, `LastLogIn`, `UserRole`, `IsActive`, `IsDeleted`) VALUES
(1, 'Emma', 'Sophia', 'emma@gmail.com', 'Kandy', 'b44dda1dadd351948fcace1856ed97366e679239', 'sellerporpic1.jpg', '2022-10-13 11:30:57', 'user', 1, 0),
(2, 'Amelia', 'Dawson', 'amelia@gmail.com', 'Colombo', 'b44dda1dadd351948fcace1856ed97366e679239', 'Logo.png', '2022-10-13 11:28:26', 'user', 1, 0),
(3, 'Hannah', 'Hazal', 'hannah@gmail.com', 'Galle', 'b44dda1dadd351948fcace1856ed97366e679239', '', '2022-10-13 11:30:43', 'user', 1, 0),
(4, 'Kayla', 'Smith', 'kayla@gmail.com', 'Matale', 'b44dda1dadd351948fcace1856ed97366e679239', '', '2022-10-13 15:23:57', 'user', 1, 0),
(5, 'Seller', 'Seller', 'seller@gmail.com', 'AnyWhere', '6ae15b3eb0e643ddeb6320f8adbf0c9390826af1', '', '2022-10-13 18:30:00', 'user', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`AddId`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `AddId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
