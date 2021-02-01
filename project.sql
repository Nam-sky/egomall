-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th2 01, 2021 lúc 07:28 AM
-- Phiên bản máy phục vụ: 10.3.22-MariaDB
-- Phiên bản PHP: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `project`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attr`
--

CREATE TABLE `attr` (
  `id` int(10) UNSIGNED NOT NULL,
  `pro_attr` int(10) UNSIGNED NOT NULL,
  `color` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `cate_id` int(10) UNSIGNED NOT NULL,
  `cate_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`cate_id`, `cate_name`, `cate_slug`, `parent_id`, `created_at`, `updated_at`) VALUES
(24, 'Iphone', 'iphone', 0, '2020-12-16 02:44:06', '2020-12-16 02:44:06'),
(25, 'Iphone 12', 'iphone-12', 24, '2020-12-16 02:44:15', '2020-12-16 02:44:15'),
(26, 'Iphone 11', 'iphone-11', 24, '2020-12-16 02:45:32', '2020-12-16 02:45:32'),
(27, 'Iphone Xs - Xs Max', 'iphone-xs-xs-max', 24, '2020-12-16 02:45:57', '2020-12-16 02:45:57'),
(28, 'Iphone 8 - 8 Plus', 'iphone-8-8-plus', 24, '2020-12-16 02:46:17', '2020-12-16 02:46:17'),
(29, 'Ipad', 'ipad', 0, '2020-12-16 02:46:27', '2020-12-16 02:46:27'),
(30, 'Ipad Pro', 'ipad-pro', 29, '2020-12-16 02:46:38', '2020-12-16 02:46:38'),
(31, 'Ipad 2019 - 2020', 'ipad-2019-2020', 29, '2020-12-16 02:47:04', '2020-12-16 02:47:04'),
(32, 'SamSung', 'samsung', 0, '2020-12-16 02:47:17', '2020-12-16 02:47:17'),
(33, 'Note 20 - 20 Ultra', 'note-20-20-ultra', 32, '2020-12-16 02:47:40', '2020-12-16 02:47:40'),
(34, 'Note 9', 'note-9', 32, '2020-12-16 02:47:55', '2020-12-16 02:47:55'),
(35, 'Note 8', 'note-8', 32, '2020-12-16 02:48:05', '2020-12-16 02:48:05'),
(36, 'Phụ Kiện', 'phu-kien', 0, '2020-12-16 02:48:23', '2020-12-16 02:48:23'),
(37, 'Aplle Watch', 'aplle-watch', 36, '2020-12-16 02:48:49', '2020-12-16 02:48:49'),
(38, 'Apple Pencil', 'apple-pencil', 36, '2020-12-16 02:49:10', '2020-12-16 02:49:10'),
(39, 'Tai Nghe', 'tai-nghe', 36, '2020-12-16 02:49:26', '2020-12-16 02:49:26'),
(40, 'Loa di động', 'loa-di-dong', 36, '2020-12-16 02:49:42', '2020-12-16 02:49:42'),
(41, 'Macbook', 'macbook', 0, '2020-12-16 02:49:51', '2020-12-16 02:49:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `code_sale`
--

CREATE TABLE `code_sale` (
  `code_id` int(10) UNSIGNED NOT NULL,
  `code_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `code_sale`
--

INSERT INTO `code_sale` (`code_id`, `code_name`, `code_value`, `code_status`, `created_at`, `updated_at`) VALUES
(1, 'abcd123', '80', 1, '2020-12-19 06:20:41', '2020-12-19 06:44:24'),
(3, 'nam', '50', 0, '2020-12-19 07:12:30', '2020-12-19 07:12:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `message`, `updated_at`, `created_at`) VALUES
(1, 'nam', 'nam@gmail.com', '0858745402', 'aa', '2021-02-01 02:34:43', '2021-02-01 02:34:43'),
(2, 'nguyenvannam', 'nam@gmail.com', '0858745402', 'aaấdfdf', '2021-02-01 02:35:00', '2021-02-01 02:35:00'),
(3, 'nam123', 'nam@gmail.com', '0858745402', 'aaa', '2021-02-01 02:36:13', '2021-02-01 02:36:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `image`
--

CREATE TABLE `image` (
  `image_id` int(10) UNSIGNED NOT NULL,
  `pro_image` int(10) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `image`
--

INSERT INTO `image` (`image_id`, `pro_image`, `image`, `created_at`, `updated_at`) VALUES
(9, 41, '11-pro-max_1573487864 - Copy.jpg', '2021-01-06 16:21:30', '2021-01-06 16:21:30'),
(10, 41, '11-pro-max_1573487864.jpg', '2021-01-06 16:21:30', '2021-01-06 16:21:30'),
(11, 41, '12-pro---onewaymobile-1_1607403524 - Copy.png', '2021-01-06 16:21:30', '2021-01-06 16:21:30'),
(15, 42, 'hmc.jpg', '2021-01-09 17:51:01', '2021-01-09 17:51:01'),
(16, 42, 'nha-trang.jpg', '2021-01-09 17:51:01', '2021-01-09 17:51:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `key_word`
--

CREATE TABLE `key_word` (
  `key_id` int(10) UNSIGNED NOT NULL,
  `key_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `key_word`
--

INSERT INTO `key_word` (`key_id`, `key_name`, `views`, `created_at`, `updated_at`) VALUES
(1, 'iphone', 6, '2020-12-25 12:27:32', '2021-01-10 06:20:17'),
(2, 'ipad', 1, '2020-12-25 12:27:58', '2020-12-25 12:27:58'),
(3, 'samsung', 1, '2020-12-25 14:50:14', '2020-12-25 14:50:14'),
(4, 'mac', 1, '2021-01-06 16:51:09', '2021-01-06 16:51:09');

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
(4, '2020_12_11_023711_create_category_table', 1),
(5, '2020_12_11_031907_create_products_table', 2),
(6, '2020_12_15_071254_create_slider_table', 3),
(7, '2020_12_17_160559_create_product_category_table', 4),
(8, '2020_12_19_124821_create_code_sale_table', 5),
(9, '2020_12_19_161409_create_order_table', 6),
(10, '2020_12_19_161512_create_order_detaii_table', 7),
(11, '2020_12_21_083240_create_post_table', 8),
(12, '2020_12_25_191858_create_key_word_table', 9),
(13, '2020_12_28_195609_create_roles_table', 10),
(14, '2020_12_28_195709_create_users_roles_table', 10),
(15, '2020_12_28_200456_create_users_roles_table', 11),
(16, '2020_12_28_202135_create_users_roles_table', 12),
(17, '2020_12_29_001855_create_permission_table', 13),
(18, '2020_12_29_002011_create_permission_role_table', 13),
(19, '2021_01_06_084628_create_image_table', 14),
(20, '2021_01_22_095948_create_attr_table', 15),
(21, '2021_01_22_100223_create_product_attr_table', 15),
(22, '2021_02_01_084304_create_table_contact', 16);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `huyen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `xa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`order_id`, `name`, `email`, `phone`, `tinh`, `huyen`, `xa`, `address`, `note`, `pay`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Nguyễn Văn Nam', 'nvd.dung.1999@gmail.com', '03265874', 'Vĩnh phúc', 'Tam đảo', 'Minh quang', 'Cam lâm', 'Giao hàng nhanh giúp mình !', '1', 0, '2020-12-19 20:16:12', '2020-12-19 20:16:12'),
(4, 'Tuấn Anh', 'chickengirlvfu@gmail.com', '987654321', 'Hà Nội', 'Từ Liêm', 'Cầu diễn', 'Ngõ 189', NULL, '1', 0, '2020-12-19 21:02:32', '2020-12-19 21:41:49'),
(5, 'Nguyễn Văn Nam', 'nguyenvannam13101997@gmail.com', '987654321', 'Vĩnh phúc', 'Từ Liêm', 'Cầu diễn', 'Ngõ 189', NULL, '2', 0, '2020-12-19 21:45:31', '2020-12-19 21:51:47'),
(6, 'Hoàng Anh', 'nguyenvannam13101997@gmail.com', '987654321', 'Hà Nội', 'Tam đảo', 'Minh quang', 'Ngõ 189', 'Giao hàng nhanh giúp tôi !', '2', 0, '2020-12-19 21:52:45', '2020-12-20 03:14:58'),
(7, 'Nguyễn Văn Nam', 'tienganhchonguomatgoc@gmail.com', '987654321', 'Vĩnh phúc', 'Tam đảo', 'Minh quang', 'Cam lâm', 'aaaaaaaaa', '2', 0, '2020-12-20 10:19:07', '2020-12-25 10:44:11'),
(9, 'Hà Tuấn Anh', 'chickengirlvfu@gmail.com', '987654321', 'Vĩnh phúc', 'Tam đảo', 'Minh quang', 'Cam lâm', 'Giao hàng nhanh', '2', 0, '2020-12-21 03:51:09', '2020-12-23 16:05:34'),
(20, 'abc', 'tienganhchonguomatgoc@gmail.com', '3265874', 'Vĩnh phúc', 'Tam đảo', 'Minh quang', 'Cam lâm', NULL, '1', 0, '2020-12-25 10:41:39', '2020-12-25 10:43:40'),
(22, 'nam', 'tienganhchonguomatgoc@gmail.com', '3265874', 'Vĩnh phúc', 'aaa', 'Cầu diễn', 'Ngõ 189', NULL, '1', 0, '2020-12-25 10:47:20', '2020-12-25 16:54:27'),
(23, 'Nguyễn Văn Nam', 'nvd.dung.1999@gmail.com', '3265874', 'Vĩnh phúc', 'Tam đảo', 'Minh quang', 'Cam lâm', NULL, '1', 0, '2020-12-25 10:50:35', '2020-12-31 15:34:48'),
(25, 'Nguyễn Văn Nam', 'tienganhchonguomatgoc@gmail.com', '03265874', 'Vĩnh phúc', 'Tam đảo', 'Minh quang', 'Cam lâm', 'aaaaaa', '2', 1, '2021-01-04 03:30:39', '2021-01-04 03:30:39'),
(26, 'Abc', 'admin@gmail.com', '03265874', 'Vĩnh phúc', 'Tam đảo', 'Minh quang', 'Cam lâm', NULL, '2', 0, '2021-01-06 16:49:04', '2021-01-06 16:49:39'),
(27, 'Nguyễn Văn Nam', 'tienganhchonguomatgoc@gmail.com', '0987654321', 'Vĩnh phúc', 'Tam đảo', 'Minh quang', 'Cam lâm', 'fjhghjfg', '2', 0, '2021-01-10 06:19:07', '2021-01-10 06:26:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `detail_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_detail` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`detail_id`, `product_id`, `price`, `quantity`, `order_detail`, `created_at`, `updated_at`) VALUES
(3, 25, 19990000, 2, 3, '2020-12-19 20:16:12', '2020-12-19 20:16:12'),
(4, 23, 30000000, 1, 4, '2020-12-19 21:02:32', '2020-12-19 21:02:32'),
(5, 27, 21900000, 2, 4, '2020-12-19 21:02:32', '2020-12-19 21:02:32'),
(6, 28, 21900000, 2, 5, '2020-12-19 21:45:31', '2020-12-19 21:45:31'),
(7, 28, 21900000, 10, 6, '2020-12-19 21:52:45', '2020-12-19 21:52:45'),
(8, 25, 19990000, 1, 7, '2020-12-20 10:19:07', '2020-12-20 10:19:07'),
(11, 26, 20000000, 1, 9, '2020-12-21 03:51:09', '2020-12-21 03:51:09'),
(24, 25, 19990000, 1, 20, '2020-12-25 10:41:39', '2020-12-25 10:41:39'),
(25, 24, 20000000, 1, 20, '2020-12-25 10:41:39', '2020-12-25 10:41:39'),
(27, 25, 19990000, 1, 22, '2020-12-25 10:47:20', '2020-12-25 10:47:20'),
(28, 24, 20000000, 1, 22, '2020-12-25 10:47:20', '2020-12-25 10:47:20'),
(29, 26, 20000000, 5, 23, '2020-12-25 10:50:35', '2020-12-25 10:50:35'),
(30, 27, 21900000, 3, 25, '2021-01-04 03:30:40', '2021-01-04 03:30:40'),
(31, 42, 31890000, 2, 26, '2021-01-06 16:49:04', '2021-01-06 16:49:04'),
(32, 27, 21900000, 1, 26, '2021-01-06 16:49:04', '2021-01-06 16:49:04'),
(33, 25, 19990000, 3, 27, '2021-01-10 06:19:07', '2021-01-10 06:19:07'),
(34, 27, 21900000, 2, 27, '2021-01-10 06:19:07', '2021-01-10 06:19:07');

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
-- Cấu trúc bảng cho bảng `permission`
--

CREATE TABLE `permission` (
  `per_id` int(10) UNSIGNED NOT NULL,
  `per_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission`
--

INSERT INTO `permission` (`per_id`, `per_name`, `display_name`) VALUES
(1, 'producter', 'Kiểm duyệt sản phẩm'),
(2, 'writer', 'Content bài viết'),
(3, 'order', 'Kiểm duyệt đơn hàng'),
(4, 'user', 'Quản lý user'),
(5, 'slider', 'Quản lý Slider'),
(6, 'keyword', 'Quản lý Keyword'),
(7, 'post', 'Quản lý bài viết');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_role_id` int(10) UNSIGNED NOT NULL,
  `id_role` int(10) UNSIGNED NOT NULL,
  `id_per` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
--

INSERT INTO `permission_role` (`permission_role_id`, `id_role`, `id_per`) VALUES
(32, 8, 1),
(33, 8, 2),
(34, 8, 3),
(35, 8, 4),
(36, 8, 5),
(37, 8, 6),
(38, 8, 7),
(41, 13, 7),
(42, 14, 1),
(43, 15, 4),
(44, 16, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post`
--

INSERT INTO `post` (`post_id`, `title`, `slug`, `description`, `thumbnail`, `status`, `content`, `views`, `created_at`, `updated_at`) VALUES
(2, 'Smartphone với chip Snapdragon 888 không đủ tầm chiến iPhone 12', 'smartphone-voi-chip-snapdragon-888-khong-du-tam-chien-iphone-12', 'Qualcomm đã cung cấp các điểm chuẩn cho Snapdragon 888 mới ra mắt và cho thấy nó có hiệu suất kém hơn so với iPhone 12 và thậm chí cả iPhone cũ hơn chạy A13 Bionic.', '2-1608516961-672-width660height395.jpg', 0, '<p>Vivo đ&atilde; c&ocirc;ng bố Y20 v&agrave;o th&aacute;ng 8 v&agrave; v&agrave;o ng&agrave;y 29/12 vừa qua, c&ocirc;ng ty đ&atilde; giới thiệu th&ecirc;m phi&ecirc;n bản năm 2021, được gọi l&agrave;&nbsp;<a href=\"https://www.24h.com.vn/dien-thoai-vivo-c407e5782.html\" title=\"vivo\">vivo</a>&nbsp;Y20 (2021). Tuy nhi&ecirc;n, kh&ocirc;ng c&oacute; qu&aacute; nhiều điểm kh&aacute;c biệt giữa hai d&ograve;ng m&aacute;y. Vivo Y20 (2021) thay thế Snapdragon 460 SoC bằng chip Helio P35, chạy Funtouch OS 11 ngay khi xuất xưởng v&agrave; sạc ở mức tối đa 10W thay v&igrave; 18W.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Vivo lại tung thêm smartphone giá &amp;#34;ngon&amp;#34;, pin &amp;#34;khủng&amp;#34; mới - 1\" src=\"https://cdn.24h.com.vn/upload/4-2020/images/2020-12-30/Vivo-lai-tung-them-smartphone-gia-gsmarena_003-1609346220-831-width660height660.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Phần c&ograve;n lại của c&aacute;c th&ocirc;ng số kỹ thuật giữa hai sản phẩm vẫn giữ nguy&ecirc;n: m&agrave;n h&igrave;nh LCD 6,51 inch HD +, pin 5.000 mAh v&agrave; m&aacute;y qu&eacute;t dấu v&acirc;n tay ở cạnh b&ecirc;n. Vivo Y20 (2021) c&oacute; tổng cộng bốn camera - một camera selfie 8MP b&ecirc;n trong thiết kế &ldquo;giọt nước&rdquo; v&agrave; cụm 3 camera sau:&nbsp;camera ch&iacute;nh 13MP + camera đo&nbsp;độ s&acirc;u 2MP + camera chụp cận - macro 2MP.</p>\r\n\r\n<p><img alt=\"Vivo lại tung thêm smartphone giá &amp;#34;ngon&amp;#34;, pin &amp;#34;khủng&amp;#34; mới - 3\" src=\"https://cdn.24h.com.vn/upload/4-2020/images/2020-12-30/Vivo-lai-tung-them-smartphone-gia-vivo-y20-2021-launched_800x450-1609346220-607-width660height371.jpg\" /></p>\r\n\r\n<p>Điện thoại th&ocirc;ng minh đi k&egrave;m với RAM 4GB v&agrave; bộ nhớ trong 64GB với hai t&ugrave;y chọn m&agrave;u sắc &ndash; Trắng Dawn v&agrave; Xanh Nebula. Đ&aacute;ng ch&uacute; &yacute;, Vivo Y20 (2021) c&oacute; gi&aacute; b&aacute;n chỉ 150 USD (tương đương 3,46 triệu đồng) ở Malaysia. Tuy nhi&ecirc;n, hiện vẫn chưa r&otilde; khi n&agrave;o sản phẩm sẽ đến c&aacute;c thị trường kh&aacute;c.</p>\r\n\r\n<p><img alt=\"Vivo lại tung thêm smartphone giá &amp;#34;ngon&amp;#34;, pin &amp;#34;khủng&amp;#34; mới - 4\" src=\"https://cdn.24h.com.vn/upload/4-2020/images/2020-12-30/Vivo-lai-tung-them-smartphone-gia-gsmarena_004-1609346220-445-width660height660.jpg\" /></p>', 1, '2020-12-21 03:15:23', '2020-12-31 15:47:46'),
(3, 'Đánh giá nhanh Oppo Reno5: Sạc siêu nhanh, camera chụp đẹp', 'danh-gia-nhanh-oppo-reno5-sac-sieu-nhanh-camera-chup-dep', 'Oppo Reno5 đang được các fan hâm mộ chờ đợi ngay trước thềm năm mới với vô số điểm cộng về thiết kế và cấu hình.', 'cover-1609388990-984-width640height480.jpg', 0, '<p>C&aacute;ch đ&acirc;y v&agrave;i giờ,&nbsp;<a href=\"https://www.24h.com.vn/dien-thoai-oppo-c407e4399.html\" title=\"Oppo\">Oppo</a>&nbsp;Reno5 đ&atilde; ch&iacute;nh thức được ra mắt v&agrave; sản phẩm đ&atilde; nhanh ch&oacute;ng đến tay những người đ&aacute;nh gi&aacute; c&ocirc;ng nghệ. C&ugrave;ng kh&aacute;m ph&aacute; những chi tiết về th&ocirc;ng số kỹ thuật cũng như thiết kế của mẫu&nbsp;<a href=\"https://www.24h.com.vn/smartphone-c407e4053.html\" title=\"smartphone\">smartphone</a>&nbsp;tầm trung si&ecirc;u &ldquo;hot&rdquo; n&agrave;y.</p>\r\n\r\n<p><strong>Thiết kế đẹp</strong></p>\r\n\r\n<p><img alt=\"Đánh giá nhanh Oppo Reno5: Sạc siêu nhanh, camera chụp đẹp - 1\" src=\"https://cdn.24h.com.vn/upload/4-2020/images/2020-12-31/danh-gia-nhanh-Oppo-Reno5-Sac-vo-dich-trong-tam-gia-oppo-reno5-6-1609388670-576-width660height463.jpg\" /></p>\r\n\r\n<p>So với thế hệ Reno4 trước đ&oacute;, m&agrave;n h&igrave;nh của d&ograve;ng Reno5 năm nay kh&ocirc;ng c&oacute; nhiều kh&aacute;c biệt v&igrave; c&ugrave;ng c&oacute; m&agrave;n h&igrave;nh &ldquo;đục lỗ&rdquo; k&iacute;ch cỡ 6,4 inch. Nhưng điểm ưu việt hơn l&agrave; m&agrave;n h&igrave;nh c&oacute; th&ecirc;m tốc độ l&agrave;m mới 90Hz, đem tới khả năng trải nghiệm h&igrave;nh ảnh mượt m&agrave; hơn. C&ugrave;ng với đ&oacute;, m&aacute;y cũng c&oacute; m&aacute;y qu&eacute;t v&acirc;n tay t&iacute;ch hợp tr&ecirc;n m&agrave;n h&igrave;nh,</p>\r\n\r\n<p><img alt=\"Đánh giá nhanh Oppo Reno5: Sạc siêu nhanh, camera chụp đẹp - 2\" src=\"https://cdn.24h.com.vn/upload/4-2020/images/2020-12-31/danh-gia-nhanh-Oppo-Reno5-Sac-vo-dich-trong-tam-gia-oppo-reno5-2-1609388670-506-width660height503.jpg\" /></p>\r\n\r\n<p>Đ&oacute; l&agrave; chưa kể, điểm nhấn của sản phẩm l&agrave; 2 t&ugrave;y chọn m&agrave;u lung linh ở mặt sau: Đen huyền b&iacute; v&agrave; Bạc đa sắc. Đặc biệt, phi&ecirc;n bản m&agrave;u Bạc đa sắc c&oacute; khả năng chuyển m&agrave;u đẹp kh&ocirc;ng k&eacute;m phi&ecirc;n bản m&agrave;u Glow tr&ecirc;n ph&acirc;n kh&uacute;c cao cấp (Galaxy Note 10+).</p>\r\n\r\n<p><img alt=\"Đánh giá nhanh Oppo Reno5: Sạc siêu nhanh, camera chụp đẹp - 3\" src=\"https://cdn.24h.com.vn/upload/4-2020/images/2020-12-31/danh-gia-nhanh-Oppo-Reno5-Sac-vo-dich-trong-tam-gia-oppo-reno5-5-1609388670-720-width660height328.jpg\" /></p>\r\n\r\n<p>Do đ&oacute;, khi cầm tr&ecirc;n tay, người d&ugrave;ng sẽ cảm nhận được độ sang của m&aacute;y cũng như độ gọn nhẹ (mỏng 7,8mm; nặng 171g) v&agrave; tiện dụng khi sử dụng trong thời gian d&agrave;i.</p>\r\n\r\n<p><strong>Hiệu năng</strong></p>\r\n\r\n<p>Về phần cứng, m&aacute;y cũng c&oacute; khả năng xử l&yacute; giống như c&aacute;c sản phẩm tầm trung kh&aacute;c với chip Snapdragon 720G; RAM 8GB; ROM 128GB. Với những th&ocirc;ng số n&agrave;y, điện thoại c&oacute; thể xử l&yacute; tốt c&aacute;c game di động phổ biến như: Li&ecirc;n minh huyền thoại, Pubg, Pokemon Go,&hellip; m&agrave; kh&ocirc;ng gặp phải vấn đề g&igrave;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Đánh giá nhanh Oppo Reno5: Sạc siêu nhanh, camera chụp đẹp - 4\" src=\"https://cdn.24h.com.vn/upload/4-2020/images/2020-12-31/danh-gia-nhanh-Oppo-Reno5-Sac-vo-dich-trong-tam-gia-oppo-reno5-8-1609388983-509-width660height513.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Về phần mềm, chiếc smartphone được c&agrave;i đặt sẵn phi&ecirc;n bản Color OS 11 được n&acirc;ng cấp, chạy hệ điều h&agrave;nh Android 11 mới nhất. V&igrave; thế, người d&ugrave;ng sẽ c&oacute; được những trải nghiệm t&ugrave;y chỉnh mới nhất.</p>\r\n\r\n<p><strong>Camera với khả năng quay video &ldquo;đỉnh&rdquo;</strong></p>\r\n\r\n<p>Oppo t&iacute;ch hợp cho Reno5 cụm 4 camera sau với độ ph&acirc;n giải kh&aacute; cao: 64MP + 8MP + 2MP + 2MP. Bố cục camera n&agrave;y mang tới c&aacute;c chế độ chụp ảnh th&ocirc;ng thường như: ảnh ch&acirc;n dung, ảnh g&oacute;c rộng, ảnh cận cảnh,&hellip;</p>\r\n\r\n<p><img alt=\"Đánh giá nhanh Oppo Reno5: Sạc siêu nhanh, camera chụp đẹp - 6\" src=\"https://cdn.24h.com.vn/upload/4-2020/images/2020-12-31/danh-gia-nhanh-Oppo-Reno5-Sac-vo-dich-trong-tam-gia-oppo-reno5-3-1609388670-362-width660height456.jpg\" /></p>\r\n\r\n<p>Thay v&igrave; tập trung khai th&aacute;c những khả năng chụp ảnh, điện thoại của Oppo bổ sung th&ecirc;m một số chế độ quay video nổi bật: video si&ecirc;u quay đ&ecirc;m, video hiển thị k&eacute;p, video phơi s&aacute;ng k&eacute;p, mang tới khả năng trải nghiệm nghệ thuật cực ấn tượng cho người d&ugrave;ng phổ th&ocirc;ng.</p>\r\n\r\n<p><img alt=\"Đánh giá nhanh Oppo Reno5: Sạc siêu nhanh, camera chụp đẹp - 7\" src=\"https://cdn.24h.com.vn/upload/4-2020/images/2020-12-31/danh-gia-nhanh-Oppo-Reno5-Sac-vo-dich-trong-tam-gia-oppo-reno5-4-1609388670-586-width660height485.jpg\" /></p>\r\n\r\n<p>Về chất lượng camera selfie, sản phẩm được trang bị cảm biến c&oacute; độ ph&acirc;n giải l&ecirc;n tới 44MP, hứa hẹn đem lại những h&igrave;nh ảnh tự sướng sắc n&eacute;t hơn, &ldquo;chất&rdquo; hơn nhiều so với sản phẩm đồng gi&aacute; kh&aacute;c.</p>\r\n\r\n<p><strong>Tuổi thọ pin v&agrave; khả năng sạc nhanh</strong></p>\r\n\r\n<p><img alt=\"Đánh giá nhanh Oppo Reno5: Sạc siêu nhanh, camera chụp đẹp - 8\" src=\"https://cdn.24h.com.vn/upload/4-2020/images/2020-12-31/danh-gia-nhanh-Oppo-Reno5-Sac-vo-dich-trong-tam-gia-oppo-reno5-7-1609388670-138-width660height440.jpg\" /></p>\r\n\r\n<p>Đ&acirc;y l&agrave; một trong số những ưu điểm nổi bật của m&aacute;y. Oppo ưu &aacute;i t&iacute;ch hợp cho Reno5 vi&ecirc;n pin dung lượng kh&aacute; lớn &ndash; 4310 mAh, c&oacute; thể sử dụng thoải m&aacute;i trong cả ng&agrave;y. Chưa hết, điện thoại c&ograve;n c&oacute; khả năng sạc pin cực nhanh, l&ecirc;n tới 50W. Tốc độ sạc n&agrave;y chưa thiết bị n&agrave;o trong tầm gi&aacute; 09 triệu c&oacute;. Do đ&oacute;, lợi thế khi sở hữu Reno5 l&agrave; v&ocirc; c&ugrave;ng lớn, đặc biệt hấp dẫn c&aacute;c game thủ.</p>\r\n\r\n<p><strong>Gi&aacute; b&aacute;n</strong></p>\r\n\r\n<p><img alt=\"Đánh giá nhanh Oppo Reno5: Sạc siêu nhanh, camera chụp đẹp - 9\" src=\"https://cdn.24h.com.vn/upload/4-2020/images/2020-12-31/danh-gia-nhanh-Oppo-Reno5-Sac-vo-dich-trong-tam-gia-oppo-reno5-1609388670-547-width660height470.jpg\" /></p>\r\n\r\n<p>Thực tế, ở tầm gi&aacute; 08 &ndash; 09 triệu đồng, người d&ugrave;ng c&oacute; thể chọn lựa v&ocirc; số những thiết bị để đ&aacute;p ứng nhu cầu xem phim, chụp ảnh v&agrave; lướt web th&ocirc;ng thường. Nhưng với lợi thế về sạc nhanh v&agrave; thiết kế, dự kiến, khi được &ldquo;l&ecirc;n kệ&rdquo; v&agrave;o đầu năm sau, sản phẩm sẽ thu h&uacute;t rất nhiều sự ch&uacute; &yacute; của người d&ugrave;ng phổ th&ocirc;ng.</p>\r\n\r\n<p><img alt=\"Đánh giá nhanh Oppo Reno5: Sạc siêu nhanh, camera chụp đẹp - 10\" src=\"https://cdn.24h.com.vn/upload/4-2020/images/2020-12-31/danh-gia-nhanh-Oppo-Reno5-Sac-vo-dich-trong-tam-gia-oppo-reno5-1-1609388670-608-width660height514.jpg\" /></p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng quan t&acirc;m hiện c&oacute; thể đặt trước Reno5 tại một số nh&agrave; b&aacute;n lẻ ch&iacute;nh h&atilde;ng trong nước v&agrave; nhận được v&ocirc; số c&aacute;c ưu đ&atilde;i hấp dẫn.</p>', 0, '2020-12-31 11:13:24', '2020-12-31 15:47:23'),
(4, 'HOT: Samsung úp mở chuyện công bố chuỗi \"siêu phẩm\" mới vào ngày 06/01', 'hot-samsung-up-mo-chuyen-cong-bo-chuoi-sieu-pham-moi-vao-ngay-0601', 'Trang chủ Samsung đề cập đến sự kiện ngày 06/01, đây có thể là thời gian hãng công bố dòng Galaxy S21 hay không?', 'HOT-Samsung-up-mo-chuyen-cong-bo-san-pham-vao-ngay-06-01-gsmarena_001-1609319714-826-width660height406.jpg', 0, '<p>Theo b&aacute;o c&aacute;o của Telefoon NL, trang chủ của&nbsp;<a href=\"https://www.24h.com.vn/samsung-c407e3988.html\" title=\"Samsung\">Samsung</a>&nbsp;H&agrave; Lan đ&atilde; c&oacute; lời mời cho một sự kiện c&oacute; ti&ecirc;u đề &ldquo;The First Look 2021&rdquo;. Sự kiện sẽ diễn ra v&agrave;o ng&agrave;y 06/01 l&uacute;c 4 giờ chiều giờ địa phương (11 giờ s&aacute;ng EST) v&agrave; th&ocirc;ng tin chi tiết về sự kiện rất hiếm. Lời mời tương tự cũng&nbsp;được nh&igrave;n thấy tr&ecirc;n trang chủ của Samsung tại Mỹ với kh&aacute; &iacute;t th&ocirc;ng tin.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"HOT: Samsung úp mở chuyện công bố chuỗi &amp;#34;siêu phẩm&amp;#34; mới vào ngày 06/01 - 1\" src=\"https://cdn.24h.com.vn/upload/4-2020/images/2020-12-30/HOT-Samsung-up-mo-chuyen-cong-bo-san-pham-vao-ngay-06-01-gsmarena_001-1609319714-826-width660height406.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sự kiện &ldquo;The First Look 2021&rdquo; n&agrave;y được xem l&agrave; c&oacute; li&ecirc;n quan đến c&aacute;c th&ocirc;ng b&aacute;o CES (Hội chợ điện tử ti&ecirc;u d&ugrave;ng) của Samsung v&agrave; kh&ocirc;ng li&ecirc;n quan g&igrave; đến điện thoại th&ocirc;ng minh. Sự kiện đ&atilde; được đăng tr&ecirc;n trang ch&iacute;nh của Samsung v&agrave; phi&ecirc;n bản tiếng Anh của lời mời c&oacute; đề cập đến &quot;CES 2021&quot;. Do đ&oacute;, giới c&ocirc;ng nghệ dự đo&aacute;n sự kiện ng&agrave;y 06/01 n&agrave;y sẽ l&agrave; một số đoạn giới thiệu về những g&igrave; Samsung dự định sẽ c&ocirc;ng bố tại CES năm nay. Samsung thường c&ocirc;ng bố c&aacute;c sản phẩm ti&ecirc;u d&ugrave;ng gia đ&igrave;nh v&agrave; giải tr&iacute; tại CES.</p>\r\n\r\n<p>C&aacute;c b&aacute;o c&aacute;o trước đ&oacute; đ&atilde; chỉ ra rằng sự kiện Unpacked của Samsung dự kiến ​​diễn ra v&agrave;o th&aacute;ng 1 v&agrave; Samsung đ&atilde; c&oacute; một khoảng thời gian d&agrave;nh ri&ecirc;ng cho b&agrave;i ph&aacute;t biểu CES năm nay. Điều đ&aacute;ng ch&uacute; &yacute; l&agrave; Samsung đ&atilde; kh&ocirc;ng c&ocirc;ng bố bất kỳ điện thoại th&ocirc;ng minh h&agrave;ng đầu n&agrave;o tại b&agrave;i ph&aacute;t biểu của CES trong nhiều năm.</p>\r\n\r\n<p><img alt=\"HOT: Samsung úp mở chuyện công bố chuỗi &amp;#34;siêu phẩm&amp;#34; mới vào ngày 06/01 - 3\" src=\"https://cdn.24h.com.vn/upload/4-2020/images/2020-12-30/HOT-Samsung-up-mo-chuyen-cong-bo-san-pham-vao-ngay-06-01-gsmarena_001--1--1609319714-241-width660height298.jpg\" /></p>\r\n\r\n<p>Ảnh thực tế được cho l&agrave; của Galaxy S21.</p>\r\n\r\n<p>C&oacute; vẻ như sự kiện b&iacute; ẩn ng&agrave;y 06/01 n&agrave;y l&agrave; một lời giới thiệu về tương lai của c&aacute;c sản phẩm ti&ecirc;u d&ugrave;ng cao cấp th&ocirc;ng thường của Samsung như tủ lạnh, TV v&agrave; c&aacute;c thiết bị gia dụng kh&aacute;c, kh&ocirc;ng li&ecirc;n quan g&igrave; đến Galaxy S21 sắp tới.</p>\r\n\r\n<p>Mặt kh&aacute;c, c&ocirc;ng ch&uacute;ng c&oacute; thể sẽ kh&ocirc;ng phải chờ qu&aacute; l&acirc;u để thấy đoạn video giới thiệu về d&ograve;ng&nbsp;Galaxy S21 mới của Samsung.</p>', 0, '2020-12-31 11:14:09', '2020-12-31 15:47:15'),
(5, 'iPhone “phá đảo” top 10 smartphone được kích hoạt nhiều nhất dịp Giáng sinh', 'iphone-pha-dao-top-10-smartphone-duoc-kich-hoat-nhieu-nhat-dip-giang-sinh', 'iPhone chiếm tới 09/10 smartphone được kích hoạt nhiều nhất dịp lễ Giáng sinh.', 'iPhone-pha-dao-top-10-smartphone-ban-ra-nhieu-nhat-dip-Giang-sinh-iphone-1609312490-767-width660height440.jpg', 0, '<p>Những th&ocirc;ng k&ecirc; mới nhất cho thấy, &ocirc;ng gi&agrave; Noel c&oacute; lẽ&nbsp;th&iacute;ch iOS hơn Android. Theo c&ocirc;ng ty nghi&ecirc;n cứu Flurry Analytics, ch&iacute;n thiết bị h&agrave;ng đầu được k&iacute;ch hoạt v&agrave;o ng&agrave;y Gi&aacute;ng sinh ở Mỹ đều l&agrave; c&aacute;c mẫu iPhone, dẫn đầu bởi&nbsp;<a href=\"https://www.24h.com.vn/iphone-11-c407e5798.html\" title=\"iPhone 11\">iPhone 11</a>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"iPhone “phá đảo” top 10 smartphone được kích hoạt nhiều nhất dịp Giáng sinh - 1\" src=\"https://cdn.24h.com.vn/upload/4-2020/images/2020-12-30/iPhone-pha-dao-top-10-smartphone-ban-ra-nhieu-nhat-dip-Giang-sinh-xmasphones-2-1609312490-70-width660height363.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Thống k&ecirc; top 10 smartphone được k&iacute;ch hoạt nhiều nhất dịp gi&aacute;ng sinh tại Mỹ.</p>\r\n\r\n<p>Nh&igrave;n chung, số lần k&iacute;ch hoạt điện thoại th&ocirc;ng minh v&agrave;o ng&agrave;y Gi&aacute;ng sinh đ&atilde; giảm 23% so với năm ngo&aacute;i. Sự suy giảm n&agrave;y được cho l&agrave; do t&aacute;c động của virus COVID-19 đối với nền kinh tế Mỹ. Theo truyền thống, ng&agrave;y Gi&aacute;ng sinh l&agrave; ng&agrave;y lớn nhất để k&iacute;ch hoạt điện thoại th&ocirc;ng minh mới.</p>\r\n\r\n<p>Theo bảng xếp hạng m&agrave; Flurry thống k&ecirc; được, c&oacute; 10 điện thoại h&agrave;ng đầu được k&iacute;ch hoạt v&agrave;o ng&agrave;y Gi&aacute;ng sinh. Dựa tr&ecirc;n biểu đồ, trong năm thứ hai li&ecirc;n tiếp, iPhone 11 l&agrave; điện thoại được k&iacute;ch hoạt nhiều nhất v&agrave;o ng&agrave;y Gi&aacute;ng sinh. Số lượng k&iacute;ch hoạt v&agrave;o ng&agrave;y 25/12 cao hơn 5% so với số lượng trung b&igrave;nh c&aacute;c đơn vị iPhone 11 được k&iacute;ch hoạt từ ng&agrave;y 18/12 &ndash; 24/12.</p>\r\n\r\n<p><strong>Top 10 điện thoại được k&iacute;ch hoạt nhiều nhất ở Mỹ v&agrave;o ng&agrave;y Gi&aacute;ng sinh bao gồm:</strong></p>\r\n\r\n<p>● iPhone 11</p>\r\n\r\n<p>● iPhone XR</p>\r\n\r\n<p>●&nbsp;<a href=\"https://www.24h.com.vn/iphone-12-c407e5955.html\" title=\"iPhone 12\">iPhone 12</a>&nbsp;Pro Max</p>\r\n\r\n<p>● iPhone 12</p>\r\n\r\n<p>● iPhone 11 Pro Max</p>\r\n\r\n<p>● iPhone SE (2020)</p>\r\n\r\n<p>● iPhone 12 Pro</p>\r\n\r\n<p>● iPhone 8 Plus</p>\r\n\r\n<p>● iPhone 8</p>\r\n\r\n<p>● LG K30</p>\r\n\r\n<p><img alt=\"iPhone “phá đảo” top 10 smartphone được kích hoạt nhiều nhất dịp Giáng sinh - 3\" src=\"https://cdn.24h.com.vn/upload/4-2020/images/2020-12-30/iPhone-pha-dao-top-10-smartphone-ban-ra-nhieu-nhat-dip-Giang-sinh-iphone-1609312490-767-width660height440.jpg\" /></p>\r\n\r\n<p>iPhone vẫn rất được ưa chuộng.</p>\r\n\r\n<p>Nền kinh tế Mỹ suy yếu do đại dịch g&acirc;y ra l&agrave; một phần l&yacute; do tại sao hai điện thoại gi&aacute; rẻ lại hoạt động tốt v&agrave;o ng&agrave;y Gi&aacute;ng sinh. iPhone SE (2020) v&agrave; LG K300 c&oacute; lượng k&iacute;ch hoạt tăng 34% v&agrave; 181%. Flurry lưu &yacute; &quot;Th&ocirc;ng thường, c&aacute;c thiết bị cao cấp nhất của Apple tăng vọt khi ra mắt. Phi&ecirc;n bản phổ biến của năm nay l&agrave; iPhone 12 v&agrave;&nbsp;<a href=\"https://www.24h.com.vn/iphone-12-c407e5955.html\" title=\"iPhone 12 Pro Max\">iPhone 12 Pro Max</a>&nbsp;đ&atilde; c&oacute; tuần ra mắt th&agrave;nh c&ocirc;ng&nbsp;nhất trong số c&aacute;c thiết bị iPhone của Apple trong ba năm qua. Điều n&agrave;y cho thấy nhu cầu l&acirc;u d&agrave;i v&agrave; mạnh mẽ đối với điện thoại th&ocirc;ng minh cao cấp nhất của h&atilde;ng. &quot;</p>', 1, '2020-12-31 15:49:17', '2021-01-10 06:21:11'),
(9, 'Wilfrid Botsford', 'wilfrid-botsford', 'iphone 12 ra mắt', '12-pro---onewaymobile-1_1607403524.png', 0, '<p>aaaaaaaaaaa</p>', 0, '2021-01-04 03:52:42', '2021-01-04 03:52:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `pro_id` int(10) UNSIGNED NOT NULL,
  `pro_cate` int(10) UNSIGNED NOT NULL,
  `pro_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_price` int(11) NOT NULL,
  `pro_sale` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `pro_done` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`pro_id`, `pro_cate`, `pro_name`, `pro_slug`, `pro_thumbnail`, `pro_description`, `pro_price`, `pro_sale`, `status`, `pro_done`, `views`, `created_at`, `updated_at`) VALUES
(24, 26, 'Điện thoại Apple iPhone 11 Pro Max - 256GB - New Fullbox 100% - ZA/A', 'dien-thoai-apple-iphone-11-pro-max-256gb-new-fullbox-100-zaa', '11-pro-max_1573487864.jpg', '<h3><strong>IPHONE 11 PRO MAX 256GB NEW FULLBOX&nbsp;</strong>: Tuyệt phẩm smartphone 2019.</h3>\r\n\r\n<h3>Phi&ecirc;n bản Pro Max l&agrave; điện thoại cao cấp nhất trong bộ ba thế hệ điện thoại mới của nh&agrave; T&aacute;o. Từ cấu h&igrave;nh, hiệu năng, camera đề được ho&agrave;n thiện, trang bị những g&igrave; tinh t&uacute;y nhất của Apple. Phi&ecirc;n bản n&agrave;y đ&atilde; khẳng định vị thế của nh&agrave; T&aacute;o khuyết tr&ecirc;n thị trường smartphone một lần nữa. Dưới b&agrave;i viết n&agrave;y, h&atilde;y c&ugrave;ng nhau l&agrave;m r&otilde; xem Apple đ&atilde; thay đổi những g&igrave; để phi&ecirc;n bản n&agrave;y lại g&acirc;y được tiếng vang mạnh mẽ như vậy tr&ecirc;n to&agrave;n thế giới nh&eacute;.</h3>\r\n\r\n<p><strong>1. M&agrave;n h&igrave;nh rộng r&atilde;i, chất lượng hiển thị tuyệt hảo.</strong><br />\r\nDưới những g&oacute;c nh&igrave;n, đ&aacute;nh gi&aacute; về&nbsp;<strong>Iphone 11 Pro Max 256Gb New Fullbox</strong>, phi&ecirc;n bản n&agrave;y c&oacute; cho m&igrave;nh một m&agrave;n h&igrave;nh 6.5 inchn rộng hơn với phi&ecirc;n bản tiền nhiệm với c&acirc;n nặng hơn l&agrave; 18g. Mặc d&ugrave;, trọng lượng n&acirc;ng l&ecirc;n một ch&uacute;t nhưng kh&ocirc;ng c&oacute; sự kh&oacute; khăn khi sử dụng tren chiếc smartphone n&agrave;y. K&iacute;ch thước tăng l&ecirc;n một ch&uacute;t nhưng tạo n&ecirc;n sự kh&aacute;c biệt v&agrave; trải nghiệm với m&agrave;n h&igrave;nh sẽ rộng hơn, thoải m&aacute;i hơn rất nhiều so với thế hệ trước.<br />\r\nGiống như c&aacute;c sản phẩm của Apple, tất cả sẽ ho&agrave;n thiện tỉ mị với nh&ocirc;m nguy&ecirc;n khối. Mặt trước, sau sẽ đều được phủ lớp k&iacute;nh cường lực chị được va đập mạnh với kết cấu phủ mờ ở mặt sau. Việc vệ sinh m&aacute;y sẽ dễ d&agrave;ng hơn, kh&ocirc;ng bị b&aacute;m dấu v&acirc;n tay như c&aacute;c thế hệ trước.<br />\r\nM&agrave;n h&igrave;nh 6.5 inch với c&aacute;c viền mỏng tạo n&ecirc;n một thiết kế hiện đại, ưa mắt. FaceID được t&iacute;ch hợp rất nhạy, hoạt động nhanh ch&oacute;ng trong mọi m&ocirc;i trường &aacute;nh s&aacute;ng.<br />\r\nĐặc biệt, Apple trang bị cho thế hệ n&agrave;y m&agrave;n h&igrave;nh Super Retina XDR với độ ph&acirc;n giải 2688 x 1242 pixels, đem lại h&igrave;nh ảnh sắc n&eacute;t sống động. Với độ s&aacute;ng c&oacute; thể l&ecirc;n tới 1200 nits trong c&aacute;c cảnh HDR, phi&ecirc;n bản n&agrave;y ho&agrave;n to&agrave;n c&oacute; thể sử dụng dưới &aacute;nh s&aacute;ng mạnh của m&ocirc;i trường. Mọi trải nghiệm đồ họa tr&ecirc;n chiếc m&agrave;n h&igrave;nh n&agrave;y rất tuyệt vời v&agrave; đ&aacute;ng đồng tiền b&aacute;t gạo. So với m&agrave;n h&igrave;nh Note 10 Plus, phi&ecirc;n bản n&agrave;y c&oacute; tong m&agrave;u ấm hơn với c&acirc;n bằng trắng tốt hơn. Khi người d&ugrave;ng chơi game, xem phim đều mang lại một cảm nhận tuyệt vời, khiến những người kh&oacute; t&iacute;nh nhất h&agrave;i l&ograve;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://onewaymobile.vn/upload_images/images/2020/10/18/iPhone%2011%20Pro%20Max%201%20-%20onewaymobile_vn(9).jpg\" /></p>\r\n\r\n<p><strong>2. Cụm camera sắc n&eacute;t, độc đ&aacute;o.</strong><br />\r\nỞ mặt sau, Apple trang bị cho&nbsp;<strong>Iphone 11 Pro Max 256Gb New Fullbox</strong>&nbsp;3 camera. Điều đ&oacute; đ&atilde; khiến phi&ecirc;n bản n&agrave;y được đ&aacute;nh gi&aacute; l&agrave; một trong những smartphone với chất lượng ảnh chụp tốt nhất, tuy&ecirc;t nhất tr&ecirc;n thị trường hiện nay. Book 3 camera 12MP với mỗi một cảm biến kh&aacute;c nhau. Ống k&iacute;nh đầu ti&ecirc;n với f/1.9 cảm biến g&oacute;c rộng ti&ecirc;u chuẩn, ống k&iacute;nh thứ 2 tele cho khẩu độ f/2.0 để chụp ảnh trong m&ocirc;i trường &iacute;t &aacute;nh s&aacute;ng v&agrave; cuối c&ugrave;ng l&agrave; ống k&iacute;nh g&oacute;c si&ecirc;u rộng f/2.4 cho g&oacute;c nh&igrave;n l&ecirc;n tới 120 độ để người d&ugrave;ng c&oacute; thể chụp được to&agrave;n bộ cảnh một c&aacute;ch rộng nhất, đầy đủ nhất.<br />\r\nHDR của phi&ecirc;n bản n&agrave;y th&ocirc;ng minh hơn thế hệ cũ rất nhiều. Chế độ ban đ&ecirc;m mới gi&uacute;p chụp thiếu s&aacute;ng tốt hơn với Ai ph&acirc;n t&iacute;ch một số ảnh thiếu s&aacute;ng trước khi chụp, sau đ&oacute; c&acirc;n bằng được &aacute;nh s&aacute;ng với khoảng c&aacute;ch v&agrave; hợp lại tạo n&ecirc;n bức ảnh đầy đủ điều kiện &aacute;nh s&aacute;ng nhất.</p>\r\n\r\n<p><img alt=\"\" src=\"https://onewaymobile.vn/upload_images/images/2020/10/18/iPhone%2011%20Pro%20Max%20-%20onewaymobile_vn(9).jpg\" /></p>\r\n\r\n<p><em>Cụm camera độc đ&aacute;o.</em></p>\r\n\r\n<p>Nhờ tất cả những điều đ&oacute;, chất lượng ảnh sau khi chụp rất chất lượng. H&igrave;nh ảnh c&oacute; độ chi tiết cao, độ n&eacute;t r&otilde; r&agrave;ng. M&agrave;u sắc hiển thị rất ch&acirc;n thực, sống động khi so s&aacute;nh với cảnh vật xung quanh. Chế độ chụp ban đ&ecirc;m tuyệt hảo, cảnh vật c&oacute; m&agrave;u sắc r&otilde; r&agrave;ng, kh&ocirc;ng lẫn v&agrave;o b&oacute;ng đ&ecirc;m.</p>\r\n\r\n<p><strong>3. Sức mạnh hiệu năng khủng khiếp.</strong><br />\r\nSức mạnh của phi&ecirc;n bản n&agrave;y thật sự l&agrave; đ&aacute;ng nể. Kh&ocirc;ng c&oacute; một t&aacute;c vụ n&agrave;o khiến cho phi&ecirc;n bản Pro Max giật, lag hay chậm chễ đơn giản l&agrave; do Apple đ&atilde; trong bị vi xử l&yacute; L13 Aion Bionic c&oacute; hiệu năng của CPU v&agrave; GPU nhanh hơn tới 20% so với phi&ecirc;n bản iPhone XS Max.Mọi trải nghiệm với c&aacute;c phần mềm chỉnh sửa ảnh, edit video thật sự mượt m&agrave;, nhanh ch&oacute;ng. Những game hot hiện nay như Li&ecirc;n Qu&acirc;n, PUBG, COD đểu c&oacute; sự nhạy b&eacute;n, ổn định với mức c&agrave;i đặt đồ họa cao nhất. Quả thực hiệu năng của phi&ecirc;n bản n&agrave;y rất đ&aacute;ng nể.<br />\r\nHơn nữa, với vi&ecirc;n pin được trang bị tr&ecirc;n phi&ecirc;n bản n&agrave;y. Người d&ugrave;ng c&oacute; thể xem phi, với Netflix, kết hợp l&agrave;m việc c&oacute; thể sự dụng l&ecirc;n hơn 12 tiếng. C&ograve;n nếu xem Youtube với độ ph&acirc;n giải 1080, chơi game đồ họa cao c&oacute; thể sử dụng l&ecirc;n tới 10 tiếng, Hiệu năng tốt, pin khỏe th&igrave; c&ograve;n g&igrave; bằng nữa,</p>\r\n\r\n<p><strong>Iphone 11 Pro Max 256Gb New Fullbox</strong>&nbsp;hiện c&oacute; tại&nbsp;<strong>OneWay&nbsp;</strong>l&agrave; một chiếc smartphone mạnh mẽ nhất ở thời điểm hiện nay đến từ nh&agrave; T&aacute;o. Mọi trải nghiệm từ m&agrave;n h&igrave;nh, hiệu năng đều đảm bảo được sự ho&agrave;n hảo đến với người d&ugrave;ng. Apple n&oacute;i kh&ocirc;ng sai khi đ&atilde; nhận định đ&acirc;y sẽ l&agrave; sản phẩm smartphone tuyệt vời nhất của năm 2019.</p>', 27390000, 20000000, 0, 1, 0, '2020-12-16 03:39:18', '2020-12-25 10:47:20'),
(25, 26, 'Điện thoại Apple iPhone 11 Pro - 256GB - Like New 99%', 'dien-thoai-apple-iphone-11-pro-256gb-like-new-99', '11-pro-max_1573487864.jpg', '<h3><strong>Iphone 11 Pro 256Gb Like New 99%</strong>: Lựa chọn hợp l&yacute;, chuẩn x&aacute;c!</h3>\r\n\r\n<p>Trong những phi&ecirc;n bản smartphone nh&agrave; T&aacute;o ra mắt v&agrave;o năm 2019, phi&ecirc;n bản Pro được rất nhiều người quan t&acirc;m v&agrave; đ&aacute;nh gi&aacute; đ&acirc;y l&agrave; sản phẩm đ&aacute;ng lựa chọn nhất. Kh&ocirc;ng chỉ v&igrave; những t&iacute;nh năng mới nhất được t&iacute;ch hợp m&agrave; c&ograve;n do sự nhỏ gọn đến từ thiết kế v&agrave; gi&aacute; dễ thở hơn Iphone 11 Pro 64Gb Like New 99% Max. B&agrave;i viết dưới đ&acirc;y sẽ c&ugrave;ng cho mọi người r&otilde; hơn xem nh&agrave; T&aacute;o đ&atilde; l&agrave;m g&igrave; với phi&ecirc;n bản n&agrave;y m&agrave; l&agrave;m rất nhiều t&iacute;n đồ c&ocirc;ng nghệ ph&aacute;t sốt nh&eacute;.</p>\r\n\r\n<p><strong>1. Thiết kế độc nhất, sang trọng.</strong><br />\r\nViệc Apple tung ra c&aacute;c phi&ecirc;n bản ti&ecirc;u chuẩn v&agrave; th&ecirc;m nhưng phi&ecirc;n bản n&acirc;ng cấp đi k&egrave;m dường như kh&ocirc;ng c&ograve;n lạ nữa. Lần n&agrave;y cũng kh&ocirc;ng ngoại lệ khi nh&agrave; t&aacute;o tung ra phi&ecirc;n bản Pro đi k&egrave;m iPhone 11. Nh&igrave;n sơ qua th&igrave; phi&ecirc;n bản n&agrave;y kh&ocirc;ng c&oacute; sự kh&aacute;c biệt nhiều về thiết kế. Điều nhận ra dễ d&agrave;ng nhất l&agrave; c&oacute; th&acirc;n h&igrave;nh nhỏ gọn nhất trong bộ 3 được ra mắt v&agrave; sở hữu cụm 3 camera ở mặt sau ( trong khi phi&ecirc;n bản 11 chỉ trang bị 2 camera ).<br />\r\nMặt trước sễ thiết kế giống như iPhone XR, vẫn sở hữu notch d&agrave;i rộng giống như những phi&ecirc;n bản cũ. Lớp k&iacute;nh s&aacute;ng, bao bọc m&agrave;n h&igrave;nh v&agrave; những cảm biến, camera. Cạnh viền được bo g&oacute;c độ cong kh&aacute; nhỏ gần như phẳng, tạo n&ecirc;n cảm gi&aacute;c tr&agrave;n viền, đầy đủ.<br />\r\nHai b&ecirc;n h&ocirc;ng của phi&ecirc;n bản n&agrave;y vẫn l&agrave; c&aacute;c n&uacute;t vật l&yacute; quen thuộc của nh&agrave; T&aacute;o gồm c&ocirc;ng tắc im lặng, ph&iacute;m &acirc;m lượng b&ecirc;n tr&aacute;i. Ph&iacute;a dưới gồm cổng Lightning v&agrave; loa thoại. Ph&iacute;a b&ecirc;n phải sẽ bảo gồm ph&iacute;m nguồn v&agrave; khe Sim. Một sự sắp xếp rất quen thuộc với những fan của nh&agrave; T&aacute;o khuyết.</p>\r\n\r\n<p><img alt=\"\" src=\"https://onewaymobile.vn/upload_images/images/2020/10/18/iphone%2011%20pro%20-%20onewaymobile_vn(1).jpg\" /></p>\r\n\r\n<p><em>Thiết kế độc lạ, sang.</em></p>\r\n\r\n<p>Khung của điện thoại T&aacute;o n&agrave;y l&agrave; khung nh&ocirc;m với lớp sơn mờ giống như XR v&agrave; X. Mắt sau được bảo vệ bở lớp k&iacute;nh Gorilla với logo t&aacute;o lớn hơn v&agrave; đặt ở vị tr&iacute; trung t&acirc;m của m&aacute;y chứ kh&ocirc;ng phải ở phần nửa tr&ecirc;n của c&aacute;c thế hệ trước. Đặc biệt hơn, mọi &aacute;nh mắt dược đổ dồn v&agrave;o cụm camera h&igrave;nh vu&ocirc;ng độc đ&aacute;o, nh&igrave;n rất lộm cộm nhưng thực tế kh&ocirc;ng hề bị nh&ocirc; v&agrave; v&ecirc;nh ra qu&aacute; nhiều.</p>\r\n\r\n<p><strong>2. M&agrave;n h&igrave;nh sống động, cấu h&igrave;nh mạnh mẽ</strong><br />\r\nM&agrave;n h&igrave;nh của phi&ecirc;n bản Pro c&oacute; k&iacute;ch thước 5.8 inch c&ugrave;ng độ ph&acirc;n giải 2436 x 1125 pixels. M&agrave;n h&igrave;nh Super Retina XDR tr&ecirc;n tấm nền OLED đưa ra chất lượng đồ họa sống động, c&oacute; độ s&acirc;u. Độ s&aacute;ng 800 nit khi d&ugrave;ng dưới trời nắng v&agrave; l&ecirc;n tới 1200 nit với những nội dung độ tương phản cao v&agrave; mật độ 458 pixel/ inch, độ tương phản 2 triệu/1, tiết kiệm năng lượng hơn 15%. Mọi trải nghiệm đồ họa từ video, phim cho đến game 2D, 3D đều rất tuyệt vời. H&igrave;nh ảnh chi tiết, sắc n&eacute;t, r&otilde; r&agrave;ng từng chi tiết với độ tỉ mỉ rất lớn. M&agrave;u sắc hiển thị đầy đủ, dải m&agrave;u rất rộng n&ecirc;n m&agrave;u sắc c&oacute; độ s&acirc;u, h&agrave;i h&ograve;a.</p>\r\n\r\n<p><img alt=\"\" src=\"https://onewaymobile.vn/upload_images/images/2020/10/18/iphone%2011%20pro%202%20-%20onewaymobile_vn(1).jpg\" /></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh tuyệt vời, đủ đầy.</em></p>\r\n\r\n<p>Về cấu h&igrave;nh, chip A13 Bionic với kiến tr&uacute;c 64 bit Fusion được t&iacute;ch hợp tr&ecirc;n&nbsp;<strong>Iphone 11 Pro 256Gb Like New 99%</strong>. Đ&acirc;y được đ&aacute;nh gi&aacute; l&agrave; CPU, GPU mạnh nhất thế giới hiện tại. CỤm CPU với 2 nh&acirc;n hiệu năng co với tốc độ cao hơn 20%, tiến kiệm điện 40% v&agrave; 4 nh&acirc;n hiệu suất cao với tốc độ nhanh hơn 20%, tiết kiệm hơn 25% so với thế hej trước. GPU c&oacute; tốc độ nhanh hơn 20%, tiết kiệm điện hơn 30% với phi&ecirc;n bản trước n&ecirc;n hiệu năng chơi game với ứng dụng AR đều mượt m&agrave;. Chip được cấu tạo tr&ecirc;n tiến tr&igrave;nh 7nm với 8.5 tỷ b&oacute;ng b&aacute;n dẫn n&ecirc;n c&oacute; thể thực hiện 1 ng&agrave;y tỷ ph&eacute;p t&iacute;nh mỗi gi&acirc;y m&agrave; năng lượng vẫn được tiết kiệm. 8 nh&acirc;n của Neural Engine nhah hơn 20%, ti&ecirc;u thụ điện năng &iacute;t hơn 15% so với thế hệ cũ qua c&aacute;c chức năng FaceID, ứng dụng AR,&hellip;</p>\r\n\r\n<p><strong>3. Camera ch&acirc;n thực, pin khủng.</strong><br />\r\nCụm 3 camera được xếp h&igrave;nh tam gi&aacute;c v&agrave; gọn trong khung h&igrave;nh vu&ocirc;ng nhận được rất nhiều t&ograve; m&ograve; từ người d&ugrave;ng. Bộ 3 camera gồm cảm biến ch&iacute;nh 12 MP, cảm biến g&oacute;c rộng 12MP v&agrave; cảm biến tele 12MP. Chất lượng ảnh từ camera mặt sau sắc n&eacute;t, chi tiết đầy đủ. Camera trước 12MP cũng đem lại chất lượng tuyệt vời. Cụm camera đi với những chế độ chụp h&igrave;nh đem lại chất lượng h&igrave;nh ảnh được t&iacute;n đồ c&ocirc;ng nghệ đ&aacute;nh gi&aacute; l&agrave; một trong những cụm cam tuyệt vời nhất trong số c&aacute;c smartphone hiện nay.<br />\r\nThời lượng pin phi&ecirc;n bản Pro n&agrave;y d&agrave;i hơn 4 tiếng so với phi&ecirc;n bản XS. Dung lượng 3046 mAh đảm bảo được thời lượng sử dụng l&ecirc;n tới một ng&agrave;y thậm ch&iacute; hơn 1 ng&agrave;y.</p>\r\n\r\n<p><strong>Iphone 11 Pro 256Gb Like New 99%</strong>&nbsp;hiện tr&ecirc;n kệ&nbsp;<strong>OneWay&nbsp;</strong>đ&atilde; được kiểm tra tỉ mỉ, kĩ c&agrave;ng. Đ&acirc;y sẽ l&agrave; sản phẩm v&ocirc; c&ugrave;ng hợp l&iacute; về mức gi&aacute; nhưng đảm bảo được chất lượng cho người d&ugrave;ng muốn sử dụng điện thoại của nh&agrave; T&aacute;o.</p>', 19990000, NULL, 0, 4, 46, '2020-12-16 03:40:11', '2021-02-01 03:13:15'),
(26, 27, 'Điện thoại Apple iPhone Xs Max - 256GB - New Fullbox 100% - ZA/A', 'dien-thoai-apple-iphone-xs-max-256gb-new-fullbox-100-zaa', 'san-pham-xs_2_1573460593.jpg', '<h3><strong>IPHONE XS MAX 256GB NEW FULLBOX</strong>&nbsp;: Gi&aacute; mềm, hiệu năng mạnh mẽ.</h3>\r\n\r\n<p>Ra mắt v&agrave;o năm 2018, trải qua được một thời gian, phi&ecirc;n bản Xs Max vẫn được rất nhiều người d&ugrave;ng quan t&acirc;m. Đ&acirc;y vẫn l&agrave; thế hệ smartphone c&ugrave;a nh&agrave; T&aacute;o nhận được những lời c&oacute; c&aacute;nh đến từ những người đ&atilde; trải nghiệm sử dụng. H&atilde;y c&ugrave;ng xem tại sao thế hệ smartphone n&agrave;y lại được sư quan t&acirc;m đến như vậy trong b&agrave;i viết dưới đ&acirc;y.</p>\r\n\r\n<p><strong>1. Thiết kế cao cấp, tinh tế.</strong><br />\r\nPhi&ecirc;n bản n&agrave;y của Apple sở hữu thiết kế v&ocirc; c&ugrave;ng đẹp mắt với những đường cong mềm mại thừa hưởng từ những thế hệ Iphone trước đ&oacute;. Mặt trước được thiết kết m&agrave;n h&igrave;nh tai thỏ với đường n&eacute;t mềm mại, viền m&agrave;n h&igrave;nh nhỏ tạo cảm gi&aacute;c ưa nh&igrave;n v&agrave; v&ocirc; c&ugrave;ng h&uacute;t mắt. Mặt sau trơn mịn, với logo T&aacute;o khuyết hướng l&ecirc;n nửa tr&ecirc;n tr&ocirc;ng rất t&ocirc;n m&aacute;y khi tr&ecirc;n tay người d&ugrave;ng. Cụm 2 camera được đặt gọn g&agrave;ng ở g&oacute;c tr&aacute;i mặt sau tr&ecirc;n một khối ri&ecirc;ng. Một ngoại h&igrave;nh v&ocirc; c&ugrave;ng đơn giản nhưng rất mềm mại tinh tế đi k&egrave;m vơi độ ho&agrave;n thiện tuyệt vời.</p>\r\n\r\n<p><strong>2. M&agrave;n h&igrave;nh 6.5 inch lớn, rộng r&atilde;i.</strong><br />\r\nSở hữu thiết kế mềm mại nhưng&nbsp;<strong>Iphone Xs Max 256Gb New Fullbox</strong>&nbsp;lại chứa m&agrave;n h&igrave;nh rộng lớn l&ecirc;n tới 6.5 inch v&ocirc; c&ugrave;ng. Với c&ocirc;ng nghệ Super Retina tr&ecirc;n tấm nền OLED, chất lượng hiển thị v&ocirc; c&ugrave;ng xuất sắc. Độ ph&acirc;n giải của m&agrave;n h&igrave;nh l&agrave; 1242 x 2688 pixels với độ tương phản tốt, đem lại kh&ocirc;ng gian hiển thị m&agrave;u rộng lớn, đầy đủ. Chất lượng h&igrave;nh ảnh sắc n&eacute;t, chi tiết v&agrave; ch&acirc;n thực.</p>\r\n\r\n<p><img alt=\"\" src=\"https://onewaymobile.vn/upload_images/images/2020/10/19/Iphone%20XS%20Max%20-%20onewaymobile_vn(5).png\" /></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh Super Retina</em></p>\r\n\r\n<p>Với việc c&aacute;c cạnh viền được l&agrave;m mỏng, m&agrave;n h&igrave;nh chất lượng cao của phi&ecirc;n bản n&agrave;y như được t&ocirc;n l&ecirc;n rất nhiều.Trải nghiệm xem phim, trở n&ecirc;n tuyệt vời hơn với chất lượng v&agrave; độ lớn m&agrave;n h&igrave;nh hiển thị. Khi xem phim tr&ecirc;n NetFlix, chơi c&aacute;c game hot hiện nay như Li&ecirc;n Qu&acirc;n, PUBG hay COD, mọi chi tiết rất sắc n&eacute;t v&agrave; v&ocirc; c&ugrave;ng sống động đem lại trải nghiệm khi chơi game tuyệt hảo cho người d&ugrave;ng.</p>', 20000000, NULL, 0, 5, 3, '2020-12-16 03:41:06', '2021-02-01 03:13:09'),
(27, 33, 'Điện thoại Samsung Galaxy Note 20 Ultra 5G - 256GB - New 100%', 'dien-thoai-samsung-galaxy-note-20-ultra-5g-256gb-new-100', 'galaxy-note-20-2-ulta-onewaymobilevn_1597678256.jpg', '<p style=\"text-align:start\"><span style=\"font-family:&quot;Times New Roman&quot;,Times,serif\"><span style=\"font-size:20px\">SAMSUNG NOTE 20 - NOTE 20 ULTRA/5G&nbsp;</span></span></p>\r\n\r\n<p style=\"text-align:start\">&nbsp;</p>\r\n\r\n<p style=\"text-align:start\"><span style=\"font-family:&quot;Times New Roman&quot;,Times,serif\"><span style=\"font-size:20px\">Sau h&agrave;ng loạt sự th&agrave;nh c&ocirc;ng của d&ograve;ng GALAXY NOTE trước, SamSung cho ra mắt cộng động với si&ecirc;u phẩm tiếp theo SamSung Galaxy Note 20, ra mắt c&ugrave;ng SamSung Galaxy Note 20 Ultra v&agrave; phi&ecirc;n bản 5G. Si&ecirc;u phẩm hứa hẹn sẽ mang đến cho mọi người trải nghiệm hơn cả trước điện thoại th&ocirc;ng thường, đ&acirc;y l&agrave; quyền năng điện thoại thế hệ mới vượt trội, mạnh mẽ hơn với một thiết kế tinh tế, ho&agrave;n hảo.&nbsp;</span></span></p>\r\n\r\n<p style=\"text-align:start\">&nbsp;</p>\r\n\r\n<p style=\"text-align:start\">&nbsp;</p>\r\n\r\n<p style=\"text-align:start\">&nbsp;</p>\r\n\r\n<p style=\"text-align:start\">&nbsp;</p>\r\n\r\n<p style=\"text-align:start\">&nbsp;</p>\r\n\r\n<p style=\"text-align:start\">&nbsp;</p>\r\n\r\n<p style=\"text-align:start\"><span style=\"font-family:&quot;Times New Roman&quot;,Times,serif\"><span style=\"font-size:20px\">Đa dạng sắc m&agrave;u t&aacute;i định h&igrave;nh trải nghiệm l&agrave;m việc v&agrave; giải tr&iacute;:</span></span></p>\r\n\r\n<p style=\"text-align:start\">&nbsp;</p>\r\n\r\n<p style=\"text-align:start\"><span style=\"font-family:&quot;Times New Roman&quot;,Times,serif\"><span style=\"font-size:20px\">SamSung Galaxy Note 20/Note Ultra 20/5G ra mắt với m&agrave;u sắc bao gồm đồng &aacute;nh kim huyền b&iacute;, xanh huyền b&iacute;, x&aacute;m huyền b&iacute;, trắng huyền b&iacute; với những gam m&agrave;u huyền b&iacute; t&ocirc;n th&ecirc;m vẻ đẹp tuyệt t&aacute;c. Vẻ đẹp của Note 20 khiến cộng đồng đam m&ecirc; c&ocirc;ng nghệ đến từ thiết kế kim loại nguy&ecirc;n khối, mặt lưng được l&agrave;m từ k&iacute;nh cường lực gi&uacute;p tăng độ b&oacute;ng bẩy cho smartphone, mang đến vẻ ngo&agrave;i đẳng cấp. Note 20 c&oacute; kiểu d&aacute;ng mạnh mẽ v&agrave; c&oacute; phần nam t&iacute;nh hơn với những g&oacute;c cạnh vu&ocirc;ng vức, mang đến cảm gi&aacute;c cầm tay chắc chắn.</span></span></p>', 21900000, NULL, 0, 6, 6, '2020-12-16 03:42:33', '2021-01-10 06:19:07'),
(28, 37, 'Đồng hồ Apple watch series 6 - Thép Milan - LTE 44mm - New 100%', 'dong-ho-apple-watch-series-6-thep-milan-lte-44mm-new-100', 'apple-watch-6-milan---onewaymobilevn_1606371533.jpg', '<h3>Thiết bị smart watch trong thời gian gần đ&acirc;y đ&atilde; được rất nhiều t&iacute;n đồ c&ocirc;ng nghệ trang bị cho bản th&acirc;n để. Một trong những mẫu smart watch mới nhất được Apple giới thiệu đ&atilde; thu h&uacute;t được rất nhiều người xem trong sự kiển Time Flies. Thiết bị n&agrave;y c&oacute; những điểm g&igrave; đặc biệt so với c&aacute;c phi&ecirc;n bản trước m&agrave; lại thu h&uacute;t được số lượng người xem, săn đ&oacute;n như vậy ? H&atilde;y c&ugrave;ng t&igrave;m hiểu qua b&agrave;i viết &nbsp;dưới đ&acirc;y nh&eacute;.</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><a href=\"https://onewaymobile.vn/apple-watch-pc61.html\"><img alt=\"\" src=\"https://onewaymobile.vn/upload_images/images/2020/09/29/apple%20watch%20series%206%20onewaymobile_vn.png\" /></a></h2>\r\n\r\n<h2><br />\r\n<a href=\"https://onewaymobile.vn/apple-watch-pc61.html\"><strong>1. Thiết kế Apple Watch Series 6</strong></a>: Thiết kế tinh tế, m&agrave;u sắc nổi bật.<br />\r\nThiết kế của Series 6 kh&ocirc;ng thay đổi l&agrave; bao từ khi c&aacute;c thế hệ Watch lần đầu tr&igrave;nh l&agrave;ng v&agrave;o năm 2015. Phần viền m&agrave;n h&igrave;nh được l&agrave;m gọn để tăng diện t&iacute;ch hiển thị từ Series 4 trở l&ecirc;n, n&ecirc;n thiết kế sẽ kh&ocirc;ng đổi so với những sản phẩm tiền nhiệm. Tuy nhi&ecirc;n, Series 6 sễ mỏng hơn do được trang bị m&agrave;n h&igrave;nh MicroLED mới.<br />\r\n&nbsp;<br />\r\nThiết kế gọn nh&eacute;, tinh tế với nhiều m&agrave;u sắc nổi bật<br />\r\nSmartwatch mới của apple vẫn sử dụng c&aacute;c chất liệu từ những sản phẩm tiền nhiệm, vỏ m&aacute;t sẽ c&oacute; c&aacute;c chất liệu vỏ như nh&ocirc;m, th&eacute;p ti&ecirc;u chuẩn hoặc kh&aacute;ch &nbsp;h&agrave;ng sẽ c&oacute; những thay đổi, option cao cấp cho phần vỏ như titan hoặc gốm, cao cấp. V&agrave; Series 6 sẽ c&oacute; th&ecirc;m m&agrave;u xanh da trời v&agrave; đỏ so với đời trước, rất trẻ trung, nổi bật.<br />\r\nC&aacute;c chất liệu d&acirc;y đeo c&oacute; c&aacute;c chất liệu như Silicon Sport, da, kim loại, vả với c&aacute;c lựa chọn phong ph&uacute; về m&agrave;u sắc.</h2>\r\n\r\n<h2><br />\r\n2.&nbsp;<strong>Cải thiện lớn:</strong>&nbsp;M&agrave;n h&igrave;nh MicroLED v&agrave; hiệu năng cải thiện, kết nối phong ph&uacute;.<br />\r\nMột trong những thay đổi mới, Apple đ&atilde; quyết định chuyển sang c&ocirc;ng nghệ MicroLED ti&ecirc;n tiến hơn, kh&ocirc;ng c&ograve;n l&agrave; m&agrave;n h&igrave;nh OLED cũ ti&ecirc;u hao nhiều pin nữa, giờ đ&acirc;y m&agrave;n h&igrave;nh hiển thị sắc n&eacute;t hơn, sang hơn nhưng ti&ecirc;u hao năng lượng pin &iacute;t hơn r&acirc;t nhiều, người d&ugrave;ng sẽ c&oacute; được trải nghiệm tuyệt vời, tốt nhất khi sử dụng.<br />\r\nM&agrave;n h&igrave;nh MicroLED 1,78 inch với độ ph&acirc;n giải 446x368 pixel ở bản 44mm v&agrave; 1,57 inch với độ ph&acirc;n giải 394x328 ở bản thể 40mm, độ s&aacute;ng 1000 nits với t&iacute;nh năng Always-on. Người d&ugrave;ng cũng c&oacute; thể tự sắp xếp, thiết kệ mặt đồng hồ thep phong c&aacute;ch. Nhưng c&agrave;ng thiết kế, t&ugrave;y biến nhiều sẽ c&agrave;ng ngốn pin hơn n&ecirc;n bạn h&atilde;y c&acirc;n nhắc nh&eacute;.<br />\r\nM&agrave;n h&igrave;nh MicroLED</h2>\r\n\r\n<p>Về hiệu năng, bộ xử l&iacute; S6 được đ&iacute;ch hợp, CPU 64-bit l&otilde;i k&eacute;p, SiP đem lại tốc độ xử l&iacute; nhanh hơn 20% so với S5. Tuy sự ch&ecirc;nh lệch kh&ocirc;ng nhiều nhưng sẽ hỗ trợ được n&acirc;ng c&acirc;p watchOS l&acirc;u hơn trong tương lai.<br />\r\nCảm biến mới gia tốc kế, con quay hồi chuyển gi&uacute;p đo đọ cao lu&ocirc;n bật, la b&agrave;n, GPS/GNSS, cảm biến &aacute;nh s&aacute;ng, ph&aacute;t hiện ng&atilde;, theo d&otilde;i nhịp tim với chức năng ECG, cảm biến Oxy trong m&aacute;u.<br />\r\nKết nối của thiết bị n&agrave;y hỗ trợ Wifi bang tần k&eacute;p ( 2,4GHz v&agrave; 5GHz), Bluetooth v5, GPS/GNSS, chip kh&ocirc;ng d&acirc;y W3, kết nối di động với eSIM, hỗ trợ U1 Ultra-Wideband</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 21900000, NULL, 0, 1, 13, '2020-12-16 03:43:27', '2021-01-06 16:45:00'),
(41, 25, 'Điện thoại Apple iPhone 12 Pro Max - 512GB - NEW FULLBOX 100% ZA/A', 'dien-thoai-apple-iphone-12-pro-max-512gb-new-fullbox-100-zaa', '12-pro---onewaymobile-1_1607403524.png', '<h2><strong>Smartphone tốt nhất kể từ khi ra mắt: iPhone 12 Pro Max</strong></h2>\r\n\r\n<p>V&agrave;o ng&agrave;y 14/10, sự kiện Hi Speed của Apple đ&atilde; được diễn ra với sự xuất hiện của loa Home Pod Mini v&agrave; t&acirc;m điểm l&agrave; thế hệ iphone mới. Iphone thế hệ n&agrave;y sẽ c&oacute; 4 phi&ecirc;n bản v&agrave; tất cả đều được thừa hưởng sức mạnh của chipset mới nhất đến từ Apple. T&acirc;m điểm của sự kiện Hi Speed n&agrave;y l&agrave; thế hệ iPhone 12 v&agrave; đặc biệt hơn nữa l&agrave; phi&ecirc;n bản Pro Max cao cấp nhất của Apple t&iacute;nh tới thời điểm ra mắt.Dưới b&agrave;i viết n&agrave;y, h&atilde;y c&ugrave;ng đ&aacute;nh gi&aacute; một trong những smartphone nổi bật v&agrave; được d&agrave;nh rất nhiều b&igrave;nh luận, so s&aacute;nh với thế hệ trước l&agrave; mẫu điện thoại thế hệ 12 phi&ecirc;n bản Pro Max.</p>\r\n\r\n<h3><strong>1.Thiết kế thay đổi, vững bền với Ceramic Shield.</strong></h3>\r\n\r\n<h3>Về mặt thiết kế, thiết kế m&agrave;n h&igrave;nh tai thỏ với Face ID được t&iacute;ch hợp kh&ocirc;ng c&oacute; qu&aacute; nhiều sự thay đổi so với c&aacute;c thế hệ trước. Mặt sau được ho&agrave;n thiện tỉ mỉ, đẹp mắt với cụm 3 camera được xếp ngay ngắn. Điều thay đổi đặc biệt nhất l&agrave; viền bo cong tr&ecirc;n thế hệ iPhone X tới iPhone 11 đ&atilde; được l&agrave;m lại bằng viền vu&ocirc;ng vức với chất liệu th&eacute;p rất sang trọng. Đ&acirc;y l&agrave; thiết kế đường viền thường thấy tr&ecirc;n iPhone 4 v&agrave; 5. Ngoại h&igrave;nh n&agrave;y đem đến cảm gi&aacute;c chắc chắn m&agrave; kh&ocirc;ng hề mất đi sự tinh tế, sang trọng bấy l&acirc;u nay từ những sản phẩm mang thương hiệu Apple.</h3>\r\n\r\n<p><em><img alt=\"\" src=\"https://onewaymobile.vn/upload_images/images/2020/11/12/iPhone%2012%20Pro%20Max%20-%20Onewaymobile_vn(1).jpg\" /><br />\r\nThiết kế tổng thể của&nbsp;<strong>iPhone 12 Pro Max</strong></em></p>\r\n\r\n<p>Về m&agrave;u sắc, phi&ecirc;n bản n&agrave;y gồm 4 m&agrave;u l&agrave; bạc, đen, v&agrave;ng v&agrave; m&agrave;u xanh mới nhất ( pacific blue). Đặc biệt hơn nữa, bao da, ốp lưng ph&ugrave; hợp với m&agrave;u sắc, t&iacute;nh năng của thế hệ điện thoại iPhone 12 được nh&agrave; T&aacute;o cho ra mắt v&agrave; nhận được v&ocirc; số lời nhận x&eacute;t c&oacute; c&aacute;nh.<br />\r\nNgoại h&igrave;nh đẹp mắt, nổi bật, độ bền cũng được Apple n&acirc;ng cấp tr&ecirc;n thiết bị n&agrave;y. C&ocirc;ng nghệ mặt k&iacute;nh mới nhất Ceramic Shield được t&iacute;ch hợp, c&oacute; thể chịu được lực t&aacute;c động l&ecirc;n tới 4 lần so với c&aacute;c phi&ecirc;n bản tiền nhiệm. Người d&ugrave;ng ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m khi sử dụng smartphone mới đến từ nh&agrave; T&aacute;o. Khả năng chống nước cũng được cải thiện khi khả năng chống nước theo ti&ecirc;u chuẩn IP68 được t&iacute;ch hợp v&agrave; chịu độ s&acirc;u tối đa l&ecirc;n tới 6m trong v&ograve;ng 30 ph&uacute;t.<br />\r\nTổng thể lại, sư thay đổi về thiết kế đ&atilde; l&agrave;m phi&ecirc;n bản n&agrave;y mang tr&ecirc;n m&igrave;nh vẻ đẹp lạ thường, tinh tế hơn so với phi&ecirc;n bản trước m&agrave; độ bền c&ograve;n được n&acirc;ng cấp n&ecirc;n người sử dụng ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m, thoải m&aacute;i sử dụng.</p>\r\n\r\n<h3><strong>2. M&agrave;n h&igrave;nh với c&ocirc;ng nghệ tốt nhất.</strong></h3>\r\n\r\n<p>So với m&agrave;n h&igrave;nh 6.5 inch của iPhone 11 Pro Max th&igrave; phi&ecirc;n bản n&agrave;y được cải tiến với m&agrave;n h&igrave;nh 6.7 inch - lớn nhất trong tất cả c&aacute;c mẫu iPhone nhưng nhờ việc thiết kế tr&agrave;n viền n&ecirc;n k&iacute;ch thước kh&ocirc;ng hề lớn hơn qu&aacute; mức so với thế hệ trước đ&oacute;. Tấm nền OLED với c&ocirc;ng nghệ m&agrave;n h&igrave;nh Super Retina XDR - m&agrave;n h&igrave;nh tốt nhất ở thời điểm ra mắt được trang bị. Mọi h&igrave;nh ảnh chi tiết đều được hiển thị tuyệt hảo. Độ ph&acirc;n giải của chiếc điện thoại n&agrave;y l&agrave; 2778 x 1284 pixels với mật độ điểm ảnh l&ecirc;n tới 458ppi đảm bảo mọi chi tiết sẽ trở n&ecirc;n sắc n&eacute;t, r&otilde; r&agrave;ng nhất.<br />\r\nNgười d&ugrave;ng sẽ c&oacute; trải nghiệm đồ họa tuyệt hảo khi xem phim, chơi game, chỉnh sửa h&igrave;nh ảnh, video với m&agrave;u sắc phong ph&uacute;, sống động, c&oacute; chiều s&acirc;u. Đ&acirc;y l&agrave; một trong những chiếc smartphone c&oacute; m&agrave;n h&igrave;nh tốt nhất, tuyệt nhất trong thời điểm ra mắt.</p>\r\n\r\n<p><img alt=\"\" src=\"https://onewaymobile.vn/upload_images/images/2020/11/12/iPhone%2012%20Pro%20Max%202%20-%20Onewaymobile_vn(1).jpg\" /></p>\r\n\r\n<h3><strong>3. Hiệu suất khủng từ A14 Bionic.</strong></h3>\r\n\r\n<p>Với chủ đề Hi Speed, Apple đ&atilde; thể hiện được h&agrave;m &yacute; của m&igrave;nh bằng c&aacute;ch t&iacute;ch hợp c&ocirc;ng nghệ 5G tr&ecirc;n điện thoại T&aacute;o. C&ocirc;ng nghệ 5G sẽ cho một tốc độc kết nối nhanh hơn rất rất nhiều so với 4G. Đ&aacute;ng tiếc rằng hiện tại ở Việt Nam, cơ sở hạ tầng chưa đ&aacute;p ứng được c&ocirc;ng nghệ 5G nhưng trong khoảng thời gian 1-2 năm nữa sẽ đ&aacute;p ứng được. N&ecirc;n người d&ugrave;ng khi mua iPhone 12 Pro Max sẽ kh&ocirc;ng phải lo lắng v&igrave; kh&ocirc;ng sử dụng được t&iacute;nh năng n&agrave;y. Đ&acirc;y l&agrave; thế hệ iPhone đầu ti&ecirc;n được t&iacute;ch hợp hỗ trợ 5G đến từ Apple.<br />\r\nĐiểm nhấn của thế hệ iPhone n&agrave;y l&agrave; về cấu h&igrave;nh. Chipset A14 Bionic với hiệu năng mạnh mẽ nhất tr&ecirc;n thị trường được t&iacute;ch hợp v&agrave;o thế hệ iPhone n&agrave;y. Con chip được sản xuất tr&ecirc;n tiến tr&igrave;nh 5nm với 11,8 tỷ b&oacute;ng b&aacute;n dẫn v&agrave; đem lại hiệu suất hơn tới 40% với chip a13 của iPhone 11. Với 6 nh&acirc;n CPU v&agrave; 4 nh&acirc;n GPU đem lại một hiệu năng nhanh hơn tới 50% so với mẫu điện thoại mạnh nhất b&acirc;y giờ</p>\r\n\r\n<p><img alt=\"\" src=\"https://onewaymobile.vn/upload_images/images/2020/11/12/iPhone%2012%20Pro%20Max%203%20-%20Onewaymobile_vn(1).jpg\" /></p>\r\n\r\n<p>&nbsp;Đ&acirc;y l&agrave; con chip dựa tr&ecirc;n tiến tr&igrave;nh 5nm m&agrave; mới đ&acirc;y đ&atilde; lộ th&ocirc;ng tin qua phần mềm chấm điểm geekbench với hiệu suất bỏ xa A13bionic v&agrave; snapdragon 865. với điểm đơn nh&acirc;n &nbsp;1583 v&agrave; đa nh&acirc;n 4198 trong khi điểm của Snapdragon chỉ c&oacute; 930 v&agrave; 3495.<br />\r\nNgười d&ugrave;ng c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m với vi xử l&yacute; n&agrave;y &nbsp;đến từ Apple. Tất cả những t&aacute;c vụ nặng nề như chỉnh sửa video, chơi game đồ họa cao. Chip A13 từ thế hệ trước đ&atilde; kh&ocirc;ng l&agrave;m người d&ugrave;ng thất vọng cho n&ecirc;n chipset A14 Bionic với hiệu suất hơn hẳn sẽ hứa hẹn phục vụ được tất cả c&aacute;c nhu cầu của người d&ugrave;ng tr&ecirc;n một chiếc smartphone.<br />\r\nTất cả c&aacute;c game hot hiện tại từ Li&ecirc;n Qu&acirc;n Mobile, PUBG, Genshin Impact phi&ecirc;n bản n&agrave;y sẽ kh&ocirc;ng c&oacute; hiện tượng giật lag, chậm trễ kể cả khi chơi với mức đồ họa cao nhất.</p>\r\n\r\n<h3><strong>4. Cụm Camera tuyệt &nbsp;nhất.</strong></h3>\r\n\r\n<p>Cụm 3 camera được n&acirc;ng cấp đ&aacute;ng kể nhất tạo n&ecirc;n một trong những cụm camera tốt nhất tr&ecirc;n điện thoại di động ở thời điểm hiện tại. Cụm 3 camera sẽ bao gồm 1 camera 12 MP g&oacute;c rộng, khẩu độ f/1.6 với cảm biến mới được t&iacute;ch hợp mang t&ecirc;n Sensor-shift OIS đem lại khả năng quay phim chống rung v&ocirc; c&ugrave;ng tuyệt hảo, camera thứ 2 l&agrave; camera tele với khả năng zoom 2,5x 12MP với f/2.2 v&agrave; cuối c&ugrave;ng l&agrave; camera g&oacute;c si&ecirc;u rộng 12MP f/2.4.</p>\r\n\r\n<p><img alt=\"\" src=\"https://onewaymobile.vn/upload_images/images/2020/11/12/iPhone%2012%20Pro%20Max%204%20-%20Onewaymobile_vn(1).jpg\" /></p>\r\n\r\n<p>Đặc biệt cảm biến LiDar được trang bị tr&ecirc;n phi&ecirc;n bản pro đo khoảng c&aacute;ch ch&acirc;n thực nhất v&agrave; đưa ra một tốc độ lấy n&eacute;t ngay lập tức trong bất k&igrave; m&ocirc;i trường n&agrave;o kể cả điều kiện thiếu s&aacute;ng. Phi&ecirc;n bản Pro c&ograve;n cho ph&eacute;p người d&ugrave;ng c&oacute; thể chụp được ảnh Raw với Apple ProRaw, quả thực rất tuyệt vời. Khả năng quay video 4K HDR 60fps với Dolby Vision đem lại chất lượng tuyệt hảo. Đặc biệt sức mạnh đến từ chip A14 gi&uacute;p người d&ugrave;ng c&oacute; thể chỉnh sửa, edit lu&ocirc;n video 4K n&ecirc;n giờ đ&acirc;y thiết bị n&agrave;y c&oacute; thể ho&agrave;n thiện được từ đầu đến cuối c&aacute;c c&ocirc;ng đoạn tạo ra một video. Khả năng n&agrave;y thực sự l&agrave; đ&aacute;ng nể!</p>\r\n\r\n<p>Tất cả những điều tr&ecirc;n, đ&atilde; tạo ra thế hệ điện thoại mới đến từ nh&agrave; Apple v&ocirc; c&ugrave;ng chất lượng. T&iacute;n đồ c&ocirc;ng nghệ v&agrave; c&aacute;c ifan đ&atilde; trải qua sự kiện Hi Speed đ&aacute;ng nhớ. Mặc d&ugrave; vẫn c&oacute; những điều Apple chưa cải thiện nhưng c&oacute; lẽ trong tương lai tới, nh&agrave; T&aacute;o sẽ cải thiện lại v&agrave; đưa ra những thiết bị xuất sắc hơn. Nhưng trong thời điểm hiện tại,<strong>&nbsp;Iphone 12 Pro Max</strong>&nbsp;đang được b&aacute;n tại&nbsp;<strong>OneWay</strong>&nbsp;&nbsp;l&agrave; một sản phẩm, thiết bị điện thoại ho&agrave;n hảo nhất trong thị trường c&ocirc;ng nghệ chắc chắn sẽ kh&ocirc;ng l&agrave;m người d&ugrave;ng phải thất vọng.</p>', 35000000, 30000000, 0, 0, 11, '2021-01-06 16:21:30', '2021-02-01 03:13:37'),
(42, 24, 'Điện thoại Apple iPhone 12 Pro Max - 256GB - NEW FULLBOX 100% ZA/A nam nam', 'dien-thoai-apple-iphone-12-pro-max-256gb-new-fullbox-100-zaa-nam-nam', 'san-pham-xs_2_1573460593.jpg', '<h2><strong>Smartphone tốt nhất kể từ khi ra mắt: iPhone 12 Pro Max</strong></h2>\r\n\r\n<p>V&agrave;o ng&agrave;y 14/10, sự kiện Hi Speed của Apple đ&atilde; được diễn ra với sự xuất hiện của loa Home Pod Mini v&agrave; t&acirc;m điểm l&agrave; thế hệ iphone mới. Iphone thế hệ n&agrave;y sẽ c&oacute; 4 phi&ecirc;n bản v&agrave; tất cả đều được thừa hưởng sức mạnh của chipset mới nhất đến từ Apple. T&acirc;m điểm của sự kiện Hi Speed n&agrave;y l&agrave; thế hệ iPhone 12 v&agrave; đặc biệt hơn nữa l&agrave; phi&ecirc;n bản Pro Max cao cấp nhất của Apple t&iacute;nh tới thời điểm ra mắt.Dưới b&agrave;i viết n&agrave;y, h&atilde;y c&ugrave;ng đ&aacute;nh gi&aacute; một trong những smartphone nổi bật v&agrave; được d&agrave;nh rất nhiều b&igrave;nh luận, so s&aacute;nh với thế hệ trước l&agrave; mẫu điện thoại thế hệ 12 phi&ecirc;n bản Pro Max.</p>\r\n\r\n<h3><strong>1.Thiết kế thay đổi, vững bền với Ceramic Shield.</strong></h3>\r\n\r\n<h3>Về mặt thiết kế, thiết kế m&agrave;n h&igrave;nh tai thỏ với Face ID được t&iacute;ch hợp kh&ocirc;ng c&oacute; qu&aacute; nhiều sự thay đổi so với c&aacute;c thế hệ trước. Mặt sau được ho&agrave;n thiện tỉ mỉ, đẹp mắt với cụm 3 camera được xếp ngay ngắn. Điều thay đổi đặc biệt nhất l&agrave; viền bo cong tr&ecirc;n thế hệ iPhone X tới iPhone 11 đ&atilde; được l&agrave;m lại bằng viền vu&ocirc;ng vức với chất liệu th&eacute;p rất sang trọng. Đ&acirc;y l&agrave; thiết kế đường viền thường thấy tr&ecirc;n iPhone 4 v&agrave; 5. Ngoại h&igrave;nh n&agrave;y đem đến cảm gi&aacute;c chắc chắn m&agrave; kh&ocirc;ng hề mất đi sự tinh tế, sang trọng bấy l&acirc;u nay từ những sản phẩm mang thương hiệu Apple.</h3>\r\n\r\n<p><em><img alt=\"\" src=\"https://onewaymobile.vn/upload_images/images/2020/11/12/iPhone%2012%20Pro%20Max%20-%20Onewaymobile_vn(1).jpg\" /><br />\r\nThiết kế tổng thể của&nbsp;<strong>iPhone 12 Pro Max</strong></em></p>\r\n\r\n<p>Về m&agrave;u sắc, phi&ecirc;n bản n&agrave;y gồm 4 m&agrave;u l&agrave; bạc, đen, v&agrave;ng v&agrave; m&agrave;u xanh mới nhất ( pacific blue). Đặc biệt hơn nữa, bao da, ốp lưng ph&ugrave; hợp với m&agrave;u sắc, t&iacute;nh năng của thế hệ điện thoại iPhone 12 được nh&agrave; T&aacute;o cho ra mắt v&agrave; nhận được v&ocirc; số lời nhận x&eacute;t c&oacute; c&aacute;nh.<br />\r\nNgoại h&igrave;nh đẹp mắt, nổi bật, độ bền cũng được Apple n&acirc;ng cấp tr&ecirc;n thiết bị n&agrave;y. C&ocirc;ng nghệ mặt k&iacute;nh mới nhất Ceramic Shield được t&iacute;ch hợp, c&oacute; thể chịu được lực t&aacute;c động l&ecirc;n tới 4 lần so với c&aacute;c phi&ecirc;n bản tiền nhiệm. Người d&ugrave;ng ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m khi sử dụng smartphone mới đến từ nh&agrave; T&aacute;o. Khả năng chống nước cũng được cải thiện khi khả năng chống nước theo ti&ecirc;u chuẩn IP68 được t&iacute;ch hợp v&agrave; chịu độ s&acirc;u tối đa l&ecirc;n tới 6m trong v&ograve;ng 30 ph&uacute;t.<br />\r\nTổng thể lại, sư thay đổi về thiết kế đ&atilde; l&agrave;m phi&ecirc;n bản n&agrave;y mang tr&ecirc;n m&igrave;nh vẻ đẹp lạ thường, tinh tế hơn so với phi&ecirc;n bản trước m&agrave; độ bền c&ograve;n được n&acirc;ng cấp n&ecirc;n người sử dụng ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m, thoải m&aacute;i sử dụng.</p>\r\n\r\n<h3><strong>2. M&agrave;n h&igrave;nh với c&ocirc;ng nghệ tốt nhất.</strong></h3>\r\n\r\n<p>So với m&agrave;n h&igrave;nh 6.5 inch của iPhone 11 Pro Max th&igrave; phi&ecirc;n bản n&agrave;y được cải tiến với m&agrave;n h&igrave;nh 6.7 inch - lớn nhất trong tất cả c&aacute;c mẫu iPhone nhưng nhờ việc thiết kế tr&agrave;n viền n&ecirc;n k&iacute;ch thước kh&ocirc;ng hề lớn hơn qu&aacute; mức so với thế hệ trước đ&oacute;. Tấm nền OLED với c&ocirc;ng nghệ m&agrave;n h&igrave;nh Super Retina XDR - m&agrave;n h&igrave;nh tốt nhất ở thời điểm ra mắt được trang bị. Mọi h&igrave;nh ảnh chi tiết đều được hiển thị tuyệt hảo. Độ ph&acirc;n giải của chiếc điện thoại n&agrave;y l&agrave; 2778 x 1284 pixels với mật độ điểm ảnh l&ecirc;n tới 458ppi đảm bảo mọi chi tiết sẽ trở n&ecirc;n sắc n&eacute;t, r&otilde; r&agrave;ng nhất.<br />\r\nNgười d&ugrave;ng sẽ c&oacute; trải nghiệm đồ họa tuyệt hảo khi xem phim, chơi game, chỉnh sửa h&igrave;nh ảnh, video với m&agrave;u sắc phong ph&uacute;, sống động, c&oacute; chiều s&acirc;u. Đ&acirc;y l&agrave; một trong những chiếc smartphone c&oacute; m&agrave;n h&igrave;nh tốt nhất, tuyệt nhất trong thời điểm ra mắt.</p>\r\n\r\n<p><img alt=\"\" src=\"https://onewaymobile.vn/upload_images/images/2020/11/12/iPhone%2012%20Pro%20Max%202%20-%20Onewaymobile_vn(1).jpg\" /></p>\r\n\r\n<h3><strong>3. Hiệu suất khủng từ A14 Bionic.</strong></h3>\r\n\r\n<p>Với chủ đề Hi Speed, Apple đ&atilde; thể hiện được h&agrave;m &yacute; của m&igrave;nh bằng c&aacute;ch t&iacute;ch hợp c&ocirc;ng nghệ 5G tr&ecirc;n điện thoại T&aacute;o. C&ocirc;ng nghệ 5G sẽ cho một tốc độc kết nối nhanh hơn rất rất nhiều so với 4G. Đ&aacute;ng tiếc rằng hiện tại ở Việt Nam, cơ sở hạ tầng chưa đ&aacute;p ứng được c&ocirc;ng nghệ 5G nhưng trong khoảng thời gian 1-2 năm nữa sẽ đ&aacute;p ứng được. N&ecirc;n người d&ugrave;ng khi mua iPhone 12 Pro Max sẽ kh&ocirc;ng phải lo lắng v&igrave; kh&ocirc;ng sử dụng được t&iacute;nh năng n&agrave;y. Đ&acirc;y l&agrave; thế hệ iPhone đầu ti&ecirc;n được t&iacute;ch hợp hỗ trợ 5G đến từ Apple.<br />\r\nĐiểm nhấn của thế hệ iPhone n&agrave;y l&agrave; về cấu h&igrave;nh. Chipset A14 Bionic với hiệu năng mạnh mẽ nhất tr&ecirc;n thị trường được t&iacute;ch hợp v&agrave;o thế hệ iPhone n&agrave;y. Con chip được sản xuất tr&ecirc;n tiến tr&igrave;nh 5nm với 11,8 tỷ b&oacute;ng b&aacute;n dẫn v&agrave; đem lại hiệu suất hơn tới 40% với chip a13 của iPhone 11. Với 6 nh&acirc;n CPU v&agrave; 4 nh&acirc;n GPU đem lại một hiệu năng nhanh hơn tới 50% so với mẫu điện thoại mạnh nhất b&acirc;y giờ</p>\r\n\r\n<p><img alt=\"\" src=\"https://onewaymobile.vn/upload_images/images/2020/11/12/iPhone%2012%20Pro%20Max%203%20-%20Onewaymobile_vn(1).jpg\" /></p>\r\n\r\n<p>&nbsp;Đ&acirc;y l&agrave; con chip dựa tr&ecirc;n tiến tr&igrave;nh 5nm m&agrave; mới đ&acirc;y đ&atilde; lộ th&ocirc;ng tin qua phần mềm chấm điểm geekbench với hiệu suất bỏ xa A13bionic v&agrave; snapdragon 865. với điểm đơn nh&acirc;n &nbsp;1583 v&agrave; đa nh&acirc;n 4198 trong khi điểm của Snapdragon chỉ c&oacute; 930 v&agrave; 3495.<br />\r\nNgười d&ugrave;ng c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m với vi xử l&yacute; n&agrave;y &nbsp;đến từ Apple. Tất cả những t&aacute;c vụ nặng nề như chỉnh sửa video, chơi game đồ họa cao. Chip A13 từ thế hệ trước đ&atilde; kh&ocirc;ng l&agrave;m người d&ugrave;ng thất vọng cho n&ecirc;n chipset A14 Bionic với hiệu suất hơn hẳn sẽ hứa hẹn phục vụ được tất cả c&aacute;c nhu cầu của người d&ugrave;ng tr&ecirc;n một chiếc smartphone.<br />\r\nTất cả c&aacute;c game hot hiện tại từ Li&ecirc;n Qu&acirc;n Mobile, PUBG, Genshin Impact phi&ecirc;n bản n&agrave;y sẽ kh&ocirc;ng c&oacute; hiện tượng giật lag, chậm trễ kể cả khi chơi với mức đồ họa cao nhất.</p>\r\n\r\n<h3><strong>4. Cụm Camera tuyệt &nbsp;nhất.</strong></h3>\r\n\r\n<p>Cụm 3 camera được n&acirc;ng cấp đ&aacute;ng kể nhất tạo n&ecirc;n một trong những cụm camera tốt nhất tr&ecirc;n điện thoại di động ở thời điểm hiện tại. Cụm 3 camera sẽ bao gồm 1 camera 12 MP g&oacute;c rộng, khẩu độ f/1.6 với cảm biến mới được t&iacute;ch hợp mang t&ecirc;n Sensor-shift OIS đem lại khả năng quay phim chống rung v&ocirc; c&ugrave;ng tuyệt hảo, camera thứ 2 l&agrave; camera tele với khả năng zoom 2,5x 12MP với f/2.2 v&agrave; cuối c&ugrave;ng l&agrave; camera g&oacute;c si&ecirc;u rộng 12MP f/2.4.</p>\r\n\r\n<p><img alt=\"\" src=\"https://onewaymobile.vn/upload_images/images/2020/11/12/iPhone%2012%20Pro%20Max%204%20-%20Onewaymobile_vn(1).jpg\" /></p>\r\n\r\n<p>Đặc biệt cảm biến LiDar được trang bị tr&ecirc;n phi&ecirc;n bản pro đo khoảng c&aacute;ch ch&acirc;n thực nhất v&agrave; đưa ra một tốc độ lấy n&eacute;t ngay lập tức trong bất k&igrave; m&ocirc;i trường n&agrave;o kể cả điều kiện thiếu s&aacute;ng. Phi&ecirc;n bản Pro c&ograve;n cho ph&eacute;p người d&ugrave;ng c&oacute; thể chụp được ảnh Raw với Apple ProRaw, quả thực rất tuyệt vời. Khả năng quay video 4K HDR 60fps với Dolby Vision đem lại chất lượng tuyệt hảo. Đặc biệt sức mạnh đến từ chip A14 gi&uacute;p người d&ugrave;ng c&oacute; thể chỉnh sửa, edit lu&ocirc;n video 4K n&ecirc;n giờ đ&acirc;y thiết bị n&agrave;y c&oacute; thể ho&agrave;n thiện được từ đầu đến cuối c&aacute;c c&ocirc;ng đoạn tạo ra một video. Khả năng n&agrave;y thực sự l&agrave; đ&aacute;ng nể!</p>\r\n\r\n<p>Tất cả những điều tr&ecirc;n, đ&atilde; tạo ra thế hệ điện thoại mới đến từ nh&agrave; Apple v&ocirc; c&ugrave;ng chất lượng. T&iacute;n đồ c&ocirc;ng nghệ v&agrave; c&aacute;c ifan đ&atilde; trải qua sự kiện Hi Speed đ&aacute;ng nhớ. Mặc d&ugrave; vẫn c&oacute; những điều Apple chưa cải thiện nhưng c&oacute; lẽ trong tương lai tới, nh&agrave; T&aacute;o sẽ cải thiện lại v&agrave; đưa ra những thiết bị xuất sắc hơn. Nhưng trong thời điểm hiện tại,<strong>&nbsp;Iphone 12 Pro Max</strong>&nbsp;đang được b&aacute;n tại&nbsp;<strong>OneWay</strong>&nbsp;&nbsp;l&agrave; một sản phẩm, thiết bị điện thoại ho&agrave;n hảo nhất trong thị trường c&ocirc;ng nghệ chắc chắn sẽ kh&ocirc;ng l&agrave;m người d&ugrave;ng phải thất vọng.</p>', 33890000, 31890000, 1, 2, 2, '2021-01-06 16:22:43', '2021-01-10 06:22:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_attr`
--

CREATE TABLE `product_attr` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_attr` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_category`
--

CREATE TABLE `product_category` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_category`
--

INSERT INTO `product_category` (`product_id`, `category_id`) VALUES
(25, 37),
(24, 37),
(25, 37),
(25, 37),
(25, 25),
(24, 25),
(24, 37),
(24, 24);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`, `display_name`, `updated_at`, `created_at`) VALUES
(8, 'admin', 'Admin', '2020-12-29 16:48:41', '2020-12-28 18:33:12'),
(13, 'Wirter', 'wirter', '2021-01-04 03:40:24', '2021-01-04 03:40:24'),
(14, 'Producter', 'producter', '2021-01-04 03:40:41', '2021-01-04 03:40:41'),
(15, 'Quản lý user', 'Quản lý user', '2021-01-06 16:51:48', '2021-01-06 16:51:48'),
(16, 'product', 'Producter123', '2021-01-10 06:31:06', '2021-01-10 06:31:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`slider_id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(9, 'Nguyễn Văn Nam', 'nha-trang.jpg', 0, '2021-01-04 02:44:20', '2021-01-10 06:28:57'),
(10, 'abcdbc', 'slider1.png', 0, '2021-01-04 02:45:04', '2021-01-04 02:45:04'),
(12, 'nam', 'da-nang.jpg', 0, '2021-01-10 06:29:21', '2021-01-10 06:29:54'),
(13, 'slider 4', '2-1611389930-827-width660height371_601779028646c.jpg', 1, '2021-02-01 03:44:02', '2021-02-01 03:44:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `user_name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(13, 'admin', 'admin1@gmail.com', NULL, '$2y$10$/Z5XjrDWqyS0xXDkBsYNJu7NYPJ3XiJ4wLtikLU0547sRb47F..CG', NULL, '2020-12-29 14:38:35', '2020-12-30 09:04:42'),
(14, 'namsky', 'nguyenvannam13101997@gmail.com', NULL, '$2y$10$GSDZ2nF6.Nfy56u50r/xRugx1LI.Zy5zJGni44/3y3fUpX7uYuzXy', NULL, '2020-12-29 14:46:09', '2020-12-30 08:59:58'),
(15, 'wirter', 'wirter@gmail.com', NULL, '$2y$10$jufWBPU4opxPZGVZyhA2deHvT.J0N9Wgt.T9W1loypkw5CAvFmNb6', NULL, '2020-12-30 09:09:27', '2020-12-30 09:10:56'),
(16, 'abc', 'admin123@gmail.com', NULL, '$2y$10$MVtVWz39IOfOHEMY9KGNaOPDdrT4bwosBgxmXW/Fb9M4a3Rrr0UDC', NULL, '2021-01-06 16:52:18', '2021-01-06 16:52:18'),
(17, 'abc123', 'abc124@gmail.com', NULL, '$2y$10$8TPmzhYoU3hE13fySWh2yO6C4sjx1s4Jly5KxpDdRXzstk29sqCOK', NULL, '2021-01-10 06:32:09', '2021-01-10 06:32:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_roles`
--

CREATE TABLE `users_roles` (
  `user_role_id` int(10) UNSIGNED NOT NULL,
  `id_role` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users_roles`
--

INSERT INTO `users_roles` (`user_role_id`, `id_role`, `id_user`) VALUES
(36, 8, 13),
(37, 8, 14),
(38, 8, 15),
(39, 15, 16),
(40, 16, 17);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `attr`
--
ALTER TABLE `attr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attr_pro_attr_foreign` (`pro_attr`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cate_id`);

--
-- Chỉ mục cho bảng `code_sale`
--
ALTER TABLE `code_sale`
  ADD PRIMARY KEY (`code_id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `image_pro_image_foreign` (`pro_image`);

--
-- Chỉ mục cho bảng `key_word`
--
ALTER TABLE `key_word`
  ADD PRIMARY KEY (`key_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `order_detail_order_detail_foreign` (`order_detail`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`per_id`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_role_id`),
  ADD KEY `permission_role_id_role_foreign` (`id_role`),
  ADD KEY `permission_role_id_per_foreign` (`id_per`);

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pro_id`),
  ADD KEY `products_pro_cate_foreign` (`pro_cate`);

--
-- Chỉ mục cho bảng `product_attr`
--
ALTER TABLE `product_attr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_attr_id_product_foreign` (`id_product`),
  ADD KEY `product_attr_id_attr_foreign` (`id_attr`);

--
-- Chỉ mục cho bảng `product_category`
--
ALTER TABLE `product_category`
  ADD KEY `product_category_product_id_foreign` (`product_id`),
  ADD KEY `product_category_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`user_role_id`),
  ADD KEY `users_roles_id_role_foreign` (`id_role`),
  ADD KEY `users_roles_id_user_foreign` (`id_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `attr`
--
ALTER TABLE `attr`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `cate_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `code_sale`
--
ALTER TABLE `code_sale`
  MODIFY `code_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `image`
--
ALTER TABLE `image`
  MODIFY `image_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `key_word`
--
ALTER TABLE `key_word`
  MODIFY `key_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `detail_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `permission`
--
ALTER TABLE `permission`
  MODIFY `per_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `permission_role_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `pro_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `product_attr`
--
ALTER TABLE `product_attr`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `users_roles`
--
ALTER TABLE `users_roles`
  MODIFY `user_role_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `attr`
--
ALTER TABLE `attr`
  ADD CONSTRAINT `attr_pro_attr_foreign` FOREIGN KEY (`pro_attr`) REFERENCES `products` (`pro_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_pro_image_foreign` FOREIGN KEY (`pro_image`) REFERENCES `products` (`pro_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_order_detail_foreign` FOREIGN KEY (`order_detail`) REFERENCES `order` (`order_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_id_per_foreign` FOREIGN KEY (`id_per`) REFERENCES `permission` (`per_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_id_role_foreign` FOREIGN KEY (`id_role`) REFERENCES `roles` (`role_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_pro_cate_foreign` FOREIGN KEY (`pro_cate`) REFERENCES `category` (`cate_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_attr`
--
ALTER TABLE `product_attr`
  ADD CONSTRAINT `product_attr_id_attr_foreign` FOREIGN KEY (`id_attr`) REFERENCES `attr` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attr_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`pro_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `product_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`cate_id`),
  ADD CONSTRAINT `product_category_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`pro_id`);

--
-- Các ràng buộc cho bảng `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `users_roles_id_role_foreign` FOREIGN KEY (`id_role`) REFERENCES `roles` (`role_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_roles_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
