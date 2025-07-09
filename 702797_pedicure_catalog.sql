-- phpMyAdmin SQL Dump
-- version 5.0.4deb2+deb11u1
-- https://www.phpmyadmin.net/
--
-- Host: mariadb-091.wc1:3306
-- Generation Time: Dec 19, 2023 at 02:42 PM
-- Server version: 10.1.45-MariaDB-0+deb11u1
-- PHP Version: 7.3.33-7+0~20220929.100+debian11~1.gbpdb2e49

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `702797_pedicure_catalog`
--


-- --------------------------------------------------------
--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(11) NOT NULL,
  `category_name` text CHARACTER SET ascii,
  `category_list_name` varchar(50) CHARACTER SET ascii DEFAULT NULL,
  `category_description` text CHARACTER SET ascii
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `category_name`, `category_list_name`, `category_description`) VALUES
(1, 'appeetize', 'APPETIZERS', NULL),
(2, 'pho', 'PHO', '<p>Beef bone broth slow simmered for 14 hours. NO MSG.  All bowls include pho noodles topped with green onions, white onions & cilantro.  Served with an assortment of fresh herbs, limes & jalapenos.</p>\r\n            Add-ons - Your choice of:'),
(4, 'com', '', ''),
(5, 'bun', '', ''),
(6, 'stir', '', ''),
(7, 'drinks', '', ''),
(8, 'dess', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `event_title` text CHARACTER SET ascii,
  `event_desc` text CHARACTER SET ascii,
  `image` text CHARACTER SET ascii
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `path` text CHARACTER SET ascii NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET ascii DEFAULT NULL,
  `descr` text CHARACTER SET ascii,
  `price` float(10,2) DEFAULT '0.00',
  `category` text CHARACTER SET ascii,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `image` text CHARACTER SET ascii
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `descr`, `price`, `category`, `deleted`, `image`) VALUES
(2, 'Egg Rolls', '4x Egg Rolls. Filling includes - minced pork, veggies &amp; clear noodles. Served with assorted veggies &amp; herbs with house umami dipping sauce. ', 6.95, 'appeetize', 0, NULL),
(3, 'Shrimp Rolls (8pcs)', '8x Shrimp Rolls. Filling includes - whole shrimp. Served with sweet &amp; sour sauce. ', 7.95, 'appeetize', 0, NULL),
(4, 'Mango Avocado Rolls', '2x Rolls. Filling includes - mango, cucumber, almonds, bell pepper &amp; avocado. ', 7.95, 'appeetize', 0, NULL),
(5, 'Pot Sticker Dumpling', '6x pieces. Your choice of pork or chicken filling. ', 6.95, 'appeetize', 0, NULL),
(6, 'Spring Rolls (2)', '2x Spring Rolls. Choice of Chicken, Shrimp, or Pork. Filling includes - veggies, &amp; vermicelli noodles. Served with peanut sauce (sauce contains peanuts).', 6.95, 'appeetize', 0, NULL),
(7, 'Seafood Bread', '6x Slices of House Seafood Bread. Filling includes - imitation crab, shrimp, cheese &amp; onions (Spicy option available +$1.00). ', 5.95, 'appeetize', 0, NULL),
(8, 'Banh Xeo by Xeo Hello', '1 x Savory crepes. Filling includes - Shrimp, pork, mushroom, onions &amp; beansprouts. Served with assorted veggies &amp; herbs with house umami dipping sauce. ', 13.95, 'appeetize', 0, NULL),
(9, ' Banh Xeo by Xeo Hello x2', '2 x Savory crepes. Filling includes - Shrimp, pork, mushroom, onions &amp; beansprouts. Served with assorted veggies &amp; herbs with house umami dipping sauce. ', 25.95, 'appeetize', 0, NULL),
(10, 'Pho Hello Special', 'Tendon, Brisket, Rare Beef, Meat Balls &amp; Beef Short Rib. ', 16.95, 'pho', 0, NULL),
(11, 'Build your own Pho(Additional topping vary on price)', 'Choice of 3 Proteins &amp; Broth. ', 13.95, 'pho', 0, NULL),
(12, 'Rare Steak', 'Thinly sliced rare steak.', 13.95, 'pho', 0, NULL),
(13, 'Meatball', 'Mixed ground beef and tendon. ', 13.95, 'pho', 0, NULL),
(14, 'Brisket', 'Tendon, Brisket, Rare Beef, Meat Balls &amp; Beef Short Rib.', 16.95, 'pho', 0, NULL),
(15, 'Brisket &amp; Rare Steak', 'hin Sliced Brisket ??? Lean or Fatty Available with Rare Steak. ', 13.95, 'pho', 0, NULL),
(24, 'Chicken', 'Thinly sliced chicken breast (white meat) ', 13.95, 'pho', 0, NULL),
(25, 'Shrimp', 'Fresh shrimp (8pcs) ', 14.95, 'pho', 0, NULL),
(26, 'Seafood', 'Fresh shrimp, squid &amp; imitation crab in beef broth ', 14.95, 'pho', 0, NULL),
(27, 'Noodles Only', 'Brocolli, Napa Cabbage, Carrots &amp; Bok Choy ', 8.95, 'pho', 0, NULL),
(28, 'House Special Fried Rice', 'Chicken, Beef, Pork, sweet corn, carrots, green peas, sausages. ', 9.95, 'com', 0, NULL),
(29, 'Ribeye Steak', 'Marinated ribeye steak with house special sauce. Served with steamed white rice and veggies. ', 18.95, 'com', 0, NULL),
(30, 'Pork Chop', 'Marinated pork chops. Served with steamed white rice and veggies. ', 19.95, 'com', 0, NULL),
(31, 'Lemongrass Chicken', 'Marinated lemongrass chicken sauteed with veggies. Served with steamed white rice. ', 14.95, 'com', 0, NULL),
(32, 'Shaken Beef', 'Diced Filet mignon, garlic stir fried with onion &amp; bell pepper serve with steamed rice. ', 14.95, 'com', 0, NULL),
(51, 'Vermicelli Spicy Lemon Grass Tofu', 'Vermicelli Spicy Lemon Grass Tofu', 13.95, 'bun', 0, NULL),
(52, 'Grilled Pork &amp; Eggroll', 'Served with shredded lettuce, cucumber, bean sprouts, peanuts, pickled carrots &amp; daikon and house umami sauce. ', 13.95, 'bun', 0, NULL),
(53, 'Grilled Shrimp &amp; Eggroll', 'Served with shredded lettuce, cucumber, bean sprouts, peanuts, pickled carrots &amp; daikon and house umami sauce. ', 13.95, 'bun', 0, NULL),
(54, 'Grilled Beef &amp; Eggroll', 'Served with shredded lettuce, cucumber, bean sprouts, peanuts, pickled carrots &amp; daikon and house umami sauce. ', 13.95, 'bun', 0, NULL),
(55, 'Grilled Chicken &amp; Eggroll', 'Served with shredded lettuce, cucumber, bean sprouts, peanuts, pickled carrots &amp; daikon and house umami sauce. ', 13.95, 'bun', 0, NULL),
(56, 'Beef Stir Fry', 'Beef stir fry with assorted veggies. Your option of crispy or soft // Pho or Yellow Egg Noodle. ', 13.95, 'stir', 0, NULL),
(58, 'Veggie Stir Fry', 'Veggie stir fry. Your option of crispy or soft // Pho or Yellow Egg Noodle. ', 12.95, 'stir', 0, NULL),
(59, 'Assorted Can Sodas', '', 2.49, 'drinks', 0, NULL),
(60, 'Thai Tea', '', 4.95, 'drinks', 0, NULL),
(61, 'Lemonade', '', 4.95, 'drinks', 0, NULL),
(62, 'Iced/Hot Tea', '', 1.95, 'drinks', 0, NULL),
(63, 'Vietnamese Coffee', '', 5.95, 'drinks', 0, NULL),
(64, 'Che Tai', '', 0.00, 'dess', 0, NULL),
(65, 'Assorted Cookies', 'by Mula Munchies ', 0.00, 'dess', 0, NULL),
(66, 'Starter Combo', '2x Egg Rolls, 2x Spring Rolls, 4x Fried Shrimp Rolls (sauce contains peanuts).', 12.95, 'appeetize', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address` varchar(300) NOT NULL,
  `description` varchar(300) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `payment_type` varchar(16) NOT NULL DEFAULT 'Wallet',
  `total` int(11) NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'Yet to be delivered',
  `deleted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `item_id`, `quantity`, `price`) VALUES
(1, 1, 2, 2, 90),
(2, 1, 3, 3, 60),
(3, 2, 2, 2, 90),
(4, 2, 3, 2, 40),
(5, 3, 2, 2, 90),
(6, 3, 3, 2, 40),
(7, 4, 2, 2, 90),
(8, 4, 3, 2, 40),
(9, 5, 2, 5, 225),
(10, 5, 3, 2, 40),
(11, 5, 5, 1, 20),
(12, 6, 2, 5, 225),
(13, 6, 3, 3, 60),
(14, 6, 5, 2, 40);

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
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `balance` int(11) NOT NULL DEFAULT '2000'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet_details`
--

INSERT INTO `wallet_details` (`id`, `wallet_id`, `number`, `cvv`, `balance`) VALUES
(1, 1, '6155247490533921', 983, 3430),
(2, 2, '1887587142382050', 772, 1850),
(3, 3, '4595809639046830', 532, 1585),
(4, 4, '5475856443351234', 521, 2000),
(5, 5, '9076633115663264', 229, 2000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
