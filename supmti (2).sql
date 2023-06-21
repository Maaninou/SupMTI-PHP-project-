-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2023 at 12:11 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supmti`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 5689784592, 'admin@gmail.com', '8037ee47b3b205c194f755d5f3a1fbd8', '2021-07-27 07:25:30');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `ID` int(10) NOT NULL,
  `RoomId` int(5) DEFAULT NULL,
  `BookingNumber` varchar(120) DEFAULT NULL,
  `UserID` int(5) NOT NULL,
  `IDType` varchar(120) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `CheckinDate` varchar(200) DEFAULT NULL,
  `CheckoutDate` varchar(200) DEFAULT NULL,
  `BookingDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(50) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`ID`, `RoomId`, `BookingNumber`, `UserID`, `IDType`, `Gender`, `Address`, `CheckinDate`, `CheckoutDate`, `BookingDate`, `Remark`, `Status`, `UpdationDate`) VALUES
(3, 1, '712817851', 3, 'Passport', 'Female', 'skhirat', '2021-12-13', '2021-12-14', '2021-12-07 10:05:25', 'approuvee', 'Approuvee', '2022-01-03 16:55:49'),
(4, 2, '387659042', 3, 'Passport', 'Femme', 'yes', '2021-12-17', '2021-12-18', '2021-12-08 11:06:17', 'awd', 'Approved', '2022-01-03 17:03:38'),
(5, 1, '113589860', 3, 'Driving Licence Card', 'Femme', 'awdqd', '2021-12-30', '2021-12-31', '2021-12-28 11:20:18', 'wdw', 'Cancelled', '2022-01-03 17:06:04'),
(6, 2, '864460971', 5, 'Driving Licence Card', 'Femme', 'yess', '2021-12-28', '2021-12-30', '2021-12-28 11:22:54', 'wsw', 'Approuvee', '2022-01-03 17:16:26'),
(7, 1, '815678899', 3, 'Passport', 'Femme', 'edwdw', '2022-01-20', '2022-01-21', '2022-01-20 10:36:25', 'sdfs', 'annulee', '2022-01-20 10:36:49'),
(8, 1, '698158049', 3, 'Passport', 'Femme', 'ss', '2022-02-02', '2022-02-04', '2022-02-01 10:17:33', 'sc', 'Approuvee', '2022-02-01 10:18:13'),
(9, 1, '691675670', 3, 'Passport', 'Femme', 'asdas', '2022-02-04', '2022-02-11', '2022-02-01 10:22:38', NULL, NULL, NULL),
(10, 1, '776174738', 4, 'Driving Licence Card', 'Femme', 'SKH', '2022-03-04', '2022-03-05', '2022-03-04 13:48:45', NULL, NULL, NULL),
(11, 1, '264525985', 4, 'Driving Licence Card', 'Femme', 'rabat diour jamaa', '2023-06-22', '2023-06-24', '2023-06-21 21:00:00', NULL, NULL, NULL),
(12, 1, '234605089', 9, 'Driving Licence Card', 'Homme', 'Rabat diour jamaa 11', '2023-06-22', '2023-06-24', '2023-06-21 21:24:26', 'a verifier le ID card par exemple?', 'Approuvee', '2023-06-21 21:26:29');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(10) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `Price` int(5) NOT NULL,
  `Date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `Description`, `Price`, `Date`) VALUES
(1, 'Chambre Simple', 'Pour une personne', 800, '2021-07-28 06:43:55'),
(2, 'Chambre double', 'Pour deux personnes', 1100, '2021-07-28 06:44:55'),
(3, 'Chambre triple', 'Pour 3 personnes', 1200, '2021-07-28 06:45:27');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryDate` timestamp NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `Name`, `MobileNumber`, `Email`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(6, 'kjhsejfh', 9890, 'jho', 'jbo', '2021-11-10 10:00:24', 1),
(7, 'yess', 90909, 'aihs@eh.con', 'thank you hahaa', '2022-01-20 10:09:57', 1),
(8, 'ahmed reda', 659382285, 'hello@hello.com', 'c\'est la derniere requete', '2023-06-21 21:27:26', 1),
(9, 'ahmed reda', 659382285, 'unmessage@unmessage.com', 'un message', '2023-06-21 21:28:54', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblfacility`
--

CREATE TABLE `tblfacility` (
  `ID` int(10) NOT NULL,
  `FacilityTitle` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblfacility`
--

INSERT INTO `tblfacility` (`ID`, `FacilityTitle`, `Description`, `Image`, `CreationDate`) VALUES
(1, 'Service en chambre 24h/24', 'Service en chambre 24h/24 disponible', 'b9fb9d37bdf15a699bc071ce49baea531582890659.jpg', '2021-07-28 11:50:59'),
(2, 'Wifi gratuit', 'Wifi haut debit gratuit 24/7', '7fdc1a630c238af0815181f9faa190f51582890845.jpg', '2020-02-28 11:54:05'),
(3, 'Service de lavage et de repassage', 'Service de lavage et de repassage pour tous les clients', '3c7baecb174a0cbcc64507e9c3308c4b1582890987.jpg', '2021-07-28 11:56:27'),
(4, 'Visite & excursions', 'les voitures sont disponibles pour les visites et les voyages', '1e6ae4ada992769567b71815f124fac51582891174.jpg', '2021-07-28 11:59:34'),
(5, 'Transferts aéroport', 'Facilite de transfert aéroport disponible sur demande', 'c9e82378a39eec108727a123b09056651582891272.jpg', '2021-07-28 12:01:12'),
(6, 'Garde d enfants sur demande', 'Garde d enfants sur demande pendant les matinees', 'c26be60cfd1ba40772b5ac48b95ab19b1582891331.png', '2021-07-28 12:02:11'),
(7, 'Medecin de garde 24h/7', 'Medecin de garde 24h/7 y compris service urgence', '55ccf27d26d7b23839986b6ae2e447ab1582891425.jpg', '2021-07-28 12:03:45'),
(8, 'Des salles de réunion', 'Des salles de réunion sur demande', 'efc1a80c391be252d7d777a437f868701582891713.jpg', '2021-07-28 12:08:33');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(120) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'A propos', 'Nous avons 72 chambres confortablement équipées qui ne manqueront pas d impressionner les clients les plus exigeants. Nous proposons 7 salles, où nous préparons des réunions de famille et d affaires depuis déjà 15 ans.', NULL, NULL, NULL),
(2, 'contactus', 'contactez nous', '12030 Rabat centre ville', 'ahmedredamaaninou@gmail.com', 659382285, '2021-11-10 10:32:16');

