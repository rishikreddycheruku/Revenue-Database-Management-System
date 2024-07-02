-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2023 at 07:25 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `non-tax`
--

-- --------------------------------------------------------

--
-- Table structure for table `beneficiaries`
--

CREATE TABLE `beneficiaries` (
  `ben_id` int(11) NOT NULL,
  `ben_fname` varchar(255) DEFAULT NULL,
  `ben_lname` varchar(255) DEFAULT NULL,
  `ben_email` varchar(255) DEFAULT NULL,
  `locality` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `ben_aadhar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `beneficiaries`
--

INSERT INTO `beneficiaries` (`ben_id`, `ben_fname`, `ben_lname`, `ben_email`, `locality`, `age`, `ben_aadhar`) VALUES
(301, 'Aisha', 'Rahman', 'aisha.rahman@example.com', 'City Center', 32, '1234-5678-9876'),
(302, 'Raj', 'Patel', 'raj.patel@example.com', 'Suburb Heights', 28, '5678-9876-5432'),
(303, 'Maria', 'Santos', 'maria.santos@example.com', 'Riverside', 40, '9876-5432-1234'),
(304, 'Anil', 'Deshmukh', 'anil.deshmukh@example.com', 'Green Valley', 35, '5432-1234-5678'),
(305, 'Fatima', 'Khan', 'fatima.khan@example.com', 'Lakeside', 45, '6543-2109-8765'),
(306, 'Kiran', 'Malhotra', 'kiran.malhotra@example.com', 'Downtown', 28, '7890-4321-8765'),
(307, 'Carlos', 'Lopez', 'carlos.lopez@example.com', 'Hillside', 35, '4567-8901-2345'),
(308, 'Sofia', 'Fernandez', 'sofia.fernandez@example.com', 'Harbor View', 42, '1234-5678-9012'),
(309, 'Mohammed', 'Al-Farsi', 'mohammed.alfarsi@example.com', 'Sunnydale', 31, '8901-2345-6789'),
(310, 'Jing', 'Chen', 'jing.chen@example.com', 'Highland Park', 26, '5678-9012-3456'),
(311, 'Aarav', 'Patel', 'aarav.patel@example.com', 'Ridgeview', 29, '2345-6789-0123'),
(312, 'Leila', 'Amin', 'leila.amin@example.com', 'Maplewood', 38, '9012-3456-7890'),
(313, 'Diego', 'Ramirez', 'diego.ramirez@example.com', 'Pinecrest', 34, '6789-0123-4567'),
(314, 'Nina', 'Kumar', 'nina.kumar@example.com', 'Rosewood', 40, '3456-7890-1234'),
(315, 'Ahmed', 'Abdullah', 'ahmed.abdullah@example.com', 'Meadowside', 27, '0123-4567-8901');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `dep_id` int(11) NOT NULL,
  `dep_name` varchar(255) DEFAULT NULL,
  `d_description` varchar(255) DEFAULT NULL,
  `amount_collected` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`dep_id`, `dep_name`, `d_description`, `amount_collected`) VALUES
(101, 'Parking Services', 'Manages municipal parking lots and collects parking fees.', 50000000.00),
(102, 'Licensing and Permits', 'Handles business licensing and permits, collecting associated fees.', 75000000.00),
(103, 'Public Transportation', 'Oversees public transport services and collects fare revenue.', 120000000.00),
(104, 'Property Management', 'Manages leasing of public properties and collects rental income.', 30000000.00),
(105, 'Asset Monetization', 'Facilitates the sale or lease of government-owned assets.', 200000000.00),
(106, 'Health Services', 'Manages public health initiatives and services.', 45000000.00),
(107, 'Education Department', 'Oversees public education services and programs.', 80000000.00),
(108, 'Environmental Services', 'Manages environmental conservation and protection initiatives.', 35000000.00),
(109, 'Community Development', 'Supports community development projects and programs.', 60000000.00),
(110, 'Technology and Innovation', 'Promotes technological innovation and development.', 90000000.00),
(111, 'Tourism and Cultural Affairs', 'Promotes local tourism and cultural activities.', 70000000.00),
(112, 'Public Safety and Emergency Services', 'Manages public safety and emergency response services.', 55000000.00),
(113, 'Social Services', 'Provides social services and support to the community.', 40000000.00),
(114, 'Water Resources Management', 'Manages municipal water resources and infrastructure.', 20000000.00),
(115, 'Arts and Recreation', 'Promotes arts and cultural activities, and manages recreational facilities.', 30000000.00);

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `d_id` int(11) NOT NULL,
  `d_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`d_id`, `d_type`) VALUES
