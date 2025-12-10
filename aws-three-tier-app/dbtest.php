<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

$servername = "three-tier-db.ckj8ui0qk19z.us-east-1.rds.amazonaws.com";
$username = "admin";
$password = "<hidden>";
$dbname = "myapp";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$result = $conn->query("SELECT * FROM test_table");

echo "<h1>Data from RDS:</h1>";

if ($result) {
    while($row = $result->fetch_assoc()) {
        echo $row["id"] . " - " . $row["message"] . "<br>";
    }
} else {
    echo "Query failed: " . $conn->error;
}

$conn->close();
?>
