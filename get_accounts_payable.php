<?php
header('Content-Type: application/json');
require 'db_connect.php';

$range = $_GET['range'] ?? 'weekly';

if ($range === 'weekly') {
    $sql = "SELECT SUM(amount) as total_payable
            FROM accounts_payable
            WHERE status = 'Unpaid'
              AND date >= DATE_SUB(CURDATE(), INTERVAL 7 DAY)";
} elseif ($range === 'monthly') {
    $sql = "SELECT SUM(amount) as total_payable
            FROM accounts_payable
            WHERE status = 'Unpaid'
              AND MONTH(date) = MONTH(CURDATE())
              AND YEAR(date) = YEAR(CURDATE())";
} elseif ($range === 'quarterly') {
    $sql = "SELECT SUM(amount) as total_payable
            FROM accounts_payable
            WHERE status = 'Unpaid'
              AND date >= DATE_SUB(CURDATE(), INTERVAL 3 MONTH)";
}

$result = $conn->query($sql);
$row = $result->fetch_assoc();

echo json_encode([
    "amount" => $row['total_payable'] ?? 0
]);
