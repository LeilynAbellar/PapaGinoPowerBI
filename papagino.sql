-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2024 at 03:30 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `papagino`
--

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `CouponID` int(11) NOT NULL,
  `CouponCode` varchar(50) DEFAULT NULL,
  `DiscountAmount` decimal(10,2) DEFAULT NULL,
  `ExpirationDate` date DEFAULT NULL,
  `CampaignID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`CouponID`, `CouponCode`, `DiscountAmount`, `ExpirationDate`, `CampaignID`) VALUES
(1, 'SUMMER2024', 5.00, '2024-08-31', 1),
(2, 'SUMMER2024', 5.00, '2024-08-31', 1),
(3, 'WINTERFEST2024', 10.00, '2025-02-28', 2),
(4, 'SPRINGDEAL2025', 7.50, '2025-05-31', 3),
(5, 'FALLFLAVOR2025', 12.00, '2025-11-30', 4),
(6, 'HOLIDAY2024', 15.00, '2024-12-31', 5),
(7, 'BACKTOSCHOOL2024', 4.00, '2024-09-15', 6),
(8, 'NEWYEAR2025', 8.00, '2025-01-31', 7),
(9, 'VALENTINE2025', 6.00, '2025-02-14', 8),
(10, 'HEALTHY2025', 5.00, '2025-05-31', 9),
(11, 'WEEKEND2024', 3.00, '2024-07-31', 10);

-- --------------------------------------------------------

--
-- Table structure for table `couponredemption`
--

CREATE TABLE `couponredemption` (
  `RedemptionID` int(11) NOT NULL,
  `CouponID` int(11) DEFAULT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `OrderID` int(11) DEFAULT NULL,
  `RedemptionDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `couponredemption`
--

INSERT INTO `couponredemption` (`RedemptionID`, `CouponID`, `CustomerID`, `OrderID`, `RedemptionDate`) VALUES
(1, 1, 1, 1, '2024-09-25'),
(2, 1, 1, 1, '2024-09-25'),
(3, 2, 3, 3, '2024-09-25'),
(4, 3, 5, 5, '2024-09-26'),
(5, 4, 4, 4, '2024-09-26'),
(6, 5, 6, 6, '2024-09-27'),
(7, 6, 7, 7, '2024-09-28'),
(8, 7, 8, 8, '2024-09-29'),
(9, 8, 9, 9, '2024-09-30'),
(10, 9, 10, 10, '2024-09-30'),
(11, 10, 2, 2, '2024-09-26'),
(12, 1, 1, 1, '2024-09-30'),
(13, 2, 2, 2, '2024-09-30'),
(14, 3, 3, 3, '2024-10-01'),
(15, 4, 4, 4, '2024-10-01'),
(16, 5, 5, 5, '2024-10-02'),
(17, 6, 6, 6, '2024-10-02'),
(18, 7, 7, 7, '2024-10-03'),
(19, 8, 8, 8, '2024-10-03'),
(20, 9, 9, 9, '2024-10-04'),
(21, 10, 10, 10, '2024-10-04');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` int(11) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `PhoneNumber` varchar(50) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `LoyaltyMember` tinyint(1) DEFAULT NULL,
  `LoyaltyPoints` int(11) DEFAULT 0,
  `OrderFrequency` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `Address`, `LoyaltyMember`, `LoyaltyPoints`, `OrderFrequency`) VALUES
(1, 'John', 'Doe', 'john@example.com', '123-456-7890', '123 Elm St', 1, 100, 5),
(2, 'Jane', 'Smith', 'jane@example.com', '987-654-3210', '456 Maple St', 0, 0, 2),
(3, 'John', 'Doe', 'john@example.com', '123-456-7890', '123 Elm St', 1, 100, 5),
(4, 'Jane', 'Smith', 'jane@example.com', '987-654-3210', '456 Maple St', 0, 0, 2),
(5, 'Michael', 'Johnson', 'michael.j@example.com', '555-678-1234', '789 Oak St', 1, 150, 10),
(6, 'Emily', 'Davis', 'emily.d@example.com', '555-876-5432', '321 Pine St', 0, 0, 1),
(7, 'William', 'Garcia', 'william.g@example.com', '555-234-6789', '654 Spruce St', 1, 200, 15),
(8, 'Emma', 'Martinez', 'emma.m@example.com', '555-543-2109', '987 Cedar St', 1, 50, 4),
(9, 'Daniel', 'Rodriguez', 'daniel.r@example.com', '555-321-9876', '258 Birch St', 0, 0, 3),
(10, 'Sophia', 'Wilson', 'sophia.w@example.com', '555-123-4567', '369 Hill St', 1, 120, 8),
(11, 'Olivia', 'Anderson', 'olivia.a@example.com', '555-654-0987', '159 River Rd', 1, 75, 6),
(12, 'James', 'Thomas', 'james.t@example.com', '555-987-6543', '753 Lake Ave', 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmployeeID` int(11) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `JobTitle` varchar(100) DEFAULT NULL,
  `RestaurantID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmployeeID`, `FirstName`, `LastName`, `JobTitle`, `RestaurantID`) VALUES
