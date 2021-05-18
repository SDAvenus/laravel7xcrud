-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 18, 2021 lúc 03:59 PM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel7xcrud`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `desc`, `avatar`) VALUES
(5, 'Thành Huy', 'vithanhhuy@gmail.com', NULL, '$2y$10$WqwBRSPepidZwqADcBZhKOgOxXyzoZf3I4BUOAhzeTbqAKt5ibFAO', '$2y$10$HBU.w0PZ22ogicUPIhLb6egW2/ntBSZu4inQuj5vtIQqiSvjfE1BS', '2021-04-08 09:51:41', '2021-04-27 04:06:00', 'a', 'public/adminimages/9bp4QPXh0zjUjLWBQr9qP5EKrBCyyE9DMbzEVNAP.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `image`, `desc`, `parent_id`, `created_at`, `updated_at`) VALUES
(2, 'Rau Củ', 'google.com', 'public/categoryimages/NXzVUxCJgrlCuA3hAWZziQRmAsQ9pt8WK3oQVD9P.jpg', '<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>Rau Củ</p>', 0, '2021-04-11 12:31:37', '2021-04-28 07:23:29'),
(3, 'Gạo', 'google.com', 'public/categoryimages/gm3usw7FSIhpEsbClwtdvVk8eEsE9BBvfg0Q1RZy.jpg', '<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>Gạo</p>', 0, '2021-04-11 12:32:00', '2021-04-28 07:23:44'),
(4, 'Trái Cây', 'google.com', 'public/categoryimages/MR0oZwzSInIMtLCql5DSLwPnKCbTLEKcJtdLMWo0.jpg', '<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>Tr&aacute;i C&acirc;y</p>', 0, '2021-04-11 12:32:24', '2021-04-28 07:23:59'),
(5, 'Cà Phê', 'google.com', 'public/categoryimages/6eg6XaiT6V3MmWfpm1hgZCCHtakJHPL8kpLsua8V.png', '<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>C&agrave; Ph&ecirc;</p>', 0, '2021-04-11 12:33:26', '2021-04-28 07:24:15'),
(6, 'Hạt', 'google.com', 'public/categoryimages/NtWNsW6srBJPxP5efMZx88yExYqxdEV4AoYw86gg.jpg', '<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> Hạt<img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>', 0, '2021-04-11 12:34:40', '2021-04-11 12:34:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_04_07_154833_create_products_table', 1),
(5, '2021_04_07_181015_add_product_status_to_products_table', 2),
(6, '2021_04_07_184859_create_category_table', 3),
(7, '2021_04_08_102437_add_category_id_to_products_table', 4),
(8, '2021_04_08_112319_create_orders_table', 5),
(9, '2021_04_08_112550_create_orderdetail_table', 5),
(10, '2021_04_08_121059_create_settings_table', 6),
(11, '2021_04_08_122124_create_admins_table', 7),
(12, '2021_04_08_164815_add_desc_to_admins_table', 8),
(13, '2021_04_08_165003_add_avatar_to_admins_table', 9),
(14, '2021_04_10_191652_create_slide_table', 10),
(15, '2021_04_10_195002_add_desc_to_slide_table', 11),
(16, '2021_04_11_175014_create_slide_table', 12),
(17, '2021_05_04_184209_add_product_discount_to_products_table', 13),
(18, '2021_05_05_094635_add_type_to_users_table', 14);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetail`
--

