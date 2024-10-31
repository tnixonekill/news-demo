-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 31, 2024 at 12:39 AM
-- Server version: 8.0.31
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nhom8`
--

-- --------------------------------------------------------

--
-- Table structure for table `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
CREATE TABLE IF NOT EXISTS `manufactures` (
  `manu_id` int NOT NULL AUTO_INCREMENT,
  `manu_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`manu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manufactures`
--

INSERT INTO `manufactures` (`manu_id`, `manu_name`) VALUES
(1, 'Apple'),
(2, 'Samsung'),
(3, 'Oppo'),
(4, 'Xiaomi'),
(5, 'Huawei');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `manu_id` int NOT NULL,
  `type_id` int NOT NULL,
  `price` int DEFAULT NULL,
  `pro_image` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `feature` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `manu_id`, `type_id`, `price`, `pro_image`, `description`, `feature`, `created_at`) VALUES
(1, 'iPhone 14', 1, 1, 24990000, 'iphone14.png', 'iPhone 14 với chip A16 Bionic.', 1, '2024-10-24 05:03:47'),
(2, 'Galaxy S23', 2, 1, 20990000, 'galaxys23.png', 'Samsung Galaxy S23 với camera 200MP.', 1, '2024-10-24 05:03:47'),
(3, 'Oppo Find X5', 3, 1, 18990000, 'oppo_findx5.png', 'Oppo Find X5 với sạc nhanh 80W.', 0, '2024-10-24 05:03:47'),
(4, 'MacBook Pro 14\"', 1, 2, 48990000, 'macbookpro14.png', 'MacBook Pro 14\" với M1 Max.', 1, '2024-10-24 05:03:47'),
(5, 'Xiaomi Mi Pad 5', 4, 3, 9990000, 'mipad5.png', 'Máy tính bảng Xiaomi Mi Pad 5.', 0, '2024-10-24 05:03:47'),
(6, 'Galaxy Z Fold 5', 2, 1, 45990000, 'galaxy_zfold5.png', 'Điện thoại gập Galaxy Z Fold 5.', 1, '2024-10-24 05:04:46'),
(7, 'Oppo Reno 8', 3, 1, 10990000, 'oppo_reno8.png', 'Oppo Reno 8 với camera sắc nét.', 0, '2024-10-24 05:04:46'),
(8, 'MacBook Air 13\"', 1, 2, 30990000, 'macbook_air13.png', 'MacBook Air 13\" với chip M2.', 1, '2024-10-24 05:04:46'),
(9, 'Dell XPS 13', 5, 2, 32990000, 'dell_xps13.png', 'Laptop Dell XPS 13.', 0, '2024-10-24 05:04:46'),
(10, 'Huawei MateBook 14', 5, 2, 25990000, 'huawei_matebook14.png', 'Huawei MateBook 14.', 1, '2024-10-24 05:04:46'),
(11, 'Xiaomi Redmi Note 12', 4, 1, 7990000, 'redmi_note12.png', 'Điện thoại Xiaomi Redmi Note 12.', 0, '2024-10-24 05:04:46'),
(12, 'Apple iPad Pro 11\"', 1, 3, 24990000, 'ipad_pro11.png', 'iPad Pro 11\" với chip M2.', 1, '2024-10-24 05:04:46'),
(13, 'JBL Flip 6', 5, 4, 3990000, 'jbl_flip6.png', 'Loa JBL Flip 6.', 0, '2024-10-24 05:04:46'),
(14, 'Sony WH-1000XM4', 5, 5, 7990000, 'sony_wh1000xm4.png', 'Tai nghe Sony WH-1000XM4.', 1, '2024-10-24 05:04:46'),
(15, 'Galaxy Tab S8', 2, 3, 21990000, 'galaxy_tab_s8.png', 'Máy tính bảng Galaxy Tab S8.', 0, '2024-10-24 05:04:46'),
(16, 'OnePlus 11', 5, 1, 18990000, 'oneplus_11.png', 'OnePlus 11 với hiệu năng mạnh mẽ.', 1, '2024-10-31 01:00:00'),
(17, 'Sony Xperia 5 IV', 5, 1, 17990000, 'xperia_5iv.png', 'Sony Xperia 5 IV với camera chất lượng cao.', 1, '2024-10-31 01:00:00'),
(18, 'Huawei P60 Pro', 4, 1, 20990000, 'huawei_p60pro.png', 'Huawei P60 Pro với hiệu suất cao.', 0, '2024-10-31 01:00:00'),
(19, 'Google Pixel 7', 4, 1, 22990000, 'pixel_7.png', 'Google Pixel 7 với camera AI.', 1, '2024-10-31 01:00:00'),
(20, 'Lenovo ThinkPad X1', 5, 2, 31990000, 'thinkpad_x1.png', 'Lenovo ThinkPad X1 Carbon với độ bền cao.', 0, '2024-10-31 01:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `protypes`
--

DROP TABLE IF EXISTS `protypes`;
CREATE TABLE IF NOT EXISTS `protypes` (
  `type_id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `protypes`
--

INSERT INTO `protypes` (`type_id`, `type_name`) VALUES
(1, 'Điện thoại'),
(2, 'Laptop'),
(3, 'Máy tính bảng'),
(4, 'Loa'),
(5, 'Tai nghe');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