(501, 'Parking Permit'),
(502, 'Business License'),
(503, 'Public Transit Pass'),
(504, 'Property Lease Agreement'),
(505, 'Asset Monetization Agreement'),
(506, 'Building Permit'),
(507, 'Health Insurance Card'),
(508, 'Education Grant Approval'),
(509, 'Environmental Impact Assessment Report'),
(510, 'Community Development Project Agreement'),
(511, 'Technology License Certificate'),
(512, 'Cultural Event Permit'),
(513, 'Emergency Contact Information Form'),
(514, 'Social Welfare Assistance Approval'),
(515, 'Water Usage Permit');

-- --------------------------------------------------------

--
-- Table structure for table `expenditures`
--

CREATE TABLE `expenditures` (
  `e_id` int(11) NOT NULL,
  `e_type` varchar(255) DEFAULT NULL,
  `e_amount` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expenditures`
--

INSERT INTO `expenditures` (`e_id`, `e_type`, `e_amount`) VALUES
(201, 'Urban Infrastructure Development', 25000000.00),
(202, 'Regulatory Compliance Enhancement', 15000000.00),
(203, 'Public Transit Expansion', 40000000.00),
(204, 'Public Park Maintenance', 10000000.00),
(205, 'Infrastructure Project Funding', 60000000.00),
(206, 'Public Health Campaigns', 8000000.00),
(207, 'Educational Infrastructure Development', 12000000.00),
(208, 'Environmental Conservation Initiatives', 5000000.00),
(209, 'Community Development Projects', 10000000.00),
(210, 'Technology and Innovation Research', 15000000.00),
(211, 'Tourism Promotion and Events', 7000000.00),
(212, 'Public Safety Equipment and Training', 9000000.00),
(213, 'Social Welfare Programs', 6000000.00),
(214, 'Water Infrastructure Maintenance', 3000000.00),
(215, 'Arts and Recreation Facilities Upkeep', 4000000.00);

-- --------------------------------------------------------

--
-- Table structure for table `government_employees`
--

CREATE TABLE `government_employees` (
  `gemp_id` int(11) NOT NULL,
  `gemp_fname` varchar(255) DEFAULT NULL,
  `gemp_lname` varchar(255) DEFAULT NULL,
  `emp_email` varchar(255) DEFAULT NULL,
  `gemp_salary` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `government_employees`
--

INSERT INTO `government_employees` (`gemp_id`, `gemp_fname`, `gemp_lname`, `emp_email`, `gemp_salary`) VALUES
(701, 'John', 'Anderson', 'john.anderson@govt.example', 80000.00),
(702, 'Sarah', 'Williams', 'sarah.williams@govt.example', 65000.00),
(703, 'Rajesh', 'Sharma', 'rajesh.sharma@govt.example', 90000.00),
(704, 'Emily', 'Chen', 'emily.chen@govt.example', 75000.00),
(705, 'Anil', 'Deshmukh', 'anil.deshmukh@govt.example', 85000.00),
(706, 'Linda', 'Smith', 'linda.smith@govt.example', 70000.00),
(707, 'Michael', 'Nguyen', 'michael.nguyen@govt.example', 95000.00),
(708, 'Aisha', 'Ahmed', 'aisha.ahmed@govt.example', 85000.00),
(709, 'Daniel', 'Garcia', 'daniel.garcia@govt.example', 75000.00),
(710, 'Mia', 'Johnson', 'mia.johnson@govt.example', 90000.00),
(711, 'Kunal', 'Verma', 'kunal.verma@govt.example', 80000.00),
(712, 'Eva', 'Taylor', 'eva.taylor@govt.example', 72000.00),
(713, 'Rajiv', 'Singh', 'rajiv.singh@govt.example', 89000.00),
(714, 'Isabella', 'Wong', 'isabella.wong@govt.example', 82000.00),
(715, 'Dinesh', 'Patel', 'dinesh.patel@govt.example', 78000.00);

-- --------------------------------------------------------

--
-- Table structure for table `legislations`
--

CREATE TABLE `legislations` (
  `l_id` int(11) NOT NULL,
  `l_title` varchar(255) DEFAULT NULL,
  `l_sec` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `legislations`
--

INSERT INTO `legislations` (`l_id`, `l_title`, `l_sec`) VALUES
(401, 'Municipal Parking Fee Act', 'Section 1 - Authorization of Parking Fees'),
(402, 'Business Licensing and Permits Act', 'Section 2 - Fee Structure and Collection'),
(403, 'Public Transportation Funding Act', 'Section 3 - Allocation of Fare Revenue'),
(404, 'Public Properties Lease Act', 'Section 4 - Rental Income Management'),
(405, 'Asset Monetization Authorization Act', 'Section 5 - Sale and Lease of Government Assets'),
(406, 'Public Health and Safety Act', 'Section 6 - Disease Prevention Measures'),
(407, 'Education Funding Act', 'Section 7 - Allocation of Education Budget'),
(408, 'Environmental Protection and Conservation Act', 'Section 8 - Biodiversity Preservation'),
(409, 'Community Development Grant Act', 'Section 9 - Grant Allocation for Community Projects'),
(410, 'Technology and Innovation Promotion Act', 'Section 10 - Incentives for Technological Innovation'),
(411, 'Cultural Heritage Preservation Act', 'Section 11 - Protection of Cultural Heritage Sites'),
(412, 'Public Safety and Emergency Response Act', 'Section 12 - Emergency Response Procedures'),
(413, 'Social Welfare Support Act', 'Section 13 - Support for Social Welfare Programs'),
(414, 'Water Resources Management Act', 'Section 14 - Sustainable Water Management Practices'),
(415, 'Arts and Recreation Development Act', 'Section 15 - Development of Arts and Recreation Facilities');

-- --------------------------------------------------------

--
-- Table structure for table `main`
--

CREATE TABLE `main` (
  `id` int(11) NOT NULL,
  `s_id` int(11) DEFAULT NULL,
  `revenue_id` int(11) DEFAULT NULL,
  `dep_id` int(11) DEFAULT NULL,
  `e_id` int(11) DEFAULT NULL,
  `ben_id` int(11) DEFAULT NULL,
  `l_id` int(11) DEFAULT NULL,
  `d_id` int(11) DEFAULT NULL,
  `gemp_id` int(11) DEFAULT NULL,
  `t_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main`
--

INSERT INTO `main` (`id`, `s_id`, `revenue_id`, `dep_id`, `e_id`, `ben_id`, `l_id`, `d_id`, `gemp_id`, `t_id`) VALUES
(1, 2, 202, 102, 204, 303, 402, 502, 705, 1),
(2, 4, 204, 104, 201, 305, 404, 504, 701, 4),
(3, 3, 203, 103, 205, 301, 403, 503, 702, 3),
(4, 1, 201, 101, 202, 304, 402, 502, 705, 5),
(5, 4, 204, 104, 205, 303, 404, 504, 701, 2),
(6, 6, 206, 106, 206, 306, 406, 506, 706, 6),
(7, 7, 207, 107, 207, 307, 407, 507, 707, 7),
(8, 8, 208, 108, 208, 308, 408, 508, 708, 8),
(9, 9, 209, 109, 209, 309, 409, 509, 709, 9),
(10, 10, 210, 110, 210, 310, 410, 510, 710, 10),
(11, 11, 211, 111, 211, 311, 411, 511, 711, 11),
(12, 12, 212, 112, 212, 312, 412, 512, 712, 12),
(13, 13, 213, 113, 213, 313, 413, 513, 713, 13),
(14, 14, 214, 114, 214, 314, 414, 514, 714, 14),
(15, 15, 215, 115, 215, 315, 415, 515, 715, 15);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `payment_amount` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `payment_amount`) VALUES
(601, 5000.00),
(602, 12500.00),
(603, 20000.00),
(604, 7500.00),
(605, 50000.00),
(606, 10000.00),
(607, 30000.00),
(608, 15000.00),
(609, 25000.00),
(610, 40000.00),
(611, 18000.00),
(612, 12000.00),
(613, 35000.00),
(614, 28000.00),
(615, 50000.00);

-- --------------------------------------------------------

--
-- Table structure for table `revenue`
--

CREATE TABLE `revenue` (
  `revenue_id` int(11) NOT NULL,
  `revenue_name` varchar(255) DEFAULT NULL,
  `revenue_collected` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `revenue`
--

INSERT INTO `revenue` (`revenue_id`, `revenue_name`, `revenue_collected`) VALUES
(201, 'User Fees for Public Services', 1000000.00),
(202, 'Licensing Fees for Government Resources', 500000.00),
(203, 'Revenue from Public Land Leases', 800000.00),
(204, 'Charges for Regulatory Services', 700000.00),
(205, 'Income from Government-Owned Utilities', 1200000.00),
(206, 'User Fees for Public Services - Renewals', 1500000.00),
(207, 'Licensing Fees for Government Resources - Late Fees', 250000.00),
(208, 'Revenue from Public Land Leases - Commercial Property Leases', 1000000.00),
(209, 'Charges for Regulatory Services - Inspection Fees', 500000.00),
(210, 'Income from Government-Owned Utilities - Utility Tax', 1800000.00),
(211, 'Parking Fees for Special Events', 75000.00),
(212, 'Licensing Fees for Specialized Professions', 300000.00),
(213, 'Public Transport Fares - Express Service Upcharge', 400000.00),
(214, 'Rent from Public Properties - Outdoor Advertising Leases', 600000.00),
(215, 'Asset Monetization - Sale of Unused Government Vehicles', 3500000.00);

-- --------------------------------------------------------

--
-- Table structure for table `scheme`
--

CREATE TABLE `scheme` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `outcome_expected` varchar(255) DEFAULT NULL,
  `outcome_derived` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scheme`
--

INSERT INTO `scheme` (`s_id`, `s_name`, `description`, `outcome_expected`, `outcome_derived`) VALUES
(1, 'Parking Fees', 'Revenue generated from parking fees in municipal areas.', 'Improved urban infrastructure and maintenance.', 'Funding for city beautification projects'),
(2, 'Licensing Fees', 'Revenue generated from licensing fees for businesses and professionals.', 'Enhanced regulatory compliance and oversight.', 'Funding for regulatory and licensing enforcement'),
(3, 'Public Transport Fares', 'Revenue collected from public transportation services.', 'Improved public transit infrastructure and services.', 'Funding for expansion and maintenance of public transportation networks'),
(4, 'Rent from Public Properties', 'Income generated from leasing public properties for commercial use.', 'Increased utilization of public spaces.', 'Funding for maintenance of public parks and recreational areas'),
(5, 'Asset Monetization', 'Revenue generated from the sale or lease of government-owned assets.', 'Efficient use of underutilized assets.', 'Funding for critical infrastructure projects through asset monetization'),
(6, 'Street Vendor Permits', 'Revenue from street vendor permits in public areas.', 'Support for local entrepreneurship and small businesses.', 'Funding for community development programs.'),
(7, 'Event Licensing Fees', 'Revenue generated from licensing fees for events and gatherings.', 'Enhanced event regulation and safety measures.', 'Funding for emergency response services during events.'),
(8, 'Waste Collection Charges', 'Income from charges for municipal waste collection services.', 'Improved waste management infrastructure.', 'Funding for recycling and environmental initiatives.'),
(9, 'City-Owned Facility Rentals', 'Revenue from renting city-owned facilities for events and activities.', 'Increased utilization of public spaces for community events.', 'Funding for maintenance of public facilities and parks.'),
(10, 'Technology Licensing Fees', 'Revenue from licensing government-owned technologies.', 'Promotion of technological innovation and development.', 'Funding for research and development projects.'),
(11, 'Tourism Taxes', 'Revenue collected from taxes on tourism-related services.', 'Promotion of local tourism and cultural activities.', 'Funding for tourism infrastructure and promotion.'),
(12, 'Health Inspection Fees', 'Fees collected for health and safety inspections of businesses.', 'Enhanced public health and safety standards.', 'Funding for health and sanitation programs.'),
(13, 'Education Service Fees', 'Fees collected for educational services provided by the government.', 'Improved access to quality education.', 'Funding for educational infrastructure and programs.'),
(14, 'Water Usage Charges', 'Revenue from charges for municipal water usage.', 'Conservation of water resources and sustainable water management.', 'Funding for water infrastructure projects.'),
(15, 'Cultural Event Ticket Sales', 'Income from ticket sales for government-sponsored cultural events.', 'Promotion of local arts and cultural activities.', 'Funding for cultural preservation and heritage projects.');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `t_id` int(11) NOT NULL,
  `t_amount` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`t_id`, `t_amount`) VALUES
