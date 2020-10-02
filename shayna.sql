-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2020 at 06:06 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shayna`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_06_23_015826_create_products_table', 2),
(5, '2020_06_23_034335_create_product_galleries_table', 3),
(6, '2020_06_23_035324_create_transactions__table', 4),
(7, '2020_06_23_035855_create_transaction_details_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `type`, `description`, `price`, `quantity`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Uniqlo Brand', 'uniqlo-brand', 'Parka', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ac erat in risus dictum hendrerit. Integer tristique elit justo, nec pharetra elit elementum eu. Cras vestibulum luctus justo, eget pulvinar ligula tincidunt nec. Sed quis porta nulla. Mauris ac quam tristique enim varius sollicitudin nec non turpis. Nunc et interdum mi, a dictum diam. Morbi at suscipit neque. Duis mi urna, rutrum et porta eget, imperdiet at turpis. In in ipsum a quam sodales vehicula. Morbi bibendum sem purus, a egestas nisi feugiat et. Aenean volutpat arcu id elit tristique facilisis. Duis in vulputate nibh. Quisque nec sem efficitur, volutpat arcu eget, finibus odio. Phasellus viverra, quam quis mattis suscipit, turpis ipsum viverra lectus, vitae commodo nisi justo ac velit.</p>', 20, 97, NULL, '2020-06-26 19:11:53', '2020-07-11 19:50:26'),
(2, 'Zara', 'zara', 'Tas', '<p>Ini adalah tas</p>', 12, 200, NULL, '2020-06-26 19:12:22', '2020-06-26 19:12:22'),
(3, 'BROZER', 'brozer', 'Slendang', '<p>Ini adalah sepatu</p>', 12, 111, NULL, '2020-06-26 21:20:24', '2020-06-29 17:39:53');

-- --------------------------------------------------------

--
-- Table structure for table `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_galleries`
--

INSERT INTO `product_galleries` (`id`, `products_id`, `photo`, `is_default`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'assetes/product/ZX0TvCoShonSKnGF8xJI3c2cfz8rCMsWfrHgiwc0.jpeg', 1, NULL, '2020-06-29 17:34:51', '2020-06-29 17:34:51'),
(2, 2, 'assetes/product/yVHTqGG3yNSeTgiODxdK05S9rG9ssqFGNo8lwxQV.jpeg', 1, NULL, '2020-06-29 17:35:09', '2020-06-29 17:35:09'),
(3, 3, 'assetes/product/arWNtM6bvg4VfgyhDzAm9A9wwjExZzY1v2bEO6dT.jpeg', 1, NULL, '2020-06-29 17:36:21', '2020-06-29 17:36:21'),
(4, 1, 'assetes/product/TbnSRtmeCveBG8eMUN6ZPWZaFp2sae9JxQqDIuqP.jpeg', 0, NULL, '2020-07-01 17:00:16', '2020-07-01 17:00:16'),
(5, 2, 'assetes/product/fw9HAzrXvdX9QPKZR9zAOCGmWo7whYFc9Wfl5Sph.jpeg', 0, NULL, '2020-07-01 17:01:22', '2020-07-01 17:01:22'),
(6, 3, 'assetes/product/2IwT0Wugh7mXSYTZzT4sF8qBWRwCHxyGKlVF9CDi.jpeg', 0, NULL, '2020-07-01 17:01:41', '2020-07-01 17:01:41');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `uuid`, `name`, `email`, `number`, `address`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'TRX001', 'Ferry M.RD', 'ferrym18.fm@gmail.com', '089653416441', 'Baleendah', 20, 'SUCCESS', NULL, '2020-06-27 16:27:23', '2020-06-28 03:39:20'),
(2, 'TRX14797167', 'Galih', 'galih@gmail.com', '089765478', 'Bandung', 100, 'SUCCESS', NULL, '2020-06-28 19:27:08', '2020-07-11 18:50:24'),
(3, 'TRX98951764', 'Angga', 'angga@gmail.com', '089761551', 'sentra duta', 22, 'PENDING', NULL, '2020-07-04 06:44:20', '2020-07-04 06:44:20'),
(4, 'TRX72206433', 'Dea', 'dea@gmail.com', '09827557', 'Cihanjuang', 22, 'PENDING', NULL, '2020-07-11 18:48:25', '2020-07-11 18:48:25');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `products_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, '2020-06-27 16:28:27', '2020-06-27 16:28:27'),
(2, 2, 1, NULL, '2020-06-28 19:27:09', '2020-06-28 19:27:09'),
(3, 3, 1, NULL, '2020-07-04 06:44:20', '2020-07-04 06:44:20'),
(4, 4, 1, NULL, '2020-07-11 18:48:25', '2020-07-11 18:48:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ferry Muhamad Ramdhani', 'ferrym18.fm@gmail.com', NULL, '$2y$10$79DQIyjW3AJUMaqjx7iFjup2qZj1BjuZ3Sh3yzLk6m6q5Qa6tMrd2', NULL, '2020-06-23 03:32:48', '2020-06-23 03:32:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
