
-- --------------------------------------------------------

--
-- Table structure for table `quotation_items`
--

CREATE TABLE `quotation_items` (
  `id` int(11) NOT NULL,
  `quotation_id` int(11) DEFAULT NULL,
  `item` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `unit_price` decimal(15,2) DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `product_image_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quotation_items`
--

INSERT INTO `quotation_items` (`id`, `quotation_id`, `item`, `description`, `qty`, `unit`, `unit_price`, `total`, `product_image_path`) VALUES
(1, 1, 'Dinosaur', 'sadas', 4545, 'feet', 45.00, 204525.00, 'uploads/Dinosaur-20250819-032911.png'),
(2, 2, 'Dinosaur', 'sadsadsadsaadasasdd', 4545, 'feet', 45.00, 204525.00, 'uploads/Dinosaur-20250819-032948.png'),
(3, 3, 'Dinosaur', 'asdasd', 4545, 'feet', 45.00, 204525.00, 'uploads/Dinosaur-20250819-033019.png'),
(4, 4, 'Dinosaur', 'asdsad', 4545, 'feet', 45.00, 204525.00, 'uploads/Dinosaur-20250819-033115.png'),
(5, 5, 'Dinosaur', 'fsgsg', 4545, 'feet', 45.00, 204525.00, ''),
(6, 6, 'Dinosaur', 'GFWGW', 4545, 'feet', 45.00, 204525.00, 'uploads/Dinosaur-20250819-035005.png'),
(7, 7, 'Dinosaur', 'ege', 4545, 'feet', 45.00, 204525.00, ''),
(8, 8, 'Dinosaur', 'egeg', 4545, 'feet', 45.00, 204525.00, 'uploads/Dinosaur-20250819-035221.png'),
(9, 9, 'Dinosaur', 'rwtw', 23, 'feet', 45.00, 1035.00, ''),
(10, 10, 'Dinosaur', 'rgwg', 23, 'feet', 45.00, 1035.00, ''),
(11, 11, 'Dinosaur', 'wrgwgw', 23, 'feet', 45.00, 1035.00, ''),
(12, 12, 'Dinosaur', 'wgwrg', 23, 'feet', 45.00, 1035.00, 'uploads/Dinosaur-20250819-035711.png'),
(13, 13, 'Dinosaur', 'wgw', 23, 'feet', 45.00, 1035.00, ''),
(14, 14, 'Dinosaur', 'wfw', 23, 'feet', 45.00, 1035.00, ''),
(15, 15, 'Dinosaur', 'wgrwg', 23, 'feet', 45.00, 1035.00, 'uploads/Dinosaur-20250819-035830.png'),
(16, 16, 'Dinosaur', 'wgg', 23, 'feet', 45.00, 1035.00, ''),
(17, 17, 'Dinosaur', 'wgrrwg', 23, 'feet', 45.00, 1035.00, ''),
(18, 18, 'Dinosaur', 'reg', 23, 'feet', 45.00, 1035.00, '');
