
-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` int(11) NOT NULL,
  `quotation_no` varchar(50) DEFAULT NULL,
  `quotation_date` date DEFAULT NULL,
  `attention_to` varchar(100) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `contact_number` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `mode_of_payment` varchar(100) DEFAULT NULL,
  `subtotal` decimal(15,2) DEFAULT NULL,
  `vat` decimal(15,2) DEFAULT NULL,
  `grand_total` decimal(15,2) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `product_image_path` varchar(255) DEFAULT NULL,
  `validity_days` int(11) DEFAULT NULL,
  `delivery_days` int(11) DEFAULT NULL,
  `sender_company` varchar(100) DEFAULT NULL,
  `sender_name` varchar(100) DEFAULT NULL,
  `sender_position` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quotations`
--

INSERT INTO `quotations` (`id`, `quotation_no`, `quotation_date`, `attention_to`, `position`, `company_name`, `address`, `contact_number`, `email`, `website`, `mode_of_payment`, `subtotal`, `vat`, `grand_total`, `product_name`, `terms`, `product_image_path`, `validity_days`, `delivery_days`, `sender_company`, `sender_name`, `sender_position`, `created_at`, `status`) VALUES
(1, 'JPMC 2025-08-0001', '2025-08-19', 'Oakes', 'COO', 'Coprsc', 'asdasd', '09454632234', 'leah@gmail.com', 'N/A', 'CASH', 204525.00, 24543.00, 229068.00, NULL, NULL, NULL, NULL, NULL, 'James Polymers Manufacturing Corporation.', 'ytututut', 'ututututAS', '2025-08-19 01:29:11', 'Pending'),
(2, 'JPMC 2025-08-0002', '2025-08-19', 'Oakes', 'COO', 'Coprsc', 'asdsad', '09454632234', 'leah@gmail.com', 'N/A', 'CASH', 204525.00, 24543.00, 229068.00, NULL, NULL, NULL, NULL, NULL, 'James Polymers Manufacturing Corporation.', 'ytututut', 'ututututAS', '2025-08-19 01:29:48', 'Pending'),
(3, 'JPMC 2025-08-0003', '2025-08-16', 'Oakes', 'COO', 'Coprsc', 'sadasdsd', '09454632234', 'leah@gmail.com', 'N/A', 'CASH', 204525.00, 24543.00, 229068.00, NULL, NULL, NULL, NULL, NULL, 'James Polymers Manufacturing Corporation.', 'ytututut', 'ututututAS', '2025-08-19 01:30:19', 'Pending'),
(4, 'JPMC 2025-08-0004', '2025-08-20', 'Oakes', 'COO', 'Coprsc', 'asdsad', '09454632234', 'leah@gmail.com', 'N/A', 'CASH', 204525.00, 24543.00, 229068.00, NULL, NULL, NULL, NULL, NULL, 'James Polymers Manufacturing Corporation.', 'ytututut', 'ututututAS', '2025-08-19 01:31:15', 'Approved'),
(5, 'JPMC 2025-08-0005', '2025-08-19', 'Oakes', 'COO', 'Coprsc', '456 Brgy. Street', '09454632234', 'leah@gmail.com', 'N/A', 'CASH', 204525.00, 24543.00, 229068.00, NULL, NULL, NULL, NULL, NULL, 'James Polymers Manufacturing Corporation.', 'ytututut', 'ututututAS', '2025-08-19 01:35:01', 'Pending'),
(6, 'JPMC 2025-08-0006', '2025-08-20', 'Oakes', 'COO', 'FRIDAY', 'GG', '09454632234', 'leah@gmail.com', 'N/A', 'CASH', 204525.00, 24543.00, 229068.00, NULL, NULL, NULL, 30, 21, 'James Polymers Manufacturing Corporation.', 'ytututut', 'ututututAS', '2025-08-19 01:50:05', 'Approved'),
(7, 'JPMC 2025-08-0007', '2025-08-18', 'Oakes', 'COO', 'MONDAY', 'asdsad', '09454632234', 'leah@gmail.com', 'N/A', 'CASH', 204525.00, 24543.00, 229068.00, NULL, NULL, NULL, 1, 21, 'James Polymers Manufacturing Corporation.', 'ytututut', 'ututututAS', '2025-08-19 01:51:43', 'Pending'),
(8, 'JPMC 2025-08-0008', '2025-08-19', 'Oakes', 'COO', 'TUESDAY', 'asdasd', '09454632234', 'leah@gmail.com', 'N/A', 'CASH', 204525.00, 24543.00, 229068.00, NULL, NULL, NULL, 1, 21, 'James Polymers Manufacturing Corporation.', 'ytututut', 'ututututAS', '2025-08-19 01:52:21', 'Approved'),
(9, 'JPMC 2025-08-0009', '2025-08-19', 'Kenneth Gabren E. Oakes', 'COO', 'TUESDAY', 'GG', '09454632234', 'leah@gmail.com', 'N/A', 'CASH', 1035.00, 124.20, 1159.20, NULL, NULL, NULL, 5, 21, 'James Polymers Manufacturing Corporation.', 'ytututut', 'ututututAS', '2025-08-19 01:54:49', 'Approved'),
(10, 'JPMC 2025-08-0010', '2025-08-19', 'Kenneth Gabren E. Oakes', 'COO', 'TUESDAY', 'tewtt', '09454632234', 'leah@gmail.com', 'N/A', 'CASH', 1035.00, 124.20, 1159.20, NULL, NULL, NULL, 9, 21, 'James Polymers Manufacturing Corporation.', 'ytututut', 'ututututAS', '2025-08-19 01:55:30', 'Pending'),
(11, 'JPMC 2025-08-0011', '2025-08-19', 'Kenneth Gabren E. Oakes', 'COO', 'TUESDAY', 'rgsgwg', '09454632234', 'leah@gmail.com', 'N/A', 'CASH', 1035.00, 124.20, 1159.20, NULL, NULL, NULL, 100, 21, 'James Polymers Manufacturing Corporation.', 'ytututut', 'ututututAS', '2025-08-19 01:56:31', 'Approved'),
(12, 'JPMC 2025-08-0012', '2025-08-19', 'Kenneth Gabren E. Oakes', 'COO', 'TUESDAY', 'fwrgfw', '09454632234', 'leah@gmail.com', 'N/A', 'CASH', 1035.00, 124.20, 1159.20, NULL, NULL, NULL, 20, 21, 'James Polymers Manufacturing Corporation.', 'ytututut', 'ututututAS', '2025-08-19 01:57:11', 'Approved'),
(13, 'JPMC 2025-08-0013', '2025-08-19', 'Kenneth Gabren E. Oakes', 'COO', 'TUESDAY', 'wfwrf', '09454632234', 'leah@gmail.com', 'N/A', 'CASH', 1035.00, 124.20, 1159.20, NULL, NULL, NULL, 30, 21, 'James Polymers Manufacturing Corporation.', 'ytututut', 'ututututAS', '2025-08-19 01:57:37', 'Approved'),
(14, 'JPMC 2025-08-0014', '2025-08-19', 'Kenneth Gabren E. Oakes', 'COO', 'NET', 'ffwf', '09454632234', 'leah@gmail.com', 'N/A', 'CASH', 1035.00, 124.20, 1159.20, NULL, NULL, NULL, 7, 21, 'James Polymers Manufacturing Corporation.', 'ytututut', 'ututututAS', '2025-08-19 01:58:02', 'Approved'),
(15, 'JPMC 2025-08-0015', '2025-08-19', 'Kenneth Gabren E. Oakes', 'COO', 'NET', 'rgwg', '09454632234', 'leah@gmail.com', 'N/A', 'CASH', 1035.00, 124.20, 1159.20, NULL, NULL, NULL, 30, 21, 'James Polymers Manufacturing Corporation.', 'ytututut', 'ututututAS', '2025-08-19 01:58:30', 'Approved'),
(16, 'JPMC 2025-08-0016', '2025-08-20', 'Oakes', 'COO', 'NET', 'gwrwg', '09454632234', 'leah@gmail.com', 'N/A', 'CASH', 1035.00, 124.20, 1159.20, NULL, NULL, NULL, 30, 21, 'James Polymers Manufacturing Corporation.', 'ytututut', 'ututututAS', '2025-08-19 01:58:47', 'Approved'),
(17, 'JPMC 2025-08-0017', '2025-08-19', 'Oakes', 'COO', 'NET', 'wrg', '09454632234', 'leah@gmail.com', 'N/A', 'CASH', 1035.00, 124.20, 1159.20, NULL, NULL, NULL, 30, 21, 'James Polymers Manufacturing Corporation.', 'ytututut', 'ututututAS', '2025-08-19 01:59:13', 'Approved'),
(18, 'JPMC 2025-08-0018', '2025-08-19', 'Oakes', 'COO', 'NET', 'regfe', '09454632234', 'leah@gmail.com', 'N/A', 'CASH', 1035.00, 124.20, 1159.20, NULL, NULL, NULL, 4, 21, 'James Polymers Manufacturing Corporation.', 'ytututut', 'ututututAS', '2025-08-19 02:28:07', 'Approved');
