
-- --------------------------------------------------------

--
-- Table structure for table `delivery_receipts`
--

CREATE TABLE `delivery_receipts` (
  `id` int(11) NOT NULL,
  `dr_no` varchar(20) NOT NULL,
  `po_number` varchar(50) NOT NULL,
  `deliver_to` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `tin_no` varchar(50) DEFAULT NULL,
  `sc_tin_no` varchar(50) DEFAULT NULL,
  `osca_pwd_id` varchar(50) DEFAULT NULL,
  `terms` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `prepared_by` varchar(100) DEFAULT NULL,
  `received_by` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_receipts`
--

INSERT INTO `delivery_receipts` (`id`, `dr_no`, `po_number`, `deliver_to`, `address`, `tin_no`, `sc_tin_no`, `osca_pwd_id`, `terms`, `date`, `prepared_by`, `received_by`, `created_at`, `updated_at`) VALUES
(22, 'DR001', '001', 'OAKES', 'FDSFSFDSFS', '132145678879', '35353', '534535', '4453', '2025-08-19', 'gfhghjjlk', 'ertete', '2025-08-19 02:11:10', '2025-08-19 02:11:10'),
(23, 'DR002', '004', 'Mhira', '343', '433', '213213', '4355', '99', '2025-08-19', 'ttt', 'ttt', '2025-08-19 02:17:51', '2025-08-19 02:17:51'),
(24, 'DR003', '003', 'OAKES', '', '132145678879', '35353', '534535', '4453', '2025-08-19', 'gfhghjjlk', 'ertete', '2025-08-19 02:25:13', '2025-08-19 02:25:13'),
(25, 'DR004', '004', 'Mhira', 'GFRGEG', '433', '213213', '4355', '99', '2025-08-19', 'ttt', 'ttt', '2025-08-19 02:31:13', '2025-08-19 02:31:13'),
(26, 'DR005', '002', 'Mhira', 'ERGEG', '433', '213213', '4355', '99', '2025-08-19', 'ttt', 'ttt', '2025-08-19 02:31:28', '2025-08-19 02:31:28'),
(27, 'DR006', '005', 'Mhira', 'SFDSFGWR', '433', '213213', '4355', '99', '2025-08-20', 'ttt', 'ttt', '2025-08-19 02:32:51', '2025-08-19 02:32:51'),
(28, 'DR007', '006', 'Mhira', 'rty4ry4h', '433', '213213', '4355', '99', '2025-08-19', 'ttt', 'ttt', '2025-08-19 02:44:52', '2025-08-19 02:44:52'),
(29, 'DR008', '005', 'Mhira', '4h4h4', '433', '213213', '4355', '99', '2025-08-19', 'ttt', 'ttt', '2025-08-19 02:45:18', '2025-08-19 02:45:18'),
(30, 'DR009', '002', 'Mhira', '4h44', '433', '213213', '4355', '99', '2025-08-19', 'ttt', 'ttt', '2025-08-19 02:45:29', '2025-08-19 02:45:29'),
(31, 'DR010', '004', 'Mhira', 'eyeyy', '433', '213213', '4355', '99', '2025-08-19', 'ttt', 'ttt', '2025-08-19 02:45:42', '2025-08-19 02:45:42'),
(32, 'DR011', '001', 'TESTING', 'REGEGEGE', '132145678879', '35353', '534535', '4453', '2025-08-19', 'gfhghjjlk', 'ertete', '2025-08-19 02:48:50', '2025-08-19 02:48:50');
