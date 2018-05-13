SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(31, 'T-SHIRTS'),
(32, 'Sunglasses'),
(33, 'Belts');

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_amount` float NOT NULL,
  `order_transaction` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `order_currency` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `orders` (`order_id`, `order_amount`, `order_transaction`, `order_status`, `order_currency`) VALUES
(63, 345, '34535434', 'Completed', 'USD');

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `product_price` float NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `short_desc` text NOT NULL,
  `product_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `products` (`product_id`, `product_title`, `product_category_id`, `product_price`, `product_quantity`, `product_description`, `short_desc`, `product_image`) VALUES
(51, 'T-shirt', 31, 10, 12, 'These sunglasses are super cool!', '', ''),
(53, 'T-shirt', 31, 10, 0, 'cotton', '', ''),
(54, 'skirt', 32, 10, 0, 'polyster', '', ''),
(55, 'trousers', 1, 10, 0, 'cotton', '', ''),
(56, 'tops', 2, 10, 0, 'cotton', '', ''),
(57, 'pants', 3, 10, 0, 'cotton', '', ''),
(58, 'T-shirt', 31, 10, 0, 'cotton', '', ''),
(59, 'skirt', 32, 10, 0, 'cotton', '', ''),
(60, 'trousers', 1, 10, 0, 'cotton', '', ''),
(61, 'tops', 2, 10, 0, 'cotton', '', ''),
(62, 'pants', 3, 10, 0, 'cotton', '', ''),
(63, 'T-shirt', 31, 10, 0, 'cotton', '', ''),
(64, 'skirt', 32, 10, 0, 'cotton', '', ''),
(65, 'pants', 3, 10, 0, 'cotton', '', ''),
(66, 'tops', 2, 10, 0, 'cotton', '', ''),
(67, 'trousers', 1, 10, 0, 'cotton', '', ''),
(68, 'T-shirt', 31, 10, 0, 'cotton', '', ''),
(69, 'skirt', 32, 10, 0, 'cotton', '', ''),
(70, 'trousers', 1, 10, 0, 'cotton', '', ''),
(71, 'tops', 2, 10, 0, 'cotton', '', ''),
(109, 'pants', 3, 10, 7, 'HEllo', '', '');

CREATE TABLE `reports` (
  `report_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_price` float NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `reports` (`report_id`, `product_id`, `order_id`, `product_price`, `product_title`, `product_quantity`) VALUES
(37, 1, 61, 24.99, 'product 1', 1),
(38, 1, 62, 24.99, 'product 1', 1);

CREATE TABLE `slides` (
  `slide_title` varchar(255) NOT NULL,
  `slide_id` int(11) NOT NULL,
  `slide_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `slides` (`slide_title`, `slide_id`, `slide_image`) VALUES
('fashion1', 10, 'image_1.jpg'),
('fashion2', 11, 'image_4.jpg'),
('fashion3', 12, 'image_3.jpg');

ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

ALTER TABLE `reports`
  ADD PRIMARY KEY (`report_id`);

ALTER TABLE `slides`
  ADD PRIMARY KEY (`slide_id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
  
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

ALTER TABLE `reports`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

ALTER TABLE `slides`
  MODIFY `slide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;