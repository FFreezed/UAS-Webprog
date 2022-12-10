-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Des 2022 pada 04.53
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stok-obat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Tablet', '2022-12-07 09:00:17', '2022-12-07 09:00:17'),
(2, 'Salep', '2022-12-07 09:00:29', '2022-12-07 09:00:29'),
(3, 'Alat', '2022-12-07 09:01:02', '2022-12-07 09:01:02'),
(7, 'Infus', '2022-12-07 09:02:31', '2022-12-07 09:02:31'),
(8, 'Injeksi', '2022-12-07 09:02:48', '2022-12-07 09:02:48'),
(9, 'Sirup', '2022-12-07 09:03:14', '2022-12-07 09:03:14'),
(10, 'Tetes', '2022-12-07 09:03:29', '2022-12-07 09:03:29'),
(11, 'Bedak', '2022-12-07 09:03:44', '2022-12-07 09:03:44'),
(12, 'Alkohol', '2022-12-07 09:03:56', '2022-12-07 09:03:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_00_000000_create_settings_table', 1),
(2, '2014_10_00_000001_add_group_column_on_settings_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2021_06_11_190256_create_categories_table', 1),
(7, '2021_06_12_145702_create_suppliers_table', 1),
(8, '2021_06_13_153320_create_purchases_table', 1),
(9, '2021_06_14_092817_add_avatar_to_users_table', 1),
(10, '2021_06_14_112444_create_notifications_table', 1),
(11, '2021_06_15_013016_create_products_table', 1),
(12, '2021_06_15_022108_create_sales_table', 1),
(13, '2021_06_15_022848_give_discount_default_value_in_products_table', 1),
(14, '2021_06_15_024351_make_discount_decimal', 1),
(15, '2021_06_15_125136_add_total_price_and_purchase_id_to_sales_table', 1),
(16, '2021_06_15_141725_create_permission_tables', 1),
(17, '2021_06_25_190936_change_product_price_data_typ', 1),
(18, '2021_06_25_191107_change_purchase_price_data_typ', 1),
(19, '2021_07_26_143623_change_purchase_name', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view-sales', 'web', NULL, NULL),
(2, 'create-sales', 'web', NULL, NULL),
(3, 'destroy-sale', 'web', NULL, NULL),
(4, 'update-sales', 'web', NULL, NULL),
(5, 'view-reports', 'web', NULL, NULL),
(6, 'view-category', 'web', NULL, NULL),
(7, 'create-category', 'web', NULL, NULL),
(8, 'destroy-category', 'web', NULL, NULL),
(9, 'update-category', 'web', NULL, NULL),
(10, 'view-products', 'web', NULL, NULL),
(11, 'create-product', 'web', NULL, NULL),
(12, 'update-product', 'web', NULL, NULL),
(13, 'destroy-product', 'web', NULL, NULL),
(14, 'view-purchase', 'web', NULL, NULL),
(15, 'create-purchase', 'web', NULL, NULL),
(16, 'update-purchase', 'web', NULL, NULL),
(17, 'destroy-purchase', 'web', NULL, NULL),
(18, 'view-supplier', 'web', NULL, NULL),
(19, 'create-supplier', 'web', NULL, NULL),
(20, 'update-supplier', 'web', NULL, NULL),
(21, 'destroy-supplier', 'web', NULL, NULL),
(22, 'view-users', 'web', NULL, NULL),
(23, 'create-user', 'web', NULL, NULL),
(24, 'update-user', 'web', NULL, NULL),
(25, 'destroy-user', 'web', NULL, NULL),
(26, 'view-access-control', 'web', NULL, NULL),
(27, 'view-role', 'web', NULL, NULL),
(28, 'update-role', 'web', NULL, NULL),
(29, 'destroy-role', 'web', NULL, NULL),
(30, 'create-role', 'web', NULL, NULL),
(31, 'view-permission', 'web', NULL, NULL),
(32, 'create-permission', 'web', NULL, NULL),
(33, 'update-permission', 'web', NULL, NULL),
(34, 'destroy-permission', 'web', NULL, NULL),
(35, 'view-expired-products', 'web', NULL, NULL),
(36, 'view-outstock-products', 'web', NULL, NULL),
(37, 'backup-app', 'web', NULL, NULL),
(38, 'backup-db', 'web', NULL, NULL),
(39, 'view-settings', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` decimal(15,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `discount` decimal(15,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `purchase_id`, `price`, `discount`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '15000.00', '0.00', NULL, NULL, '2022-12-07 11:47:55', '2022-12-07 11:47:55'),
(2, 2, '12000.00', '0.00', NULL, NULL, '2022-12-07 11:48:30', '2022-12-07 11:48:30'),
(3, 3, '8000.00', '0.00', NULL, NULL, '2022-12-07 11:49:11', '2022-12-07 11:49:11'),
(4, 4, '13000.00', '0.00', NULL, NULL, '2022-12-07 11:49:52', '2022-12-07 11:49:52'),
(5, 5, '7000.00', '0.00', NULL, NULL, '2022-12-07 11:50:21', '2022-12-07 11:50:21'),
(6, 6, '15000.00', '0.00', NULL, NULL, '2022-12-07 11:50:44', '2022-12-07 11:50:44'),
(7, 7, '10000.00', '0.00', NULL, NULL, '2022-12-07 11:51:23', '2022-12-07 11:51:23'),
(8, 8, '10000.00', '0.00', NULL, NULL, '2022-12-07 11:51:51', '2022-12-07 11:51:51'),
(9, 9, '35000.00', '0.00', NULL, NULL, '2022-12-07 11:52:19', '2022-12-07 11:52:19'),
(10, 16, '5000.00', '0.00', NULL, NULL, '2022-12-07 11:52:22', '2022-12-07 11:56:09'),
(11, 10, '25000.00', '0.00', NULL, NULL, '2022-12-07 11:52:47', '2022-12-07 11:52:47'),
(12, 11, '5000.00', '0.00', NULL, NULL, '2022-12-07 11:53:23', '2022-12-07 11:53:23'),
(13, 12, '5000.00', '0.00', NULL, NULL, '2022-12-07 11:53:48', '2022-12-07 11:53:48'),
(14, 13, '10000.00', '0.00', NULL, NULL, '2022-12-07 11:54:15', '2022-12-07 11:54:15'),
(15, 14, '5000.00', '0.00', NULL, NULL, '2022-12-07 11:54:36', '2022-12-07 11:54:36'),
(16, 15, '10000.00', '0.00', NULL, NULL, '2022-12-07 11:55:13', '2022-12-07 11:55:13'),
(17, 17, '8000.00', '0.00', NULL, NULL, '2022-12-07 11:56:45', '2022-12-07 11:56:45'),
(18, 18, '5000.00', '0.00', NULL, NULL, '2022-12-07 11:57:20', '2022-12-07 11:57:20'),
(19, 19, '15000.00', '0.00', NULL, NULL, '2022-12-07 11:57:51', '2022-12-07 11:57:51'),
(20, 20, '10000.00', '0.00', NULL, NULL, '2022-12-07 11:58:52', '2022-12-07 11:58:52'),
(21, 21, '10000.00', '0.00', NULL, NULL, '2022-12-07 11:59:26', '2022-12-07 11:59:26'),
(22, 22, '5000.00', '0.00', NULL, NULL, '2022-12-07 12:02:23', '2022-12-07 12:02:23'),
(23, 23, '15000.00', '0.00', NULL, NULL, '2022-12-07 12:02:53', '2022-12-07 12:02:53'),
(24, 24, '5000.00', '0.00', NULL, NULL, '2022-12-07 12:03:32', '2022-12-07 12:03:32'),
(25, 25, '5000.00', '0.00', NULL, NULL, '2022-12-07 12:03:58', '2022-12-07 12:03:58'),
(26, 26, '20000.00', '0.00', NULL, NULL, '2022-12-07 12:04:33', '2022-12-07 12:04:33'),
(27, 27, '20000.00', '0.00', NULL, NULL, '2022-12-07 12:05:43', '2022-12-07 12:05:43'),
(28, 28, '20000.00', '0.00', NULL, NULL, '2022-12-07 12:06:14', '2022-12-07 12:06:14'),
(29, 29, '15000.00', '0.00', NULL, NULL, '2022-12-07 12:06:48', '2022-12-07 12:06:48'),
(30, 30, '15000.00', '0.00', NULL, NULL, '2022-12-07 12:07:20', '2022-12-07 12:07:20'),
(31, 31, '5000.00', '0.00', NULL, NULL, '2022-12-07 12:07:53', '2022-12-07 12:07:53'),
(32, 32, '10000.00', '0.00', NULL, NULL, '2022-12-07 12:08:49', '2022-12-07 12:08:49'),
(33, 33, '27000.00', '0.00', NULL, NULL, '2022-12-07 12:09:36', '2022-12-07 12:10:08'),
(34, 34, '8000.00', '0.00', NULL, NULL, '2022-12-07 12:10:55', '2022-12-07 12:10:55'),
(35, 35, '12000.00', '0.00', NULL, NULL, '2022-12-07 12:12:03', '2022-12-07 12:12:03'),
(36, 36, '30000.00', '0.00', NULL, NULL, '2022-12-07 12:12:44', '2022-12-07 12:12:44'),
(37, 37, '75000.00', '0.00', NULL, NULL, '2022-12-07 12:13:18', '2022-12-07 12:13:18'),
(38, 38, '55000.00', '0.00', NULL, NULL, '2022-12-07 12:13:51', '2022-12-07 12:13:51'),
(39, 39, '55000.00', '0.00', NULL, NULL, '2022-12-07 12:14:14', '2022-12-07 12:14:14'),
(40, 40, '5000.00', '0.00', NULL, NULL, '2022-12-07 12:14:56', '2022-12-07 12:14:56'),
(41, 41, '5000.00', '0.00', NULL, NULL, '2022-12-07 12:15:47', '2022-12-07 12:15:47'),
(42, 42, '10000.00', '0.00', NULL, NULL, '2022-12-07 12:16:22', '2022-12-07 12:16:22'),
(43, 43, '8000.00', '0.00', NULL, NULL, '2022-12-07 12:16:56', '2022-12-07 12:16:56'),
(44, 44, '8000.00', '0.00', NULL, NULL, '2022-12-07 12:17:30', '2022-12-07 12:17:56'),
(45, 45, '10000.00', '0.00', NULL, NULL, '2022-12-07 12:18:31', '2022-12-07 12:18:31'),
(46, 46, '10000.00', '0.00', NULL, NULL, '2022-12-07 12:19:11', '2022-12-07 12:19:11'),
(47, 47, '8000.00', '0.00', NULL, NULL, '2022-12-07 12:19:43', '2022-12-07 12:19:43'),
(48, 48, '5000.00', '0.00', NULL, NULL, '2022-12-07 12:20:17', '2022-12-07 12:20:17'),
(49, 49, '20000.00', '0.00', NULL, NULL, '2022-12-07 12:21:09', '2022-12-07 12:21:35'),
(50, 50, '12000.00', '0.00', NULL, NULL, '2022-12-07 12:22:16', '2022-12-07 12:22:16'),
(51, 54, '8000.00', '0.00', NULL, NULL, '2022-12-07 12:22:43', '2022-12-07 12:26:31'),
(52, 51, '12000.00', '0.00', NULL, NULL, '2022-12-07 12:22:44', '2022-12-07 12:22:44'),
(53, 52, '5000.00', '0.00', NULL, NULL, '2022-12-07 12:23:34', '2022-12-07 12:23:34'),
(54, 53, '5000.00', '0.00', NULL, NULL, '2022-12-07 12:24:16', '2022-12-07 12:24:16'),
(55, 55, '10000.00', '0.00', NULL, NULL, '2022-12-07 12:25:20', '2022-12-07 12:25:20'),
(56, 56, '8000.00', '0.00', NULL, NULL, '2022-12-07 12:27:54', '2022-12-07 12:27:54'),
(57, 57, '8000.00', '0.00', NULL, NULL, '2022-12-07 20:20:09', '2022-12-07 20:20:09'),
(58, 58, '8000.00', '0.00', NULL, NULL, '2022-12-07 20:21:20', '2022-12-07 20:21:20'),
(59, 59, '10000.00', '0.00', NULL, NULL, '2022-12-07 20:22:13', '2022-12-07 20:22:13'),
(60, 60, '12000.00', '0.00', NULL, NULL, '2022-12-07 20:23:11', '2022-12-07 20:23:11'),
(61, 61, '15000.00', '0.00', NULL, NULL, '2022-12-07 20:23:43', '2022-12-07 20:23:43'),
(62, 62, '5000.00', '0.00', NULL, NULL, '2022-12-07 20:25:11', '2022-12-07 20:25:11'),
(63, 63, '22000.00', '0.00', NULL, NULL, '2022-12-07 20:26:00', '2022-12-07 20:26:00'),
(64, 64, '25000.00', '0.00', NULL, NULL, '2022-12-07 20:26:46', '2022-12-07 20:26:46'),
(65, 65, '15000.00', '0.00', NULL, NULL, '2022-12-07 20:27:27', '2022-12-07 20:27:27'),
(66, 66, '20000.00', '0.00', NULL, NULL, '2022-12-07 20:29:14', '2022-12-07 20:29:14'),
(67, 67, '5000.00', '0.00', NULL, NULL, '2022-12-07 20:29:53', '2022-12-07 20:29:53'),
(68, 69, '8000.00', '0.00', NULL, NULL, '2022-12-07 20:30:49', '2022-12-07 20:30:49'),
(69, 70, '32000.00', '0.00', NULL, NULL, '2022-12-07 20:31:28', '2022-12-07 20:31:28'),
(70, 71, '5000.00', '0.00', NULL, NULL, '2022-12-07 20:32:31', '2022-12-07 20:32:31'),
(71, 72, '15000.00', '0.00', NULL, NULL, '2022-12-07 20:33:01', '2022-12-07 20:33:01'),
(72, 73, '8000.00', '0.00', NULL, NULL, '2022-12-07 20:33:53', '2022-12-07 20:33:53'),
(73, 74, '60000.00', '0.00', NULL, NULL, '2022-12-07 20:34:41', '2022-12-07 20:34:41'),
(74, 75, '20000.00', '0.00', NULL, NULL, '2022-12-07 20:35:17', '2022-12-07 20:35:17'),
(75, 76, '20000.00', '0.00', NULL, NULL, '2022-12-07 20:35:43', '2022-12-07 20:35:43'),
(76, 77, '10000.00', '0.00', NULL, NULL, '2022-12-07 20:36:11', '2022-12-07 20:36:11'),
(77, 78, '5000.00', '0.00', NULL, NULL, '2022-12-07 20:36:46', '2022-12-07 20:36:46'),
(78, 79, '12000.00', '0.00', NULL, NULL, '2022-12-07 20:37:15', '2022-12-07 20:37:15'),
(79, 80, '5000.00', '0.00', NULL, NULL, '2022-12-07 20:38:28', '2022-12-07 20:38:28'),
(80, 81, '5000.00', '0.00', NULL, NULL, '2022-12-07 20:39:04', '2022-12-07 20:39:04'),
(81, 82, '12000.00', '0.00', NULL, NULL, '2022-12-07 20:39:52', '2022-12-07 20:39:52'),
(82, 68, '12000.00', '0.00', NULL, NULL, '2022-12-07 20:40:43', '2022-12-07 20:40:43'),
(83, 83, '5000.00', '0.00', NULL, NULL, '2022-12-07 20:41:21', '2022-12-07 20:41:21'),
(84, 84, '8000.00', '0.00', NULL, NULL, '2022-12-07 20:42:09', '2022-12-07 20:42:09'),
(85, 85, '10000.00', '0.00', NULL, NULL, '2022-12-07 20:43:08', '2022-12-07 20:43:08'),
(86, 86, '25000.00', '0.00', NULL, NULL, '2022-12-07 20:43:45', '2022-12-07 20:43:45'),
(87, 87, '15000.00', '0.00', NULL, NULL, '2022-12-07 20:44:36', '2022-12-07 20:44:36'),
(88, 88, '12000.00', '0.00', NULL, NULL, '2022-12-07 20:45:36', '2022-12-07 20:45:36'),
(89, 89, '8000.00', '0.00', NULL, NULL, '2022-12-07 20:46:04', '2022-12-07 20:46:04'),
(90, 90, '8000.00', '0.00', NULL, NULL, '2022-12-07 20:47:37', '2022-12-07 20:47:37'),
(91, 91, '10000.00', '0.00', NULL, NULL, '2022-12-07 20:48:05', '2022-12-07 20:48:05'),
(92, 92, '15000.00', '0.00', NULL, NULL, '2022-12-07 20:48:30', '2022-12-07 20:48:30'),
(93, 93, '10000.00', '0.00', NULL, NULL, '2022-12-07 20:49:01', '2022-12-07 20:49:01'),
(94, 94, '15000.00', '0.00', NULL, NULL, '2022-12-07 20:49:35', '2022-12-07 20:49:35'),
(95, 95, '20000.00', '0.00', NULL, NULL, '2022-12-07 20:50:09', '2022-12-07 20:50:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` decimal(15,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_date` date NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `purchases`
--

INSERT INTO `purchases` (`id`, `name`, `category_id`, `supplier_id`, `price`, `quantity`, `expiry_date`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Abocath No. 20', 3, 1, '10000.00', '30', '2027-12-31', NULL, NULL, '2022-12-07 09:15:14', '2022-12-07 09:15:14'),
(2, 'Aciclovir Salp', 2, 1, '8000.00', '30', '2024-11-13', NULL, NULL, '2022-12-07 09:16:18', '2022-12-07 09:16:18'),
(3, 'Acifar 400', 1, 1, '4500.00', '25', '2024-10-10', NULL, NULL, '2022-12-07 09:17:22', '2022-12-07 09:17:22'),
(4, 'Acifar Salp', 2, 1, '8000.00', '25', '2024-08-20', NULL, NULL, '2022-12-07 09:18:17', '2022-12-07 09:18:17'),
(5, 'Afolat', 1, 1, '2000.00', '40', '2024-07-10', NULL, NULL, '2022-12-07 09:19:10', '2022-12-07 09:19:10'),
(6, 'Alkohol Swab', 12, 1, '12000.00', '5', '2024-10-15', NULL, NULL, '2022-12-07 09:20:02', '2022-12-07 09:20:02'),
(7, 'Alofar 300 mg', 1, 1, '5800.00', '10', '2024-10-23', NULL, NULL, '2022-12-07 09:26:33', '2022-12-07 09:26:33'),
(8, 'Allupurinol 300 mg', 1, 1, '6000.00', '25', '2024-06-04', NULL, NULL, '2022-12-07 09:27:53', '2022-12-07 09:27:53'),
(9, 'Andalan Laktasi', 1, 1, '30000.00', '45', '2024-08-24', NULL, NULL, '2022-12-07 09:29:50', '2022-12-07 09:29:50'),
(10, 'Andalan Pil KB', 1, 1, '21000.00', '10', '2024-08-16', NULL, NULL, '2022-12-07 09:30:32', '2022-12-07 09:30:32'),
(11, 'B6', 1, 1, '2000.00', '15', '2024-06-11', NULL, NULL, '2022-12-07 09:32:28', '2022-12-07 09:32:28'),
(12, 'Betabion', 1, 1, '1000.00', '200', '2024-10-23', NULL, NULL, '2022-12-07 09:33:16', '2022-12-07 09:33:16'),
(13, 'Bintamox', 1, 1, '5000.00', '25', '2024-06-13', NULL, NULL, '2022-12-07 09:34:01', '2022-12-07 09:34:01'),
(14, 'Bled Stop Ampul', 1, 1, '2000.00', '45', '2024-02-22', NULL, NULL, '2022-12-07 09:34:44', '2022-12-07 09:34:44'),
(15, 'Broadamox', 1, 1, '5000.00', '10', '2024-08-01', NULL, NULL, '2022-12-07 09:35:23', '2022-12-07 09:35:23'),
(16, 'Bromhexin', 1, 1, '1700.00', '40', '2024-09-18', NULL, NULL, '2022-12-07 09:37:55', '2022-12-07 09:37:55'),
(17, 'Bundavin', 1, 1, '4000.00', '20', '2024-06-27', NULL, NULL, '2022-12-07 09:38:45', '2022-12-07 09:38:45'),
(18, 'Calcipar Plus', 1, 1, '1400.00', '30', '2024-05-24', NULL, NULL, '2022-12-07 09:39:31', '2022-12-07 09:39:31'),
(19, 'Catgut 2/0', 3, 1, '10000.00', '20', '2027-11-18', NULL, NULL, '2022-12-07 09:40:15', '2022-12-07 09:40:15'),
(20, 'Cefadroxyl', 1, 1, '7500.00', '5', '2024-11-21', NULL, NULL, '2022-12-07 09:44:49', '2022-12-07 09:44:49'),
(21, 'Cetrizin', 1, 1, '6000.00', '10', '2024-08-01', NULL, NULL, '2022-12-07 09:46:12', '2022-12-07 09:46:12'),
(22, 'Citotec', 1, 1, '2000.00', '16', '2024-03-21', NULL, NULL, '2022-12-07 09:47:33', '2022-12-07 09:47:33'),
(23, 'Cloven Obat Wasir', 1, 1, '12500.00', '15', '2024-05-31', NULL, NULL, '2022-12-07 09:48:24', '2022-12-07 09:48:24'),
(24, 'CTM', 1, 1, '1500.00', '20', '2024-07-25', NULL, NULL, '2022-12-07 09:50:04', '2022-12-07 09:50:04'),
(25, 'CTM Kalengan 1000 Tablet', 1, 1, '1500.00', '2', '2024-10-23', NULL, NULL, '2022-12-07 09:50:47', '2022-12-07 09:50:47'),
(26, 'Cyclofem Vial', 8, 1, '16500.00', '10', '2024-11-28', NULL, NULL, '2022-12-07 09:51:39', '2022-12-07 09:51:39'),
(27, 'Cyclogeston Vial', 8, 1, '18000.00', '50', '2024-11-21', NULL, NULL, '2022-12-07 09:52:54', '2022-12-07 09:52:54'),
(28, 'Depo Neo 1 CC Vial', 8, 1, '15000.00', '5', '2024-11-07', NULL, NULL, '2022-12-07 09:53:39', '2022-12-07 09:53:39'),
(29, 'Depo Neo 3 CC Vial', 8, 1, '11500.00', '45', '2024-07-31', NULL, NULL, '2022-12-07 09:54:33', '2022-12-07 09:54:33'),
(30, 'Dermaral Salp', 2, 1, '10000.00', '18', '2024-06-12', NULL, NULL, '2022-12-07 09:55:17', '2022-12-07 09:55:17'),
(31, 'Dexanta', 1, 1, '2200.00', '40', '2024-07-17', NULL, NULL, '2022-12-07 10:00:46', '2022-12-07 10:00:46'),
(32, 'Dexymox', 1, 1, '5000.00', '20', '2024-07-08', NULL, NULL, '2022-12-07 10:01:27', '2022-12-07 10:01:27'),
(33, 'Duvadilan', 1, 1, '24000.00', '20', '2024-07-08', NULL, NULL, '2022-12-07 10:02:23', '2022-12-07 10:02:23'),
(34, 'Emturnas Forte', 1, 1, '4000.00', '25', '2024-07-25', NULL, NULL, '2022-12-07 10:03:45', '2022-12-07 10:03:45'),
(35, 'Enbatic Salp', 2, 1, '8000.00', '15', '2024-08-02', NULL, NULL, '2022-12-07 10:04:30', '2022-12-07 10:04:30'),
(36, 'Epidosin Ampul', 8, 1, '25000.00', '45', '2024-09-08', NULL, NULL, '2022-12-07 10:06:39', '2022-12-07 10:06:39'),
(37, 'Etagimicetyn', 1, 1, '7000.00', '50', '2024-08-23', NULL, NULL, '2022-12-07 10:07:47', '2022-12-07 10:07:47'),
(38, 'Etamox', 1, 1, '5000.00', '45', '2024-05-08', NULL, NULL, '2022-12-07 10:08:31', '2022-12-07 10:08:31'),
(39, 'Famotidin', 1, 1, '5000.00', '15', '2024-07-19', NULL, NULL, '2022-12-07 10:09:24', '2022-12-07 10:09:24'),
(40, 'Farmalat', 1, 1, '1800.00', '20', '2024-05-23', NULL, NULL, '2022-12-07 10:09:55', '2022-12-07 10:09:55'),
(41, 'Farmoten', 1, 1, '1800.00', '25', '2024-06-21', NULL, NULL, '2022-12-07 10:10:57', '2022-12-07 10:10:57'),
(42, 'Farsifen', 1, 1, '5000.00', '25', '2024-06-08', NULL, NULL, '2022-12-07 10:11:29', '2022-12-07 10:11:29'),
(43, 'Fasgo Forte', 1, 1, '4000.00', '5', '2024-06-13', NULL, NULL, '2022-12-07 10:14:07', '2022-12-07 10:14:07'),
(44, 'Fasidol Forte', 1, 1, '3200.00', '40', '2024-07-25', NULL, NULL, '2022-12-07 10:14:40', '2022-12-07 10:14:40'),
(45, 'Floxifar', 1, 1, '4700.00', '50', '2024-06-04', NULL, NULL, '2022-12-07 10:15:16', '2022-12-07 10:15:16'),
(46, 'Floxigra', 1, 1, '5000.00', '30', '2024-06-13', NULL, NULL, '2022-12-07 10:16:13', '2022-12-07 10:16:13'),
(47, 'Flutamol', 1, 1, '4000.00', '60', '2024-06-08', NULL, NULL, '2022-12-07 10:16:57', '2022-12-07 10:16:57'),
(48, 'Furosemid', 8, 1, '15000.00', '5', '2024-10-15', NULL, NULL, '2022-12-07 10:17:38', '2022-12-07 10:17:38'),
(49, 'Folamef', 1, 1, '2000.00', '40', '2024-02-13', NULL, NULL, '2022-12-07 10:18:45', '2022-12-07 10:18:45'),
(50, 'Genoint Salp Mata', 2, 1, '8000.00', '25', '2024-10-22', NULL, NULL, '2022-12-07 10:19:55', '2022-12-07 10:19:55'),
(51, 'Genoint Tetes Mata', 10, 1, '8000.00', '35', '2024-06-04', NULL, NULL, '2022-12-07 10:20:58', '2022-12-07 10:20:58'),
(52, 'GG', 1, 1, '1100.00', 'GG', '2024-06-19', NULL, NULL, '2022-12-07 10:21:34', '2022-12-07 10:21:34'),
(53, 'Gradilex', 1, 1, '2200.00', '50', '2024-10-16', NULL, NULL, '2022-12-07 10:22:05', '2022-12-07 10:22:05'),
(54, 'Grafamic', 1, 1, '4500.00', '15', '2024-10-15', NULL, NULL, '2022-12-07 10:22:48', '2022-12-07 10:22:48'),
(55, 'Grafazol', 1, 1, '6000.00', '45', '2024-10-16', NULL, NULL, '2022-12-07 10:24:18', '2022-12-07 10:24:18'),
(56, 'Grantusif', 1, 1, '4500.00', '35', '2024-11-23', NULL, NULL, '2022-12-07 10:25:42', '2022-12-07 10:25:42'),
(57, 'Hufadon', 1, 1, '4000.00', '20', '2024-06-12', NULL, NULL, '2022-12-07 10:41:11', '2022-12-07 10:41:11'),
(58, 'Hufagrip', 1, 1, '4500.00', '25', '2024-10-15', NULL, NULL, '2022-12-07 10:41:57', '2022-12-07 10:41:57'),
(59, 'Hufanoxyl', 1, 1, '5000.00', '15', '2024-06-12', NULL, NULL, '2022-12-07 10:43:31', '2022-12-07 10:43:31'),
(60, 'Hufamycetin', 1, 1, '7500.00', '50', '2024-10-16', NULL, NULL, '2022-12-07 10:44:22', '2022-12-07 10:44:22'),
(61, 'Infus Set Terumo', 7, 1, '10000.00', '35', '2024-06-04', NULL, NULL, '2022-12-07 10:49:21', '2022-12-07 10:49:21'),
(62, 'Kalmethason', 1, 1, '2200.00', '35', '2024-06-27', NULL, NULL, '2022-12-07 10:50:13', '2022-12-07 10:50:13'),
(63, 'Kapas 1/2 kg', 3, 1, '18000.00', '4', '2027-06-15', NULL, NULL, '2022-12-07 10:51:15', '2022-12-07 10:55:32'),
(64, 'Kassa Steril', 3, 1, '21000.00', '4', '2027-06-16', NULL, NULL, '2022-12-07 10:52:36', '2022-12-07 10:56:48'),
(65, 'Kertas Puyer', 3, 1, '12000.00', '6', '2027-02-16', NULL, NULL, '2022-12-07 10:55:02', '2022-12-07 10:55:02'),
(66, 'Librozym Plus', 1, 1, '15400.00', '10', '2024-10-08', NULL, NULL, '2022-12-07 10:57:39', '2022-12-07 10:57:39'),
(67, 'Lokev (Omeprazol)', 1, 1, '1000.00', '25', '2024-06-08', NULL, NULL, '2022-12-07 10:58:30', '2022-12-07 10:58:30'),
(68, 'Ponstelax', 1, 1, '6000.00', '20', '2024-06-08', NULL, NULL, '2022-12-07 10:58:31', '2022-12-07 11:15:06'),
(69, 'Loratadine', 1, 1, '3000.00', '43', '2024-06-20', NULL, NULL, '2022-12-07 10:59:10', '2022-12-07 10:59:10'),
(70, 'Mediamer B6', 1, 1, '27000.00', '5', '2024-02-14', NULL, NULL, '2022-12-07 11:00:21', '2022-12-07 11:00:21'),
(71, 'Microgynon Libi Pil KB', 1, 1, '1000.00', '45', '2024-07-08', NULL, NULL, '2022-12-07 11:01:24', '2022-12-07 11:01:24'),
(72, 'Micropore Selotip Sedang', 3, 1, '1000.00', '30', '2027-06-23', NULL, NULL, '2022-12-07 11:02:08', '2022-12-07 11:02:08'),
(73, 'Mixalgine', 1, 1, '4000.00', '35', '2024-08-22', NULL, NULL, '2022-12-07 11:02:45', '2022-12-07 11:02:45'),
(74, 'Needle No.23 BD/Terumo', 3, 1, '55000.00', '30', '2027-07-07', NULL, NULL, '2022-12-07 11:05:19', '2022-12-07 11:05:19'),
(75, 'Neo K Ampul', 8, 1, '15000.00', '20', '2024-07-18', NULL, NULL, '2022-12-07 11:06:09', '2022-12-07 11:06:09'),
(76, 'Neocenta Tube', 2, 1, '15000.00', '30', '2024-06-12', NULL, NULL, '2022-12-07 11:06:57', '2022-12-07 11:06:57'),
(77, 'Neurodex', 1, 1, '6000.00', '10', '2024-06-19', NULL, NULL, '2022-12-07 11:07:42', '2022-12-07 11:07:42'),
(78, 'Nipedifin', 1, 1, '1800.00', '45', '2024-02-08', NULL, NULL, '2022-12-07 11:08:25', '2022-12-07 11:08:25'),
(79, 'Novachlor', 1, 1, '7500.00', '40', '2024-06-21', NULL, NULL, '2022-12-07 11:09:54', '2022-12-07 11:09:54'),
(80, 'Omeprazol', 1, 1, '1000.00', '40', '2024-06-05', NULL, NULL, '2022-12-07 11:10:31', '2022-12-07 11:10:31'),
(81, 'Pavaperin', 1, 1, '1000.00', '25', '2024-06-08', NULL, NULL, '2022-12-07 11:11:48', '2022-12-07 11:12:38'),
(82, 'Plastik Obat Besar', 3, 1, '7500.00', '300', '2027-11-19', NULL, NULL, '2022-12-07 11:13:25', '2022-12-07 11:13:53'),
(83, 'Prednison 100 Tablet', 1, 1, '1000.00', '35', '2024-07-08', NULL, NULL, '2022-12-07 11:16:45', '2022-12-07 11:16:45'),
(84, 'Primadex', 1, 1, '4500.00', '30', '2024-07-08', NULL, NULL, '2022-12-07 11:17:20', '2022-12-07 11:17:20'),
(85, 'Primadex Forte', 1, 1, '6000.00', '45', '2024-06-12', NULL, NULL, '2022-12-07 11:18:04', '2022-12-07 11:18:04'),
(86, 'Primolut N', 1, 1, '21000.00', '1', '2024-05-08', NULL, NULL, '2022-12-07 11:19:02', '2022-12-07 11:19:02'),
(87, 'Primperan Injeksi', 8, 1, '10000.00', '25', '2024-06-08', NULL, NULL, '2022-12-07 11:20:03', '2022-12-07 11:20:03'),
(88, 'Reco Tetes Telinga', 10, 1, '8000.00', '20', '2024-11-13', NULL, NULL, '2022-12-07 11:22:53', '2022-12-07 11:22:53'),
(89, 'Renadinac', 1, 1, '4500.00', '15', '2024-02-21', NULL, NULL, '2022-12-07 11:23:38', '2022-12-07 11:23:38'),
(90, 'Salbutamol 2 mg', 1, 1, '3000.00', '30', '2024-06-12', NULL, NULL, '2022-12-07 11:28:39', '2022-12-07 11:28:39'),
(91, 'Salbutamol 4 mg', 1, 1, '4000.00', '50', '2024-07-08', NULL, NULL, '2022-12-07 11:29:23', '2022-12-07 11:29:23'),
(92, 'Salicyl Talk Happy/KF', 11, 1, '12000.00', '15', '2025-06-25', NULL, NULL, '2022-12-07 11:31:06', '2022-12-07 11:31:06'),
(93, 'Sarung Tangan M', 3, 1, '5000.00', '10', '2027-06-08', NULL, NULL, '2022-12-07 11:31:47', '2022-12-07 11:33:40'),
(94, 'Scopma Plus', 1, 1, '10000.00', '5', '2024-03-08', NULL, NULL, '2022-12-07 11:32:31', '2022-12-07 11:32:31'),
(95, 'Sinto Ampul', 3, 1, '15000.00', '25', '2027-07-08', NULL, NULL, '2022-12-07 11:33:13', '2022-12-07 11:33:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'sales-person', 'web', '2022-12-07 06:48:47', '2022-12-07 06:48:47'),
(2, 'super-admin', 'web', '2022-12-07 06:48:48', '2022-12-07 06:48:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 2),
(4, 2),
(5, 1),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` double NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `val` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `email`, `phone`, `company`, `address`, `product`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Apotek Nenas Berkah', 'apoteknenas@gmail.com', '0215518504', 'Apotek Nenas Berkah', 'Jl. Nanas Raya, RT.001/RW.018, Cibodasari, Kec. Cibodas, Kota Tangerang, Banten 15138', 'Obat & Alat', NULL, NULL, '2022-12-07 08:55:15', '2022-12-07 08:55:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jamal Admin', 'admin@admin.com', NULL, '$2y$10$Ereq9RaRZmFDbWdFOmbTpu2fJb3inl2EnkVvzTkmL8kflMiQjyUP2', NULL, NULL, '2022-12-07 06:48:54', '2022-12-07 06:48:54');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_purchase_id_foreign` (`purchase_id`);

--
-- Indeks untuk tabel `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_category_id_foreign` (`category_id`),
  ADD KEY `purchases_supplier_id_foreign` (`supplier_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_name_unique` (`name`),
  ADD UNIQUE KEY `suppliers_email_unique` (`email`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT untuk tabel `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchases_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
