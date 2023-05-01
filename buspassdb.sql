-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2023 at 05:01 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buspassdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 1234567891, 'adminuser@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-04-14 06:44:27');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(10) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `CreationDate`) VALUES
(8, 'AC Bus', '2021-07-04 14:27:53'),
(9, 'Non AC Bus', '2021-07-04 14:28:32'),
(10, 'Volvo Bus', '2021-07-04 14:28:47'),
(11, 'Delux Bus', '2021-07-04 14:29:01');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `Name`, `Email`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(1, 'Kiran', 'kran@gmail.com', 'cost of volvo place pritampura to dwarka', '2021-07-05 07:26:24', 1),
(2, 'Anuj', 'AKKK@GMAIL.COM', 'This is for testing.', '2021-07-11 08:55:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About us', '<font color=\"#747474\" face=\"Roboto, sans-serif, arial\"><span style=\"font-size: 13px;\"><b>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</b></span></font><br>', NULL, NULL, '2021-07-11 08:54:33'),
(2, 'contactus', 'Contact Us', '                #890 CFG Apartment, Mayur Vihar, Delhi-India.', 'infotest@gmail.com', 4654789799, '2021-07-11 08:54:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblpass`
--

CREATE TABLE `tblpass` (
  `ID` int(10) NOT NULL,
  `PassNumber` varchar(200) DEFAULT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `ProfileImage` varchar(200) DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `IdentityType` varchar(200) DEFAULT NULL,
  `IdentityCardno` varchar(200) DEFAULT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `Source` varchar(200) DEFAULT NULL,
  `Destination` varchar(200) DEFAULT NULL,
  `FromDate` varchar(200) DEFAULT NULL,
  `ToDate` varchar(200) DEFAULT NULL,
  `Cost` decimal(10,0) DEFAULT NULL,
  `PasscreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpass`
--

INSERT INTO `tblpass` (`ID`, `PassNumber`, `FullName`, `ProfileImage`, `ContactNumber`, `Email`, `IdentityType`, `IdentityCardno`, `Category`, `Source`, `Destination`, `FromDate`, `ToDate`, `Cost`, `PasscreationDate`) VALUES
(1, '286529906', 'Yogesh Kumar', '779b7513263ef185b6d094af290ef5401625471444.png', 4654464646, 'yogi@gmail.com', 'Adhar Card', 'AD-122346', 'Delux Bus', 'dfg', 'kgf', '2020-04-14', '2020-05-14', '900', '2020-04-14 11:47:03'),
(2, '915773340', 'Suresh Khanna', '779b7513263ef185b6d094af290ef5401625471444.png', 9879878978, 'suresh@gmail.com', 'Any Other Govt Issued Doc', 'KTI-896567', 'Delux Bus', NULL, NULL, '2020-04-14', '2020-07-31', '900', '2020-04-13 11:50:15'),
(3, '884595667', 'Anuj kumar', '779b7513263ef185b6d094af290ef5401625471444.png', 1234567890, 'phpgurukulofficial@Gmail.com', 'Voter Card', '5235252', 'Delux Bus', 'Pritampura', 'Dwarka', '2020-04-16', '2020-04-19', '600', '2020-04-16 02:38:27'),
(4, '210712236', 'Abir Singh', 'e76de47f621d84adbab3266e3239baee1625460898.png', 4654646546, 'abir@gmail.com', 'Voter Card', '5646465', 'Non AC Bus', 'abc', 'dbc', '2021-07-05', '2021-07-16', '900', '2021-07-04 15:01:38'),
(5, '474965545', 'Augustya', '779b7513263ef185b6d094af290ef5401625471444.png', 6546465464, 'aug@gmail.com', 'Student Card', '789456', 'Delux Bus', 'Delhi', 'Meerut', '2021-07-05', '2021-07-31', '1800', '2021-07-05 07:50:44'),
(6, '681924385', 'Anuj kumar', 'ea3dc39ca0b2f6b5f17abddec1f0e9a41625993624.png', 1234569870, 'ak@test.com', 'Driving License', 'GGGGGGHGH2423423432', 'Delux Bus', 'Laxmi Nagar', 'Central Secretariat', '2021-07-15', '2021-07-30', '500', '2021-07-11 08:53:44'),
(7, '270594935', 'dabhi', '4eef77451d148ba4b9ecf06433ac35c71682860727.png', 123456789, 'kamlesh@gmail.com', 'PAN Card', '12344555', 'Volvo Bus', 'dfdfsf', 'sfddsfsdf', '2023-04-13', '2023-04-30', '234', '2023-04-30 13:18:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblpassreq`
--

CREATE TABLE `tblpassreq` (
  `ID` int(10) NOT NULL,
  `PassNumber` varchar(200) DEFAULT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `ProfileImage` varchar(200) DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `IdentityType` varchar(200) DEFAULT NULL,
  `IdentityCardno` varchar(200) DEFAULT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `Source` varchar(200) DEFAULT NULL,
  `Destination` varchar(200) DEFAULT NULL,
  `FromDate` varchar(200) DEFAULT NULL,
  `ToDate` varchar(200) DEFAULT NULL,
  `Cost` decimal(10,0) DEFAULT NULL,
  `PasscreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpassreq`
--

INSERT INTO `tblpassreq` (`ID`, `PassNumber`, `FullName`, `ProfileImage`, `ContactNumber`, `Email`, `IdentityType`, `IdentityCardno`, `Category`, `Source`, `Destination`, `FromDate`, `ToDate`, `Cost`, `PasscreationDate`) VALUES
(8, '229372388', 'hehe', '4314b868f4659e797dbede8ccadd650c1682861956.png', 1233, 'yogi@gmail.com', 'Adhar Card', '12344555', 'Delux Bus', '2sfdf', 'fdsfdsf', '2023-04-13', '2023-04-07', NULL, '2023-04-30 13:39:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(10) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `phone`, `password`) VALUES
(18, 'yaxraj', 'yaxrajd@gmail.com', NULL, '202cb962ac59075b964b07152d234b70'),
(19, 'meet', 'meet@gmail.com', NULL, '202cb962ac59075b964b07152d234b70'),
(20, 'kamlesh', 'kamlesh@gmail.com', NULL, '202cb962ac59075b964b07152d234b70'),
(21, 'hehe', 'yogi@gmail.com', NULL, '202cb962ac59075b964b07152d234b70'),
(22, 'wow', 'wow@gmail.com', 123456789, '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpass`
--
ALTER TABLE `tblpass`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpassreq`
--
ALTER TABLE `tblpassreq`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpass`
--
ALTER TABLE `tblpass`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpassreq`
--
ALTER TABLE `tblpassreq`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
