-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 26, 2021 lúc 05:52 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ql_vinmart`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Lam Vu Hoang', 'lambeobn@gmail.com', NULL, '$2y$10$1Q91VFbA14A6Cyud3Qco/.NYafk/1Dtr9sv/vqdbvpCptlh4NP.xu', 'PmShfNscTTSZUuDvXWipzPVWaPZhwka75qzebGa8u8XNIKWkmzextc9aaONz', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` bigint(20) DEFAULT NULL,
  `Status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `Name`, `Phone`, `Address`, `Email`, `total`, `Status`, `created_at`, `updated_at`) VALUES
(2, 'Lam Vu', '+84944325591', '34, Hoang quoc viet', 'lamhoangvu217@gmail.com', 44950, '2', '2021-10-14 02:16:20', '2021-10-15 21:23:44'),
(3, 'Lam Vu', '+84944325591', '34, Hoang quoc viet', 'lamhoang21212@gmail.com', 137450, '0', '2021-10-14 03:15:39', '2021-10-22 19:23:06'),
(4, 'Lam Vu', '+84944325591', '34, Hoang quoc viet', 'lamhoangvu217@gmail.com', 103950, '1', '2021-10-14 03:58:16', '2021-10-14 03:58:17'),
(5, 'Lam Vu', '0944325591', 'Tp. Bắc Ninh', 'lamhalo2k@gmail.com', 59000, '0', '2021-10-14 04:01:37', '2021-10-22 19:23:20'),
(6, 'Lam Vu', '+84944325591', '34, Hoang quoc viet', 'lamhoangvu217@gmail.com', 44950, '1', '2021-10-20 20:01:29', '2021-10-20 20:01:29'),
(7, 'Lam Vu Hoang', '0944325591', 'Tp. Bắc Ninh', 'lambeobn@gmail.com', 33500, '1', '2021-10-20 20:04:34', '2021-10-20 20:04:34'),
(8, 'Lam Vu Hoang', '0944325591', 'Tp. Bắc Ninh', 'lambeobn@gmail.com', 44950, '1', '2021-10-20 20:06:06', '2021-10-20 20:06:06'),
(9, 'Lam Vu Hoang', '0944325591', 'Tp. Bắc Ninh', 'lambeobn@gmail.com', 59000, '1', '2021-10-20 20:10:07', '2021-10-20 20:10:07'),
(10, 'Vũ Hoàng Lâm', '0944325591', 'số 91, đường Hoàng Quốc Việt, phường Thị Cầu', 'lambeobn@gmail.com', 59000, '0', '2021-10-20 20:15:28', '2021-10-20 20:15:28'),
(11, 'Vũ Hoàng Lâm', '0944325591', 'số 91, đường Hoàng Quốc Việt, phường Thị Cầu', 'lamhoangvu217@gmail.com', 44950, '1', '2021-10-20 20:26:41', '2021-10-20 20:26:41'),
(12, 'Lam Vu Hoang', '0944325591', 'Tp. Bắc Ninh', 'lambeobn@gmail.com', 59000, '1', '2021-10-20 20:27:48', '2021-10-20 20:27:48'),
(13, 'Lam Vu', '0123456789', '34, Hoang quoc viet', 'lamhoangvu217@gmail.com', 92500, '0', '2021-10-25 19:55:29', '2021-10-25 19:55:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_details`
--

CREATE TABLE `bill_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bill_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `total` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill_details`
--

