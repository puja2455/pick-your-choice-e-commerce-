-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2021 at 09:31 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand_name`, `brand_logo`, `created_at`, `updated_at`) VALUES
(6, 'sumsong', 'public/media/brand/210821_18_03_40.jpeg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoty_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoty_name`, `logo`, `created_at`, `updated_at`) VALUES
(19, 'sudipto', 'media/category/210821_18_38_37.jpeg', NULL, NULL),
(20, 'puja', 'media/category/210821_18_54_37.jpeg', NULL, NULL),
(21, 'fuhad', 'media/category/210821_18_39_38.jpeg', NULL, NULL),
(22, 'dfd', 'media/category/210821_18_50_38.jpeg', NULL, NULL),
(23, 'dsfgfd fgtf', 'media/category/210821_18_02_39.jpeg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`id`, `coupon`, `discount`, `created_at`, `updated_at`) VALUES
(4, 'arif20', 20, '2021-08-15 18:06:26', NULL),
(5, 'dipak10', 5, '2021-08-21 18:49:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_17_083807_create_rolls_table', 1),
(5, '2021_03_30_191937_create_category_table', 2),
(6, '2021_03_30_192009_create_subcategory_table', 2),
(7, '2021_03_30_192034_create_brand_table', 2),
(9, '2021_04_01_184751_create_coupon_table', 3),
(10, '2021_04_01_192453_create_newslater_table', 4),
(13, '2021_04_02_095921_create_products_table', 5),
(14, '2018_12_23_120000_create_shoppingcart_table', 6),
(15, '2021_04_04_224306_create_wishlist_table', 6),
(16, '2021_04_05_185828_create_settings_table', 7),
(17, '2016_06_01_000001_create_oauth_auth_codes_table', 8),
(18, '2016_06_01_000002_create_oauth_access_tokens_table', 8),
(19, '2016_06_01_000003_create_oauth_refresh_tokens_table', 8),
(20, '2016_06_01_000004_create_oauth_clients_table', 8),
(21, '2016_06_01_000005_create_oauth_personal_access_clients_table', 8),
(22, '2021_04_07_210504_create_orders_table', 9),
(23, '2021_04_07_210556_create_order_details_table', 9),
(24, '2021_04_07_210640_create_shipping_table', 9),
(25, '2021_04_08_114509_create_subscribers_table', 10),
(26, '2021_04_08_115850_create_seo_table', 11),
(27, '2021_04_09_114405_create_slider_table', 11),
(28, '2021_08_15_040714_create_trainer_table', 12),
(29, '2021_08_15_044645_create_trainers_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `newslater`
--

CREATE TABLE `newslater` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'YMjBsMmGamV4h0CuX1BlSsKQ0a31eWurCyOitvvn', NULL, 'http://localhost', 1, 0, 0, '2021-04-05 15:38:39', '2021-04-05 15:38:39'),
(2, NULL, 'Laravel Password Grant Client', 'pVtcgNxmEeYEE2ADOhZVVIgB9zjjnoo6uTEGAaHc', 'users', 'http://localhost', 0, 1, 0, '2021-04-05 15:38:39', '2021-04-05 15:38:39');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-04-05 15:38:39', '2021-04-05 15:38:39');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paying_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blnc_transection` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_order_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `status_code` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `payment_id`, `paying_amount`, `blnc_transection`, `stripe_order_id`, `subtotal`, `shipping`, `vat`, `payment_type`, `total`, `status`, `status_code`, `return_order`, `month`, `date`, `year`, `created_at`, `updated_at`, `name`, `email`, `phone`, `amount`, `address`, `transaction_id`, `currency`) VALUES
(3, '3', 'card_1Idjv1A4qXiRDztJ6NCNLXj8', '10000', 'txn_1Idjv2A4qXiRDztJQUigYlrj', '606e32ed54fc2', '2,220.00', '7', '3', 'stripe', '2220.00', '3', '5241', '0', 'April', '07-04-21', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '3', 'card_1IdjwgA4qXiRDztJ9useUm6n', '10000', 'txn_1IdjwiA4qXiRDztJ4HnLi8EY', '606e33549329e', '2,220.00', '7', '3', 'stripe', '2220.00', '3', '63521', '1', 'April', '07-04-21', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '3', 'card_1Idyh4A4qXiRDztJS43aSwzw', '10000', 'txn_1Idyh6A4qXiRDztJeDzoAjge', '606f10cb7e6d2', '8,440.00', '7', '3', 'stripe', '8440.00', '2', '351915', '2', 'April', '08-04-21', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '3', 'card_1IdysIA4qXiRDztJjqW5kBeH', '10000', 'txn_1IdysKA4qXiRDztJsKxic57e', '606f13835882a', '1,980.00', '7', '3', 'stripe', '1,980.00', '1', '376364', '0', 'April', '08-04-21', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '3', 'card_1IehQwA4qXiRDztJyMHu7xgD', '10000', 'txn_1IehR2A4qXiRDztJnTUke9x7', '6071b097e1fcb', '2,000.00', '7', '3', 'stripe', '2,000.00', '0', '861270', '0', 'April', '10-04-21', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '3', 'card_1IekYDA4qXiRDztJwo1wESMs', '10000', 'txn_1IekYHA4qXiRDztJ00g7s2Qp', '6071df65a962c', '220.00', '7', '3', 'stripe', '220.00', '3', '533641', '0', 'April', '10-04-21', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '3', 'card_1IjjKXA4qXiRDztJi3oOIMby', '10000', 'txn_1IjjKZA4qXiRDztJ02dBEPzV', '6083fbea0c506', '6,000.00', '7', '3', 'stripe', '6,000.00', '3', '956235', '1', 'April', '24-04-21', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '3', 'card_1JOTL1A4qXiRDztJsMvIdvTe', '10000', 'txn_3JOTL5A4qXiRDztJ0AiXj1uv', '61182581e0d45', '440.00', '7', '3', 'stripe', '440.00', '0', '946778', '0', 'August', '14-08-21', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '1', 'card_1JOnywA4qXiRDztJcgVxVCvX', '10000', 'txn_3JOnyzA4qXiRDztJ04Q5EOKW', '61195b7bbb5dd', '4,404.00', '7', '3', 'stripe', '4,404.00', '4', '394917', '0', 'August', '15-08-21', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, '2', 'card_1JOo2NA4qXiRDztJ2ufXA2TF', '10000', 'txn_3JOo2PA4qXiRDztJ1CAddlKp', '61195c501c9f8', '2,642.00', '7', '3', 'stripe', '2,642.00', '3', '581874', '2', 'August', '15-08-21', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '1', 'card_1JQzM2A4qXiRDztJCxabqY4S', '10000', 'txn_3JQzM5A4qXiRDztJ12Ekzsc0', '61214c2fbf5d8', '85', '7', '3', 'stripe', '180.00', '2', '548762', '0', 'August', '21-08-21', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, '2', 'card_1JQzQdA4qXiRDztJKCXlqqyE', '10000', 'txn_3JQzQfA4qXiRDztJ1uJDJ6Xv', '61214d4bd8c3c', '30.00', '7', '3', 'stripe', '30.00', '2', '184102', '2', 'August', '21-08-21', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `oder_id` int(50) NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `singleprice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalprice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `oder_id`, `product_id`, `product_name`, `color`, `size`, `quantity`, `singleprice`, `totalprice`, `created_at`, `updated_at`) VALUES
(12, 28, '4', 'mango', '', '', '2', '2202', '4404', NULL, NULL),
(13, 29, '4', 'mango', '', '', '1', '2202', '2202', NULL, NULL),
(14, 29, '3', 'fdgf', '', '', '1', '220', '220', NULL, NULL),
(15, 29, '2', 'Dipak Debnath1', '', '', '1', '220', '220', NULL, NULL),
(16, 30, '7', 'Dipak Debnath', '', '', '6', '30', '180', NULL, NULL),
(17, 31, '7', 'Dipak Debnath', '', '', '1', '30', '30', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` int(11) DEFAULT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ex_tax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_product` int(11) DEFAULT NULL,
  `new_product` int(11) DEFAULT NULL,
  `buyone_getone` int(11) DEFAULT NULL,
  `image_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_four` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `brand_id`, `product_name`, `product_code`, `product_quantity`, `product_details`, `product_color`, `product_size`, `selling_price`, `discount_price`, `ex_tax`, `video_link`, `featured_product`, `new_product`, `buyone_getone`, `image_one`, `image_two`, `image_three`, `image_four`, `status`, `created_at`, `updated_at`) VALUES
(7, 20, 7, 6, 'Dipak Debnath', '200', 200, '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; letter-spacing: normal; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; letter-spacing: normal; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span></p>', 'xl,xx', 'ac,as', '220', '30', '10', 'https://www.youtube.com/watch?v=a3-HFoJJPzm', 1, 1, 1, 'media/product/1708729531702884.jpeg', 'media/product/1708729533349478.jpeg', 'media/product/1708729533599778.jpeg', 'media/product/1708729533848818.jpeg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rolls`
--

CREATE TABLE `rolls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rolls`
--

INSERT INTO `rolls` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'User', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shopname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_optional` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtoube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `vat`, `shipping_charge`, `shopname`, `email`, `phone`, `phone_optional`, `address`, `logo`, `company_name`, `facebook`, `twitter`, `youtoube`, `created_at`, `updated_at`) VALUES
(1, '3', '7', 'book', 'bangladesh@gnail.com', '0169542544', '01222222224', 'bangladesh', 'media/category/210821_19_30_11.jpeg', NULL, 'facebook.com', 'facebook.com', 'facebook.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zone_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `order_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `payment`, `comments`, `created_at`, `updated_at`) VALUES
(11, '28', 'Dipak', 'Debnath', 'dipak@gmail.com', '01632054022', 'ssss', 'it companyss', NULL, NULL, NULL, NULL, NULL, NULL, 'stripe', 'djfds sdhfsd dsjgf', NULL, NULL),
(12, '29', 'Dipak', 'Debnath', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'stripe', 'asdsa', NULL, NULL),
(13, '30', 'Dipak', 'Debnath', 'info.dfdgsdfgsfd@gmail.com', '01632054022', 'nai', 'it company', 'address1', 'address2', 'dhaka', '1207', '12', '3517', 'stripe', 'gffxb dfhg fhgf  cv hgf gf fghfgh fghgf', NULL, NULL),
(14, '31', 'Dipak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'stripe', 'dsfdg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `main_slider_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_slider_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_slider_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_slider_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_slider_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_slider_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mid_slider_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mid_slider_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mid_slider_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mid_slider_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `main_slider_1`, `main_slider_2`, `main_slider_3`, `sub_slider_1`, `sub_slider_2`, `sub_slider_3`, `mid_slider_1`, `mid_slider_2`, `mid_slider_3`, `mid_slider_4`, `created_at`, `updated_at`) VALUES
(1, 'media/product/1708731155601425.jpeg', 'media/product/1708731155997085.jpeg', 'media/product/1708731156279000.jpeg', 'media/product/1708731156528705.jpeg', 'media/product/1708731156762503.jpeg', 'media/product/1708731157077568.jpeg', 'media/product/1708731157312830.jpeg', 'media/product/1708731157669943.jpeg', 'media/product/1708731157897154.jpeg', 'media/product/1708731158145503.jpeg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `category_id`, `subcategory_name`, `created_at`, `updated_at`) VALUES
(6, 13, 'vagitable', NULL, NULL),
(7, 14, 'demo one', NULL, NULL),
(8, 14, 'demo two', NULL, NULL),
(9, 18, 'fvbvcbfgbh', NULL, NULL),
(10, 19, 'Solar & Technology', NULL, NULL),
(11, 20, 'Fortunes Assets', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trainer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainer`
--

INSERT INTO `trainer` (`id`, `trainer_name`, `image`, `created_at`, `updated_at`) VALUES
(7, 'abc', 'media/category/210821_18_09_41.jpeg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trainer_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`id`, `trainer_id`, `title`, `description`, `image`, `date`, `created_at`, `updated_at`) VALUES
(7, 5, 'আম (Mango) amm', '<ol><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; padding: 0px; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; text-align: justify;\"><span style=\"color: rgb(112, 48, 160); font-family: Helvetica; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\">মাটি</span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(59, 59, 59); font-family: Arial; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\"><span class=\" Apple-tab-span\" style=\"white-space: pre; font-family: Helvetica;\">	</span><span style=\"font-family: Helvetica;\">গভীর, সুনিষ্কাশিত,উর্বর দোঅাঁশ মাটি আম চাষের জন্য উত্তম। উঁচু ও মাঝারি উঁচু জমি নির্বাচন করতে হবে।</span></span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(112, 48, 160); font-family: Helvetica; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\">জমি তৈরি</span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(59, 59, 59); font-family: Arial; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\"><span class=\" Apple-tab-span\" style=\"white-space: pre; font-family: Helvetica;\">	</span><span style=\"font-family: Helvetica;\">চাষ ও মই দিয়ে জমি সমতল এবং আগাছামুক্ত করে নিতে হবে।</span></span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(112, 48, 160); font-family: Helvetica; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\">রোপণ পদ্ধতি</span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(59, 59, 59); font-family: Arial; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\"><span class=\" Apple-tab-span\" style=\"white-space: pre; font-family: Helvetica;\">	</span><span style=\"font-family: Helvetica;\">সমতল ভূমিতে-বর্গকার বা আয়তাকায়, পাহাড়ি ভূমিতে কন্টুর। এক বছর বয়স্ক সুস্থ, সবল ও রোগমুক্ত কলমের চারা রোপণ করতে হবে।</span></span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(112, 48, 160); font-family: Helvetica; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\">চারা রোপণের সময়</span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(59, 59, 59); font-family: Arial; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\"><span class=\" Apple-tab-span\" style=\"white-space: pre; font-family: Helvetica;\">	</span><span style=\"font-family: Helvetica;\">জ্যৈষ্ঠ-আষাঢ় (মধ্য-মে থেকে মধ্য-জুলাই) এবং ভাদ্র-আশ্বিন মাস (মধ্য-আগস্ট থেকে মধ্য-অক্টোবর)।</span></span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(112, 48, 160); font-family: Helvetica; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\">চারা রোপণের দূরত্ব</span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\">৮ থেকে ১০ মিটার।</span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(112, 48, 160); font-family: Helvetica; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\">গর্ত তৈরি</span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(59, 59, 59); font-family: Arial; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\"><span class=\" Apple-tab-span\" style=\"white-space: pre; font-family: Helvetica;\">	</span><span style=\"font-family: Helvetica;\">গর্তের আকার ১ মি*১মি*১মি।</span></span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(112, 48, 160); font-family: Helvetica; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\">সারের পরিমাণ</span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 90pt; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify; text-indent: 15pt;\"><span style=\"background-color: rgb(107, 173, 222);\"><span style=\"color: rgb(0, 0, 255); font-family: Arial; font-size: 9pt; vertical-align: baseline;\"><em><span style=\"font-weight: 700; -webkit-font-smoothing: antialiased; font-family: Helvetica;\">সারের নাম</span></em></span><span class=\" Apple-tab-span\" style=\"color: rgb(0, 0, 255); font-family: Arial; font-size: 9pt; vertical-align: baseline; white-space: pre;\"><em><span style=\"font-weight: 700; -webkit-font-smoothing: antialiased; font-family: Helvetica;\">	</span></em></span><span class=\" Apple-tab-span\" style=\"color: rgb(0, 0, 255); font-family: Arial; font-size: 9pt; vertical-align: baseline; white-space: pre;\"><em><span style=\"font-weight: 700; -webkit-font-smoothing: antialiased; font-family: Helvetica;\">	</span></em></span><span class=\" Apple-tab-span\" style=\"color: rgb(0, 0, 255); font-family: Arial; font-size: 9pt; vertical-align: baseline; white-space: pre;\"><em><span style=\"font-weight: 700; -webkit-font-smoothing: antialiased; font-family: Helvetica;\">	</span></em></span><span class=\" Apple-tab-span\" style=\"color: rgb(0, 0, 255); font-family: Arial; font-size: 9pt; vertical-align: baseline; white-space: pre;\"><em><span style=\"font-weight: 700; -webkit-font-smoothing: antialiased; font-family: Helvetica;\">	</span></em></span><span class=\" Apple-tab-span\" style=\"color: rgb(0, 0, 255); font-family: Arial; font-size: 9pt; vertical-align: baseline; white-space: pre;\"><em><span style=\"font-weight: 700; -webkit-font-smoothing: antialiased; font-family: Helvetica;\">	</span></em></span><span class=\" Apple-tab-span\" style=\"color: rgb(0, 0, 255); font-family: Arial; font-size: 9pt; vertical-align: baseline; white-space: pre;\"><em><span style=\"font-weight: 700; -webkit-font-smoothing: antialiased; font-family: Helvetica;\">	</span></em></span><span style=\"color: rgb(0, 0, 255); font-family: Arial; font-size: 9pt; vertical-align: baseline;\"><em><span style=\"font-weight: 700; -webkit-font-smoothing: antialiased; font-family: Helvetica;\">প্রতি গর্তে সারের পরিমাণ</span></em></span></span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 105pt; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify; text-indent: 15pt;\"><span style=\"background-color: rgb(107, 173, 222);\"><span style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline;\">জৈব সার</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline;\">১৮-২২ কেজি</span></span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 113pt; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"background-color: rgb(107, 173, 222);\"><span style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline;\">ইউরিয়</span><span style=\"color: rgb(59, 59, 59); font-family: Arial; font-size: 9pt; vertical-align: baseline;\"><span style=\"font-family: Helvetica;\">া</span><span class=\" Apple-tab-span\" style=\"white-space: pre; font-family: Helvetica;\">	</span><span class=\" Apple-tab-span\" style=\"white-space: pre; font-family: Helvetica;\">	</span><span class=\" Apple-tab-span\" style=\"white-space: pre; font-family: Helvetica;\">	</span><span class=\" Apple-tab-span\" style=\"white-space: pre; font-family: Helvetica;\">	</span><span class=\" Apple-tab-span\" style=\"white-space: pre; font-family: Helvetica;\">	</span><span class=\" Apple-tab-span\" style=\"white-space: pre; font-family: Helvetica;\">	</span><span class=\" Apple-tab-span\" style=\"white-space: pre; font-family: Helvetica;\">	</span></span><span style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline;\">১০০-২০০ গ্রাম</span></span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 113pt; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"background-color: rgb(107, 173, 222);\"><span style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline;\">টিএসপি</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline;\">৪৫০-৫৫০ গ্রাম</span></span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 113pt; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"background-color: rgb(107, 173, 222);\"><span style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline;\">এমপি</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline;\">২০০-৩০০ গ্রাম</span></span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 113pt; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"background-color: rgb(107, 173, 222);\"><span style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline;\">জিপসাম</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline;\">২০০-৩০০ গ্রাম</span></span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 113pt; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"background-color: rgb(107, 173, 222);\"><span style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline;\">জিংক সালফেট</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span class=\" Apple-tab-span\" style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline; white-space: pre;\">	</span><span style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 9pt; vertical-align: baseline;\">৪০-৬০ গ্রাম</span></span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(112, 48, 160); font-family: Helvetica; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\">চারা রোপণ</span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(59, 59, 59); font-family: Arial; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\"><span class=\" Apple-tab-span\" style=\"white-space: pre; font-family: Helvetica;\">	</span><span style=\"font-family: Helvetica;\">গর্ত ভর্তির ১০-১৫ দিন পর চারার গোড়ার মাটির বলসহ গর্তের মাঝখানে সোজাভাবে লাগাতে হবে। চারা রোপণের পর পানি, খুঁটি ও বেড়ার ব্যবস্থা করতে হবে।</span></span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(112, 48, 160); font-family: Helvetica; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\">সার প্রয়োগ</span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(59, 59, 59); font-family: Arial; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\"><span class=\" Apple-tab-span\" style=\"white-space: pre; font-family: Helvetica;\">	</span><span style=\"font-family: Helvetica;\">একটি পূর্ণ বয়স্ক ফলমত্ম গাছে বছরে ৫০ কেজি জৈব সার, ২ কেজি ইউরিয়অ, ১ কেজি টিএসপি, ৫০০ গ্রাম এমপি, ৫০০ গ্রাম জিপসাম ও ২৫ গ্রাম জিংক সালফেট প্রয়োগ করতে হবে। উলেস্নখিত সার ২ কিসিত্মতে প্রয়োগ করতে হবে। ১ম বার জ্যৈষ্ঠ-আষাঢ় (মধ্য-মে থেকে মধ্য-জুলাই) মাসে এবং ২য় বার আশ্বিন (মধ্য-সেপ্টেম্বর থেকে মধ্য-অক্টোবর) মাসে প্রয়োগ করতে হবে।</span></span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(112, 48, 160); font-family: Helvetica; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\">সেচ প্রয়োগ</span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(59, 59, 59); font-family: Arial; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\"><span class=\" Apple-tab-span\" style=\"white-space: pre; font-family: Helvetica;\">	</span><span style=\"font-family: Helvetica;\">চারা গাছের দ্রম্নত বৃদ্ধির জন্য ঘন ঘন সেচ দিতে হবে। ফলমত্ম গাছের বেলায় আমের মুকুল ফোটার শেষ পর্যায়ে ১ বার এবং ফল মটর দানার আকৃতি ধারণ পর্যায়ে আবার ১ বার বেসিন পদ্ধতিতে সেচ প্রয়োগ করতে হবে।</span></span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(112, 48, 160); font-family: Helvetica; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\">ডাল ছাঁটাইকরণ</span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(59, 59, 59); font-family: Arial; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\"><span class=\" Apple-tab-span\" style=\"white-space: pre; font-family: Helvetica;\">	</span><span style=\"font-family: Helvetica;\">গাছের প্রধান কান্ডটি যাতে সোজাভাবে ১ থেকে ১০৫ মিটার ওঠে সেদিকে লক্ষ্য রেখে গাছের গোড়ার অপ্রয়োজনীয় শাখা কেটে ফেলতে হবে।</span></span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(112, 48, 160); font-family: Helvetica; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\">গাছের মুকুল ভাঙ্গন</span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\">কলমের গাছেল বয়স ৪ বছর পূর্ণ না হওয়া পর্যমত্ম মুকুল ভেঙ্গে দিতে হবে।</span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(112, 48, 160); font-family: Helvetica; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\">ফল সংগ্রহ</span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(59, 59, 59); font-family: Arial; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\"><span class=\" Apple-tab-span\" style=\"white-space: pre; font-family: Helvetica;\">	</span><span style=\"font-family: Helvetica;\">গাছে কিছু সংখ্যক আমের বোঁটার নিচের ত্বক যখন সামান্য হলুদাভ রং ধারণ করে অথবা আদাপাকা আম গাছ থেকে পড়া আরম্ব করে, তখনই আম সংগ্রহ করার উপযুক্ত সময়। গাছ ঝাকি দিয়ে আম না পেড়ে ছোট গাছের ক্ষেত্রে হাত দিয়ে এবং বড় গাছের ক্ষেত্রে জালিযুক্ত বাঁশের কোটার সাহায্যে আম সংগ্রহ করা ভাল।</span></span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; white-space: pre-wrap; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: center;\"><span style=\"color: rgb(0, 176, 80); font-family: Helvetica; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\">অন্যান্য পরিচর্যা</span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(112, 48, 160); font-family: Helvetica; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\">আমের এ্যানথ্রাকনোজ রোগ দমন</span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(59, 59, 59); font-family: Arial; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\"><span class=\" Apple-tab-span\" style=\"white-space: pre; font-family: Helvetica;\">	</span><span style=\"font-family: Helvetica;\">এ্যানথ্রাকনোজ রোগের আক্রমণে গাছের পাতা, কান্ড, মুকুল ও ফলে ধূসর বাদামি রংয়ের দাগ পড়ে। এ রোগে আক্রামত্ম মুকুল ঝরে যায়।, আমের গায়ে কালচে দাগ হয় এবং আম পচে যায়। কুয়াশা, মেঘাচ্ছন্ন ও ভিচা আবহাওয়ায় এ রোগ ব্যাপকভাবে বিস্তার লাভ করে এবং সমস্ত মুকুল ঝরে যায়।</span></span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(112, 48, 160); font-family: Helvetica; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\">প্রতিকার</span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 72pt; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"background-color: rgb(107, 173, 222);\"><span style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 14pt; vertical-align: baseline;\">1.</span><span style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 7pt; vertical-align: baseline;\">&nbsp;</span><span style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 14pt; vertical-align: baseline;\">আমের মৌসুম শেষে গাছের মরা ডালাপালা কেটে পুড়ে ফেলতে হবে। কাটা অংশে বরদোপেষ্ট (প্রতি লিটার পানিতে ১০০ গ্রাম তুঁতে ও ১০০ গ্রাম চুন) লাগাতে হবে।</span></span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 72pt; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"background-color: rgb(107, 173, 222);\"><span style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 14pt; vertical-align: baseline;\">2.</span><span style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 7pt; vertical-align: baseline;\">&nbsp;</span><span style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 14pt; vertical-align: baseline;\">গাছের মুকুল আসার পর কিন্তু ফুল ফোটার পূর্বে টিল্ট-২৫০ ইসি প্রতি লিটার পানিতে ০.৫ মিলি অথবা ডাইথেন এম-৪৫, ২ গ্রাম প্রতি লিটার পানিতে মিশিয়ে স্প্রে করতে হবে। আমের আকার মটর দানার মত হলে ২য় বার স্প্রে করতে হবে।</span></span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(112, 48, 160); font-family: Helvetica; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\">আমের মুকুলের পাউডারি মিলডিউ রোগ দমন</span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(59, 59, 59); font-family: Arial; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\"><span class=\" Apple-tab-span\" style=\"white-space: pre; font-family: Helvetica;\">	</span><span style=\"font-family: Helvetica;\">ওইডিয়াম ম্যাঙ্গিফেরী নামক ছত্রাক দ্বারা এ রোগ হয়। আমের মুকুলে সাদা পাউডারের মত আবরণ দেখা যায়। এ রোগের আক্রমণে মুকুল ঝরে যায়। আক্রামত্ম আমের চামড়া খসখসে হয় এবং কুঁচকে যায়। আমের দাম অনেক কম হয়। মেঘলা দিনে বাতাসের মাধ্যমে এ রোগ বেশি বিস্তার লাভ করে।</span></span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span class=\" KB0Tx\" style=\"font-size: 20pt; color: rgb(112, 48, 160); font-family: Arial; vertical-align: baseline; background-color: rgb(107, 173, 222);\"></span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(112, 48, 160); font-family: Helvetica; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\">প্রতিকার</span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"background-color: rgb(107, 173, 222);\"><span style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 14pt; vertical-align: baseline;\">1.</span><span style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 7pt; vertical-align: baseline;\">&nbsp;</span><span style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 14pt; vertical-align: baseline;\">গাছে মুকুল আসার পর এক বার ফল মটর দানা আকারের হলে আর এক বার থিওভিট প্রতি লিটার পানিতে ২ গ্রাম অথবা টিল্ট ২৫০ ইসিপ্রিতি লিটার পানিতে ০.৫ মিলি মিশিয়ে ভালভাবে স্প্রে করতে হবে।</span></span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(112, 48, 160); font-family: Helvetica; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\">আমের ভোমরা পোকা দমন</span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(59, 59, 59); font-family: Arial; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\"><span class=\" Apple-tab-span\" style=\"white-space: pre; font-family: Helvetica;\">	</span><span style=\"font-family: Helvetica;\">আমের ভোমরা পোকার কীড়া আমের গায়ে ছিদ্র করে ভিতরে ঢুকে শাঁস খায়। সাধারণত কচি আমে ছিদ্র করে এরা ভিতরে ঢুকে এবং ফল বড় হওয়ার সাথে সাথে ছিদ্রটি বন্ধ করে দেয়। এজন্য বাইরে থেকে আমটি ভাল মনে হলেও ভিতরে কীড়া পাওয়া যায়। একবার কোন গাছে এ পোকার আক্রমণ হলে প্রতি বছরই সে গাছটি আক্রামত্ম হয়ে থাকে। ক্রমে ক্রমে পার্শ্ববর্তী গাছসমুহে তা ছড়িয়ে পড়ে।</span></span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(112, 48, 160); font-family: Helvetica; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\">প্রতিকার</span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"background-color: rgb(107, 173, 222);\"><span style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 14pt; vertical-align: baseline;\">1.</span><span style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 7pt; vertical-align: baseline;\">&nbsp;</span><span style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 14pt; vertical-align: baseline;\">আম গাছের মরা ও অতিরিক্ত পাতা শাখা এবং পরগাছা কেটে ফেলতে হবে।</span></span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"background-color: rgb(107, 173, 222);\"><span style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 14pt; vertical-align: baseline;\">2.</span><span style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 7pt; vertical-align: baseline;\">&nbsp;</span><span style=\"color: rgb(59, 59, 59); font-family: Helvetica; font-size: 14pt; vertical-align: baseline;\">গাছে ফল আসার ১-২ সপ্তাহ পর ১৫ মিলি ডাইমেক্রন ৫৫ লিটার পানিতে মিশিয়ে ১৫ দিন পর ২ বার স্প্রে করতে হবে। ডাইমেক্রন-১০০ ইসি প্রতি লিটার পানিতে ১ মিলি মিশিয়ে অথবা ডায়াজিনন ৬০ ইসি বা লিবাসিড ৫০ ইসি ২ মিলি হারে বা সুমিথিয়ন ৫০ ইসি ২ মিলি মিশিয়ে ১৫ দিন পর পর ২ বার স্প্রে কওে ভাল ফল পাওয়া যায়।</span></span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; white-space: pre-wrap; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: center;\"><span style=\"color: rgb(0, 176, 80); font-family: Helvetica; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\">অন্যান্য প্রযুক্তি</span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(112, 48, 160); font-family: Helvetica; font-size: 14pt; vertical-align: baseline; background-color: rgb(107, 173, 222);\">আমের পরিপক্কতা শনাক্তকরণ</span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(59, 59, 59); font-family: Arial; font-size: 14pt; vertical-align: baseline;\"><span style=\"background-color: rgb(107, 173, 222);\"><span class=\" Apple-tab-span\" style=\"white-space: pre; font-family: Helvetica;\">	</span><span style=\"font-family: Helvetica;\">গবেষ</span></span>ণার মাধ্যমে কয়েকটি উন্নত জাতের আমের পরিপক্কতা নির্দেশক নির্ধারণ করা হয়েছে। এসব নির্দেশক দেখে আম সংগ্রহ করলে আমের গুণগত মান ভাল থাকে এবং দীর্ঘদিন সংরক্ষণ করা যায়। এতে পরিবহণে অপচয়ও কম হয়। কতগুলো উন্নত জাতের আমের পরিপক্কতার নির্দেশক ও সংগ্রহের সময় নিচে উল্লেখ করা হল।</span></li><li style=\"font-variant-ligatures: none; margin-right: 0px; margin-bottom: 12pt; margin-left: 0px; outline: none; position: relative; color: rgb(33, 33, 33); font-size: 11pt; text-decoration-line: inherit; font-family: Merriweather, serif; line-height: 1.38; letter-spacing: normal; border-width: initial; border-style: none; border-color: initial; padding: 0px; text-align: justify;\"><span style=\"color: rgb(59, 59, 59); font-family: Arial; font-size: 14pt; vertical-align: baseline;\">&nbsp;dhfdkslg lkdsfjg lkfjdg</span></li></ol>', 'media/category/150821_18_45_09.jfif', '2021-08-17', NULL, NULL),
(8, 5, 'dipak debnath', '<p><u><b style=\"background-color: rgb(255, 0, 0);\">&nbsp;dfgdf fhggfh&nbsp;</b></u></p>', 'media/category/170821_17_51_54.jpeg', '2021-08-19', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roll_id` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newslatter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tra` varchar(110) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `roll_id`, `email`, `phone`, `email_verified_at`, `password`, `remember_token`, `newslatter`, `category`, `blog`, `report`, `contact`, `coupon`, `order`, `role`, `comment`, `product`, `return`, `setting`, `stock`, `other`, `type`, `created_at`, `updated_at`, `tra`) VALUES
(1, 'admin', '1', 'admin@gmail.com', NULL, NULL, '$2y$10$O1SYDFT/aP.8K8TCS4UQpORazuWKdVTsCa9qfSjDI41g3e8aUwiza', 'Qwa6fnjs77gSXwbY8KV0361J6MVbAYR4K4PBEYj5UMBRHwlDQKF1xd5T76Xe', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, '2021-03-17 02:55:34', '2021-03-17 02:55:34', '1'),
(2, 'user', '2', 'user@gmail.com', NULL, NULL, '$2y$10$8y5SAvZ8avpRdJOLskPw6.7wKcdU.9TvjNdvh8dgZu.MKRoHeUJ8.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-17 02:56:01', '2021-03-17 02:56:01', NULL),
(27, 'Dipak Debnath', '2', 'dipak@gmail.com', '0163222222', NULL, '$2y$10$JJRHZX4LWPRDwp0JS6nlZ.9syZO/42vcPI7viw7ef78efTpCVNIwq', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '1', NULL, '1', NULL, NULL, 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(6, 1, 8, NULL, NULL),
(7, 1, 6, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newslater`
--
ALTER TABLE `newslater`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
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
-- Indexes for table `rolls`
--
ALTER TABLE `rolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `newslater`
--
ALTER TABLE `newslater`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rolls`
--
ALTER TABLE `rolls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trainer`
--
ALTER TABLE `trainer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
