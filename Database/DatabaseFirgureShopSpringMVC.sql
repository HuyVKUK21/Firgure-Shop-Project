-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2024 at 04:38 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

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
(3, '2022_11_15_162203_create_tbl_admin', 1),
(4, '2022_11_22_042210_create_tbl_category_product', 2),
(5, '2022_11_24_163231_create_tbl_brand_product', 3),
(6, '2022_11_24_170929_create_tbl_product', 4),
(7, '2022_11_25_072313_create_tbl_user', 5),
(8, '2022_12_16_063651_create_tbl_cart', 6),
(9, '2022_12_16_155247_tbl_shipping', 6),
(10, '2022_12_16_205008_tbl_payment', 7),
(11, '2022_12_16_205120_tbl_order', 8),
(12, '2022_12_16_210307_tbl_order_detail', 8),
(13, '2022_12_18_140805_tbl_payment', 9);

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
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(3, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'BaoTran', '0376195269', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand_product`
--

CREATE TABLE `tbl_brand_product` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_brand_product`
--

INSERT INTO `tbl_brand_product` (`brand_id`, `brand_name`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(1, 'Good Smile Company', 'dddđ', 0, NULL, NULL),
(2, 'Max Factory', 'ddddddddddddddddd', 0, NULL, NULL),
(3, 'FREEing', 'd', 0, NULL, NULL),
(5, 'Bandai Spirits', 'd', 0, NULL, NULL),
(6, 'MegaHouse', 'd', 0, NULL, NULL),
(7, 'Q-six', 'd', 0, NULL, NULL),
(8, 'Intelligent System', 'a', 0, NULL, NULL),
(9, 'Kotobukiya', 'Kotobukiya', 0, NULL, NULL),
(10, 'Furyu', 'Furyu', 0, NULL, NULL),
(11, 'RIBOSE', 'RIBOSE', 0, NULL, NULL),
(12, 'Myethos', 'Myethos', 1, NULL, NULL),
(13, 'Bandai Namco Film Works', 'Bandai Namco Film Works', 0, NULL, NULL),
(14, 'WING', 'WING', 0, NULL, NULL),
(15, 'VKu', '123', 0, NULL, NULL),
(16, 'Hello123', 'a', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cart_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cart_id`, `category_id`, `product_id`, `user_id`, `product_name`, `quantity`, `user_email`, `created_at`, `updated_at`, `product_image`, `product_price`) VALUES
(71, 2, 12, 40, 'PLAMAX Chainsaw Man Power Plastic Model', 1, '1@gmail.com', NULL, NULL, NULL, NULL),
(72, 2, 14, 40, 'ASSASSIN 1/12 Action Figure Snail Shell Studio', 2, '1@gmail.com', NULL, NULL, NULL, NULL),
(74, 3, 19, 0, 'Movie Masterpiece \" Black Panther: Wakanda Forever \" 1/6', 0, '', NULL, NULL, NULL, NULL),
(75, 3, 18, 0, 'G.E.M. Series Demon Slayer: Kimetsu no Yaiba Tengen Uzui', 0, '', NULL, NULL, NULL, NULL),
(76, 3, 28, 0, 'Fire Emblem Heroes Veronica 1/7', 0, '', NULL, NULL, NULL, NULL),
(77, 3, 82, 0, 'POP UP PARADE FAIRY TAIL Lucy Heartfilia Virgo Form Ver.', 0, '', NULL, NULL, NULL, NULL),
(82, 3, 18, 28, 'G.E.M. Series Demon Slayer: Kimetsu no Yaiba Tengen Uzui', 1, 'huypq.21it@vku.udn.vn', NULL, NULL, NULL, NULL),
(83, 3, 19, 28, 'Movie Masterpiece \" Black Panther: Wakanda Forever \" 1/6', 2, 'huypq.21it@vku.udn.vn', NULL, NULL, NULL, NULL),
(84, 3, 18, 43, 'G.E.M. Series Demon Slayer: Kimetsu no Yaiba Tengen Uzui', 1, 'doaivk.21it@vku.udn.vn', NULL, NULL, NULL, NULL),
(85, 3, 18, 43, 'G.E.M. Series Demon Slayer: Kimetsu no Yaiba Tengen Uzui', 1, 'doaivk.21it@vku.udn.vn', NULL, NULL, NULL, NULL),
(86, 3, 84, 43, 'ViVignette \"BURN THE WITCH\" Noel Niihashi', 1, 'doaivk.21it@vku.udn.vn', NULL, NULL, NULL, NULL),
(87, 3, 19, 43, 'Movie Masterpiece \" Black Panther: Wakanda Forever \" 1/6', 1, 'doaivk.21it@vku.udn.vn', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `category_name`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(2, 'Hàng có sẵn', 'Bảo Trầndddd', 0, NULL, NULL),
(3, 'Hàng order', 'dsadasd', 0, NULL, NULL),
(7, 'R18', 'a', 0, NULL, NULL),
(9, '123', '123', 0, NULL, NULL),
(12, 'Bảo', '123', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `user_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(94, 38, 103, 95, '96,800,000.00', 'Đang chờ xử lý', NULL, NULL),
(95, 38, 104, 96, '96,800,000.00', 'Đang chờ xử lý', NULL, NULL),
(96, 38, 105, 97, '96,800,000.00', 'Đang chờ xử lý', NULL, NULL),
(97, 38, 106, 98, '96,800,000.00', 'Đang chờ xử lý', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_detail`
--

CREATE TABLE `tbl_order_detail` (
  `order_detail_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order_detail`
--

INSERT INTO `tbl_order_detail` (`order_detail_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(71, 68, 88, 'My Hero Academia Himiko Toga - Villain - 1/7', '9150000', 3, NULL, NULL),
(72, 69, 88, 'My Hero Academia Himiko Toga - Villain - 1/7', '9150000', 3, NULL, NULL),
(73, 70, 87, 'B-style Touhou Project Koishi Komeiji 1/4', '13800000', 2, NULL, NULL),
(74, 71, 88, 'My Hero Academia Himiko Toga - Villain - 1/7', '9150000', 2, NULL, NULL),
(75, 72, 89, 'B&W,W-kn [G] 1/7', '7980000', 4, NULL, NULL),
(76, 73, 87, 'B-style Touhou Project Koishi Komeiji 1/4', '13800000', 3, NULL, NULL),
(77, 73, 88, 'My Hero Academia Himiko Toga - Villain - 1/7', '9150000', 3, NULL, NULL),
(78, 75, 18, 'G.E.M. Series Demon Slayer: Kimetsu no Yaiba Tengen Uzui', '8380000', 3, NULL, NULL),
(79, 76, 18, 'G.E.M. Series Demon Slayer: Kimetsu no Yaiba Tengen Uzui', '8380000', 3, NULL, NULL),
(80, 77, 89, 'B&W,W-kn [G] 1/7', '7980000', 3, NULL, NULL),
(81, 78, 89, 'B&W,W-kn [G] 1/7', '7980000', 1, NULL, NULL),
(82, 79, 87, 'B-style Touhou Project Koishi Komeiji 1/4', '13800000', 2, NULL, NULL),
(83, 80, 56, 'Nendoroid Ranka Lee', '950000', 2, NULL, NULL),
(84, 81, 89, 'B&W,W-kn [G] 1/7', '7980000', 2, NULL, NULL),
(85, 82, 89, 'B&W,W-kn [G] 1/7', '7980000', 1, NULL, NULL),
(86, 83, 89, 'B&W,W-kn [G] 1/7', '7980000', 1, NULL, NULL),
(87, 84, 89, 'B&W,W-kn [G] 1/7', '7980000', 1, NULL, NULL),
(88, 85, 89, 'B&W,W-kn [G] 1/7', '7980000', 1, NULL, NULL),
(89, 86, 89, 'B&W,W-kn [G] 1/7', '7980000', 1, NULL, NULL),
(90, 87, 89, 'B&W,W-kn [G] 1/7', '7980000', 1, NULL, NULL),
(91, 88, 89, 'B&W,W-kn [G] 1/7', '7980000', 1, NULL, NULL),
(92, 89, 83, 'GIRLS FROM HELL Viola 1/7', '7500000', 2, NULL, NULL),
(93, 90, 89, 'B&W,W-kn [G] 1/7', '7980000', 1, NULL, NULL),
(94, 91, 82, 'POP UP PARADE FAIRY TAIL Lucy Heartfilia Virgo Form Ver.', '1600000', 3, NULL, NULL),
(95, 91, 17, '18+ Erotics Gear-Girl Rouge Illustration by Ulrich 1/6', '9180000', 2, NULL, NULL),
(96, 92, 89, 'B&W,W-kn [G] 1/7', '7980000', 2, NULL, NULL),
(97, 93, 90, 'PLAMAX Chainsaw Man Power Plastic Model', '10000000', 3, NULL, NULL),
(98, 94, 90, 'PLAMAX Chainsaw Man Power Plastic Model', '10000000', 8, NULL, NULL),
(99, 95, 90, 'PLAMAX Chainsaw Man Power Plastic Model', '10000000', 8, NULL, NULL),
(100, 96, 90, 'PLAMAX Chainsaw Man Power Plastic Model', '10000000', 8, NULL, NULL),
(101, 97, 90, 'PLAMAX Chainsaw Man Power Plastic Model', '10000000', 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(94, 'Thanh toán bằng chuyển khoản', 'Đang chờ xử lý', NULL, NULL),
(95, 'Thanh toán bằng chuyển khoản', 'Đang chờ xử lý', NULL, NULL),
(96, 'Thanh toán bằng chuyển khoản', 'Đang chờ xử lý', NULL, NULL),
(97, 'Thanh toán bằng chuyển khoản', 'Đang chờ xử lý', NULL, NULL),
(98, 'Thanh toán bằng chuyển khoản', 'Đang chờ xử lý', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_series` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_proportion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_price_update` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `product_update` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `category_id`, `brand_id`, `product_name`, `product_desc`, `product_series`, `product_size`, `product_proportion`, `product_date`, `product_price`, `product_price_update`, `product_image`, `product_image2`, `product_image3`, `product_image4`, `product_status`, `created_at`, `updated_at`, `product_update`) VALUES
(12, 2, 1, 'PLAMAX Chainsaw Man Power Plastic Model', 'Power', 'Chainsaw Man', '1/7', '20cm', '5/2023', 2350000, 'Giá cập nhật tháng 11/2022:', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 'a740792f95e594fa252c0a550da9d80a.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 0, NULL, NULL, NULL),
(14, 2, 1, 'ASSASSIN 1/12 Action Figure Snail Shell Studio', 'ASSASSIN', 'Action Figure', '1/12', '16.5cm', '5/2023', 3850000, 'Giá cập nhật tháng 11/2022:', '28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 'a740792f95e594fa252c0a550da9d80a.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 0, NULL, NULL, NULL),
(15, 2, 3, 'Miss Kobayashi\'s Dragon Maid Kanna China Dress', 'Kanna(Kanna Kamui)', 'Miss Kobayashi\'s Dragon Maid (Kobayashi-san Chi no Maid Dragon)', '1/6', '17.5cm', '1/2024', 9800000, 'Giá cập nhật tháng 8/2022:', '28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 'a740792f95e594fa252c0a550da9d80a.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 0, NULL, NULL, NULL),
(17, 2, 3, '18+ Erotics Gear-Girl Rouge Illustration by Ulrich 1/6', 'Erotics Gear-Girl Rouge', 'Illustration', '1/6', '30cm', '11/2023', 9180000, 'Giá cập nhật tháng 5/2022:', '28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 'a740792f95e594fa252c0a550da9d80a.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 0, NULL, NULL, NULL),
(18, 3, 6, 'G.E.M. Series Demon Slayer: Kimetsu no Yaiba Tengen Uzui', 'Tengen Uzui(Sound Pillar)', 'Demon Slayer: Kimetsu no Yaiba', '1/6', '23cm', '2/2023', 8380000, 'Giá cập nhật tháng 8/2022:', '28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 'a740792f95e594fa252c0a550da9d80a.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 0, NULL, NULL, NULL),
(19, 3, 1, 'Movie Masterpiece \" Black Panther: Wakanda Forever \" 1/6', 'Black Panther(T\'Challa)', 'Marvel Comics, Black Panther, Black Panther: Wakanda Forever', '1/6', '28cm', '4/2024', 12000000, 'Giá cập nhật tháng 11/2022:', '28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 'a740792f95e594fa252c0a550da9d80a.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 0, NULL, NULL, NULL),
(20, 2, 1, 'POP UP PARADE Chainsaw Man', '( Chainsaw Man ) , Denji', 'Chainsaw Man', '1/8', '18.5cm', '4/2023', 1700000, 'Giá cập nhật tháng 11/2022:', '28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 'a740792f95e594fa252c0a550da9d80a.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 0, NULL, NULL, NULL),
(21, 7, 7, '18+ Prosecutor Mitsu Umetani Purple Jeans Ver. 1/6', 'Mitsu Umetani', 'R18', '1/6', '19.5cm', '6/2023', 7150000, 'Giá cập nhật tháng 11/2022:', '28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 'a740792f95e594fa252c0a550da9d80a.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 0, NULL, NULL, NULL),
(22, 7, 7, '18+ Alp Switch Alp 1/6', 'Alp', 'Alp Switch', '1/6', '28cm', '5/2023', 7450000, 'Giá cập nhật tháng 10/2022:', '28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 'a740792f95e594fa252c0a550da9d80a.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 0, NULL, NULL, NULL),
(24, 7, 6, '18+ Succubus Maid Maria illustration by KEn Limited Distribution 1/6', 'Succubus Maid Maria', 'Original Illustration', '1/6', '28.5cm', '2/2023', 6300000, 'Giá cập nhật tháng 10/2022:', '28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 'a740792f95e594fa252c0a550da9d80a.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 0, NULL, NULL, NULL),
(26, 2, 7, '13 Sentinels: Aegis Rim Ryoko Shinonome 1/7', 'Ryoko Shinonome', '13 Sentinels: Aegis Rim', '1/7', '22cm', '9/2023', 8500000, 'Giá cập nhật tháng 11/2022:', '28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 'a740792f95e594fa252c0a550da9d80a.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 0, NULL, NULL, NULL),
(28, 3, 8, 'Fire Emblem Heroes Veronica 1/7', 'Veronica', 'Fire Emblem Heroes', '1/7', '25.5cm', '2/2024', 8950000, 'Giá cập nhật tháng 11/2022:', '28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 'a740792f95e594fa252c0a550da9d80a.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 0, NULL, NULL, NULL),
(29, 3, 8, 'So I\'m a Spider, So What? Ariel 1/7', 'Ariel(Demon Lord)', 'So I\'m a Spider, So What?', '1/7', '23cm', '11/2023', 7750000, 'Giá cập nhật tháng 5/2022:', '28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 'a740792f95e594fa252c0a550da9d80a.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 0, NULL, NULL, NULL),
(82, 3, 1, 'POP UP PARADE FAIRY TAIL Lucy Heartfilia Virgo Form Ver.', 'Lucy Heartfilia', 'FAIRY TAIL', '1/7', '1/7', '5/2023', 1600000, 'Giá cập nhật tháng 12/2022: 1.600.000đ', '28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 'a740792f95e594fa252c0a550da9d80a.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 0, NULL, NULL, NULL),
(83, 3, 12, 'GIRLS FROM HELL Viola 1/7', 'Viola', 'GIRLS FROM HELL', '1/7', '1/7', '10/2023', 7500000, 'Giá cập nhật tháng 12/2022: 7.500.000đ', '28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 'a740792f95e594fa252c0a550da9d80a.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 0, NULL, NULL, NULL),
(84, 3, 13, 'ViVignette \"BURN THE WITCH\" Noel Niihashi', 'Noel Niihashi', 'BURN THE WITCH', '1/8', '1/8', '10/2023', 8250000, 'Giá cập nhật tháng 12/2022:', '28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 'a740792f95e594fa252c0a550da9d80a.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 0, NULL, NULL, NULL),
(85, 3, 13, 'ViVignette \"BURN THE WITCH\" Nini', 'Nini Spangle', 'BURN THE WITCH', '1/7', '1/7', '10/2023', 8250000, 'Giá cập nhật tháng 12/2022: 8.250.000đ', '28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 'a740792f95e594fa252c0a550da9d80a.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 0, NULL, NULL, NULL),
(86, 3, 14, 'Re:ZERO -Starting Life in Another World- Rem 1/7', 'Rem', 'Re:ZERO -Starting Life in Another World- (Re: Zero kara Hajimeru Isekai Seikatsu)', '1/4', '1/4', '7/2023', 6650000, 'Giá cập nhật tháng 12/2022: 6.650.000đ', '28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 'a740792f95e594fa252c0a550da9d80a.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 0, NULL, NULL, NULL),
(87, 3, 3, 'B-style Touhou Project Koishi Komeiji 1/4', 'Koishi Komeiji', 'Touhou Project', '1/4', '1/4', '11/2023', 13800000, 'Giá cập nhật tháng 12/2022:', '28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 'a740792f95e594fa252c0a550da9d80a.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 0, NULL, NULL, NULL),
(88, 3, 14, 'My Hero Academia Himiko Toga - Villain - 1/7', 'Himiko Toga', 'My Hero Academia (Boku no Hero Academia)', '1/7', '1/7', '1/2023', 9150000, 'Giá cập nhật tháng 12/2022:', '28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 'a740792f95e594fa252c0a550da9d80a.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 0, NULL, NULL, NULL),
(89, 3, 11, 'B&W,W-kn [G] 1/7', 'G', 'B&W', '1/7', '1/7', '9/2023', 7980000, 'Giá cập nhật tháng 12/2022:', '28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 'a740792f95e594fa252c0a550da9d80a.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 0, NULL, NULL, NULL),
(90, 3, 13, 'PLAMAX Chainsaw Man Power Plastic Model', 'Arshes Nei', 'Bastard!! -Heavy Metal, Dark Fantasy', '1/6', '1/6', '11/2023', 10000000, 'Giá cập nhật tháng 8/2022:', '28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 'a740792f95e594fa252c0a550da9d80a.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 0, '2022-12-19 20:53:08', '2022-12-19 20:53:08', NULL),
(91, 2, 13, '18+ Prosecutor Mitsu Umetani Purple Jeans Ver. 1/6', 'Bảo', 'Đời', '1/1', '1/1', '11/9/2003', 7950000, '7950000', '28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 'a740792f95e594fa252c0a550da9d80a.jpg', '17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg', 0, '2022-12-19 22:33:48', '2022-12-19 22:33:48', NULL),
(92, 2, 1, 'Test', 'a', 'a', 'a', 'a', 'a', 123, '123', 'vinhraufaptv-15689551401391473224085-crop-1568955144983602507514.webp', 'vinhraufaptv-15689551401391473224085-crop-1568955144983602507514.webp', 'vinhraufaptv-15689551401391473224085-crop-1568955144983602507514.webp', 'vinhraufaptv-15689551401391473224085-crop-1568955144983602507514.webp', 0, NULL, NULL, NULL),
(93, 2, 3, 'test5', 'zoro', '1234567', '1/8', '1', '1', 0, '1230000', '384520181_1078207716890372_7068043125843270103_n.jpg', 'gui.drawio (1).png', 'DoAnCoSo4.drawio.png', '399368993_1716933502126090_6088225079506241629_n.jpg', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_name`, `shipping_address`, `shipping_phone`, `created_at`, `updated_at`) VALUES
(102, 'Dany', '280/23/2 Lê Hồng Phong', '376195269', NULL, NULL),
(103, '1', 'Chưa nhập', '1', NULL, NULL),
(104, '1', 'Chưa nhập', '1', NULL, NULL),
(105, '1', 'Chưa nhập', '1', NULL, NULL),
(106, '1', 'Chưa nhập', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_phone` int(11) NOT NULL,
  `user_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Chưa nhập',
  `role` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `verified` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_email`, `user_password`, `user_name`, `user_phone`, `user_address`, `role`, `created_at`, `updated_at`, `verified`) VALUES
(43, 'baotp.21it@vku.udn.vn', '$2a$12$9atNPEvKi7OhOlM.DaBKGeAtK/.KjkK/9HSoVK9T/eHTE.bZ8pi.O', 'Quốc Bảo', 0, NULL, 1, NULL, NULL, 0);

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
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_brand_product`
--
ALTER TABLE `tbl_brand_product`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD PRIMARY KEY (`order_detail_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_brand_product`
--
ALTER TABLE `tbl_brand_product`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  MODIFY `order_detail_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
