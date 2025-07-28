-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 28, 2025 at 02:58 PM
-- Server version: 10.6.22-MariaDB-cll-lve
-- PHP Version: 8.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `702797_artist`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(11) NOT NULL,
  `category_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_list_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `category_name`, `category_list_name`, `category_description`) VALUES
(9, 'specials', 'Specials ', 'Our House Specialties'),
(10, 'goi', 'Gỏi', '(Salad)'),
(11, 'lau', 'Lẩu', '(Hot Pot) Hot Pot with Noodles &amp; Vegetables'),
(12, 'bo', 'Bò', '(Beef)'),
(13, 'ga', 'Gà', '(Chicken)'),
(14, 'chim_cut', 'Chim Cút', '(Quail)'),
(15, 'heo', 'Heo', '(Pork)'),
(16, 'de', 'Dê', '(Mutton)'),
(22, 'ca_sau', 'Cá Sấu', '(Alligator)'),
(23, 'ngheu_so_oc', 'Nghêu, Sò, Oc', '(Shellfish)'),
(24, 'ech', 'Ếch', '(Frog)'),
(26, 'cua_lot', 'Cua Lột', '(Softshell Crab)'),
(27, 'nai', 'Nai', '(Venison)'),
(32, 'noodles', 'Noodles', NULL),
(34, 'ca_muc_tom', 'Cá, Tôm, Mực', '(Fish, Squid, Shrimp)'),
(43, 'vit', 'Vịt', '(Duck)'),
(45, 'drinks', 'Drinks', 'Beers, Soju, Sake, Shochu, Micheleda Seltzer, Non Alcoholic, Must be 21 years of age to purchase alcoholic beverages. Please drink responsibly.'),
(68, 'wine', 'Wine', 'Must Be  21 years of age to purchase alcoholic  beverages.  Please drink responsibly.');

-- --------------------------------------------------------

--
-- Table structure for table `drinks`
--

CREATE TABLE `drinks` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `descr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_nopad_ci DEFAULT NULL,
  `percent` float DEFAULT 0,
  `type` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drinks`
--

INSERT INTO `drinks` (`id`, `name`, `descr`, `percent`, `type`) VALUES
(1, 'Heinekin', NULL, 5, 'Beers'),
(2, 'Heinekin Light', '', 3.3, 'Beers'),
(3, 'Heinekin Silver', '', 4.4, 'Beers'),
(4, 'Corona', '', 4.6, 'Beers'),
(5, 'Bud Light', '', 4.2, 'Beers'),
(6, 'Budweiser', '', 5, 'Beers'),
(7, 'Modelo ', '', 4.4, 'Beers'),
(8, 'Michelob Ultra', '', 4.2, 'Beers'),
(9, 'Coors Light', '', 4.2, 'Beers'),
(10, 'Lagunitas IPA', '', 6.2, 'Beers'),
(11, 'Jinro', '(375ml) Original (Green Bottle)', 20.1, 'Soju'),
(12, 'Dassai 45', '(720ml Bottle)', 16, 'Sake');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `event_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `event_title`, `event_desc`, `image`) VALUES
(1, 'Holiday Toy Drive', 'Drop off Location:&lt;br&gt;\r\n                        14281 Brookhurst St&lt;br&gt;\r\n                        Garden Grove CA 92843, USA&lt;br&gt;&lt;br&gt;\r\n                        &lt;strong&gt;Phone:&lt;/strong&gt;&lt;a href=&quot;tel:+7149651695&quot;&gt;+1.714.839.2200&lt;/a&gt;', 'admin/images/promo1.png');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `picture_id` int(11) NOT NULL,
  `path` text CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` float(10,2) DEFAULT 0.00,
  `category` mediumtext DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `image` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `descr`, `price`, `category`, `deleted`, `image`) VALUES
(70, 'Artist Steak', 'Rib-Eye over Sizzling Plate; Salad &amp; Fries', 35.95, 'specials', 0, ''),
(71, 'Chả Cá Thăng Long', 'Grilled Basa Fish with Rice Noodles', 21.99, 'specials', 0, ''),
(72, 'Bò Lúc Lắc (Cơm/ Khảo Chiên / Mì)', 'Diced Fillet Mignon w Fries, Garlic Rice, or Egg Noodles', 23.95, 'specials', 0, ''),
(73, 'Cơm Chiên Crawfish*', 'Spicy Crawfish Fried Rice', 18.99, 'specials', 0, ''),
(74, 'Cá Chiên Lan Bot', 'Southern Fried Catfish with Rice', 19.95, 'specials', 0, ''),
(75, 'Chả Giò', 'Vietnamese Eggrolls stuffed with Pork', 14.95, 'specials', 0, ''),
(76, 'Cơm Gà Xíu Xíu', 'Steam Chicken w Broth Rice', 17.99, 'specials', 0, ''),
(77, 'Bột Chiên Don', 'Rice Cake Fatada', 15.99, 'specials', 0, ''),
(78, 'Xôi Chiên Lạp Xưởng', 'Crispy Sweet Rice w Chinese Sausages', 15.95, 'specials', 0, ''),
(79, 'Củ Kiệu, Tôm khô, Trứng Bắc Thảo', 'Pickled Leeks, Dried Shrimp, 1000 year Egg', 16.99, 'specials', 0, ''),
(80, 'Gỏi Xoài Tôm Khô Mực', 'Mango Salad Tossed with Dried Shrimp &amp; Squid', 20.99, 'goi', 0, ''),
(81, 'Gỏi Xoài Tôm Thịt', 'Green Mango tossed with Shrimp &amp; Pork', 18.99, 'goi', 0, ''),
(82, 'Gỏi Xoài ốc Hương', 'Green Mango tossed with  Periwinkle', 20.99, 'goi', 0, ''),
(83, 'Gỏi Gá  Bắp Chuối', 'Banana Blossom Chicken Salad', 19.99, 'goi', 0, ''),
(84, 'Gỏi Bò Rau Muống', 'Free Range Chicken Salad', 19.99, 'goi', 0, ''),
(85, 'Khổ Qua Chà Bông', 'Bitter Melon over Ice with Pork Jerky', 18.99, 'goi', 0, ''),
(86, 'Gỏi Đu Đủ Chay', 'Bitter Melon over Ice w Liver Jerky', 16.99, 'goi', 0, ''),
(87, 'Gỏi Xoài Khô Mực', 'Green Mango Salad tossed with Dried Squid', 20.99, 'goi', 0, ''),
(88, 'Cá Sấu Chiên Bơ', 'Fried Alligator in Garlic Butter', 19.99, 'ca_sau', 0, NULL),
(89, 'Cá Sấu Xào Lăn', 'Spicy Curry Alligator', 19.99, 'ca_sau', 0, NULL),
(90, 'Cá Sấu Xào Xả Ớt', 'Alligator Stir-Fried in Lemon Grass', 19.99, 'ca_sau', 0, NULL),
(91, 'Boiled Crawfish', 'Seasonal&lt;br/&gt;\r\nCajun or Garlic Butter Sauce', 0.00, 'ngheu_so_oc', 0, NULL),
(92, 'Nghêu Hấp Sả / Rau Răm', 'Clams in Lemongrass/ Corriander Broth', 18.99, 'ngheu_so_oc', 0, NULL),
(93, 'Ốc Len Xào Dừa', 'Sea Snails  in Coconut', 19.99, 'ngheu_so_oc', 0, ''),
(94, 'Sò Lông Nướng Mỡ Hành', 'Grilled Bloody Clams', 18.99, 'ngheu_so_oc', 0, ''),
(95, 'Chem Chép Mỡ Hành', 'Fresh Grilled Mussels', 15.99, 'ngheu_so_oc', 0, ''),
(96, 'Ốc Hương Xào Mỡ Hành', 'Sauted Perwinkles in Spicy Curry', 18.99, 'ngheu_so_oc', 0, ''),
(97, 'Surf Clams Tái Chanh', 'Surf Clams with Thai Chili Sauce', 18.99, 'ngheu_so_oc', 0, ''),
(98, 'Ốc Hương Hấp Lá Chanh', 'Steamed Periwinkle in Kaffir Lime Leaves', 18.99, 'ngheu_so_oc', 0, ''),
(99, 'Boiled Head-on Prawns', 'Cajun or Garlic Butter Sauce', 15.99, 'ngheu_so_oc', 0, ''),
(100, 'Ếch Chiên Bơ ', 'Fried Frog Legs in Garlic Butter', 19.99, 'ech', 0, ''),
(101, 'Ếch Artist', 'Frog Legs in Tamarind Sauce with Mango', 19.99, 'ech', 0, ''),
(102, 'Ếch Xào Lăn', 'Spicy Curry Legs', 19.99, 'ech', 0, ''),
(103, 'Ếch Xào Sả Ớt', 'Frog Legs Stir-Fried in Lemon Grass', 19.99, 'ech', 0, ''),
(104, 'Cua Lột Chiên Bơ', 'Fried Softshell Crab in Garlic Butter', 19.99, 'cua_lot', 0, ''),
(105, 'Cua Lột Rang Me', 'Fried Softshell Crab in Tamarind Sauce', 19.99, 'cua_lot', 0, ''),
(106, 'Nai TÃ¡i Chanh', 'Rare Slices of Venison in Lime Juice', 20.99, 'nai', 0, ''),
(107, 'Nai Xào Lăn', 'Venison Curry w Glass Noodles', 20.99, 'nai', 0, ''),
(109, 'Bò Tái Chanh', 'Rare Beef Slices in Spicy Vinaigrette', 19.99, 'bo', 0, ''),
(110, 'Bò Xào Lăn', 'Beef Curry with Glass Noodles', 19.99, 'bo', 0, ''),
(111, 'Bê Thui', 'Rare Veal Slices in Ground Rice Powder', 19.99, 'bo', 0, ''),
(112, 'Mì Bò Lúc Lắc', 'Diced Filet Mignon over Egg Noodles', 19.99, 'noodles', 0, ''),
(113, 'Hủ Tiếu / Mì Xào Đồ Biển', 'Stir Fried Seafood Noodles', 18.99, 'noodles', 0, ''),
(114, 'Hủ Tiếu ', 'Stir Fried Combination Noodles', 14.99, 'noodles', 0, ''),
(115, 'Hủ Tiếu  / Mì Đồ Biển', 'Seafood Noodle Soup', 14.99, 'noodles', 0, ''),
(116, 'Hủ Tiếu  / Mì Bò Viên', 'Beef Ball Noodle Soup', 14.99, 'noodles', 0, ''),
(117, 'Hủ Tiếu  / Mì Gà Cá', 'Chicken &amp; Fish Noodle, Soup', 15.75, 'noodles', 0, ''),
(118, 'Bún Thịt Bò Xào', 'Stir Fried Beef Over Vermicelli Noodle', 14.99, 'noodles', 0, ''),
(119, 'Bún Thịt Bò Nướng Chả Giò', 'Shrimp, Beef, Egg Rolls over Vermicelli', 14.99, 'noodles', 0, ''),
(120, 'Cá Bống Trứng', 'Fried Smelt with Roe, Lettuce Wraps', 16.99, 'ca_muc_tom', 0, ''),
(121, 'Cá Nướng Artist', 'Grilled White Fish on a Sizzling Skillet', 25.99, 'ca_muc_tom', 0, ''),
(122, 'Mực Chiên Dòn', 'Vietnemse Fried Calamari', 16.99, 'ca_muc_tom', 0, ''),
(123, 'Khô Mực Nướng', 'Grilled Dried Squid', 16.99, 'ca_muc_tom', 0, ''),
(125, 'Tôm Thái Lắm', 'Blanched Shrimp with Spicy Sauce', 16.99, 'ca_muc_tom', 0, ''),
(126, 'Tôm Rang Muối', 'Salt &amp; Pepper Shrimp', 16.99, '16.99', 0, ''),
(127, 'Tôm Lăn Bột', 'Tempura Shrimp', 16.99, 'ca_muc_tom', 0, ''),
(128, 'Cánh Gà Artist', 'Tamarind Wings W Mango Salad', 17.99, 'ga', 0, ''),
(129, 'Cánh Gà Chiên Bơ', 'Butter Fried Wings', 16.99, 'ga', 0, ''),
(130, 'Cánh Gà Rang Me', 'Tamarind Wings', 16.99, 'ga', 0, ''),
(131, 'Cánh Chiên Nước Mắm', 'Vietnamese Wings in Fish Sauce', 8.75, 'ga', 0, ''),
(132, '1/2 Con Gà Đi Bộ', 'Steamed Free-Range Chicken', 20.99, 'ga', 0, ''),
(133, 'Me Gà Chiên Giòn', 'Spicy Crunchy Gizzard', 15.99, 'ga', 0, ''),
(134, 'Chim Cút Artist', 'Quail in Tamarind Sauce with Mango Salad', 19.99, 'chim_cut', 0, ''),
(135, 'Chim Cút Chiên Bơ', 'Deep Fried Quail with Butter Sauce', 19.99, 'chim_cut', 0, ''),
(136, 'Chim Cút Nướng Chao', 'Grilled Quail in Beancurd and Sauce', 19.99, 'chim_cut', 0, ''),
(137, 'Chim Cút Rang Me', 'Quail in Tamarind Sauce', 17.99, 'chim_cut', 0, ''),
(138, 'Giò Heo Chiên Don', 'Deep Fried Pork Trotter', 15.99, 'heo', 0, ''),
(139, 'Giò Heo Rút Xương', 'De-Boned Ham Hock', 16.99, 'heo', 0, ''),
(141, 'Cajun Sausages', 'Boiled Cajun Sausages in Garlic Butter', 12.99, 'heo', 0, ''),
(142, 'Dê Nướng Ngũ Vị Hương', 'Grilled Five-Spice Mutton', 19.99, 'de', 0, ''),
(143, 'Dê Xào Lan', 'Mutten Curry w Glass Noodles', 19.99, 'de', 0, ''),
(144, 'Hot Vịt Lộn (Each)', 'Balut served w Coriander', 5.50, 'vit', 0, ''),
(145, 'Lẩu Se Te Đồ Biển (Small)', 'Spicy Seafood Combination ', 30.99, 'lau', 0, ''),
(148, 'Lẩu Thái Lan (Small) ', 'Spicy Thai Style Seafood Combination', 30.99, 'lau', 0, ''),
(151, 'Lẩu Dau Cá Khoai (Large)', 'Fish Head &amp; Taro', 35.99, 'lau', 0, ''),
(153, 'Nghêu Xào Lá Quế', 'Manila Clams Sauteed  in Basil Sauce', 21.99, 'ngheu_so_oc', 0, ''),
(155, 'Nem Chua, Củ Kiệu, Tôm Khô, Trứng Bắc Thảo', 'Fermented Pork, Pickled Leeks, Dried Shrimp, 1000 yr Egg', 19.99, 'specials', 0, ''),
(156, 'Gỏi Xoài Tôm Khô', 'Mango Salad Tossed with Dried Shrimp', 18.99, 'goi', 0, ''),
(157, 'Lẩu Dau Cá Khoai', 'Fish Head & Taro ', 35.99, '40.99', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `lau`
--

CREATE TABLE `lau` (
  `lau_id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `descr` text DEFAULT NULL,
  `small` float(10,2) NOT NULL DEFAULT 0.00,
  `large` float(10,2) NOT NULL DEFAULT 0.00,
  `category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lau`