-- --------------------------------------------------------

--
-- Table structure for table `tblroom`
--

CREATE TABLE `tblroom` (
  `ID` int(10) NOT NULL,
  `RoomType` int(10) DEFAULT NULL,
  `RoomName` varchar(200) DEFAULT NULL,
  `MaxAdult` int(5) DEFAULT NULL,
  `MaxChild` int(5) DEFAULT NULL,
  `RoomDesc` mediumtext DEFAULT NULL,
  `NoofBed` int(5) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `RoomFacility` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblroom`
--

INSERT INTO `tblroom` (`ID`, `RoomType`, `RoomName`, `MaxAdult`, `MaxChild`, `RoomDesc`, `NoofBed`, `Image`, `RoomFacility`, `CreationDate`) VALUES
(1, 1, 'Chambre simple', 1, 2, 'Chambre simple pour une seule personne adulte et deux enfants', 1, '2870b3543f2550c16a4551f03a0b84ac1582975994.jpg', 'Service en chambre 24h/24', '2021-07-29 11:33:14'),
(2, 2, 'Chambre double', 2, 2, 'Chambre double pour 2 personnes adultes et deux enfants', 2, '74375080377499ab76dad37484ee7f151582982180.jpg', 'Service en chambre 24h/24', '2021-07-29 11:35:47'),
(3, 3, 'Chambre triple', 3, 2, 'Chambre triple pour 3 personnes adultes et deux enfants', 4, '0cdcf50ea65522a6e15d4e0ac383a30e1582976749.jpg', 'Service en chambre 24h/24', '2021-07-29 11:45:49'),
(6, 1, 'Chambre simple avec balcon', 1, 2, 'Chambre simple pour une seule personne adulte et deux enfants avec balcon, TV et climatiseur', 1, 'ca3de1cf40a0af9351083d4b0e95736c1583047692.jpg', 'Service en chambre 24h/24', '2021-07-01 07:28:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(1, 'Test', 7897897899, 'test@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-03-01 17:07:28'),
(2, 'Sample', 4644654646, 'sample@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-04-06 12:51:42'),
(3, 'Ahmed Reda', 1234569871, 'Test@test.com', 'f925916e2754e5e03f75dd58a5733251', '2020-04-27 14:53:36'),
(4, 'ahmed reda', 659382285, 'ahmedredamaaninou@gmail.com', '7e23db97b57bbde6eafc18869c30cc0e', '2021-08-27 23:54:07'),
(5, 'ahmed', 87097808, 'ahmedreda@gmail.com', '7e23db97b57bbde6eafc18869c30cc0e', '2021-12-28 11:22:23'),
(6, 'ahmed', 9098908, 'yes@yes.com', '7e23db97b57bbde6eafc18869c30cc0e', '2021-12-28 11:30:32'),
(7, 'jamal', 7890, 'jamal@jamal.com', '7e23db97b57bbde6eafc18869c30cc0e', '2022-01-03 16:48:57'),
(8, 'ahmed reda', 659382285, 'test5@test.com', '396191826eb71f80c2c68eb2cb6e96e0', '2023-06-21 20:59:15'),
(9, 'ahmed reda', 659382285, 'supmti@supmti.com', '6fb14704b0ed5de608043bf302f2e9f5', '2023-06-21 21:23:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfacility`
--
ALTER TABLE `tblfacility`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblroom`
--
ALTER TABLE `tblroom`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RoomType` (`RoomType`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblfacility`
--
ALTER TABLE `tblfacility`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblroom`
--
ALTER TABLE `tblroom`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