(1, 2975000.00),
(2, 1875000.00),
(3, 3750000.00),
(4, 1125000.00),
(5, 7500000.00),
(6, 150000.00),
(7, 300000.00),
(8, 75000.00),
(9, 500000.00),
(10, 1200000.00),
(11, 250000.00),
(12, 375000.00),
(13, 112500.00),
(14, 750000.00),
(15, 200000.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(20) NOT NULL,
  `descrition` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`s_id`, `s_name`, `descrition`) VALUES
(1, 'me', 'mine');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beneficiaries`
--
ALTER TABLE `beneficiaries`
  ADD PRIMARY KEY (`ben_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`dep_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `expenditures`
--
ALTER TABLE `expenditures`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `government_employees`
--
ALTER TABLE `government_employees`
  ADD PRIMARY KEY (`gemp_id`);

--
-- Indexes for table `legislations`
--
ALTER TABLE `legislations`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revenue_id` (`revenue_id`),
  ADD KEY `dep_id` (`dep_id`),
  ADD KEY `e_id` (`e_id`),
  ADD KEY `ben_id` (`ben_id`),
  ADD KEY `l_id` (`l_id`),
  ADD KEY `d_id` (`d_id`),
  ADD KEY `gemp_id` (`gemp_id`),
  ADD KEY `t_id` (`t_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `revenue`
--
ALTER TABLE `revenue`
  ADD PRIMARY KEY (`revenue_id`);

--
-- Indexes for table `scheme`
--
ALTER TABLE `scheme`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`t_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `main`
--
ALTER TABLE `main`
  ADD CONSTRAINT `main_ibfk_1` FOREIGN KEY (`id`) REFERENCES `scheme` (`s_id`),
  ADD CONSTRAINT `main_ibfk_2` FOREIGN KEY (`revenue_id`) REFERENCES `revenue` (`revenue_id`),
  ADD CONSTRAINT `main_ibfk_3` FOREIGN KEY (`dep_id`) REFERENCES `departments` (`dep_id`),
  ADD CONSTRAINT `main_ibfk_4` FOREIGN KEY (`e_id`) REFERENCES `expenditures` (`e_id`),
  ADD CONSTRAINT `main_ibfk_5` FOREIGN KEY (`ben_id`) REFERENCES `beneficiaries` (`ben_id`),
  ADD CONSTRAINT `main_ibfk_6` FOREIGN KEY (`l_id`) REFERENCES `legislations` (`l_id`),
  ADD CONSTRAINT `main_ibfk_7` FOREIGN KEY (`d_id`) REFERENCES `documents` (`d_id`),
  ADD CONSTRAINT `main_ibfk_8` FOREIGN KEY (`gemp_id`) REFERENCES `government_employees` (`gemp_id`),
  ADD CONSTRAINT `main_ibfk_9` FOREIGN KEY (`t_id`) REFERENCES `transactions` (`t_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