--

INSERT INTO `lau` (`lau_id`, `name`, `descr`, `small`, `large`, `category`) VALUES
(1, 'Lẩu Se Te Đồ Biển', 'Spicy Seafood Combination ', 35.99, 40.99, 'lau'),
(2, 'Lẩu Thái Lan', 'Spicy Thai Style Seafood Combination ', 35.99, 40.99, 'lau'),
(3, 'Lẩu Dau Cá Khoai', 'Fish Head &amp; Taro', 35.99, 40.99, 'lau');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address` varchar(300) NOT NULL,
  `description` varchar(300) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `payment_type` varchar(16) NOT NULL DEFAULT 'Wallet',
  `total` int(11) NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'Yet to be delivered',
  `deleted` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `address`, `description`, `date`, `payment_type`, `total`, `status`, `deleted`) VALUES
(1, 2, 'Address 2', 'Sample Description 1', '2017-03-28 17:32:41', 'Wallet', 150, 'Yet to be delivered', 0),
(2, 2, 'New address 2', '', '2017-03-28 17:43:05', 'Wallet', 130, 'Cancelled by Customer', 1),
(3, 3, 'Address 3', 'Sample Description 2', '2017-03-28 19:49:33', 'Cash On Delivery', 130, 'Yet to be delivered', 0),
(4, 3, 'Address 3', '', '2017-03-28 19:52:01', 'Cash On Delivery', 130, 'Cancelled by Customer', 1),
(5, 3, 'New Address 3', '', '2017-03-28 20:47:28', 'Wallet', 285, 'Paused', 0),
(6, 3, 'New Address 3', '', '2017-03-30 00:43:31', 'Wallet', 325, 'Cancelled by Customer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `poster_id` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `description` varchar(3000) NOT NULL,
  `status` varchar(8) NOT NULL DEFAULT 'Open',
  `type` varchar(30) NOT NULL DEFAULT 'Others',
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `poster_id`, `subject`, `description`, `status`, `type`, `date`, `deleted`) VALUES
(1, 2, 'Subject 1', 'New Description for Subject 1', 'Answered', 'Support', '2017-03-30 18:08:51', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_details`
--

