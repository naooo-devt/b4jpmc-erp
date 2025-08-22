<?php
//  gin.php

// Start the session to store user login status.
session_start();

// If the user is already logged in, redirect them to the main index page.
if (isset($_SESSION['loggedin']) && $_SESSION['loggedin'] === true) {
    header('Location: index.php');
    exit;
}

// Include the database connection file.
require_once 'db_connect.php';

$login_error = '';

// Check if the form was submitted using the POST method.
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Get username and password from the form, trimming whitespace.
    $username = trim($_POST['username']);
    $password = $_POST['password'];

  // Basic validation to ensure fields are not empty.
  if (empty($username) || empty($password)) {
    $login_error = 'Username and password are required.';
  } else {
    // Prepare a SQL statement to prevent SQL injection.
    $sql = "SELECT id, username, password, role FROM users WHERE username = ?";
    if ($stmt = $conn->prepare($sql)) {
      $stmt->bind_param("s", $username);
      if ($stmt->execute()) {
        $stmt->store_result();
        if ($stmt->num_rows === 1) {
          $stmt->bind_result($id, $db_username, $db_password, $role);
          if ($stmt->fetch()) {
            // Allow both 'admin' and 'employee' roles to log in
            if ($password === $db_password && ($role === 'admin' || $role === 'employee')) {
              session_regenerate_id();
              $_SESSION['loggedin'] = true;
              $_SESSION['user_id'] = $id;
              $_SESSION['username'] = $db_username;
              $_SESSION['role'] = $role;
              header('Location: index.php');
              exit;
            } else if ($password === $db_password) {
              $login_error = 'Your account does not have the correct role to access this system.';
            } else {
              $login_error = 'Invalid username or password.';
            }
          }
        } else {
          $login_error = 'Invalid username or password.';
        }
      } else {
        $login_error = 'Oops! Something went wrong. Please try again later.';
      }
      $stmt->close();
    }
  }
  $conn->close();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login - James Polymer Manufacturing Corp</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <link rel="stylesheet" href="assets/css/login.css">
</head>
<body>
  <div class="login-bg">
    <div class="login-card">
      <div class="login-header-bg">
        <div class="company-logo">
          <img src="images/logo.png" alt="Company Logo" class="logo-image">
        </div>
        <h1 class="company-name">James Polymer</h1>
        <p class="company-subtitle">Manufacturing Corp</p>
      </div>
      <div class="login-content">
        <h2 class="login-title">Enterprise Resource Planning (ERP)</h2>
        <p class="login-desc">Enter your credentials to access the system</p>
        <div class="role-info" style="margin-bottom:10px; color:#555; font-size:0.95em;">
          <strong>Note:</strong> Only users with the role <b>administrator</b> or <b>employee</b> can log in.<br>
          <span style="font-size:0.93em;">Sample admin: <b>admin1</b> / <b>jamespolymer0823</b><br>Sample employee: <b>employee1</b> / <b>employee123</b></span>
        </div>
        <form id="loginForm" class="login-form" method="POST" action="login.php">
          <div class="form-group">
            <label for="username" class="form-label">
              <i class="fas fa-user"></i>
              Username
            </label>
            <input type="text" id="username" name="username" class="form-input" placeholder="Enter your username" required>
          </div>
          <div class="form-group">
            <label for="password" class="form-label">
              <i class="fas fa-lock"></i>
              Password
            </label>
            <div class="password-input-container">
              <input type="password" id="password" name="password" class="form-input" placeholder="Enter your password" required>
              <button type="button" class="password-toggle" id="passwordToggle" tabindex="-1">
                <i class="fas fa-eye"></i>
              </button>
            </div>
          </div>
          <div class="form-group">
            <button type="submit" class="btn btn-primary login-btn">
              <i class="fas fa-sign-in-alt"></i>
              Login
            </button>
          </div>
        </form>
      </div>
      <!-- Error Modal: Displayed if there's a login error from PHP -->
      <div id="errorModal" class="modal-overlay" style="<?php echo !empty($login_error) ? 'display: flex;' : 'display: none;'; ?>">
        <div class="modal-content error-modal">
          <div class="modal-header">
            <i class="fas fa-exclamation-triangle error-icon"></i>
            <h3 class="modal-title">Login Failed</h3>
          </div>
          <div class="modal-body">
            <p id="errorMessage"><?php echo htmlspecialchars($login_error); ?></p>
          </div>
          <div class="modal-footer">
            <button class="btn btn-primary" id="closeErrorModal">OK</button>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="assets/js/login.js"></script>
</body>
</html>