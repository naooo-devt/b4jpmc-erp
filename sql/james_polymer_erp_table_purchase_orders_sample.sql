
-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders_sample`
--

CREATE TABLE `purchase_orders_sample` (
  `id` int(11) NOT NULL,
  `order_number` varchar(50) NOT NULL,
  `order_date` date NOT NULL,
  `terms` varchar(100) DEFAULT NULL,
  `ship_via` varchar(100) DEFAULT NULL,
  `mode_of_payment` varchar(100) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `part_no` varchar(50) DEFAULT NULL,
  `delivery_date` varchar(100) DEFAULT NULL,
  `net_price` decimal(10,2) DEFAULT NULL,
  `sales_tax` decimal(10,2) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `total_amount` decimal(12,2) DEFAULT 0.00,
  `conforme` varchar(100) DEFAULT NULL,
  `prepared_by` varchar(100) DEFAULT NULL,
  `approved_by` varchar(100) DEFAULT NULL,
  `accounting` varchar(100) DEFAULT NULL,
  `manager` varchar(100) DEFAULT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  `status` enum('Pending','For-Delivery','Cancelled') NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_orders_sample`
--

INSERT INTO `purchase_orders_sample` (`id`, `order_number`, `order_date`, `terms`, `ship_via`, `mode_of_payment`, `supplier_id`, `description`, `part_no`, `delivery_date`, `net_price`, `sales_tax`, `amount`, `total_amount`, `conforme`, `prepared_by`, `approved_by`, `accounting`, `manager`, `quantity`, `status`) VALUES
(1, '001', '2025-08-18', '30', 'Ship', 'CASH', 3, NULL, NULL, NULL, NULL, NULL, NULL, 5162211.00, 'yyyyy', 'yyyyy', 'yyyy', 'yyyyy', 'yyy', NULL, 'For-Delivery'),
(2, '002', '2025-08-19', '99', 'Pokemon', 'CASH', 2, NULL, NULL, NULL, NULL, NULL, NULL, 438270.75, '4', '4', '4', '4', '4', NULL, 'For-Delivery'),
(3, '003', '2025-08-21', '30', 'Ship', 'CASH', 2, NULL, NULL, NULL, NULL, NULL, NULL, 5830044.75, 'yyyyy', 'yyyyy', 'yyyy', 'yyyyy', 'yyy', NULL, 'For-Delivery'),
(4, '004', '2025-08-28', '5645', 'Pokemon', 'GCASH', 4, NULL, NULL, NULL, NULL, NULL, NULL, 4605.75, 'tttt', 'tt', 'ttt', 'tt', 'tt', NULL, 'For-Delivery'),
(5, '005', '2025-08-28', '5645', 'Pokemon', 'CASH', 2, NULL, NULL, NULL, NULL, NULL, NULL, 4605.75, 'tttt', 'tt', 'ttt', 'tt', 'tt', NULL, 'For-Delivery'),
(6, '006', '2025-08-19', 'ege', 'gegeg', 'CASH', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1397.25, 'yyyy', 'yyyyyy', 'yyyy', 'yyyyy', 'nnn', NULL, 'For-Delivery'),
(7, '007', '2025-08-19', '79', 'Pokemon', 'CASH', 2, NULL, NULL, NULL, NULL, NULL, NULL, 319059.00, 'haaaaaaaaaaaa', 'ha', 'ha', 'ha', 'ha', NULL, 'Pending'),
(8, '008', '2025-08-19', 'ege', 'Shippppppppppp', 'CASH', 3, NULL, NULL, NULL, NULL, NULL, NULL, 1397.25, 'yyyy', 'yyyyyy', 'yyyy', 'yyyyy', 'nnn', NULL, 'Pending'),
(9, '009', '2025-08-19', '76', 'Pokemon', 'CASH', 5, NULL, NULL, NULL, NULL, NULL, NULL, 1386.90, 'yyyy', 'yyyyyy', 'yyyy', 'yyyyy', 'nnn', NULL, 'Pending'),
(10, '010', '2025-08-19', '23', 'Rocket', 'CASH', 3, NULL, NULL, NULL, NULL, NULL, NULL, 1273.05, 'yyyy', 'yyyyyy', 'yyyy', 'yyyyy', 'nnn', NULL, 'Pending'),
(11, '011', '2025-08-19', '34', 'TRTWRETRWTWET', 'CASH', 3, NULL, NULL, NULL, NULL, NULL, NULL, 36576.90, 'yyyy', 'yyyyyy', 'yyyy', 'yyyyy', 'nnn', NULL, 'Pending'),
(12, '012', '2025-08-19', '34', 'TRTWRETRWTWET', 'CASH', 2, NULL, NULL, NULL, NULL, NULL, NULL, 36576.90, 'yyyy', 'yyyyyy', 'yyyy', 'yyyyy', 'nnn', NULL, 'Pending');
