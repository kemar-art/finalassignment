-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2023 at 10:24 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `freshcery`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(3) NOT NULL,
  `adminname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `adminname`, `email`, `mypassword`, `created_at`) VALUES
(2, 'admin.second', 'admin.second@gmail.com', '$2y$10$nEx02PaHMHQaKPoosW8nQeMunZopWa7K.UAh6onmxgw4GldIEYDG.', '2022-12-12 12:10:05'),
(3, 'admin', 'admin', '$2y$10$UoeOvUKi8BRiDELIfYj8VuFJiWjFqAVMUlBcYQVCWIE1cjnt9DUgS', '2023-12-15 21:22:00');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(3) NOT NULL,
  `pro_id` int(3) NOT NULL,
  `pro_title` varchar(200) NOT NULL,
  `pro_image` varchar(200) NOT NULL,
  `pro_price` int(10) NOT NULL,
  `pro_qty` int(10) NOT NULL,
  `pro_subtotal` int(10) NOT NULL,
  `user_id` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `pro_id`, `pro_title`, `pro_image`, `pro_price`, `pro_qty`, `pro_subtotal`, `user_id`, `created_at`) VALUES
(38, 2, 'MEATS', 'meats.jpg', 40, 1, 40, 53, '2023-11-21 14:06:14');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(3) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `icon` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `icon`, `description`, `created_at`) VALUES
(1, 'VEGETABLES', 'vegetables.jpg', 'bistro-carrot', 'Rapidiously foster exceptional alignments for plug-and-play interfaces. Progressively expedite cross-platform core competencies vis-a-vis cross-media', '2022-12-07 12:11:04'),
(2, 'MEATS', 'meats.jpg', 'bistro-roast-leg', 'Rapidiously foster exceptional alignments for plug-and-play interfaces. Progressively expedite cross-platform core competencies vis-a-vis cross-media', '2022-12-07 12:11:04'),
(3, 'FISHES', 'fish.jpg', 'bistro-fish-1', 'Continually reintermediate impactful web-readiness with enabled catalysts for change. Globally synthesize go forward information for sustainable ', '2022-12-07 13:15:14'),
(4, 'FRUITS', 'fruits.jpg', 'bistro-apple', 'Continually reintermediate impactful web-readiness with enabled catalysts for change. Globally synthesize go forward information for sustainable ', '2022-12-07 13:15:14');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(3) NOT NULL,
  `name` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `zip_code` int(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone_number` int(20) NOT NULL,
  `order_notes` text NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'sent to admins',
  `price` int(20) NOT NULL,
  `user_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `lname`, `company_name`, `address`, `city`, `country`, `zip_code`, `email`, `phone_number`, `order_notes`, `status`, `price`, `user_id`, `created_at`) VALUES
(5, 'Mohamed', 'Hassan', 'web coding', 'Appropriately recaptiualize professional metrics vis-a-vis reliable core competencies. Monotonectally initiate performance based models after real-time', 'Cairo', 'Egypt', 3232332, 'user1@user.com', 223321323, 'Appropriately recaptiualize professional metrics vis-a-vis reliable core competencies. Monotonectally initiate performance based models after real-time', 'in porgress', 110, 1, '2022-12-14 12:47:47'),
(6, 'Kemar', 'test', 'Company', 'efsdf', 'Portmore', 'etryuety', 123541, 'knorton711@gmail.com', 2147483647, 'edfwef', 'sent to admins', 30, 54, '2023-11-26 14:46:03');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(3) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `price` varchar(10) NOT NULL,
  `quantity` int(3) NOT NULL DEFAULT 1,
  `image` varchar(200) NOT NULL,
  `exp_date` varchar(200) NOT NULL,
  `category_id` int(3) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `quantity`, `image`, `exp_date`, `category_id`, `status`, `created_at`) VALUES
(1, 'VEGETABLES', 'Collaboratively extend collaborative ROI after client-centric metrics. Energistically enhance scalable scenarios whereas long-term high-impact architectures. Uniquely formulate leading-edge experiences through installed base technology. Quickly pontificate focused data after cutting-edge', '10', 1, 'vegetables.jpg', '2025', 1, 1, '2022-12-07 14:07:43'),
(2, 'MEATS', 'Enthusiastically enable competitive e-business rather than efficient total linkage. Professionally predominate superior infrastructures with unique technology. Assertively plagiarize premium communities vis-a-vis professional channels. ', '40', 1, 'meats.jpg', '2023', 2, 1, '2022-12-07 14:07:43'),
(3, 'FISHES', 'Interactively predominate cross-media web services and leveraged e-tailers. Authoritatively drive visionary leadership without resource maximizing value. Credibly transform an expanded array of architectures for compelling results. ', '50', 1, 'fish.jpg', '2024', 3, 1, '2022-12-07 15:30:26'),
(4, 'FRUITS', 'Uniquely incentivize real-time services through e-business intellectual capital. Dramatically recaptiualize global internal or \"organic\" sources after timely schemas. Progressively network cross ', '40', 1, 'fruits.jpg', '2024', 4, 1, '2022-12-07 15:30:26'),
(5, 'meat loaf', 'Quickly administrate viral best practices without out-of-the-box benefits. Competently formulate bleeding-edge metrics without flexible niche markets. Conveniently customize leveraged networks via orthogonal convergence. Appropriately ', '30', 1, 'meats.jpg', '2024', 2, 1, '2022-12-08 09:24:54'),
(6, 'tomatos', 'Globally coordinate cross-media e-tailers vis-a-vis quality methodologies. Efficiently parallel task competitive synergy after ubiquitous metrics. Efficiently synthesize cost effective core ', '10', 1, 'vegetables.jpg', '2024', 1, 1, '2022-12-08 09:32:32'),
(11, 'Asian greens', '\r\nNutrition\r\n\r\nMany Asian vegetables are a good source of vitamins A, C and K, and contain a dietary significant amount of potassium.\r\n\r\nChinese cabbage is a good source of folate and vitamin C, and contains a dietary significant amount of potassium.\r\n\r\nBok choy is a good source of folate and vitamin K, a source of vitamin A, vitamin B6 and vitamin C, and contains a dietary significant amount of potassium.\r\n\r\nTatsoi is a good source of folate, vitamin A and vitamin K, a source of vitamin B6, vitamin C, calcium and iron, and contains a dietary significant amount of potassium.\r\n\r\nChoy sum is a good source of folate and vitamin K, a source of niacin, vitamin A, vitamin B6, vitamin C and calcium, and contains a dietary significant amount of potassium.\r\n', '12', 1, 'asian-greens__FitMaxWzYxNSw2MTVd.jpg', '2026', 1, 1, '2023-11-26 17:28:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `phone_number` varchar(30) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `username`, `mypassword`, `image`, `address`, `city`, `country`, `zip_code`, `phone_number`, `created_at`) VALUES
(54, 'knorton711@gmail.com', 'knorton711@gmail.com', 'knorton711@gmail.com', '$2y$10$PMfzdL4tQ4y.9FIdFAiC5edurna7ts.oMufKDyZlHkSC5LtFjM8i6', 'user.png', NULL, NULL, NULL, NULL, NULL, '2023-11-21 14:11:35'),
(55, 'kemar', 'kn@gmail.com', 'kemar norton', '$2y$10$roxDZf4QTkF5kAjaCX3J/.qewvUwi4RYvxqtdXXG2rBJl745t3oTG', 'user.png', NULL, NULL, NULL, NULL, NULL, '2023-11-26 17:10:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