(1, 'Alice', 'Johnson', 'Chef', 1),
(2, 'Bob', 'Williams', 'Cashier', 2),
(3, 'Alice', 'Johnson', 'Chef', 1),
(4, 'Bob', 'Williams', 'Cashier', 2),
(5, 'Charlie', 'Brown', 'Waiter', 3),
(6, 'Diana', 'Smith', 'Manager', 1),
(7, 'Ethan', 'Johnson', 'Bartender', 4),
(8, 'Fiona', 'Davis', 'Hostess', 2),
(9, 'George', 'Garcia', 'Chef', 5),
(10, 'Hannah', 'Martinez', 'Waitress', 6),
(11, 'Ian', 'Rodriguez', 'Cashier', 7),
(12, 'Jasmine', 'Anderson', 'Server', 8);

-- --------------------------------------------------------

--
-- Table structure for table `employeeshift`
--

CREATE TABLE `employeeshift` (
  `ShiftID` int(11) NOT NULL,
  `EmployeeID` int(11) DEFAULT NULL,
  `ShiftStart` datetime DEFAULT NULL,
  `ShiftEnd` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employeeshift`
--

INSERT INTO `employeeshift` (`ShiftID`, `EmployeeID`, `ShiftStart`, `ShiftEnd`) VALUES
(1, 1, '2024-09-25 09:00:00', '2024-09-25 17:00:00'),
(2, 1, '2024-09-26 09:00:00', '2024-09-26 17:00:00'),
(3, 1, '2024-09-27 09:00:00', '2024-09-27 17:00:00'),
(4, 2, '2024-09-25 10:00:00', '2024-09-25 18:00:00'),
(5, 2, '2024-09-26 10:00:00', '2024-09-26 18:00:00'),
(6, 2, '2024-09-27 10:00:00', '2024-09-27 18:00:00'),
(7, 1, '2024-09-28 09:00:00', '2024-09-28 17:00:00'),
(8, 2, '2024-09-28 10:00:00', '2024-09-28 18:00:00'),
(9, 1, '2024-09-29 09:00:00', '2024-09-29 17:00:00'),
(10, 2, '2024-09-29 10:00:00', '2024-09-29 18:00:00'),
(11, 1, '2024-09-30 09:00:00', '2024-09-30 17:00:00'),
(12, 1, '2024-10-01 09:00:00', '2024-10-01 17:00:00'),
(13, 1, '2024-10-02 09:00:00', '2024-10-02 17:00:00'),
(14, 2, '2024-09-30 10:00:00', '2024-09-30 18:00:00'),
(15, 2, '2024-10-01 10:00:00', '2024-10-01 18:00:00'),
(16, 2, '2024-10-02 10:00:00', '2024-10-02 18:00:00'),
(17, 1, '2024-10-03 09:00:00', '2024-10-03 17:00:00'),
(18, 2, '2024-10-03 10:00:00', '2024-10-03 18:00:00'),
(19, 1, '2024-10-04 09:00:00', '2024-10-04 17:00:00'),
(20, 2, '2024-10-04 10:00:00', '2024-10-04 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `marketingcampaign`
--

CREATE TABLE `marketingcampaign` (
  `CampaignID` int(11) NOT NULL,
  `CampaignName` varchar(255) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Budget` decimal(10,2) DEFAULT NULL,
  `TargetAudience` varchar(255) DEFAULT NULL,
  `CampaignType` enum('Email','SMS','Social Media','Other') DEFAULT NULL,
  `Impressions` int(11) DEFAULT 0,
  `Clicks` int(11) DEFAULT 0,
  `Conversions` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marketingcampaign`
--

INSERT INTO `marketingcampaign` (`CampaignID`, `CampaignName`, `StartDate`, `EndDate`, `Budget`, `TargetAudience`, `CampaignType`, `Impressions`, `Clicks`, `Conversions`) VALUES
(1, 'Summer Special', '2024-06-01', '2024-08-31', 10000.00, 'Young Adults', 'Social Media', 5000, 300, 50),
(2, 'Summer Special', '2024-06-01', '2024-08-31', 10000.00, 'Young Adults', 'Social Media', 5000, 300, 50),
(3, 'Winter Fest', '2024-12-01', '2025-02-28', 12000.00, 'Families', 'Email', 6000, 400, 80),
(4, 'Spring Delight', '2025-03-01', '2025-05-31', 8000.00, 'Students', 'SMS', 4000, 250, 30),
(5, 'Fall Flavor', '2025-09-01', '2025-11-30', 15000.00, 'Professionals', 'Social Media', 7000, 500, 70),
(6, 'Holiday Treats', '2024-11-15', '2024-12-31', 20000.00, 'Everyone', 'Email', 8000, 600, 100),
(7, 'Back to School', '2024-08-01', '2024-09-15', 9000.00, 'Parents', 'SMS', 3000, 200, 20),
(8, 'New Year, New Menu', '2025-01-01', '2025-01-31', 11000.00, 'Foodies', 'Social Media', 5500, 350, 60),
(9, 'Valentine’s Day Special', '2025-02-01', '2025-02-14', 5000.00, 'Couples', 'Email', 3000, 150, 25),
(10, 'Healthy Eating', '2025-05-01', '2025-05-31', 6000.00, 'Health-Conscious', 'Social Media', 4000, 300, 40),
(11, 'Weekend Specials', '2024-07-01', '2024-07-31', 3000.00, 'Young Adults', 'SMS', 2000, 100, 10);

-- --------------------------------------------------------

--
-- Table structure for table `menuitem`
--

CREATE TABLE `menuitem` (
  `MenuItemID` int(11) NOT NULL,
  `MenuItemName` varchar(255) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Category` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menuitem`
--

INSERT INTO `menuitem` (`MenuItemID`, `MenuItemName`, `Description`, `Price`, `Category`) VALUES
(1, 'Pepperoni Pizza', '12-inch pizza with pepperoni', 12.99, 'Pizza'),
(2, 'Caesar Salad', 'Fresh salad with Caesar dressing', 7.99, 'Salad'),
(3, 'Pepperoni Pizza', '12-inch pizza with pepperoni', 12.99, 'Pizza'),
(4, 'Caesar Salad', 'Fresh salad with Caesar dressing', 7.99, 'Salad'),
(5, 'Margherita Pizza', 'Classic pizza with tomatoes and mozzarella', 11.99, 'Pizza'),
(6, 'BBQ Chicken Pizza', 'Pizza topped with BBQ chicken and red onions', 13.99, 'Pizza'),
(7, 'Garlic Bread', 'Toasted bread with garlic butter', 4.99, 'Appetizer'),
(8, 'Cheeseburger', 'Juicy burger with cheese and fixings', 10.99, 'Burger'),
(9, 'Spaghetti Bolognese', 'Pasta with meat sauce', 9.99, 'Pasta'),
(10, 'Tiramisu', 'Italian coffee-flavored dessert', 5.99, 'Dessert'),
(11, 'Fettuccine Alfredo', 'Pasta with creamy Alfredo sauce', 12.99, 'Pasta'),
(12, 'Minestrone Soup', 'Vegetable soup with pasta', 6.99, 'Soup');

-- --------------------------------------------------------

--
-- Table structure for table `onlineorder`
--

CREATE TABLE `onlineorder` (
  `OnlineOrderID` int(11) NOT NULL,
  `OrderID` int(11) DEFAULT NULL,
  `DeliveryAddress` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `onlineorder`
--

INSERT INTO `onlineorder` (`OnlineOrderID`, `OrderID`, `DeliveryAddress`) VALUES
(1, 1, '123 Elm St'),
(2, 1, '123 Elm St'),
(3, 2, '456 Maple St'),
(4, 3, '789 Oak St'),
(5, 4, '321 Pine St'),
(6, 5, '654 Spruce St'),
(7, 6, '987 Cedar St'),
(8, 7, '258 Birch St'),
(9, 8, '369 Hill St'),
(10, 9, '159 River Rd'),
(11, 10, '753 Lake Ave'),
(12, 1, '123 Elm St'),
(13, 3, '456 Maple St'),
(14, 5, '789 Oak St'),
(15, 7, '321 Pine St'),
(16, 9, '654 Spruce St'),
(17, 10, '987 Cedar St');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `OrderID` int(11) NOT NULL,
  `OrderDate` date DEFAULT NULL,
  `OrderTime` time DEFAULT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `RestaurantID` int(11) DEFAULT NULL,
  `TotalAmount` decimal(10,2) DEFAULT NULL,
  `OrderStatus` enum('Placed','In Progress','Delivered','Cancelled') DEFAULT NULL,
  `OrderType` enum('Online','Physical') DEFAULT NULL,
  `PaymentStatus` enum('Paid','Pending','Failed') DEFAULT 'Pending',
  `PaymentMethod` varchar(50) DEFAULT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`OrderID`, `OrderDate`, `OrderTime`, `CustomerID`, `RestaurantID`, `TotalAmount`, `OrderStatus`, `OrderType`, `PaymentStatus`, `PaymentMethod`, `CreatedAt`, `UpdatedAt`) VALUES
(1, '2024-09-25', '12:30:00', 1, 1, 25.98, 'Delivered', 'Online', 'Paid', 'Credit Card', '2024-09-26 13:18:08', '2024-09-26 13:18:08'),
(2, '2024-09-26', '18:00:00', 2, 2, 15.98, 'In Progress', 'Physical', 'Pending', 'Cash', '2024-09-26 13:18:08', '2024-09-26 13:18:08'),
(3, '2024-09-25', '12:30:00', 1, 1, 25.98, 'Delivered', 'Online', 'Paid', 'Credit Card', '2024-09-26 13:19:55', '2024-09-26 13:19:55'),
(4, '2024-09-26', '18:00:00', 2, 2, 15.98, 'In Progress', 'Physical', 'Pending', 'Cash', '2024-09-26 13:19:55', '2024-09-26 13:19:55'),
(5, '2024-09-25', '19:00:00', 3, 3, 35.99, 'Delivered', 'Online', 'Paid', 'Debit Card', '2024-09-26 13:19:55', '2024-09-26 13:19:55'),
(6, '2024-09-26', '12:00:00', 4, 1, 22.50, 'In Progress', 'Physical', 'Pending', 'Cash', '2024-09-26 13:19:55', '2024-09-26 13:19:55'),
(7, '2024-09-25', '20:30:00', 5, 5, 50.75, 'Delivered', 'Online', 'Paid', 'Credit Card', '2024-09-26 13:19:55', '2024-09-26 13:19:55'),
(8, '2024-09-27', '17:00:00', 6, 6, 30.00, 'Delivered', 'Online', 'Paid', 'Credit Card', '2024-09-26 13:19:55', '2024-09-26 13:19:55'),
(9, '2024-09-28', '13:15:00', 7, 7, 45.00, 'Delivered', 'Physical', 'Paid', 'Cash', '2024-09-26 13:19:55', '2024-09-26 13:19:55'),
(10, '2024-09-29', '16:45:00', 8, 2, 28.99, 'Cancelled', 'Online', 'Failed', 'Credit Card', '2024-09-26 13:19:55', '2024-09-26 13:19:55'),
(11, '2024-09-30', '14:30:00', 9, 3, 39.99, 'Delivered', 'Online', 'Paid', 'Debit Card', '2024-09-26 13:19:55', '2024-09-26 13:19:55'),
(12, '2024-09-30', '18:15:00', 10, 4, 24.50, 'In Progress', 'Physical', 'Pending', 'Cash', '2024-09-26 13:19:55', '2024-09-26 13:19:55'),
(13, '2024-09-30', '12:00:00', 1, 1, 45.97, 'Delivered', 'Online', 'Paid', 'Credit Card', '2024-09-26 13:23:07', '2024-09-26 13:23:07'),
(14, '2024-09-30', '18:30:00', 2, 2, 19.99, 'In Progress', 'Physical', 'Pending', 'Cash', '2024-09-26 13:23:07', '2024-09-26 13:23:07'),
(15, '2024-10-01', '11:15:00', 3, 1, 38.50, 'Delivered', 'Online', 'Paid', 'PayPal', '2024-09-26 13:23:07', '2024-09-26 13:23:07'),
(16, '2024-10-01', '20:00:00', 4, 2, 24.75, 'Cancelled', 'Physical', 'Failed', 'Credit Card', '2024-09-26 13:23:07', '2024-09-26 13:23:07'),
(17, '2024-10-02', '14:00:00', 5, 1, 56.30, 'In Progress', 'Online', 'Pending', 'Credit Card', '2024-09-26 13:23:07', '2024-09-26 13:23:07'),
(18, '2024-10-02', '19:45:00', 6, 2, 30.00, 'Delivered', 'Physical', 'Paid', 'Cash', '2024-09-26 13:23:07', '2024-09-26 13:23:07'),
(19, '2024-10-03', '13:30:00', 7, 1, 42.99, 'Delivered', 'Online', 'Paid', 'Debit Card', '2024-09-26 13:23:07', '2024-09-26 13:23:07'),
(20, '2024-10-03', '17:00:00', 8, 2, 18.00, 'In Progress', 'Physical', 'Pending', 'Cash', '2024-09-26 13:23:07', '2024-09-26 13:23:07'),
(21, '2024-10-04', '12:45:00', 9, 1, 75.20, 'Delivered', 'Online', 'Paid', 'Credit Card', '2024-09-26 13:23:07', '2024-09-26 13:23:07'),
(22, '2024-10-04', '19:00:00', 10, 2, 27.85, 'In Progress', 'Physical', 'Pending', 'Credit Card', '2024-09-26 13:23:07', '2024-09-26 13:23:07');

-- --------------------------------------------------------

--
-- Table structure for table `orderitem`
--

CREATE TABLE `orderitem` (
  `OrderItemID` int(11) NOT NULL,
  `OrderID` int(11) DEFAULT NULL,
  `MenuItemID` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderitem`
--

INSERT INTO `orderitem` (`OrderItemID`, `OrderID`, `MenuItemID`, `Quantity`) VALUES
(1, 1, 1, 2),
(2, 2, 2, 2),
(3, 1, 1, 2),
(4, 2, 2, 2),
(5, 3, 3, 1),
(6, 4, 4, 1),
(7, 5, 6, 1),
(8, 6, 7, 2),
(9, 7, 5, 3),
(10, 8, 8, 1),
(11, 9, 9, 1),
(12, 10, 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `physicalorder`
--

CREATE TABLE `physicalorder` (
  `PhysicalOrderID` int(11) NOT NULL,
  `OrderID` int(11) DEFAULT NULL,
  `TableNumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `physicalorder`
--

INSERT INTO `physicalorder` (`PhysicalOrderID`, `OrderID`, `TableNumber`) VALUES
(1, 2, 12),
(2, 1, 5),
(3, 2, 10),
(4, 3, 8),
(5, 4, 2),
(6, 5, 4),
(7, 6, 6),
(8, 7, 3),
(9, 8, 7),
(10, 9, 1),
(11, 10, 9),
(12, 2, 5),
(13, 4, 8),
(14, 6, 2),
(15, 8, 3),
(16, 10, 4);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `RestaurantID` int(11) NOT NULL,
  `RestaurantName` varchar(255) NOT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `PhoneNumber` varchar(50) DEFAULT NULL,
  `Manager` varchar(255) DEFAULT NULL,
  `Capacity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`RestaurantID`, `RestaurantName`, `Address`, `PhoneNumber`, `Manager`, `Capacity`) VALUES
(1, 'Papa Gino\'s Downtown', '123 Main St', '123-456-7890', 'John Smith', 50),
(2, 'Papa Gino\'s Uptown', '456 Oak St', '987-654-3210', 'Jane Doe', 75),
(3, 'Papa Gino\'s Downtown', '123 Main St', '123-456-7890', 'John Smith', 50),
(4, 'Papa Gino\'s Uptown', '456 Oak St', '987-654-3210', 'Jane Doe', 75),
(5, 'Papa Gino\'s Southside', '789 Pine St', '555-123-4567', 'Alice Brown', 60),
(6, 'Papa Gino\'s Westside', '321 Cedar St', '555-987-6543', 'Bob Green', 80),
(7, 'Papa Gino\'s Eastside', '654 Birch St', '555-345-6789', 'Carol White', 70),
(8, 'Papa Gino\'s Northside', '135 Spruce St', '555-765-4321', 'David Black', 40),
(9, 'Papa Gino\'s Riverwalk', '246 River Rd', '555-654-3210', 'Eve Blue', 55),
(10, 'Papa Gino\'s Lakeside', '357 Lake Ave', '555-876-5432', 'Frank Red', 65),
(11, 'Papa Gino\'s Hilltop', '468 Hill St', '555-234-5678', 'Grace Purple', 75),
(12, 'Papa Gino\'s Old Town', '579 Old Town Rd', '555-789-0123', 'Hank Gold', 45);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`CouponID`),
  ADD KEY `CampaignID` (`CampaignID`);

--
-- Indexes for table `couponredemption`
--
ALTER TABLE `couponredemption`
  ADD PRIMARY KEY (`RedemptionID`),
  ADD KEY `CouponID` (`CouponID`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `OrderID` (`OrderID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmployeeID`),
  ADD KEY `RestaurantID` (`RestaurantID`);

--
-- Indexes for table `employeeshift`
--
ALTER TABLE `employeeshift`
  ADD PRIMARY KEY (`ShiftID`),
  ADD KEY `EmployeeID` (`EmployeeID`);

--
-- Indexes for table `marketingcampaign`
--
ALTER TABLE `marketingcampaign`
  ADD PRIMARY KEY (`CampaignID`);

--
-- Indexes for table `menuitem`
--
ALTER TABLE `menuitem`
  ADD PRIMARY KEY (`MenuItemID`);

--
-- Indexes for table `onlineorder`
--
ALTER TABLE `onlineorder`
  ADD PRIMARY KEY (`OnlineOrderID`),
  ADD KEY `OrderID` (`OrderID`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `RestaurantID` (`RestaurantID`);

--
-- Indexes for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`OrderItemID`),
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `MenuItemID` (`MenuItemID`);

--
-- Indexes for table `physicalorder`
--
ALTER TABLE `physicalorder`
  ADD PRIMARY KEY (`PhysicalOrderID`),
  ADD KEY `OrderID` (`OrderID`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`RestaurantID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `CouponID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `couponredemption`
--
ALTER TABLE `couponredemption`
  MODIFY `RedemptionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EmployeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `employeeshift`
--
ALTER TABLE `employeeshift`
  MODIFY `ShiftID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `marketingcampaign`
--
ALTER TABLE `marketingcampaign`
  MODIFY `CampaignID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `menuitem`
--
ALTER TABLE `menuitem`
  MODIFY `MenuItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `onlineorder`
--
ALTER TABLE `onlineorder`
  MODIFY `OnlineOrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `orderitem`
--
ALTER TABLE `orderitem`
  MODIFY `OrderItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `physicalorder`
--
ALTER TABLE `physicalorder`
  MODIFY `PhysicalOrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `RestaurantID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coupon`
--
ALTER TABLE `coupon`
  ADD CONSTRAINT `coupon_ibfk_1` FOREIGN KEY (`CampaignID`) REFERENCES `marketingcampaign` (`CampaignID`);

--
-- Constraints for table `couponredemption`
--
ALTER TABLE `couponredemption`
  ADD CONSTRAINT `couponredemption_ibfk_1` FOREIGN KEY (`CouponID`) REFERENCES `coupon` (`CouponID`),
  ADD CONSTRAINT `couponredemption_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`),
  ADD CONSTRAINT `couponredemption_ibfk_3` FOREIGN KEY (`OrderID`) REFERENCES `order` (`OrderID`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`RestaurantID`) REFERENCES `restaurant` (`RestaurantID`);

--
-- Constraints for table `employeeshift`
--
ALTER TABLE `employeeshift`
  ADD CONSTRAINT `employeeshift_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `employee` (`EmployeeID`);

--
-- Constraints for table `onlineorder`
--
ALTER TABLE `onlineorder`
  ADD CONSTRAINT `onlineorder_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `order` (`OrderID`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`RestaurantID`) REFERENCES `restaurant` (`RestaurantID`);

--
-- Constraints for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `order` (`OrderID`),
  ADD CONSTRAINT `orderitem_ibfk_2` FOREIGN KEY (`MenuItemID`) REFERENCES `menuitem` (`MenuItemID`);

--
-- Constraints for table `physicalorder`
--
ALTER TABLE `physicalorder`
  ADD CONSTRAINT `physicalorder_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `order` (`OrderID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
