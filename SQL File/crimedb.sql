-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2020 at 04:52 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crimedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(200) DEFAULT NULL,
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
(1, 'admin', 'admin', 8745498447, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2020-03-24 12:54:44');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(10) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `CatDes` mediumtext DEFAULT NULL,
  `AddDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `CatDes`, `AddDate`) VALUES
(1, 'Personal Crimes', 'Personal Crimes – “Offenses against the Person”: These are crimes that result in physical or mental harm to another person. Personal crimes include:\r\nAssault \r\nBattery\r\nFalse Imprisonment\r\nKidnapping\r\nHomicide – crimes such as first and second degree murder, involuntary manslaughter, and vehicular homicide\r\nRape, statutory rape, sexual assault, and other offenses of a sexual nature', '2020-03-26 06:34:00'),
(2, 'Property Crimes', 'Property Crimes – “Offenses against Property”: These are crimes that do not necessarily involve harm to another person. Instead, they involve an interference with another person’s right to use or enjoy their property. Property crimes include:\r\nLarceny (theft)\r\nRobbery (theft by force) – Note: this is also considered a personal crime since it results in physical and mental harm.\r\nBurglary (penalties for burglary)\r\nArson\r\nEmbezzlement\r\nForgery\r\nFalse pretenses\r\nReceipt of stolen goods.', '2020-03-26 06:34:40'),
(3, 'Inchoate Crimes ', 'Inchoate Crimes – “Inchoate” translates into “incomplete”, meaning crimes that were begun, but not completed. This requires that a person take a substantial step to complete a crime, as opposed to just “intend” to commit a crime. Inchoate crimes include:\r\nAttempt – any crime that is attempted like “attempted robbery”\r\nSolicitation\r\nConspiracy', '2020-03-26 06:35:08'),
(4, 'Statutory Crimes ', 'Statutory Crimes – A violation of a specific state or federal statute and can involve either property offenses or personal offense. Statutory crimes include:\r\nAlcohol-related crimes such as drunk driving (DUI)\r\nSelling alcohol to a minor.', '2020-03-26 06:35:39'),
(5, 'Sexasual Asselt', 'jhgjhgbc zncbvejsgrtuysjgcnsvbdcnsdvfh', '2020-03-26 06:47:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblcriminal`
--

CREATE TABLE `tblcriminal` (
  `ID` int(10) NOT NULL,
  `CriminalID` varchar(50) DEFAULT NULL,
  `PoliceID` int(10) DEFAULT NULL,
  `PoliceStationId` int(11) DEFAULT NULL,
  `PoliceStation` varchar(200) DEFAULT NULL,
  `CatName` varchar(100) DEFAULT NULL,
  `CrimeDate` varchar(200) DEFAULT NULL,
  `CrimeTime` varchar(200) DEFAULT NULL,
  `Prison` varchar(200) DEFAULT NULL,
  `Court` varchar(200) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `Height` varchar(50) DEFAULT NULL,
  `Weight` varchar(50) DEFAULT NULL,
  `DateofBirth` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `State` varchar(200) DEFAULT NULL,
  `Country` varchar(200) DEFAULT NULL,
  `Zipcode` int(10) DEFAULT NULL,
  `Photo` varchar(200) DEFAULT NULL,
  `RecordDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcriminal`
--

INSERT INTO `tblcriminal` (`ID`, `CriminalID`, `PoliceID`, `PoliceStationId`, `PoliceStation`, `CatName`, `CrimeDate`, `CrimeTime`, `Prison`, `Court`, `Name`, `ContactNumber`, `Height`, `Weight`, `DateofBirth`, `Email`, `Address`, `City`, `State`, `Country`, `Zipcode`, `Photo`, `RecordDate`) VALUES
(1, '826529227', 2, 1, 'NOIDA Sec 25', 'Statutory Crimes ', '2020-04-03', '03:30', 'Central Jail', 'District Court', 'Raghu Singh', 8774545487, '6 ft', '85 kg', '1975-08-09', 'NA', 'O-987, Kabir Nagar, Near Reliance Fresh', 'Ghazibad', 'UP', 'India', 201017, '7fdc1a630c238af0815181f9faa190f51586433628.jpg', '2020-04-09 12:00:28'),
(2, '756735854', 2, 1, 'NOIDA Sec 25', 'Personal Crimes', '2020-01-04', '22:16', 'Central Jail', 'Supreme Court', 'Jhanvir Singh', 4654787634, '5.3 ft', '75 kg', '1990-06-05', 'jhanvir@gmail.com', 'J-846 J&K block Near Shiv Mandir', 'Ghaziabad', 'UP', 'India', 201017, 'b9fb9d37bdf15a699bc071ce49baea531586435047.jpg', '2020-04-09 12:24:07'),
(4, '823817150', 2, 3, 'Mumbai Juhu', 'Statutory Crimes ', '2020-04-09', '12:56', 'Central Jail', 'District Court', 'Ganesh Chaturvedi', 1789748974, '5.7 ft', '78 kg', '1976-10-09', 'ganu@gmail.com', 'J-901 Krishna Garden, Near Budh Bazar', 'Ghaziabad', 'UP', 'Indiab', 201017, 'e27ab46ee4c0d827e3d5e9c97fdf20f41586500526.jpg', '2020-04-10 06:35:26'),
(5, '361867204', 7, 5, 'Delhi Laxmi Nagar', 'Personal Crimes', '2020-06-03', '22:47', 'District Jail', 'District Court', 'Rahul', 1234567892, '162cm', '50', '1990-01-11', 'abc@gmail.com', 'New delhi', 'Delhi', 'Delhi', 'India', 110002, '9dd96420c8f083fd2c45fe38999ad6c51591712316.png', '2020-06-09 14:18:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblfir`
--

CREATE TABLE `tblfir` (
  `ID` int(10) NOT NULL,
  `FIRNo` varchar(120) DEFAULT NULL,
  `UserID` int(50) DEFAULT NULL,
  `PoliceStationId` int(11) DEFAULT NULL,
  `PoliceStation` varchar(200) DEFAULT NULL,
  `CrimeType` varchar(200) DEFAULT NULL,
  `NameAccused` varchar(200) DEFAULT NULL,
  `NameApplicants` varchar(200) DEFAULT NULL,
  `ParentageApplicant` varchar(200) DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `RelationAccused` varchar(200) DEFAULT NULL,
  `PurposeofFIR` varchar(200) DEFAULT NULL,
  `DateofFIR` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `RemarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `SectionofLaw` varchar(200) NOT NULL,
  `InvestigationOfficer` varchar(200) NOT NULL,
  `InvestigationDetail` mediumtext NOT NULL,
  `ChargesheetDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblfir`
--

INSERT INTO `tblfir` (`ID`, `FIRNo`, `UserID`, `PoliceStationId`, `PoliceStation`, `CrimeType`, `NameAccused`, `NameApplicants`, `ParentageApplicant`, `ContactNumber`, `Address`, `RelationAccused`, `PurposeofFIR`, `DateofFIR`, `Remark`, `Status`, `RemarkDate`, `SectionofLaw`, `InvestigationOfficer`, `InvestigationDetail`, `ChargesheetDate`) VALUES
(1, '195712046', 4, 2, 'New Delhi Railway Station', 'Janki Das', 'Ganesh', 'Ganesh', 'Ghazibad(UP)', 6546798798, 'J-567,Ghandi Nagar Ghaziabad 201017', 'Cousin', 'Showing to Dept', '2020-03-27 12:43:46', 'Charge Sheet is completed', 'Charge Sheet Completed', '2020-06-09 08:11:31', 'Sections 16, 18, 20 UA(P) Act, 1967', 'Mr. Rajeswar Singh', '16.1. The instant case was originally registered as FIR No. 155/2014 at Gossaigaon\r\nPS under Kokrajhar district, Assam against 20/25 Bodo miscreants equipped with\r\nsophisticated arms entered in the houses of XXXXXX and complainant\r\nXXXXXXX and resorted into indiscriminate firing on 01/05/2014. As a result of\r\nindiscriminate firing, seven persons died and two others sustained grievous injuries.\r\n16.2. Subsequently, in compliance of Ministry of Home Affairs, Government of\r\nIndia Order No. F. No. 11011/30/2014-IS.IV, dated 20/05/2014 & UO No.\r\n11011/30/2014-IS.IV, dated 16/07/2014, NIA re-registered a case vide FIR No. RC03/2014/NIA-GUW dated 22/07/2014 under sections 448,457,302, 307, 326, 324,\r\n427, 34 IPC r/w Section 27 Arms Act and Sections 16, 18, 20 UA(P) Act, 1967\r\nagainst the above noted 20/25 Bodo miscreants who entered in the houses of\r\nXXXXXX, XXXXXX and others and resorted into indiscriminate firing on\r\n01/05/2014 at about 11:30 PM. As a result of the indiscriminate firing XXXXX,\r\nXXXXX, XXXXX, XXXXX, XXXXXXX and XXXXXXX died on the spot and\r\nXXXXX, XXXXX and XXXXXX sustained grievous injuries out of which\r\nXXXXX succumbed to injuries on 02/05/2014 at Dhubri Hospital. On the basis of\r\nthe complaint lodged by XXXXXXXXXX and two others the instant case was\r\nregistered at Gossaigaon Police Station, Kokrajhar District (Assam) vide Crime No.\r\n155/14 of Gossaigaon PS.', '2020-06-09 08:11:31'),
(2, '535086431', 4, 3, 'Mumbai Juhu', 'Personal Crimes', 'Pankaj Sinha', 'Mamta', 'Banglore', 7987797979, 'L-123, New Delhi', 'Husband', 'to show in court', '2020-03-28 15:11:20', 'Done', 'Charge Sheet Completed', '2020-06-09 08:12:01', 'Test Sampl', 'Hari', 'fghgfhgjgjhgdjgbascjhsdgjfgwj', '2020-06-09 08:12:01'),
(3, '264133268', 4, 2, 'New Delhi Railway Station', 'Statutory Crimes ', 'Krishna nand', 'Rahul', 'Delhi', 5654646465, 'J-789 Lanka Delhi', 'Neighbor', 'Paper shown court', '2020-05-16 07:46:14', NULL, NULL, '2020-06-09 08:11:38', '', '', '', '2020-06-09 08:11:38'),
(4, '558094306', 4, 3, 'Mumbai Juhu', 'Personal Crimes', 'reaert', 'rewra', 't4t545', 7987987979, 'dwsdew', 'wqeqw', 'weqr', '2020-05-16 07:46:38', 'Data incompleted', 'Cancelled', '2020-06-09 08:11:54', '', '', '', '2020-06-09 08:11:54'),
(5, '871810954', 5, 1, 'NOIDA Sec 25', 'Personal Crimes', 'ANuj', 'XYZ', 'New Delhi', 123456789, 'dskjsakjdk', 'DSLJDL', 'DKSALDKSA', '2020-06-08 17:44:19', 'FIR Approved', 'Approved', '2020-06-09 08:12:12', '', '', '', '2020-06-09 08:12:12'),
(7, '374675369', 5, 1, 'NOIDA Sec 25', 'Personal Crimes', 'ghgfh', 'hgfh', 'ghgfh', 4564565464, 'hgfhfgh', 'gfhgf', 'fghfghfg hgfh hfgh hfg', '2020-06-09 08:08:48', NULL, NULL, NULL, '', '', '', NULL),
(8, '792227312', 6, 5, 'Delhi Laxmi Nagar', 'Property Crimes', 'XYZ', 'ABC', 'New Delhi', 2424234, '656234 BVF New Delhi', 'Brother', 'Test', '2020-06-09 14:20:59', 'This is sample text fro testing.', 'Charge Sheet Completed', '2020-06-09 14:22:16', 'ABC 140', 'Amit', 'This is sample text fro testing. This is sample text fro testing.This is sample text fro testing.This is sample text fro testing.This is sample text fro testing.This is sample text fro testing.', '2020-06-09 14:22:16');

-- --------------------------------------------------------

--
-- Table structure for table `tblpolice`
--

CREATE TABLE `tblpolice` (
  `ID` int(10) NOT NULL,
  `PoliceStationId` int(11) DEFAULT NULL,
  `PoliceStationName` varchar(200) DEFAULT NULL,
  `PID` varchar(20) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `JoiningDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpolice`
--

INSERT INTO `tblpolice` (`ID`, `PoliceStationId`, `PoliceStationName`, `PID`, `Name`, `MobileNumber`, `Email`, `Address`, `Password`, `JoiningDate`) VALUES
(2, 2, 'New Delhi Railway Station', 'Pol124', 'Mr.Kailash Jadav', 8569899798, 'kail@gmail.com', 'J-786 J&K block Laxmi Nagar, New Delhi-110096', '202cb962ac59075b964b07152d234b70', '2020-03-26 05:49:03'),
(3, 3, 'Mumbai Juhu', 'Pol125', 'Ms.Gyatri Sachdeva', 4511465741, 'gyatri@gmail.com', 'P-789 Seventh Floor Gaur City Noida-201017', '202cb962ac59075b964b07152d234b70', '2020-03-26 05:49:03'),
(5, 1, 'NOIDA Sec 25', 'PL7564', 'jhjjkh', 8789754878, 'k@hmil.com', 'hjukhkhk', '202cb962ac59075b964b07152d234b70', '2020-03-26 06:49:38'),
(6, 1, 'NOIDA Sec 25', 'P1000', 'Anuj kumar', 9999213584, 'anujk30@gmail.com', 'New Delhi', 'f925916e2754e5e03f75dd58a5733251', '2020-06-09 07:05:52'),
(7, 5, 'Delhi Laxmi Nagar', 'P1111', 'Amit Kumar', 1234567899, 'amitk30@gmail.com', 'New Delhi', 'f925916e2754e5e03f75dd58a5733251', '2020-06-09 14:02:44');

-- --------------------------------------------------------

--
-- Table structure for table `tblpolicestation`
--

CREATE TABLE `tblpolicestation` (
  `id` int(11) NOT NULL,
  `PoliceStationName` varchar(255) DEFAULT NULL,
  `PoliceStationCode` varchar(200) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpolicestation`
--

INSERT INTO `tblpolicestation` (`id`, `PoliceStationName`, `PoliceStationCode`, `PostingDate`) VALUES
(1, 'NOIDA Sec 25', 'NDASEC25', '2020-06-09 06:31:47'),
(2, 'New Delhi Railway Station', 'NDLSRLY', '2020-06-09 06:32:03'),
(3, 'Mumbai Juhu', 'MBJH', '2020-06-09 06:32:35'),
(5, 'Delhi Laxmi Nagar', 'NDLSLNN', '2020-06-09 14:01:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(1, 'Karan Patel', 7878787878, 'karan@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-03-27 06:09:23'),
(2, 'Suresh Kamal', 6465444464, 'suresh@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-03-27 06:11:12'),
(3, 'Jyoti Kumari', 7797779799, 'jyoty@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-03-27 06:11:39'),
(4, 'Abir Rajvansh', 4565464646, 'abir@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-03-27 06:12:07'),
(5, 'Anuj kumar', 1234567890, 'ak@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2020-06-08 17:42:34'),
(6, 'Test user', 1234567890, 'testuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2020-06-09 14:19:45');

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
-- Indexes for table `tblcriminal`
--
ALTER TABLE `tblcriminal`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfir`
--
ALTER TABLE `tblfir`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpolice`
--
ALTER TABLE `tblpolice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpolicestation`
--
ALTER TABLE `tblpolicestation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

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
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcriminal`
--
ALTER TABLE `tblcriminal`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblfir`
--
ALTER TABLE `tblfir`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblpolice`
--
ALTER TABLE `tblpolice`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblpolicestation`
--
ALTER TABLE `tblpolicestation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
