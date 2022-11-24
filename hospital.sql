-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2019 at 09:35 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `FullName`, `city`, `username`, `password`, `email`, `address`) VALUES
(1, 'Kenedy Jacob', 'Mumbai', 'candy121', 'candy@123', 'candy@gmail.com', 'Jacob House,Mahim causeway slop,Mahim-16'),
(2, 'Anand Verma', 'Mumbai', 'administration', 'andy@123', 'andy@gmail.com', 'Building C-1, Firojshah Nagar Hill Side, L.B.S. Marg, Godrej Hillside Colony, Vikhroli West, Godrej '),
(3, 'Raj Lohar', 'Mumbai', 'administration', 'raj@123', 'raj@gmail.com', 'mahim ramgard,fisherman colony, mahim-16');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `IdBill` int(11) NOT NULL,
  `MedName` varchar(50) NOT NULL,
  `PatientName` varchar(50) NOT NULL,
  `DelAddress` varchar(100) NOT NULL,
  `Price` varchar(50) NOT NULL,
  `Qnty` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`IdBill`, `MedName`, `PatientName`, `DelAddress`, `Price`, `Qnty`) VALUES
(9, 'Delcon Plus', 'Krunal Pandya', 'Virar', '25', '3'),
(10, 'Kuffgum Syrup', 'Krunal Pandya', 'Virar', '35', '8');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `ID` int(11) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `Phone` decimal(65,0) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Specialize` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`ID`, `FullName`, `Phone`, `username`, `password`, `email`, `Specialize`) VALUES
(1, 'Noor Ahemad Khan', '1234567893', 'noor212', 'noor@123', 'noor@gmail.com', 'Neurologists'),
(2, 'Abhinav Shukla', '9876543219', 'abhi212', 'abhinav@123', 'abhi@gmail.com', 'Psyologists'),
(3, 'Krishna Hanat', '6549873219', 'krish212', 'krishna@123', 'krishna@gmail.com', 'Family Physicians'),
(5, 'Aakash Pandit', '1234567893', 'akash212', 'akash@123', 'akash@gmail.com', 'Surgeons'),
(7, 'Domonic Lobo', '6549873219', 'domonic212', 'domonic@123', 'domonic@gmail.com', 'Critical Care Medicine Specialist'),
(8, 'Cyrus Gracias', '9876543219', 'cyrus212', 'cyrus@123', 'cyrus@gmail.com', 'Cardiologists'),
(9, 'Sibi Sabu', '6549873219', 'sibi212', 'sibi@123', 'sibi@gmail.com', 'Nephrologists');

-- --------------------------------------------------------

--
-- Table structure for table `medcine`
--

CREATE TABLE `medcine` (
  `IDMed` int(11) NOT NULL,
  `MedName` varchar(50) NOT NULL,
  `Expire` varchar(50) NOT NULL,
  `BatchNo` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medcine`
--

INSERT INTO `medcine` (`IDMed`, `MedName`, `Expire`, `BatchNo`, `price`) VALUES
(17, 'Adreneline', '2021-03-10', 'A69464', '50'),
(18, 'Delcon Plus', '2028-02-03', 'A69465', '25'),
(19, 'Kuffgum Syrup', '2022-06-07', 'A69466', '35'),
(20, 'Nodimox Plus', '2020-07-09', 'A69467', '42'),
(21, 'Cheston Cold', '2021-02-09', 'A69468', '33');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `ID` int(11) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Mobile` varchar(70) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `bloodgroup` varchar(50) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `DOB` varchar(50) NOT NULL,
  `Symptoms` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`ID`, `FullName`, `Address`, `Mobile`, `username`, `password`, `city`, `bloodgroup`, `Gender`, `DOB`, `Symptoms`, `status`) VALUES
(2, 'Krunal Pandya', 'Virar', '9874563219', 'raj98', 'raj@123', 'Mumbai', 'B+', 'Male', '02-12-1997', 'Fever Cold And headech', 'Pending'),
(3, 'Joseph Ningeri', 'Mahim', '9876543265', 'joseph212', 'joseph@123', 'kerala', 'A+', 'Male', '2019-10-01', 'fever,cold', 'Attempted');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `Pres_id` int(11) NOT NULL,
  `DoctorName` varchar(50) NOT NULL,
  `PatientName` varchar(50) NOT NULL,
  `DOB` varchar(50) NOT NULL,
  `Symptoms` varchar(50) NOT NULL,
  `MedicineName` varchar(50) NOT NULL,
  `Dosage` varchar(50) NOT NULL,
  `Advice` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`Pres_id`, `DoctorName`, `PatientName`, `DOB`, `Symptoms`, `MedicineName`, `Dosage`, `Advice`) VALUES
(2, 'Noor Ahemad Khan', 'Joseph Ningeri', '2001-07-10', 'fever,cold', 'Nuero Drugs', '1-0-1', 'take that after having lunch and dinner ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`IdBill`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `medcine`
--
ALTER TABLE `medcine`
  ADD PRIMARY KEY (`IDMed`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`Pres_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `IdBill` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `medcine`
--
ALTER TABLE `medcine`
  MODIFY `IDMed` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `Pres_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
