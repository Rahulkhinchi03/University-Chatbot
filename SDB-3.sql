-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 08, 2022 at 08:41 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `fees_details`
--

CREATE TABLE `fees_details` (
  `Enrolment No.` bigint(11) NOT NULL,
  `First_Installment` int(5) DEFAULT NULL,
  `2nd Installment` int(5) DEFAULT NULL,
  `ModeOfPayment` varchar(7) DEFAULT NULL,
  `Pending` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fees_details`
--

INSERT INTO `fees_details` (`Enrolment No.`, `First_Installment`, `2nd Installment`, `ModeOfPayment`, `Pending`) VALUES
(92000103001, 44500, 44500, 'Online', 'No'),
(92000103002, 48000, 48000, 'Cheque', 'Yes'),
(92000103003, 44500, 44500, 'Online', 'No'),
(92000103004, 42000, 42000, 'Cheque', 'Yes'),
(92000103005, 49500, 49500, 'Online ', 'No'),
(92000103006, 48000, 48000, 'Online ', 'No'),
(92000103007, 44500, 44500, 'Online', 'No'),
(92000103008, 49500, 49500, 'Online ', 'Yes'),
(92000103009, 42000, 42000, 'Cheque', 'Yes'),
(92000103010, 49500, 49500, 'Cheque', 'No'),
(92000103011, 44500, 44500, 'Online', 'No'),
(92000103012, 42000, 42000, 'Online', 'No'),
(92000103013, 42000, 42000, 'Cheque', 'Yes'),
(92000103014, 49500, 49500, 'Online ', 'No'),
(92000103015, 49500, 49500, 'Online ', 'Yes'),
(92000103016, 49500, 49500, 'Online ', 'Yes'),
(92000103017, 44500, 44500, 'Online', 'Yes'),
(92000103018, 44500, 44500, 'Online', 'No'),
(92000103019, 44500, 44500, 'Online', 'Yes'),
(92000103020, 44500, 44500, 'Online', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `placement`
--

CREATE TABLE `placement` (
  `CGPA` varchar(4) DEFAULT NULL,
  `Branch` varchar(10) DEFAULT NULL,
  `Companies` varchar(56) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `placement`
--

INSERT INTO `placement` (`CGPA`, `Branch`, `Companies`) VALUES
('1', 'Technology', 'WebCodeGeneie, Silent Infotech, Valens DataLabs Pvt Ltd.'),
('1', 'Finance', 'PNB Bank, Yes Bank'),
('1', 'Law', 'Junior Associates at district court, Assistant Lawyer'),
('1', 'Business', 'HR Manager for JSW, Asian Paints'),
('5', 'Technology', 'Creole Solutions, Cosys Infotech LLP'),
('5', 'Finance', 'Relationship Manager at LIC, AXIS Bank'),
('5', 'Law', 'Tax Consultant, Legal researcher at Legal Head.'),
('5', 'Business', 'Product and Sales Manager at Snapdeal, AJIO, Myntra.'),
('7', 'Technology', 'TCS, Accenture, Northern Trust, ATOS, '),
('7', 'Finance', 'Marketing Executives for BSE, NSE.'),
('7', 'Law', 'District Lawyer, Law Consultant at Royco Associates.'),
('7', 'Business', 'Operations Analyst at L&T, MindTree.'),
('8', 'Technology', 'Amazon, Flipkart, Google, Facebook'),
('8', 'Finance', 'HDFC Bank, Kotak Bank'),
('8', 'Law', 'High Court Assistant Lawyer '),
('8', 'Business', 'HR Manager at VI, Jio, Reliance Infotech '),
('9', 'Technology', 'Apple, Alphabet, Microsoft'),
('9', 'Finance', 'ICICI Bank, Goldman Sacks, JP Morgan'),
('9', 'Law', 'District Attorney General, High Court Assistant Judge'),
('9', 'Business', 'HR Manager for Adani Power, Airtel');

-- --------------------------------------------------------

--
-- Table structure for table `semesterwise_marks`
--

CREATE TABLE `semesterwise_marks` (
  `Enrolment No.` bigint(10) NOT NULL,
  `1` decimal(3,1) DEFAULT NULL,
  `2` decimal(3,1) DEFAULT NULL,
  `3` decimal(3,1) DEFAULT NULL,
  `4` decimal(3,1) DEFAULT NULL,
  `5` decimal(3,1) DEFAULT NULL,
  `6` decimal(3,1) DEFAULT NULL,
  `7` decimal(3,1) DEFAULT NULL,
  `8` decimal(3,1) DEFAULT NULL,
  `CGPA` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `semesterwise_marks`
--

INSERT INTO `semesterwise_marks` (`Enrolment No.`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `CGPA`) VALUES
(92000103001, '7.2', '8.0', '7.4', '7.8', '8.8', '9.0', NULL, NULL, '8.03'),
(92000103002, '5.6', '7.0', '4.8', '5.0', NULL, NULL, NULL, NULL, '5.60'),
(92000103003, '6.8', '7.0', '7.4', NULL, NULL, NULL, NULL, NULL, '7.07'),
(92000103004, '5.8', '7.0', '7.4', '8.0', '8.2', NULL, NULL, NULL, '7.28'),
(92000103005, '9.0', '8.8', '8.6', '9.0', '9.2', '9.4', '9.0', NULL, '9.00'),
(92000103006, '8.0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8.00'),
(92000103007, '6.0', '7.6', NULL, NULL, NULL, NULL, NULL, NULL, '6.80'),
(92000103008, '10.0', '9.8', '8.8', '9.4', '9.6', '9.4', NULL, NULL, '9.50'),
(92000103009, '8.6', '8.0', '7.8', '8.0', NULL, NULL, NULL, NULL, '8.10'),
(92000103010, '6.8', '7.4', '8.0', NULL, NULL, NULL, NULL, NULL, '7.40'),
(92000103011, '9.2', '9.2', '9.6', '9.0', '9.6', NULL, NULL, NULL, '9.32'),
(92000103012, '8.4', '8.0', '9.2', '8.8', '9.4', '9.0', '8.6', NULL, '8.80'),
(92000103013, '6.0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6.00'),
(92000103014, '7.0', '6.0', NULL, NULL, NULL, NULL, NULL, NULL, '6.50'),
(92000103015, '5.0', '8.0', '8.4', '8.6', '7.0', '7.4', NULL, NULL, '7.40'),
(92000103016, '7.8', '8.2', '8.0', '8.4', NULL, NULL, NULL, NULL, '8.10'),
(92000103017, '8.2', '9.0', '8.6', NULL, NULL, NULL, NULL, NULL, '8.60'),
(92000103018, '9.8', '9.6', '9.4', '9.0', '9.4', NULL, NULL, NULL, '9.44'),
(92000103019, '6.4', '7.8', '8.0', '8.8', '9.0', '8.6', '8.8', NULL, '8.10'),
(92000103020, '6.0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6.00');

-- --------------------------------------------------------

--
-- Table structure for table `studentdb`
--

CREATE TABLE `studentdb` (
  `Enrolment_No` varchar(13) DEFAULT NULL,
  `First_Name` varchar(11) DEFAULT NULL,
  `Middle_Name` varchar(11) DEFAULT NULL,
  `Last_Name` varchar(10) DEFAULT NULL,
  `Branch` varchar(10) DEFAULT NULL,
  `Phone_number` varchar(13) DEFAULT NULL,
  `Father_s_number` varchar(15) DEFAULT NULL,
  `class` varchar(6) DEFAULT NULL,
  `Auth` varchar(4) DEFAULT NULL,
  `Fees` varchar(8) DEFAULT NULL,
  `Attendance` varchar(10) DEFAULT NULL,
  `Current_Semester` varchar(16) DEFAULT NULL,
  `Year` varchar(4) DEFAULT NULL,
  `CGPA` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `studentdb`
--

INSERT INTO `studentdb` (`Enrolment_No`, `First_Name`, `Middle_Name`, `Last_Name`, `Branch`, `Phone_number`, `Father_s_number`, `class`, `Auth`, `Fees`, `Attendance`, `Current_Semester`, `Year`, `CGPA`) VALUES
('', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('92000103001', 'John', 'Harry', 'Kennedy', 'Technology', '+435 75834931', '+435 56473831', 'TC1', '2132', 'Paid ', '67', '7', '4', '8.03'),
('92000103002', 'Harry', 'David ', 'Wayn', 'Finance', '+435 67454542', '+435 56789022', 'FN1', '2135', 'Pending ', '76', '5', '3', '5.60'),
('92000103003', 'Micheal', 'Sekh', 'Jackson', 'Technology', '+435 12345663', '+435 34567893', 'TC1', '2343', 'Pending ', '57', '4', '2', '7.07'),
('92000103004', 'Jayce', 'Arthur', 'Newton', 'Business ', '+435 98765884', '+435 87656774', 'BS3', '4545', 'Pending ', '79', '6', '3', '7.28'),
('92000103005', 'Jabari', 'Gretchen', 'Beltran', 'Law', '+435 65467895', '+435 87654345', 'LB1', '5676', 'Paid', '54', '8', '4', '9.00'),
('92000103006', 'Appril', 'Tess', 'Conway', 'Finance', '+435 75834936', '+435 56473836', 'FN1', '6798', 'Paid', '87', '2', '1', '8.00'),
('92000103007', 'Logan', 'RIchard', 'Roy', 'Technology', '+435 67454547', '+435 56789027', 'TC1', '8765', 'Paid', '65', '3', '2', '6.80'),
('92000103008', 'Johnny', 'Phoenix', 'Conley', 'Technology', '+435 65467898', '+435 34567898', 'TC1', '6783', 'Paid', '78', '7', '4', '9.50'),
('92000103009', 'Yuliana', 'Samson', 'Dyer', 'Business ', '+435 75834939', '+435 87656779', 'BS3', '2345', 'Paid', '90', '5', '3', '8.10'),
('92000103010', 'Jasmine', 'Kole', 'Gibson', 'Law', '+435 12345669', '+435 87654340', 'LB1', '1235', 'Paid', '30', '4', '2', '7.40'),
('92000103011', 'Felipe', 'Keyon', 'Haney', 'Technology', '+435 75834938', '+435 56473830', 'TC1', '3567', 'Paid', '88', '6', '3', '9.32'),
('92000103012', 'Roselyn', 'Mattie', 'Rosario', 'Business ', '+435 65467897', '+435 56789029', 'BS3', '6786', 'Paid', '76', '8', '4', '8.80'),
('92000103013', 'Maeve', 'Myla', 'Harding', 'Business ', '+435 67454546', '+435 34567898', 'BS3', '6654', 'Paid', '49', '2', '1', '6.00'),
('92000103014', 'Clay', 'Taylor', 'Frost', 'Law', '+435 12345665', '+435 87656777', 'LB1', '6785', 'Pending ', '68', '3', '2', '6.50'),
('92000103015', 'Jordin', 'Marco', 'Roberts', 'Law', '+435 75834934', '+435 87654346', 'LB1', '4567', 'Pending ', '73', '7', '4', '7.40'),
('92000103016', 'Demarcus ', 'Abril', 'Oliver', 'Law', '+435 12345663', '+435 56473835', 'LB1', '3456', 'Pending ', '77', '5', '3', '8.10'),
('92000103017', 'Edith', 'Louis', 'Frost', 'Technology', '+435 67454542', '+435 56789024', 'TC1', '6783', 'Pending ', '55', '4', '2', '8.60'),
('92000103018', 'Shamar', 'Harvey', 'Dorsey', 'Technology', '+435 65467891', '+435 34567893', 'TC1', '9807', 'Paid', '95', '6', '3', '9.44'),
('92000103019', 'Ricardo', 'Kaylin', 'Mcgee', 'Technology', '+435 98765880', '+435 87656772', 'TC1', '5678', 'Paid', '80', '8', '4', '8.10'),
('92000103020', 'Erica', 'Jason', 'Wilson', 'Technology', '+435 12345663', '+435 87654341', 'TC1', '1256', 'Paid', '56', '2', '1', '6.00');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_s_info`
--

CREATE TABLE `teacher_s_info` (
  `Cabin No.` varchar(9) DEFAULT NULL,
  `Name` varchar(21) DEFAULT NULL,
  `Subject` varchar(18) DEFAULT NULL,
  `Branch` varchar(10) DEFAULT NULL,
  `Time Allocated For Students` varchar(28) DEFAULT NULL,
  `Days` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teacher_s_info`
--

INSERT INTO `teacher_s_info` (`Cabin No.`, `Name`, `Subject`, `Branch`, `Time Allocated For Students`, `Days`) VALUES
('MA102', 'Prof. Ramesh Chauhan', 'Physics', 'Technology', '3:30 pm to 5:00 pm', 'M,T,W,Th,F'),
('MB202', 'Dr. Kumar', 'Chemistry', 'Technology', '5:00 pm to 6:00 pm', 'M,T'),
('MC302', 'Prof. Rahul Gadkari', 'Python', 'Technology', '2:30 pm to 4:00 pm', 'W,F'),
('MA201', 'Prof. Nita Amba', 'Business Economics', 'Business', '9:00 am to 10:30 am', 'M,T,W,Th,F'),
('MA222', 'Prof. Poonam Pandey', 'Java', 'Technology', '12:00 pm to 3:00 pm', 'M,T,W'),
('MB302', 'Dr. Lata Mukerjee', 'C/C++', 'Technology', '2:00 pm to 3:30 pm', 'Th,F'),
('MC501', 'Prof. Ranjan Rathod', 'HR Management', 'Finance', '10:00 am to 11:00 am', 'M,Th'),
('MC510', 'Dr. R.D Shrama', 'Marketing ', 'Business', '7:00 am to 9:00 am', 'M,F'),
('MB402', 'Prof. Nikunj Mehta', 'MicroEconomics ', 'Finance', '10:00 am to 12:00 pm', 'W,Th'),
('MB301', 'Prof. Tarak Saxena', 'Sociology', 'Finance', '8:00 am to 10:00 am', 'M,T,W,Th,F'),
('MA234', 'Dr. Randhawa', 'Statstics', 'Finance', '9:30 am to 11:30 am', 'M,T'),
('MA226', 'Prof. Mulchandani', 'Global Marketing', 'Business', '1:00 pm to 3:00 pm', 'W,F'),
('MB444', 'Prof. Chandarna', 'Law', 'Law', '3:30 pm to 4:30 pm', 'M,T,W,Th,F'),
('MC333', 'Prof. Nalay Pandey', 'Strategy', 'Law', '7:30 am to 10:30 am', 'M,T,W'),
('MA406', 'Prof. Nutan Shekhavat', 'Property Law', 'Law', '12:00 pm to 4:00 pm', 'Th,F'),
('MB108', 'Prof. Tanuja Mishra', 'Constitutional Law', 'Law', '4:00 pm to 5:30 pm', 'M,Th'),
('MA208', 'Prof. Madhvi Iyer', 'Administrative Law', 'Law', '8:30 am to 10:00 am', 'M,F'),
('MC223', 'Dr. Rakesh Rastogi', 'Labour Law', 'Law', '9:00 am to 10:30 am', 'W,Th'),
('MB209', 'Dr. Phunsukh Vangadu', 'Criminal Procedure', 'Law', '8:30 am to 10:00 am', 'M,Th,F');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fees_details`
--
ALTER TABLE `fees_details`
  ADD PRIMARY KEY (`Enrolment No.`);

--
-- Indexes for table `semesterwise_marks`
--
ALTER TABLE `semesterwise_marks`
  ADD PRIMARY KEY (`Enrolment No.`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
