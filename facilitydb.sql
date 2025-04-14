-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 12, 2025 at 13:27 PM
-- Server version: 8.2.0
-- PHP Version: 8.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `facilitydb`
--

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`Booking_Ref`, `customerID`, `DateReserved`, `Reserved_By`, `DateRent_start`, `DateRent_end`, `RentalPeriod`, `facilityID`, `regNumber`, `Total_Amount`, `Paid`, `bookingStatus`) VALUES
('C0004f000120250408', 'C0004', '2025-04-08', 'ljxiong@gmail.com', '2025-04-12', '2025-04-12', 1, 'f0001', '18403894', 0, 1, 'Confirmed'),
('C0004f000320250408', 'C0004', '2025-04-08', 'ljxiong@gmail.com', '2025-06-25', '2025-06-25', 1, 'f0003', 'BK202504080001', 0, 0, 'Cancelled'),
('C0004f000320250412', 'C0004', '2025-04-18', 'ljxiong@gmail.com', '2025-04-19', '2025-04-19', 1, 'f0003', '12345', 15500, 0, 'Pending');

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `customerName`, `Contact`, `PayMethod`, `Email`, `cPassword`) VALUES
('C0001', 'Dummy', NULL, NULL, NULL, ''),
('C0002', 'Dummy2', '0123456789', 'Credit/Debit Card', 'dummy@gmail.com', ''),
('C0003', 'Miichi Unko', '0123456789', 'Credit/Debit Card', 'miichi@gmail.com', '$2y$10$mhJYgX3OOBc8F1j/9K.bce//hq0zZ.YccSkkVid9XrhNVh5bGS7aS'),
('C0004', 'Lin Jing Xiong', NULL, NULL, 'ljxiong@gmail.com', '$2y$10$3cxlg7bvZnegp7yw70uEZeepY27xvgKgWrUYUIpmfbT9vMWVROHp2'),
('C0005', 'Ong Wan Jun', NULL, NULL, 'ongwanjunn@gmail.com', '$2y$10$Miz93VQOBNNHDbJzFCQEgOwSv5rfC1MmXuyC0dSIoutp4.UEPO3v.');

--
-- Dumping data for table `facility`
--

INSERT INTO `facility` (`facilityId`, `name`, `category`, `capacity`, `facilityDetail`, `ratePerDay`, `status`) VALUES
('f0001', 'Grand Ballroom', 'Conference Room', 500, 'Spacious hall with advanced audio-visual equipment', 6500, 'Available'),
('f0002', 'Loro Cassandra Hall', 'Wedding Hall', 1500, 'Luxurious hall with crystal chandeliers, advanced audio-visual systems, laser lighting, and VIP lounge', 25000, 'Unavailable'),
('f0003', 'Orchestra Star Hall', 'Concert Hall', 10000, 'Hall equipped with surround sound, 4K HD screens, and laser lighting', 15500, 'Available');

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffID`, `staffName`, `staffEmail`, `staffPass`, `userType`) VALUES
('Staff', 'Nobara Kugisaki', 'staff@fbsstaff.com', '$2y$10$2lKwKtucGA2JecQmpMevH.13l65cfW9F.DsVmxRbMFneKz2Ok/0T.', 'Staff');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
