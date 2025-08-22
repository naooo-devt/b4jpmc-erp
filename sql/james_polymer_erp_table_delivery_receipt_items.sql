
-- --------------------------------------------------------

--
-- Table structure for table `delivery_receipt_items`
--

CREATE TABLE `delivery_receipt_items` (
  `id` int(11) NOT NULL,
  `delivery_receipt_id` int(11) NOT NULL,
  `qty` varchar(50) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_receipt_items`
--

INSERT INTO `delivery_receipt_items` (`id`, `delivery_receipt_id`, `qty`, `unit`, `description`, `created_at`, `updated_at`) VALUES
(31, 22, '4545', '', 'Dinosaur', '2025-08-19 02:11:10', '2025-08-19 02:11:10'),
(32, 23, '23', '', 'Dinosaur', '2025-08-19 02:17:51', '2025-08-19 02:17:51'),
(33, 24, '4545', '', 'Dinosaur', '2025-08-19 02:25:13', '2025-08-19 02:25:13'),
(34, 24, '345', '', '435', '2025-08-19 02:25:13', '2025-08-19 02:25:13'),
(35, 25, '23', '', 'Dinosaur', '2025-08-19 02:31:13', '2025-08-19 02:31:13'),
(36, 26, '23', '', 'Dinosaur', '2025-08-19 02:31:28', '2025-08-19 02:31:28'),
(37, 27, '23', '', 'Dinosaur', '2025-08-19 02:32:51', '2025-08-19 02:32:51'),
(38, 28, '23', '', 'Dinosaur', '2025-08-19 02:44:52', '2025-08-19 02:44:52'),
(39, 29, '23', '', 'Dinosaur', '2025-08-19 02:45:18', '2025-08-19 02:45:18'),
(40, 30, '23', '', 'Dinosaur', '2025-08-19 02:45:29', '2025-08-19 02:45:29'),
(41, 31, '23', '', 'Dinosaur', '2025-08-19 02:45:42', '2025-08-19 02:45:42'),
(42, 32, '4545', '', 'Dinosaur', '2025-08-19 02:48:50', '2025-08-19 02:48:50'),
(43, 32, '345', '', '435', '2025-08-19 02:48:50', '2025-08-19 02:48:50');
