<?php
$servername = "devops-test-db.cbw6oe6qmkm5.ap-south-1.rds.amazonaws.com"; // Your RDS endpoint
$username = "admin"; // Your RDS username
$password = "5QBKG4ePyVyiNpE"; // Your RDS password
$dbname = "devops"; // Your RDS database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
