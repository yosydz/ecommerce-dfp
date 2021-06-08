-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2021 at 10:51 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `area` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `area`, `city`, `zip`, `created_at`, `updated_at`) VALUES
(1, '131, Dhanmondi', 'Dhaka', 1229, NULL, NULL),
(2, 'Mirpur 10', 'Dhaka', 1772, NULL, NULL),
(3, 'Mirpur 2', 'Dhaka', 1223, NULL, NULL),
(4, 'Uttora', 'Dhaka', 1233, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '12345', 'Electro', '2018-08-27 17:00:00', '2018-08-27 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Hoodie', 'All Hoodie', '2019-02-08 17:00:00', '2019-02-08 17:00:00'),
(2, 'Shirt', 'All Shirt', '2019-02-08 17:00:00', '2019-02-08 17:00:00'),
(3, 'Polo Shirt', 'All Polo Shirt', '2019-02-08 17:00:00', '2019-02-08 17:00:00'),
(4, 'Kemeja', 'All Kemeja', '2019-02-08 17:00:00', '2019-02-08 17:00:00'),
(5, 'Blazer', 'All Blazer', '2019-02-08 17:00:00', '2019-02-08 17:00:00'),
(6, 'Sweater', 'All Sweater', '2019-02-08 17:00:00', '2019-02-08 17:00:00'),
(7, 'Rompi', 'All Rompi', '2019-02-08 17:00:00', '2019-02-08 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_04_19_173215_create_admins_table', 1),
(2, '2020_04_19_175655_create_addresses_table', 1),
(3, '2020_04_19_175938_create_categories_table', 1),
(4, '2020_04_20_141633_create_products_table', 1),
(5, '2020_04_20_142309_create_users_table', 1),
(6, '2020_04_20_142632_create_sales_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `colors` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `tag` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image_name`, `description`, `colors`, `price`, `discount`, `tag`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Jeep Spirit Classic est.', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Bahan - Flecee Tebal<br />Style - Casual<br />Asal Produk - Lokal\"<br />Merek - Jeep Spirit<br/></p>\r\n</div>', '#bc3f3d', 214200, 205000, 'New', 1, '2019-02-08 17:00:00', '2019-02-08 17:00:00'),
(3, 'Elstinko Hoodie Thrift', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Bahan - Katun Tebal<br />Style - Casual<br />Asal Produk - Lokal\"<br />Merek - Elstinko<br/>Kantong tengah model kanguru<br/></p>\r\n</div>', '#1a1e33', 94920, 91000, 'New', 1, '2019-02-08 17:00:00', '2019-02-08 17:00:00'),
(4, 'Jeep Spirit  Hoodie Pro', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Bahan - Katun Tebal<br />Style - Casual<br />Asal Produk - Lokal\"<br />Merek - Jeep Spirit<br/>Saku tengah luas<br/>Bahan adem dipake<br/></p>\r\n</div>', '#c0c0c0', 115500, 111000, 'Hot', 1, '2019-02-08 17:00:00', '2019-02-08 17:00:00'),
(5, 'Attitude White Shirt Berempat', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Bahan - Polyester Soft<br />Style - Casual<br />Asal Produk - Lokal\"<br />Merek - Berempat Clt<br/>Sablon Awet<br/>Bahan adem dipake<br/></p>\r\n</div>', '#ff80ff,#c0c0c0,#000000', 71900, 71000, 'New', 2, '2019-02-08 17:00:00', '2019-02-08 17:00:00'),
(6, 'Dickies Shirt Original 22', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Bahan - Polyester Soft<br />Style - Casual<br />Asal Produk - Lokal\"<br />Merek - Dickies<br/>Tag full<br/>Bahan adem dipake<br/></p>\r\n</div>', '#0080c0,#000000,#804040', 95000, 94000, 'Hot', 2, '2019-02-08 17:00:00', '2019-02-09 17:00:00'),
(8, 'Raise the Bear shirt cool', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Bahan - Polyester Soft<br />Style - Casual<br />Asal Produk - Lokal\"<br />Merek - Raise The Beer<br/>Tag full<br/>Bahan adem dipake<br/></p>\r\n</div>', '#000000', 3000, 2290, 'Hot', 2, '2019-02-08 17:00:00', '2019-02-11 17:00:00'),
(11, 'Kemeja Flanel Distro Bdg', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Flanel<br />Style - Casual<br />Asal Produk - Lokal\"<br />Merek - Bdg distro<br/>Tag full<br/>Bahan hangat dipake<br/></p>\r\n</div>', '#000000', 105530, 101000, 'Hot', 4, '2019-02-08 17:00:00', '2019-02-08 17:00:00'),
(12, 'Kemeja Flanel Distro Bdg Blue color', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Flanel<br />Style - Casual<br />Asal Produk - Lokal\"<br />Merek - Bdg distro<br/>Tag full<br/>Bahan hangat dipake<br/></p>\r\n</div>', '#000000', 78850, 75000, 'New', 4, '2019-02-08 17:00:00', '2019-02-08 17:00:00'),
(15, 'Kemeja Flanel Distro Bdg Zebra', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Flanel<br />Style - Casual<br />Asal Produk - Lokal\"<br />Merek - Bdg distro<br/>Tag full<br/>Bahan hangat dipake<br/></p>\r\n</div>', '#000000', 31500, 30000, 'New', 4, '2019-02-08 17:00:00', '2019-02-08 17:00:00'),
(16, 'Harrington Blazer sensor MMIX', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Bahan - Mat Taslan<br />Style - Casual<br />Asal Produk - Lokal\"<br />Merek - Hurrington<br/>Tag full<br/>Waterproof<br/></p>\r\n</div>', '#000000', 5100, 4300, 'Hot', 5, '2019-02-08 17:00:00', '2019-02-08 17:00:00'),
(17, 'Harrington Blazer sensor MMIX Maroon', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Bahan - Mat Taslan<br />Style - Casual<br />Asal Produk - Lokal\"<br />Merek - Hurrington<br/>Tag full<br/>Waterproof<br/></p>\r\n</div>', '#004080,#c0c0c0', 5000, 4500, 'New', 5, '2019-02-08 17:00:00', '2019-02-08 17:00:00'),
(18, 'Harrington Blazer sensor MMIX Navy', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Bahan - Mat Taslan<br />Style - Casual<br />Asal Produk - Lokal\"<br />Merek - Hurrington<br/>Tag full<br/>Waterproof<br/></p>\r\n</div>', '#000000', 2500, 1999, 'Hot', 5, '2019-02-08 17:00:00', '2019-02-08 17:00:00'),
(19, 'Vest Thrift Leader Rompi', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Bahan - Kain Jeans<br />Style - Casual<br />Asal Produk - Lokal\"<br />Merek - Leader Vest<br/>Tag full<br/>Nyaman dipake<br/></p>\r\n</div>', '#0000ff,#000000', 3300, 2999, 'Hot', 7, '2019-02-08 17:00:00', '2019-02-08 17:00:00'),
(20, 'Vest Thrift Leader Rompi Biru muda', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Bahan - Kain Jeans<br />Style - Casual<br />Asal Produk - Lokal\"<br />Merek - Leader Vest<br/>Tag full<br/>Nyaman dipake<br/></p>\r\n</div>', '#000000', 1500, 1500, 'New', 7, '2019-02-08 17:00:00', '2019-02-08 17:00:00'),
(21, 'Vest Thrift Leader Rompi Biru Cream susu', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Bahan - Kain Jeans<br />Style - Casual<br />Asal Produk - Lokal\"<br />Merek - Leader Vest<br/>Tag full<br/>Nyaman dipake<br/></p>\r\n</div>', '#000000,#808080', 1300, 1199, 'Hot', 7, '2019-02-08 17:00:00', '2019-02-08 17:00:00'),
(22, 'Pedeka Polo Shirt Gelap pattern', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Bahan - Lacoste CVC 30s<br />Style - Casual<br />Asal Produk - Lokal\"<br />Merek - Pedeka<br/>Tag full<br/>Nyaman dipake<br/></p>\r\n</div>', '#000000', 44300, 43999, 'Hot', 3, '2019-02-08 17:00:00', '2019-02-11 17:00:00'),
(23, 'Pedeka Polo Shirt 2 Color', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Bahan - Lacoste CVC 30s<br />Style - Casual<br />Asal Produk - Lokal\"<br />Merek - Pedeka<br/>Tag full<br/>Nyaman dipake<br/></p>\r\n</div>', '#000000', 6100, 5999, 'New', 3, '2019-02-08 17:00:00', '2019-02-08 17:00:00'),
(24, 'Pedeka Polo Shirt ngejreng', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Bahan - Lacoste CVC 30s<br />Style - Casual<br />Asal Produk - Lokal\"<br />Merek - Pedeka<br/>Tag full<br/>Nyaman dipake<br/></p>\r\n</div>', '#000000', 45000, 43000, 'Hot', 3, '2019-02-08 17:00:00', '2019-02-08 17:00:00'),
(25, 'Polo Sweater Dark Smooth', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Bahan - Katun<br />Style - Casual<br />Asal Produk - Lokal\"<br />Merek - Polo Ralph<br/>Tag full<br/>Nyaman dipake<br/></p>\r\n</div>', '#000000,#ff0000,#c0c0c0', 21000, 20000, 'Hot', 6, '2019-02-08 17:00:00', '2019-02-11 17:00:00'),
(26, 'Polo Sweater Ralph Degradasi lengan', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Bahan - Katun<br />Style - Casual<br />Asal Produk - Lokal\"<br />Merek - Polo Ralph<br/>Tag full<br/>Nyaman dipake<br/></p>\r\n</div>', '#000000', 46730, 45000, 'Hot', 6, '2019-02-09 17:00:00', '2019-02-11 17:00:00'),
(27, 'Polo Sweater Ralph LaurenXX', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Bahan - Katun<br />Style - Casual<br />Asal Produk - Lokal\"<br />Merek - Polo Ralph<br/>Tag full<br/>Nyaman dipake<br/></p>\r\n</div>', '#000000', 31500, 30000, 'New', 6, '2019-02-09 17:00:00', '2019-02-09 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `product_id`, `order_status`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, '3:1:#000000:1', 'Delivered', 91000, '2019-02-02 00:32:33', '2021-06-05 02:23:12'),
(2, 2, '5:1:#c0c0c0:1,30:2:#000000:2', 'On Process', 93000, '2019-02-11 07:12:27', '2021-06-05 02:23:22'),
(3, 2, '22:1:#000000:1', 'Delivered', 43999, '2019-02-07 09:29:16', '2019-02-10 17:00:00'),
(4, 3, '18:2:#000000:1,38:1:#8080ff:2,30:1:#000000:3', 'On Process', 209998, '2019-02-06 05:05:30', '2019-02-10 17:00:00'),
(5, 4, '12:1:#000000:2,17:1:#c0c0c0:3', 'On Process', 79500, '2019-02-11 09:56:54', '2019-02-10 17:00:00'),
(6, 4, '5:1:#c0c0c0:1', 'Cancel', 71000, '2019-02-11 10:07:40', '2019-02-10 17:00:00'),
(7, 4, '1:1:#c0c0c0:1', 'Placed', 205000, '2019-02-05 05:24:53', '2019-02-10 17:00:00'),
(8, 2, '20:1:#000000:1,25:1:#000000:2', 'Delivered', 21500, '2019-02-13 02:51:07', '2019-02-10 17:00:00'),
(9, 2, '27:1:#000000:1', 'Delivered', 30000, '2019-02-10 00:33:46', '2019-02-10 17:00:00'),
(10, 2, '44:1:#ff0000:1', 'Cancel', 3500, '2019-02-11 10:09:12', '2019-02-10 17:00:00'),
(11, 2, '28:1:#400080:1', 'On Process', 24000, '2019-02-11 10:09:49', '2019-02-10 17:00:00'),
(12, 2, '34:1:#ff0000:1', 'Delivered', 10500, '2019-02-04 21:55:26', '2019-02-10 17:00:00'),
(13, 1, '4:1:#c0c0c0:1', 'On Process', 111000, '2019-02-14 13:54:08', '2019-02-13 17:00:00'),
(14, 1, '4:1:#c0c0c0:1', 'Placed', 111000, '2021-06-03 21:01:55', '2021-06-03 21:01:55'),
(15, 1, '4:13:#c0c0c0:1', 'Placed', 1443000, '2021-06-05 02:22:07', '2021-06-05 02:22:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prev_password` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `phone`, `prev_password`, `address_id`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'john@examle.com', '12345', '01711001133', NULL, 1, '2019-02-08 17:00:00', '2019-02-08 17:00:00'),
(2, 'Shakib Mostahid', 'b@gmail.com', '12345', '01922991100', NULL, 2, '2019-02-10 17:00:00', '2019-02-10 17:00:00'),
(3, 'Nishat Ashraf', 'c@gmail.com', '12345', '01899001144', NULL, 3, '2019-02-10 17:00:00', '2019-02-10 17:00:00'),
(4, 'Ayomi Hridy', 'd@gmail.com', '12345', '0111111111', NULL, 4, '2019-02-10 17:00:00', '2019-02-10 17:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_address_id_foreign` (`address_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
