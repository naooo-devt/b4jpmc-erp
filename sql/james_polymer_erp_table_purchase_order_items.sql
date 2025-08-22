
-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_items`
--

CREATE TABLE `purchase_order_items` (
  `id` int(11) NOT NULL,
  `purchase_order_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `part_no` varchar(50) DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `net_price` decimal(10,2) DEFAULT NULL,
  `sales_tax` decimal(10,2) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_order_items`
--

INSERT INTO `purchase_order_items` (`id`, `purchase_order_id`, `description`, `part_no`, `delivery_date`, `quantity`, `net_price`, `sales_tax`, `amount`) VALUES
(1, 1, 'Dinosaur', '123', '0000-00-00', 4545, 45.00, 2424.00, 5162211.00),
(2, 2, 'Dinosaur', '123', '0000-00-00', 23, 45.00, 42245.00, 438270.75),
(3, 3, 'Dinosaur', '123', '2025-08-21', 4545, 45.00, 2424.00, 5162211.00),
(4, 3, '435', '345', '2025-08-21', 345, 435.00, 345.00, 667833.75),
(5, 4, 'Dinosaur', '345', '0000-00-00', 23, 45.00, 345.00, 4605.75),
(6, 5, 'Dinosaur', '345', '0000-00-00', 23, 45.00, 345.00, 4605.75),
(7, 6, 'Dinosaur', 'ege', '0000-00-00', 23, 45.00, 35.00, 1397.25),
(8, 7, 'Dinosaur', '8', '0000-00-00', 4545, 45.00, 56.00, 319059.00),
(9, 8, 'Dinosaur', 'ege', '0000-00-00', 23, 45.00, 35.00, 1397.25),
(10, 9, 'Dinosaur', '34', '0000-00-00', 23, 45.00, 34.00, 1386.90),
(11, 10, 'Dinosaur', '23', '0000-00-00', 23, 45.00, 23.00, 1273.05),
(12, 11, 'Dinosaur', '34', '0000-00-00', 23, 45.00, 3434.00, 36576.90),
(13, 12, 'Dinosaur', '34', '0000-00-00', 23, 45.00, 3434.00, 36576.90);
