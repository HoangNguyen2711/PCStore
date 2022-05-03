-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2022 at 05:38 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pcstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_13_051811_create_tbl_admin_table', 1),
(6, '2022_04_25_032909_create_tbl_category_product', 2),
(7, '2022_04_27_124552_create_tbl_brand_product', 3),
(8, '2022_04_28_043232_create_tbl_product', 4),
(9, '2022_05_02_014200_tbl_customer', 5),
(10, '2022_05_02_023137_tbl_shipping', 6),
(11, '2022_05_02_121143_tbl_payment', 7),
(12, '2022_05_02_121213_tbl_order', 7),
(13, '2022_05_02_121232_tbl_order_details', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyen Nguyen', '0906295398', '2022-03-13 05:49:23', '2022-03-13 05:49:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(8, 'DELL', 'DELL', 1, NULL, NULL),
(9, 'ASUS', 'ASUS', 1, NULL, NULL),
(10, 'ACER', 'ACER', 1, NULL, NULL),
(11, 'GIGABYTE', 'GIGABYTE', 1, NULL, NULL),
(12, 'LG', 'LG', 1, NULL, NULL);

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
(9, 'Máy tính để bàn', 'Máy tính để trên bàn', 1, NULL, NULL),
(10, 'Máy tính xách tay', 'Máy tính xách trên tay', 1, NULL, NULL),
(11, 'Linh kiện máy tính', 'Những thứ lặt vặt', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_customers`
--

INSERT INTO `tbl_customers` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_phone`, `created_at`, `updated_at`) VALUES
(4, 'hoangnguyen', 'hoangnguyen@gmail.com', 'a381ca2a24179c47a3591cf2685e8719', '202111', NULL, NULL),
(5, 'Nguyên', 'nguyen@gmail.com', '202cb962ac59075b964b07152d234b70', '0900000', NULL, NULL),
(6, 'Anh DUy', 'mrdauxu@gmail.com', '1ddb75cb3835d3ea2f786319b4825787', '070655456652', NULL, NULL),
(7, 'Nam', 'nam@nguyen', '202cb962ac59075b964b07152d234b70', '0906', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
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

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 4, 3, 2, '30,778,000.00', 'Đang chờ xử lý', NULL, NULL),
(2, 4, 3, 3, '30,778,000.00', 'Đang chờ xử lý', NULL, NULL),
(3, 4, 3, 4, '30,778,000.00', 'Đang chờ xử lý', NULL, NULL),
(4, 4, 3, 5, '30,778,000.00', 'Đang chờ xử lý', NULL, NULL),
(5, 4, 4, 6, '15,389,000.00', 'Đang chờ xử lý', NULL, NULL),
(6, 4, 6, 7, '32,989,000.00', 'Đang chờ xử lý', NULL, NULL),
(7, 4, 7, 8, '28,017,000.00', 'Đang chờ xử lý', NULL, NULL),
(8, 4, 8, 9, '9,339,000.00', 'Đang chờ xử lý', NULL, NULL),
(9, 7, 9, 10, '9,339,000.00', 'Đang chờ xử lý', NULL, NULL),
(10, 7, 10, 11, '0.00', 'Đang chờ xử lý', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 19, 'Màn hình LG 34GL750-B.ATV', '13990000', 2, NULL, NULL),
(2, 2, 19, 'Màn hình LG 34GL750-B.ATV', '13990000', 2, NULL, NULL),
(3, 3, 19, 'Màn hình LG 34GL750-B.ATV', '13990000', 2, NULL, NULL),
(4, 4, 19, 'Màn hình LG 34GL750-B.ATV', '13990000', 2, NULL, NULL),
(5, 5, 19, 'Màn hình LG 34GL750-B.ATV', '13990000', 1, NULL, NULL),
(6, 6, 18, 'Laptop LG Gram 2021 14ZD90P', '29990000', 1, NULL, NULL),
(7, 7, 28, 'PC Acer Aspire M230 UX.VQVSI.143', '8490000', 3, NULL, NULL),
(8, 8, 28, 'PC Acer Aspire M230 UX.VQVSI.143', '8490000', 1, NULL, NULL),
(9, 9, 28, 'PC Acer Aspire M230 UX.VQVSI.143', '8490000', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(50) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, '2', 'Đang chờ xử lý', NULL, NULL),
(2, '2', 'Đang chờ xử lý', NULL, NULL),
(3, '1', 'Đang chờ xử lý', NULL, NULL),
(4, '2', 'Đang chờ xử lý', NULL, NULL),
(5, '2', 'Đang chờ xử lý', NULL, NULL),
(6, '2', 'Đang chờ xử lý', NULL, NULL),
(7, '2', 'Đang chờ xử lý', NULL, NULL),
(8, '2', 'Đang chờ xử lý', NULL, NULL),
(9, '2', 'Đang chờ xử lý', NULL, NULL),
(10, '2', 'Đang chờ xử lý', NULL, NULL),
(11, '2', 'Đang chờ xử lý', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `category_id`, `product_name`, `brand_id`, `product_desc`, `product_content`, `product_price`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(18, 10, 'Laptop LG Gram 2021 14ZD90P', 12, 'Máy tính xách tay/ Laptop LG Gram 2021 14ZD90P-G.AX51A5 (Trắng) là một trong những chiếc laptop thuộc series Gram cao cấp đến từ thương hiệu LG. Sở hữu thiết kế nổi bật cùng hiệu năng ấn tượng, phiên bản laptop trên hứa hẹn sẽ là sự lựa chọn xứng đáng với sự đầu tư của bạn khi có thể đáp ứng tốt các nhu cầu sử dụng từ công việc đến giải trí.', '- CPU: Intel Core i5-1135G7\r\n- Màn hình: 14\" IPS (1920 x 1200)\r\n- RAM: 8GB DDR4 4266MHz\r\n- Đồ họa: Intel Iris Xe Graphics\r\n- Lưu trữ: 256GB SSD M.2 NVMe /\r\n- Hệ điều hành: Free DOS\r\n- 72 Wh Pin liền\r\n- Khối lượng: 1 kg\r\n- ChuẩnIntel EVO', '29990000', 'laptopLG370.jpg', 1, NULL, NULL),
(19, 11, 'Màn hình LG 34GL750-B.ATV', 12, 'Đa số mọi người dùng hiện tại đều có nhu cầu khá cao khi lựa chọn màn hình để chơi game hay làm đồ họa. Màn hình LG 34GL750-B.ATV mang đến một bước ngoặt mới về khả năng hiển thị trên màn hình. Đem đến một sự lựa chọn hoàn hảo cho nhiều nhu cầu sử dụng của bạn từ chơi game đồ họa cao đến làm việc đa nhiệm đều được thực hiện dễ dàng.', '- Kích thước: 34\" (2560 x 1080), Tỷ lệ 21:9\r\n- Tấm nền IPS, Góc nhìn: 178 (H) / 178 (V)\r\n- Tần số quét: 144Hz , Thời gian phản hồi 1 ms\r\n- HIển thị màu sắc: 16.7 triệu màu\r\n- Công nghệ đồng bộ: G-Sync\r\n- Cổng hình ảnh: 1 x DisplayPort, 2 x HDMI', '13990000', 'manhinhLG604.jpg', 1, NULL, NULL),
(20, 11, 'Nguồn GIGABYTE P650B - 650W', 11, 'Gigabyte P650B là một trong những bộ Nguồn máy tính tầm trung đầu tiên của Gigabyte được tung ra thị trường, được hướng tới những người sử dụng sở hữu 1 cấu hình tầm trung nhưng cần có một bộ Nguồn máy tính mạnh mẽ để có thể nâng cấp phần cứng về sau.\r\n\r\nVới công suất tổng 650W, chắc chắn Gigabyte P650B sẽ đảm bảo cho hầu hết các cấu hình Máy tính tầm trung ở thời điểm hiện tại hoạt động 1 cách ổn định, thâm chí là đối với các cấu hình cao cấp. Toàn bộ tụ điện được sử dụng bên trong Gigabyte P650B đều được sản xuất từ Nhật Bản nhằm đảm bảo tuổi thọ hoạt động một cách tối ưu nhất.', '- Công suất: 650W\r\n- Chuẩn hiệu suất: 80 Plus Bronze\r\n- Quạt: 1 x 120 mm', '1339000', 'nguonmaytinhgigabyte732.jpg', 1, NULL, NULL),
(21, 10, 'Laptop GIGABYTE G5 KC G5', 11, 'Laptop Gigabyte G5 KC-5S11130SB (i5-10500H) (Đen) một cái tên khá mới mẻ trong các dòng laptop, hãng chỉ vừa gia nhập trên thị trường nhưng mang lại tiềm năng không hề khiêm nhường so với các hãng lớn khác khi cho ra mắt. Chiếc laptop này đến từ thương hiệu Gigabyte hứa hẹn sẽ mang đến cho người dùng những điều thú vị xứng đáng với sự đầu tư của bạn.\r\nThiết kế mỏng nhẹ tinh tế, vỏ nhựa cao cấp chắc chắn\r\nLaptop Gigabyte G5 KC-5S11130SB mang đến cho người dùng sự tiện lợi khi được hãng thiết kế với kích thước màn hình nhỏ gọn 36.1 x 25.8 x 2.79 cm. Nhờ đó mà trọng lượng của chiếc laptop Gigabyte G5 KC-5S11130SB này khá nhỏ gọn với 2.2kg giúp người dùng dễ dàng di chuyển hơn.', '- CPU: Intel Core i5-10500H\r\n- Màn hình: 15.6\" IPS (1920 x 1080), 144Hz\r\n- RAM: 2 x 8GB DDR4 3200MHz\r\n- Đồ họa: NVIDIA GeForce RTX 3060 6GB GDDR6 / Intel UHD Graphics\r\n- Lưu trữ: 512GB SSD M.2 NVMe /\r\n- Hệ điều hành: Windows 11 Home SL\r\n- 49 Wh Pin rời\r\n- Khối lượng: 2.2 kg', '27990000', 'laptopgigabyte404.jpg', 1, NULL, NULL),
(22, 10, 'Laptop Acer Nitro 5', 10, 'Hành trình phím cao 1,6mm kết hợp với cụm WASD màu đỏ nổi bật đậm chất gaming. Ngoài ra với hệ thống đèn LED backlit màu đỏ nổi bật giúp game thủ có thể thao tác chính xác trong những trận chiến game khốc liệt kể cả ngày hay đêm.\r\n\r\n+ Bàn phím độ nảy lớn tối ưu cho chơi game\r\n\r\n+ Cụm phím WASD nổi bật dễ định vị\r\n\r\n+ Đèn LED đỏ ma mị, cuốn hút', '- CPU: Intel Core i5-8300H ( 2.3 GHz - 4.0 GHz / 8MB / 4 nhân, 8 luồng )\r\n- Màn hình: 15.6\" IPS ( 1920 x 1080 ) , không cảm ứng\r\n- RAM: 1 x 8GB DDR4 2666MHz\r\n- Đồ họa: Intel UHD Graphics 630 / NVIDIA GeForce GTX 1050Ti 4GB GDDR5\r\n- Lưu trữ: 128GB SSD M.2 SATA / 1TB HDD 5400RPM\r\n- Hệ điều hành: Linux\r\n- Pin: 4 cell 48 Wh Pin liền , khối lượng: 2.4 kg', '24040000', 'laptopAcernitro5624.jpg', 1, NULL, NULL),
(23, 10, 'Laptop Acer Predator Triton 300', 10, 'Laptop ACER Predator Triton 300 (PT315-53-7440 NH.QDRSV.003) cực phẩm gaming được bao bọc bởi thiết kế nguyên khối mạnh mẽ, mọi đường nét của laptop đều toát lên vẻ cá tính nổi bật. Bên trong mang hiệu năng hoàn hảo cho việc xử lý thông tin, chơi game mượt mà, đồ họa đẹp mắt. Đem lại cho bạn những trải nghiệm thú vị khi sử dụng chiếc laptop này.\r\nCá tính nổi trội từ thiết kế, trọng lượng không quá nặng\r\nLaptop ACER Predator Triton 300 khoác lớp áo như một chiến binh trỗi dậy, đầy mạnh mẽ và lôi cuốn. Bên ngoài được bao bọc bởi lớp vỏ kim loại nguyên khối cực ngầu, với màu đen tối giản là nền và cách chạm khắc logo tỉ mỉ góp thêm phần tạo điểm nhấn cho chiếc laptop này.', '- CPU: Intel Core i7-11800H\r\n- Màn hình: 15.6\" IPS (2560 x 1440), 165Hz\r\n- RAM: 8GB DDR4 3200MHz\r\n- Đồ họa: NVIDIA GeForce RTX 3050Ti 4GB GDDR6 / Intel UHD Graphics\r\n- Lưu trữ: 512GB SSD M.2 NVMe /\r\n- Hệ điều hành: Windows 11 Home\r\n- Pin: 4 cell 59 Wh Pin liền\r\n- Khối lượng: 2 kg', '33390000', 'laptopacerpredator402.jpg', 1, NULL, NULL),
(25, 10, 'Laptop ASUS UX325EA-KG656W', 9, 'Laptop Asus UX325EA-KG656W gây ấn tượng không chỉ nhờ kết cấu hoàn thiện, mà còn đến từ hiệu năng vượt trội của Intel Core i5 thế hệ thứ 11, đảm bảo hiệu suất cao cho công việc, học tập của bạn. Chiếc laptop cao cấp của Asus là một lựa chọn rất đáng để bạn đầu tư và trải nghiệm.\r\nKiểu dáng mỏng nhẹ thanh lịch, hình ảnh hiển thị tuyệt đẹp\r\nAsus UX325EA-KG656W dễ dàng nằm gọn trong balo, đồng hành cùng bạn đến bất kỳ đâu, nhờ thiết kế mỏng nhẹ với trọng lượng chỉ 1.2 kg và độ dày 1.39 cm. Chiếc laptop Asus sở hữu tạo hình nguyên khối kết hợp với các đường nét hoàn thiện tỉ mỉ, mang đến vẻ đẹp sang trọng cao cấp.', '- CPU: Intel Core i5-1135G7\r\n- Màn hình: 13.3\" OLED (1920 x 1080)\r\n- RAM: 8GB Onboard LPDDR4X\r\n- Đồ họa: Intel Iris Xe Graphics\r\n- Lưu trữ: 512GB SSD M.2 NVMe /\r\n- Hệ điều hành: Windows 11 Home\r\n- Pin: 4 cell 67 Wh\r\n- Khối lượng: 1.2 kg\r\n- ChuẩnIntel EVO', '21990000', 'laptopasuszenbookjpg325.jpg', 1, NULL, NULL),
(26, 9, 'PC ASUS S500SC-310105039W', 9, 'Máy tính để bàn/PC ASUS S500SC-310105039W với chip Intel Core i3 thế hệ thứ 10 mang đến hiệu năng mạnh mẽ để bạn có thể làm việc hiệu quả. Bộ PC này đến từ thương hiệu Asus bổ sung kết nối mở rộng cùng thiết kế gọn gàng phù hợp không gian hứa hẹn sẽ là bộ máy tính chất lượng bạn nên đầu tư. \r\nKiểu dáng gọn gàng hiện đại, hiệu năng ổn định \r\nPC ASUS S500SC được thiết kế với kích thước 9.46 x 31.95 x 32.06 cm cùng trọng lượng 5.50 kg, đảm bảo kiểu dáng gọn nhẹ vừa phải để người dùng thoải mái bố trí ở nhiều không gian như bàn làm việc, gầm bàn,... Kết cấu chắc chắn, cùng gam màu đen dễ dàng phù hợp với nơi làm việc của bạn.', '- CPU: Intel Core i3-10105 (3.70 GHz - 4.40 GHz/6MB/4 nhân, 8 luồng)\r\n- RAM: 1 x 4GB DDR4 (2 Khe cắm, Hỗ trợ tối đa 32GB)\r\n- Đồ họa: Intel UHD Graphics 630\r\n- Lưu trữ: 256GB M.2 NVMe SSD/\r\n- Keyboard + Mouse có dây', '9890000', 'pcasus994.jpg', 1, NULL, NULL),
(27, 9, 'PC Dell OptiPlex 3080 Tower 70233227', 8, 'PC Dell OptiPlex 3080 Tower 70233227 được tích hợp cấu hình linh hoạt Intel Core i3-10100 và bộ nhớ 4GB RAM cùng nhiều tính năng mới hoạt động năng suất hơn. Với thiết kế khá thu hút cùng tầm giá phải chăng, chiếc máy tính để bàn này sẽ là lựa chọn hoàn hảo cho không gian làm việc của bạn.\r\nThiết kế gọn gàng bắt mắt, Khối lượng 7.2 kg\r\nPC Dell OptiPlex 3080 Tower 70233227 sở hữu kích thước khá gọn gàng 15.5 x 29.2 x 32.4 cm và khối lượng 7.2kg. Với tông màu đen chủ đạo kết hợp họa tiết cách điệu, chiếc máy tính bàn toát lên vẻ lịch lãm, kiêu sa.', '- CPU: Intel Core i3-10100 (3.60 GHz - 4.30 GHz/6MB/4 nhân, 8 luồng)\r\n- RAM: 1 x 4GB DDR4 2666MHz (2 Khe cắm, Hỗ trợ tối đa 64GB)\r\n- Đồ họa: Intel UHD Graphics 630\r\n- Lưu trữ: 1TB HDD\r\n- Dell Optical Mouse - MS116 - Black\r\nDell Wired Keyboard KB216 Black (English)', '9690000', 'dellpc665.jpg', 1, NULL, NULL),
(28, 9, 'PC Acer Aspire M230 UX.VQVSI.143', 10, 'Acer Aspire M230 UX.VQVSI.143 là bộ máy tính phổ thông của Acer, sử dụng CPU Intel Pentium với 4GB bộ nhớ, đáp ứng tốt công việc văn phòng, và các nhu cầu sử dụng hàng ngày như lướt web, xem video, giải trí nhẹ.', '- CPU: Intel Pentium G5400 ( 3.70 GHz / 4MB / 2 nhân, 4 luồng )\r\n- RAM: 1 x 4GB DDR4 2400MHz\r\n- Đồ họa: Intel UHD Graphics 610\r\n- Lưu trữ: 1TB HDD 7200RPM\r\n- Tặng kèm chuột; bàn phím', '8490000', 'acerpc717.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_name`, `shipping_address`, `shipping_phone`, `shipping_email`, `shipping_notes`, `created_at`, `updated_at`) VALUES
(3, 'Nguyen', 'VL', '+84906295398', 'nguyen@ne', 'áđá', NULL, NULL),
(4, 'Bi anh', 'Vung Liem', '0123', 'bianh@bi', 'hihi', NULL, NULL),
(5, 'nguyen van a', 'Tra Vinh', '123', 'a@b', 'áđá', NULL, NULL),
(6, 'nguyen van a', 'Vung Liem', '123', 'a@b', 'áđá', NULL, NULL),
(7, 'Nguyen', 'Tra Vinh', '0906', 'nguyen@ne', 'ádá', NULL, NULL),
(8, 'Bi anh', 'Tra Vinh', '123', 'nguyen@gmail.com', 'abv', NULL, NULL),
(9, 'anh nam', 'Trung Hieu', '123', 'nam@qaa', 'giao lien', NULL, NULL),
(10, 'anh nam', 'Vung Liem', '+84906295398', 'nguyen@ne', 'giao trong ngay', NULL, NULL);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