INSERT INTO `bill_details` (`id`, `bill_id`, `product_id`, `qty`, `discount`, `total`, `created_at`, `updated_at`) VALUES
(1, 2, 7, 1, 50, 44950, '2021-10-14 02:16:20', '2021-10-14 02:16:20'),
(2, 3, 7, 1, 50, 44950, '2021-10-14 03:15:39', '2021-10-14 03:15:39'),
(3, 3, 9, 1, 0, 59000, '2021-10-14 03:15:40', '2021-10-14 03:15:40'),
(4, 3, 10, 1, 50, 33500, '2021-10-14 03:15:40', '2021-10-14 03:15:40'),
(5, 4, 9, 1, 0, 59000, '2021-10-14 03:58:16', '2021-10-14 03:58:16'),
(6, 4, 7, 1, 50, 44950, '2021-10-14 03:58:17', '2021-10-14 03:58:17'),
(7, 5, 9, 1, 0, 59000, '2021-10-14 04:01:37', '2021-10-14 04:01:37'),
(8, 6, 7, 1, 50, 44950, '2021-10-20 20:01:29', '2021-10-20 20:01:29'),
(9, 7, 10, 1, 50, 33500, '2021-10-20 20:04:34', '2021-10-20 20:04:34'),
(10, 8, 7, 1, 50, 44950, '2021-10-20 20:06:06', '2021-10-20 20:06:06'),
(11, 9, 9, 1, 0, 59000, '2021-10-20 20:10:07', '2021-10-20 20:10:07'),
(12, 10, 9, 1, 0, 59000, '2021-10-20 20:15:28', '2021-10-20 20:15:28'),
(13, 11, 7, 1, 50, 44950, '2021-10-20 20:26:41', '2021-10-20 20:26:41'),
(14, 12, 9, 1, 0, 59000, '2021-10-20 20:27:48', '2021-10-20 20:27:48'),
(15, 13, 9, 1, 0, 59000, '2021-10-25 19:55:29', '2021-10-25 19:55:29'),
(16, 13, 10, 1, 50, 33500, '2021-10-25 19:55:29', '2021-10-25 19:55:29');

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
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
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
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2021_09_17_024745_create_product_categories_table', 1),
(4, '2021_09_17_025601_create_promotions_table', 1),
(5, '2021_09_17_025757_create_products_table', 1),
(6, '2021_09_17_031805_create_product_images_table', 1),
(7, '2021_09_17_041902_add_thumbnail_to_products_table', 2),
(8, '2014_10_12_100000_create_password_resets_table', 3),
(9, '2021_09_20_081155_create_admins_table', 4),
(11, '2021_10_10_024527_create_bills_table', 5),
(12, '2021_10_13_031011_create_jobs_table', 6),
(13, '2021_10_13_094020_create_bill_details_table', 7),
(14, '2021_10_14_075056_add_total_to_bills_table', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('lamhalo2k@gmail.com', '$2y$10$e1iVhQAzuJ6SOptgV4vyGuMWPloyC80ADsVhRkSNIKSFdvvCy52qS', '2021-09-20 23:32:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'https://whois.nhachinhchu.org/uploads/default/original/1X/5b5a9f1fb6fc2a751f81fe26077500922da02739.png',
  `usage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `product_category_id` bigint(20) UNSIGNED NOT NULL,
  `promotion_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `thumbnail`, `usage`, `price`, `qty`, `product_category_id`, `promotion_id`, `created_at`, `updated_at`) VALUES
(5, 'Bắp cải trắng', '<p>ưqae</p>', 'images/products/BapCai.jpg', 'Ăn thôi :)', 27000, 3, 3, 1, '2021-10-02 19:14:27', '2021-10-02 19:14:27'),
(7, 'Táo Queen New Zealand PG size 90-120', '<p>T&aacute;o Queen New Zealand PG size 90-120 được lai tạo giữa t&aacute;o Gala v&agrave; t&aacute;o Splendour, l&agrave; loại t&aacute;o nổi tiếng về độ ngọt, rất gi&ograve;n nhưng kh&ocirc;ng qu&aacute; cứng, m&agrave;u sắc đỏ thẫm. T&aacute;o Queen PG&nbsp;c&oacute; quả tr&ograve;n, vỏ mỏng c&oacute; m&agrave;u sắc đỏ thẫm, trọng lượng khoảng 7 đến 8 quả/kg. Kh&ocirc;ng chỉ vậy, t&aacute;o c&ograve;n rất thơm, nhiều nước v&agrave; được xem l&agrave; một trong những loại T&aacute;o New Zealand ph&ugrave; hợp nhất với khẩu vị của người Việt Nam.</p>\r\n<p>Một quả t&aacute;o cỡ trung b&igrave;nh chứa khoảng 4g chất xơ, một phần trong số chất xơ đ&oacute; ở dạng Pectin - loại chất xơ h&ograve;a tan c&oacute; t&aacute;c dụng giảm lượng cholesterol \"xấu\". Chất xơ phức tạp của t&aacute;o gi&uacute;p no l&acirc;u hơn m&agrave; kh&ocirc;ng bị ti&ecirc;u thụ nhiều calo (một quả t&aacute;o b&igrave;nh thường chỉ chứa khoảng 95 calo). Hơn nữa, trong vỏ t&aacute;o c&oacute; chứa một loại axit l&agrave; Axit Ursolic l&agrave;m giảm nguy cơ b&eacute;o ph&igrave;, th&uacute;c đẩy cơ thể đốt ch&aacute;y calo, tăng việc h&igrave;nh th&agrave;nh cơ v&agrave; giảm chất b&eacute;o l&acirc;u năm trong cơ thể.</p>\r\n<p>T&aacute;o Queen New Zealand PG size 90-120<strong>&nbsp;</strong>l&agrave; nguồn cung cấp vitamin C tuyệt vời, c&oacute; t&aacute;c dụng tăng cường hệ thống miễn dịch. Mỗi quả t&aacute;o chứa khoảng 8mg vitamin n&agrave;y, v&igrave; thế ch&uacute;ng sẽ cung cấp khoảng 14% nhu cầu vitamin C h&agrave;ng ng&agrave;y của cơ thể. Cũng giống như quả l&ecirc; v&agrave; quả việt quất, t&aacute;o c&oacute; mối li&ecirc;n hệ với việc giảm thiểu nguy cơ mắc bệnh tiểu đường type 2 nhờ chất chống oxy h&oacute;a c&oacute; t&ecirc;n Anthocyanins, hơn nữa trong t&aacute;o c&oacute; chất Triterpenoids c&oacute; khả năng chống lại c&aacute;c bệnh ung thư gan, ruột kết v&agrave; ung thư v&uacute;.</p>', 'images/products/taoqueennewzealand.jpg', 'Lưu ý:  - Hạn sử dụng thực tế quý khách vui lòng xem trên bao bì.  - Hình sản phẩm chỉ mang tính chất minh họa, hình thực tế bao bì của sản phẩm tùy thời điểm sẽ khác so với thực tế.', 89900, 100, 3, 1, '2021-10-08 04:01:12', '2021-10-08 04:01:12'),
(9, 'Dưa lưới sạch Đế Vương Queen', '<h3>Th&ocirc;ng tin sản phẩm</h3>\r\n<p>Trong quả dưa lưới chứa nhiều loại vitamin A, C, E v&agrave; axit folic, độ ngọt cao, đem lại nhiều t&aacute;c dụng cho cơ thể.</p>\r\n<ul>\r\n<li>Tăng cường hệ miễn dịch v&agrave; ph&ograve;ng chống ung thư.</li>\r\n<li>Chứa nhiều chất xơ, ph&ograve;ng chống t&aacute;o b&oacute; hiệu quả.</li>\r\n<li>Cải thiện h&ocirc; hấp, giảm mệt mỏi, chứa mất ngủ.</li>\r\n<li>Chứa h&agrave;m lượng axit folic cao, tốt cho thai nhi v&agrave; phụ nữ mang thai.</li>\r\n<li>Ph&ograve;ng ngừa lo&atilde;ng xương, ổn định huyết &aacute;p...</li>\r\n</ul>', 'images/products/dualuoisach.jpg', 'Gọt vỏ, ăn trực tiếp. Ngon hơn khi ướp lạnh trước khi ăn. Lưu ý:  - Hạn sử dụng thực tế quý khách vui lòng xem trên bao bì.  - Hình sản phẩm chỉ mang tính chất minh họa, hình bao bì của sản phẩm tùy thời điểm sẽ khác so với thực tế.', 59000, 100, 3, 3, '2021-10-08 04:06:03', '2021-10-08 18:58:03'),
(10, 'MEAT DELI Nạc thăn heo (S)', '<p><strong>Nạc thăn heo Meat Deli&nbsp;</strong>được sản xuất bởi thương hiệu&nbsp;<strong>Meat Deli</strong>&nbsp;- l&agrave; thương hiệu thịt sạch &aacute;p dụng C&ocirc;ng Nghệ Oxy Fresh 9 đến từ Ch&acirc;u &Acirc;u mang tới những sản phẩm đảm bảo an to&agrave;n chất lượng tới tận tay người ti&ecirc;u d&ugrave;ng. Kh&eacute;p k&iacute;n mọi c&ocirc;ng đoạn gi&uacute;p n&acirc;ng cao dinh dưỡng trong bữa ăn của mỗi gia đ&igrave;nh.</p>\r\n<p><strong>Nạc thăn heo Meat Deli&nbsp;</strong>l&agrave; phần thịt cắt từ phần lưng thuộc tảng bụng, chạy dọc s&aacute;t vs xương sống của con heo. Thớ thịt của phần n&agrave;y chỉ chạy một chiều cộng với đ&acirc;y l&agrave; phần cơ &iacute;t hoạt động dẫn đến miếng thịt n&agrave;y rất mềm. Thịt nạc thăn l&agrave; phần thịt nạc hầu như kh&ocirc;ng d&iacute;nh ch&uacute;t mỡ n&agrave;o, đ&acirc;y l&agrave; phần thịt mềm nhất tr&ecirc;n con heo.</p>\r\n<p><strong>Nạc thăn heo Meat Deli&nbsp;</strong>vừa sạch vừa chuẩn tươi ngon.</p>', 'images/products/Meatdelithitheo.jpg', 'Lưu ý:  - Hạn sử dụng thực tế quý khách vui lòng xem trên bao bì.  - Hình sản phẩm chỉ mang tính chất minh họa, hình thực tế bao bì của sản phẩm tùy thời điểm sẽ khác so với thực tế.', 67000, 100, 4, 1, '2021-10-08 04:08:38', '2021-10-08 04:08:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(3, 'Rau - củ - trái cây', 'Rau củ quả + trái cây sạch tươi ngon', '2021-10-02 18:54:31', '2021-10-02 18:54:31'),
(4, 'Thịt - trứng - hải sản', 'Thịt - trứng - hải sản', '2021-10-02 18:54:51', '2021-10-02 18:54:51'),
(5, 'Thực phẩm chế biến', 'Thực phẩm chế biến', '2021-10-02 18:55:16', '2021-10-02 18:55:16'),
(6, 'Thực phẩm đông lạnh', 'Thực phẩm đông lạnh', '2021-10-02 18:55:34', '2021-10-02 18:55:34'),
(7, 'Thực phẩm khô - gia vị', 'Thực phẩm khô - gia vị', '2021-10-02 18:55:55', '2021-10-02 18:55:55'),
(8, 'Bánh kẹo - Đồ ăn vặt', 'Bánh kẹo - Đồ ăn vặt', '2021-10-02 18:56:22', '2021-10-02 18:56:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'https://whois.nhachinhchu.org/uploads/default/original/1X/5b5a9f1fb6fc2a751f81fe26077500922da02739.png',
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percent` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `promotions`
--

INSERT INTO `promotions` (`id`, `name`, `description`, `percent`, `created_at`, `updated_at`) VALUES
(1, 'Khuyến mãi hè sôi động (50%)', 'Giữa tháng deal ngập tràn', 50, '2021-09-17 03:25:06', '2021-09-17 03:25:06'),
(3, 'Không có khuyến mãi ', 'Không có khuyến mãi ', 0, '2021-10-09 01:57:16', '2021-10-09 01:57:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'https://t4.ftcdn.net/jpg/00/64/67/63/360_F_64676383_LdbmhiNM6Ypzb3FM4PPuFP9rHe7ri8Ju.jpg',
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

INSERT INTO `users` (`id`, `name`, `image`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Vũ Hoàng Lâm', 'images/avatar/lamvu_logo.png', 'lamhalo2k@gmail.com', NULL, '$2y$10$j2hSDZ4bVzbgZ/oknfxnuuQT8NlwwxG6zDI/2KKPOLPwvCNg9baRK', 'XmTMojlsZ9dVcQdHenBw8TOdLf0Ap9mDDCil5WFZrTRq4FFsIDzs523kBOnw', '2021-09-20 00:54:38', '2021-10-12 01:39:55'),
(4, 'Lam Hoang Vu', 'images/avatar/gaixinh2.jpg', 'lambeobn@gmail.com', NULL, '$2y$10$7LTa7wYJI6G86r2cEgHhAuM/8uxdQt1OaAav0MXjhzKZZNdaotlyq', NULL, '2021-10-12 19:51:48', '2021-10-15 21:28:06');

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
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bill_details`
--
ALTER TABLE `bill_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bill_details_bill_id_foreign` (`bill_id`),
  ADD KEY `bill_details_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_product_category_id_foreign` (`product_category_id`),
  ADD KEY `products_promotion_id_foreign` (`promotion_id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `promotions`
--
ALTER TABLE `promotions`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `bill_details`
--
ALTER TABLE `bill_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bill_details`
--
ALTER TABLE `bill_details`
  ADD CONSTRAINT `bill_details_bill_id_foreign` FOREIGN KEY (`bill_id`) REFERENCES `bills` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bill_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_product_category_id_foreign` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_promotion_id_foreign` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