CREATE TABLE `orderdetail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_product` int(11) NOT NULL,
  `total_price` decimal(8,2) NOT NULL,
  `order_status` int(11) NOT NULL,
  `order_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_publish` datetime NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_status` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_discount` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_image`, `product_desc`, `product_publish`, `product_quantity`, `product_price`, `created_at`, `updated_at`, `product_status`, `category_id`, `product_discount`) VALUES
(6, 'Dưa Hấu', 'public/productimages/eRwxMcXbD2e4LCI7QywR0IX2sE7dJ1XHqeS2nB1A.jpg', '<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>1Kg</p>', '2021-04-12 02:35:21', 10, '30000.00', '2021-04-11 12:36:02', '2021-05-04 11:51:22', 1, 4, '20000.00'),
(7, 'Chuối Tiêu', 'public/productimages/4ZtVhcCZSBN0yPcet91uaAkr8iKZjzqGzrLbIFfC.jpg', '<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> 1 Kg<img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>', '2021-04-12 02:37:41', 8, '25000.00', '2021-04-11 12:37:58', '2021-05-04 11:59:16', 1, 4, '20000.00'),
(8, 'Nhãn Lồng', 'public/productimages/8Z952b4XWp3ZUKuvi2IN6wVxCSr7BQeiXgFTexSP.jpg', '<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>1 Kg</p>', '2021-04-12 02:38:32', 10, '30000.00', '2021-04-11 12:38:47', '2021-05-04 11:59:29', 1, 4, '24000.00'),
(9, 'Đào Nhật', 'public/productimages/XaTdmgub6b31yQCHngkI78z9yGr6VEPAvryWIVEq.jpg', '<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>1 Kg</p>', '2021-04-12 02:39:10', 10, '50000.00', '2021-04-11 12:39:22', '2021-05-04 12:00:14', 1, 4, '42000.00'),
(10, 'Sầu Riêng', 'public/productimages/iOiWhaOiSlAFvtHWoMUMOXIwyHhloJV0Y6WE9BMP.png', '<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>1 Kg</p>', '2021-04-12 02:40:11', 0, '70000.00', '2021-04-11 12:40:24', '2021-05-04 11:52:39', 2, 4, '60000.00'),
(11, 'Dâu Tây', 'public/productimages/kn7bXcrNpgPLAqFOgM2otN38PMzCKfEtW8hyJSpm.jpg', '<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" />1 Kg<img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>', '2021-04-12 02:40:50', 15, '250000.00', '2021-04-11 12:41:04', '2021-05-04 11:52:55', 1, 4, '200000.00'),
(12, 'Táo Mỹ', 'public/productimages/E3ihNwuEyJyyk7FQUwy2tNwFsoGX3wJ97vpgj1cf.jpg', '<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>1 Kg</p>', '2021-04-12 02:41:25', 9, '120000.00', '2021-04-11 12:41:38', '2021-05-04 12:00:01', 1, 4, '100000.00'),
(13, 'Cà Phê Nhật', 'public/productimages/6StY3rtmTwkuYz8OB4ACfjGfl2STtDQ3YuFahM94.jpg', '<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>1 T&uacute;i</p>', '2021-04-12 02:42:14', 30, '130000.00', '2021-04-11 12:42:30', '2021-05-04 11:53:25', 1, 5, '100000.00'),
(14, 'Cà Phê Abracia', 'public/productimages/el0yDf8yENnTblTRWuK9EO05aBdL3r4II66LQi7t.jpg', '<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> 1 t&uacute;i<img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>', '2021-04-12 02:43:10', 20, '150000.00', '2021-04-11 12:43:19', '2021-05-04 11:53:37', 1, 5, '125000.00'),
(15, 'Cà Phê Việt', 'public/productimages/ggq7j0QOHsHSDNsoRNzLeLwM24gDjWqGvUqbrAbb.jpg', '<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>1 T&uacute;i</p>', '2021-04-12 02:43:53', 10, '120000.00', '2021-04-11 12:44:05', '2021-05-04 11:53:51', 1, 5, '90000.00'),
(16, 'Cà Phê Chồn', 'public/productimages/ds4JkBq0gw1DS2KE3zovhSyK2dIB6BFn2UkD26cB.png', '<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>1 t&uacute;i</p>', '2021-04-12 02:44:38', 5, '60000.00', '2021-04-11 12:44:48', '2021-05-04 11:54:11', 1, 5, '55000.00'),
(17, 'Cà Phê HightLand', 'public/productimages/o6H0NBUpBH0pKTQFJAI5IOzFIow0nNuKYG6ft0K3.png', '<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>1 T&uacute;i</p>', '2021-04-12 02:45:17', 0, '80000.00', '2021-04-11 12:45:30', '2021-05-04 11:54:26', 2, 5, '70000.00'),
(18, 'Gạo Lứt', 'public/productimages/xXuhVH2Z7x1XDfTQFXcsVdsLqqfMr0UkEKqehFxn.jpg', '<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>1 Kg</p>', '2021-04-12 02:46:08', 50, '150000.00', '2021-04-11 12:46:18', '2021-05-04 11:54:42', 1, 3, '130000.00'),
(19, 'Gạo Nhật', 'public/productimages/ymUL1l8fFTJa3o0Sf13R1FeBcWAQbL9tV1mvqbCM.jpg', '<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> 1 T&uacute;i<img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>', '2021-04-12 02:47:05', 7, '30000.00', '2021-04-11 12:47:16', '2021-05-04 11:55:08', 1, 3, '25000.00'),
(20, 'Gạo Tẻ', 'public/productimages/7edWz2eg2fpncEWjCAyp5fVEv7WR0PSyuTwoHKsL.png', '<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>1 Kg</p>', '2021-04-12 02:47:53', 40, '15000.00', '2021-04-11 12:48:05', '2021-05-04 11:55:28', 1, 3, '13000.00'),
(21, 'Gạo Nếp', 'public/productimages/hgTF5eUaORbbmbpQV3cE6SdyC4ctzIn6iWzertfC.jpg', '<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> 1 Kg<img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>', '2021-04-12 02:48:24', 20, '45000.00', '2021-04-11 12:48:33', '2021-05-04 11:55:47', 1, 3, '40000.00'),
(22, 'Hạt Óc Chó', 'public/productimages/UBJg6HJfv0gqJ1okDZRdf4TBAilU2aesGdHhJB1Z.png', '<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>1 Kg</p>', '2021-04-12 02:51:02', 50, '250000.00', '2021-04-11 12:51:13', '2021-05-04 11:56:19', 1, 6, '230000.00'),
(23, 'Hạt Chia', 'public/productimages/8ZZgCMVexH0SAwyBmdNs9GtQEzwVQGN5KO6NEvJ6.jpg', '<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> 1 Kg<img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>', '2021-04-12 02:51:41', 20, '300000.00', '2021-04-11 12:51:50', '2021-05-04 11:56:34', 1, 6, '280000.00'),
(24, 'Hạt Hạnh Nhân', 'public/productimages/TjBUxaXpANPdnnuZdof6OeQqibVpXv0TyPab1ssj.jpg', '<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>1 Kg</p>', '2021-04-12 02:52:14', 45, '250000.00', '2021-04-11 12:52:22', '2021-05-04 11:56:46', 1, 6, '230000.00'),
(25, 'Hạt Điều', 'public/productimages/c6wv3Bt9vJDYg6A2uIvPDG8ZduF58NCRzaseRG6E.jpg', '<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>1 Kg</p>', '2021-04-12 02:53:09', 20, '250000.00', '2021-04-11 12:53:16', '2021-05-04 11:56:57', 1, 6, '230000.00'),
(26, 'Yến Mạch', 'public/productimages/PQkxslbxRnKHJ7NAojUX1XHo9HrqYdM3EqRGZ7Ql.jpg', '<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>1 Kg</p>', '2021-04-12 02:53:41', 20, '250000.00', '2021-04-11 12:53:46', '2021-05-04 11:57:17', 1, 6, '230000.00'),
(27, 'Súp Lơ Xanh', 'public/productimages/5qKxEuvrN3vSKPoeqozTQ6Icg5B4CnhIuqGUOfYR.jpg', '<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>1 Kg</p>', '2021-04-12 02:54:34', 20, '18000.00', '2021-04-11 12:54:42', '2021-05-04 11:57:31', 1, 2, '15000.00'),
(28, 'Cải Chíp', 'public/productimages/U1flycZg4Sk2rbMFKaQ4rkOksxPE5TOosnKehT2l.jpg', '<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\">1 Kg</div>\r\n</div>\r\n</div>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"translate-icons\"><img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '2021-04-12 02:55:04', 30, '10000.00', '2021-04-11 12:55:16', '2021-05-04 11:57:49', 1, 2, '8000.00'),
(29, 'Cà Chua', 'public/productimages/a31x03svQLNuuX6KjL9W0l0QEz7M3zFojydvSDj3.jpg', '<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>1 Kg</p>', '2021-04-12 02:55:41', 20, '15000.00', '2021-04-11 12:55:48', '2021-05-04 11:58:04', 1, 2, '10000.00'),
(30, 'Măng Tây', 'public/productimages/Oqu9Dp0L4JfgmU5mcMWNFmgF4TB4ZkshFGVw2KYC.jpg', '<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>1 Kg</p>', '2021-04-12 02:56:11', 35, '40000.00', '2021-04-11 12:56:21', '2021-05-04 11:58:22', 1, 2, '35000.00'),
(31, 'Ớt Chi-Lê', 'public/productimages/XN1BnsA1wVdPlOBD28SN2VR4sDphYPn8i295ChbY.jpg', '<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p><audio class=\"audio-for-speech\"></audio></p>\r\n<div class=\"translate-tooltip-mtz hidden\">\r\n<div class=\"header\">\r\n<div class=\"header-controls\">&nbsp;</div>\r\n<div class=\"translate-icons\"><img class=\"from\" /> <img class=\"arrow\" src=\"chrome-extension://gafjimepaiecpbmbmgaefokbekhoecaj/images/right-arrow.png\" /> <img class=\"to\" /></div>\r\n</div>\r\n<div class=\"translated-text\">\r\n<div class=\"words\">&nbsp;</div>\r\n<div class=\"sentences\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>1 Kg</p>', '2021-04-12 02:56:44', 26, '110000.00', '2021-04-11 12:56:56', '2021-05-04 11:58:41', 1, 2, '100000.00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slide_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slide_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slide_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `slide_name`, `slide_image`, `slide_desc`, `created_at`, `updated_at`) VALUES
(5, 'Slide1', 'public/productimages/ZsVr56euuUDqcKy34oN0IGBxqb0oJqp55cBf3UX0.jpg', 'Slide1\"', '2021-04-11 12:27:49', '2021-04-28 07:04:21'),
(6, 'Slide2', 'public/productimages/HxHJvM4xjnxn3on8I2VgxBIPMB4XIWix4SoIAMZ6.jpg', 'Slide2\"', '2021-04-11 12:28:10', '2021-04-28 07:04:06'),
(7, 'Slide3', 'public/productimages/l01ZHnFsZ0yPdgqhjgesJ45rMRUlGW40ke8020XC.jpg', 'Slide3\"', '2021-04-11 12:28:29', '2021-04-28 07:03:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
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
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(10, 'Huy', 'Huy@gmail.com', NULL, '$2y$10$QZOopYujMzq.KPpLOCXfK.Ka/F7JQnGeD5tZRqRq3olUkoXV5oxMu', NULL, '2021-05-05 03:45:53', '2021-05-05 03:45:53'),
(11, 'Hoang', 'nam@gmail.com', NULL, '$2y$10$v09ZTycEEyVWnWoywIgx6uSKrbCCzHteo7Uc4c9GyOli5DQhzp4yy', NULL, '2021-05-05 04:19:19', '2021-05-05 04:19:19'),
(12, 'Thành Huy', 'vithanhhuy@yahoo.com', NULL, '$2y$10$IOt5Y2U.wrNRsc340t63xupCLBNRsdE9ktQ32tcCcs4wZTbQ9ek0i', NULL, '2021-05-05 11:47:19', '2021-05-05 11:47:19');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
