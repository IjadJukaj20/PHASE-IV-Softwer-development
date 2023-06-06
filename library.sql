-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 07:27 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Epoka', 'admin@gmail.com', 'admin', 'c8837b23ff8aaa8a2dde915473ce0991', '2023-05-22 16:38:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(1, 'asdfasdf', '2023-05-15 06:23:03', '2023-06-06 17:08:43'),
(2, 'asdfasf', '2023-05-15 06:23:03', '2023-06-06 17:08:43'),
(3, 'Sami Frasheri', '2023-05-15 06:23:03', '2023-06-06 17:08:43'),
(4, 'Agim Molla', '2023-05-15 06:23:03', '2023-06-06 17:08:43'),
(5, 'Marlin Barleti', '2023-05-15 06:23:03', '2023-06-06 17:08:43'),
(9, 'Ismail kadare', '2023-05-15 06:23:03', '2023-06-06 17:08:43'),
(10, 'Dr. Andy Williams', '2023-05-15 06:15:32', NULL),
(11, 'Kyle Hill', '2023-05-15 06:16:34', NULL),
(12, 'Robert T. Kiyosak', '2023-05-15 06:18:38', NULL),
(13, 'Kelly Barnhill', '2023-05-15 06:21:54', NULL),
(14, 'Herbert Schildt', '2023-05-15 06:23:03', NULL),
(16, 'Ismail Kadare', '2023-05-15 08:03:36', NULL),
(17, 'Andrew Hunt', '2023-05-15 16:45:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` varchar(25) DEFAULT NULL,
  `BookPrice` decimal(10,2) DEFAULT NULL,
  `bookImage` varchar(250) NOT NULL,
  `isIssued` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `bookImage`, `isIssued`, `RegDate`, `UpdationDate`) VALUES
(1, 'PHP And MySql programming', 5, 1, '222333', '20.00', '1efecc0ca822e40b7b673c0d79ae943f.jpg', 1, '2023-04-12 06:23:03', '2023-04-12 15:24:13'),
(3, 'physics', 6, 4, '1111', '15.00', 'dd8267b57e0e4feee5911cb1e1a03a79.jpg', 0, '2023-04-12 06:23:03', '2023-06-06 17:04:01'),
(5, 'Murach\'s MySQL', 5, 1, '9350237695', '455.00', '5939d64655b4d2ae443830d73abc35b6.jpg', 1, '2023-04-12 15:42:11', '2023-04-12 05:11:03'),
(6, 'WordPress for Beginners 2022: A Visual Step-by-Step Guide to Mastering WordPress', 5, 10, 'B019MO3WCM', '100.00', '144ab706ba1cb9f6c23fd6ae9c0502b3.jpg', NULL, '2023-04-12 06:16:07', '2023-04-12 06:20:49'),
(7, 'WordPress Mastery Guide:', 5, 11, 'B09NKWH7NP', '53.00', '90083a56014186e88ffca10286172e64.jpg', NULL, '2023-04-12 06:18:03', '2023-04-12 06:20:58'),
(8, 'Rich Dad Poor Dad: What the Rich Teach Their Kids About Money That the Poor and Middle Class Do Not', 8, 12, 'B07C7M8SX9', '120.00', '52411b2bd2a6b2e0df3eb10943a5b640.jpg', NULL, '2023-04-12 06:20:39', NULL),
(9, 'The Girl Who Drank the Moon', 8, 13, '1848126476', '200.00', 'f05cd198ac9335245e1fdffa793207a7.jpg', NULL, '2023-04-12 06:22:33', NULL),
(10, 'C++: The Complete Reference, 4th Edition', 5, 14, '007053246X', '142.00', '36af5de9012bf8c804e499dc3c3b33a5.jpg', 0, '2023-04-12 06:23:36', '2023-04-12 07:18:22'),
(11, 'ASP.NET Core 5 for Beginners', 9, 11, 'GBSJ36344563', '422.00', 'b1b6788016bbfab12cfd2722604badc9.jpg', 1, '2023-04-12 07:14:21', '2023-06-06 17:04:01'),
(12, 'The Pragmatic Programmer', 9, 17, '132412341234', '50.00', 'bb2dfdce268a5a76a845e485147363ff.jpg', NULL, '2023-05-15 16:46:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(5, 'Technology', 1, '2023-04-14 06:23:03', '2023-06-06 16:50:53'),
(6, 'Science', 1, '2023-04-13 06:23:03', '2023-04-14 15:24:37'),
(7, 'Management', 1, '2023-04-14 06:23:03', '2023-04-14 15:24:35'),
(8, 'General', 1, '2023-04-14 06:23:03', '2023-04-15 16:36:40'),
(9, 'Programming', 1, '2023-04-14 06:23:03', '2023-06-06 16:50:53');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(7, 5, 'SID011', '2023-04-20 04:45:57', NULL, NULL, NULL),
(8, 1, 'SID002', '2023-04-20 04:59:17', '2023-04-25 05:18:08', 1, 0),
(9, 10, 'SID009', '2023-04-20 06:38:09', '2023-04-25 06:38:54', 1, 0),
(10, 11, 'SID009', '2023-04-20 07:15:02', '2023-04-25 07:15:23', 1, 0),
(11, 1, 'SID012', '2023-04-20 07:17:15', NULL, NULL, NULL),
(12, 10, 'SID012', '2023-04-20 07:18:08', '2023-04-25 07:18:22', 1, 5),
(13, 3, 'SID015', '2023-04-12 08:09:27', '2023-04-12 08:10:32', 1, 5),
(14, 11, 'SID014', '2023-05-20 10:00:57', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(12, 'SID014', 'Ijad Jukaj', 'ijadijukaj123@gmail.com', '0676305041', 'c8837b23ff8aaa8a2dde915473ce0991', 1, '2023-04-10 18:17:59', NULL),
(13, 'SID015', 'Xhoslin Agovi', 'xha20@epoka.edu.al', '1234123452', '3766a2714a0ab924826a6d2d7f9eec6a', 1, '2023-04-12 08:05:43', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
