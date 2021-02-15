-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2019 at 11:42 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `court`
--

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `SN` int(111) NOT NULL,
  `case_no` varchar(111) NOT NULL,
  `Offence` varchar(111) NOT NULL,
  `Date_Committed` date NOT NULL,
  `Date_Reported` date NOT NULL,
  `Narration` text NOT NULL,
  `Status` varchar(111) NOT NULL DEFAULT 'New',
  `Judge` varchar(111) NOT NULL DEFAULT 'Unassigned',
  `Charges` varchar(111) NOT NULL DEFAULT 'N/A'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`SN`, `case_no`, `Offence`, `Date_Committed`, `Date_Reported`, `Narration`, `Status`, `Judge`, `Charges`) VALUES
(2, '2018/2311/4231', 'rape', '2019-05-01', '2019-05-09', 'ewrewrewr', 'Done', 'JUDY', '20 YEARS IMPRISONMENT'),
(3, '1/2019', 'Traffick', '2019-05-01', '2019-05-09', 'along nairobi nakuru highway', 'New', 'BRILLIANT', 'N/A'),
(4, '2019/1/2023', 'THEFT', '2019-05-01', '2019-05-11', 'TRETETRRE', 'Done', 'BRILLIANT', '6 MONTHS IMPRISONMENT'),
(5, '12/2019', 'DRUG TRAFFICKING', '2019-05-01', '2019-05-02', 'DSFDF', 'Pending', 'JUDY', 'TO BE HEARD ON JUNE 1ST 2019'),
(6, '22/2019', 'theft', '2019-05-01', '2019-05-11', 'wrwerew', 'New', 'BRILLIANT', 'N/A'),
(7, '23/2019', 'tytytyty', '2019-08-13', '2019-08-13', 'trytry', 'New', 'BRILLIANT', 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `complainants`
--

CREATE TABLE `complainants` (
  `SN` int(111) NOT NULL,
  `National_Id` varchar(111) NOT NULL,
  `Case_No` varchar(111) NOT NULL,
  `FullName` varchar(111) NOT NULL,
  `Age` varchar(111) NOT NULL,
  `Gender` varchar(111) NOT NULL,
  `Address` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complainants`
--

INSERT INTO `complainants` (`SN`, `National_Id`, `Case_No`, `FullName`, `Age`, `Gender`, `Address`) VALUES
(1, '34234234', '2018/2311/4231', 'fdfsdfds', '20', 'Female', 'ewrewrewr'),
(2, '243482', '1/2019', 'CYNTHIA TUWEI', '25', 'Female', 'along nairobi nakuru highway'),
(3, '3423', '2019/1/2023', 'KOROM KOECH', '27', 'Male', 'TRETETRRE'),
(4, '4545335', '12/2019', 'DSFSDF', '34', 'Male', 'DSFDF'),
(5, '53454', '22/2019', 'fgdfgd', '44', 'Female', 'wrwerew'),
(6, '3123433', '23/2019', 'HSFJRFWESD', 'RTERE', 'Male', 'trytry');

-- --------------------------------------------------------

--
-- Table structure for table `respondents`
--

CREATE TABLE `respondents` (
  `SN` int(111) NOT NULL,
  `National_Id` varchar(111) NOT NULL,
  `Case_No` varchar(111) NOT NULL,
  `FullName` varchar(111) NOT NULL,
  `Age` varchar(111) NOT NULL,
  `Gender` varchar(111) NOT NULL,
  `Address` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `respondents`
--

INSERT INTO `respondents` (`SN`, `National_Id`, `Case_No`, `FullName`, `Age`, `Gender`, `Address`) VALUES
(1, '33454', '2018/2311/4231', 'teyeryrt', 'ertreter', 'Male', 'werewrww'),
(2, '343332', '1/2019', 'BRILLIAN TUWEI', '23', 'Female', '33 ELDORET'),
(3, '342442', '2019/1/2023', 'JONTONE KAMAU', '34', 'Male', 'RRWERRE MARURA34'),
(4, '645645', '12/2019', 'DFSGDF', '43', 'Female', 'ERTERTER'),
(5, '43', '22/2019', 'gdgrgr', '34', 'Female', 'dfgdfg'),
(6, '32323', '23/2019', 'WEREWR', '20', 'Female', 'STEWREW');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserName` varchar(111) NOT NULL,
  `Password` varchar(111) NOT NULL,
  `Name` varchar(111) NOT NULL,
  `AccountType` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserName`, `Password`, `Name`, `AccountType`) VALUES
('Admin', 'admin', 'BRILLIANT BRILLIANT', 'Admin'),
('Clerk', '1234', 'Kemboi Kemboi', 'Clerk'),
('Judge', '1234', 'BRILLIANT', 'Judge'),
('User', 'User', 'JUDY', 'Judge');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`SN`),
  ADD UNIQUE KEY `case_no` (`case_no`);

--
-- Indexes for table `complainants`
--
ALTER TABLE `complainants`
  ADD PRIMARY KEY (`SN`);

--
-- Indexes for table `respondents`
--
ALTER TABLE `respondents`
  ADD PRIMARY KEY (`SN`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `SN` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `complainants`
--
ALTER TABLE `complainants`
  MODIFY `SN` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `respondents`
--
ALTER TABLE `respondents`
  MODIFY `SN` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