CREATE TABLE `ticket_details` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ticket_details`
--

INSERT INTO `ticket_details` (`id`, `ticket_id`, `user_id`, `description`, `date`) VALUES
(1, 1, 2, 'New Description for Subject 1', '2017-03-30 18:08:51'),
(2, 1, 2, 'Reply-1 for Subject 1', '2017-03-30 19:59:09'),
(3, 1, 1, 'Reply-2 for Subject 1 from Administrator.', '2017-03-30 20:35:39'),
(4, 1, 1, 'Reply-3 for Subject 1 from Administrator.', '2017-03-30 20:49:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role` varchar(15) NOT NULL DEFAULT 'Customer',
  `name` varchar(15) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(16) NOT NULL,
  `email` varchar(35) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `contact` bigint(11) NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `username`, `password`, `email`, `address`, `contact`, `verified`, `deleted`) VALUES
(1, 'Administrator', 'Admin 1', 'root', 'toor', '', 'Address 1', 9898000000, 1, 0),
(2, 'Customer', 'Customer 1', 'user1', 'pass1', 'mail2@example.com', 'Address 2', 9898000001, 1, 0),
(3, 'Customer', 'Customer 2', 'user2', 'pass2', 'mail3@example.com', 'Address 3', 9898000002, 1, 0),
(4, 'Customer', 'Customer 3', 'user3', 'pass3', '', '', 9898000003, 0, 0),
(5, 'Customer', 'Customer 4', 'user4', 'pass4', '', '', 9898000004, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `customer_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wallet_details`
--

CREATE TABLE `wallet_details` (
  `id` int(11) NOT NULL,
  `wallet_id` int(11) NOT NULL,
  `number` varchar(16) NOT NULL,
  `cvv` int(3) NOT NULL,
  `balance` int(11) NOT NULL DEFAULT 2000
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wallet_details`
--

INSERT INTO `wallet_details` (`id`, `wallet_id`, `number`, `cvv`, `balance`) VALUES
(1, 1, '6155247490533921', 983, 3430),
(2, 2, '1887587142382050', 772, 1850),
(3, 3, '4595809639046830', 532, 1585),
(4, 4, '5475856443351234', 521, 2000),
(5, 5, '9076633115663264', 229, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `wine`
--

CREATE TABLE `wine` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `descr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_nopad_ci DEFAULT NULL,
  `percent` float DEFAULT 0,
  `type` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wine`
--

INSERT INTO `wine` (`id`, `name`, `descr`, `percent`, `type`) VALUES
(1, 'Silver Oak', '(Cabernet Sauvignon)', 0, 'Red');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drinks`
--
ALTER TABLE `drinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`picture_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `lau`
--
ALTER TABLE `lau`
  ADD PRIMARY KEY (`lau_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poster_id` (`poster_id`);

--
-- Indexes for table `ticket_details`
--
ALTER TABLE `ticket_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_id` (`ticket_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_id` (`customer_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wallet_details`
--
ALTER TABLE `wallet_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wallet_id` (`wallet_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wine`
--
ALTER TABLE `wine`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `drinks`
--
ALTER TABLE `drinks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `picture_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `lau`
--
ALTER TABLE `lau`
  MODIFY `lau_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ticket_details`
--
ALTER TABLE `ticket_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wallet_details`
--
ALTER TABLE `wallet_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wine`
--
ALTER TABLE `wine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`poster_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `ticket_details`
--
ALTER TABLE `ticket_details`
  ADD CONSTRAINT `ticket_details_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`),
  ADD CONSTRAINT `ticket_details_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `wallet`
--
ALTER TABLE `wallet`
  ADD CONSTRAINT `wallet_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `wallet_details`
--
ALTER TABLE `wallet_details`
  ADD CONSTRAINT `wallet_details_ibfk_1` FOREIGN KEY (`wallet_id`) REFERENCES `wallet` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
