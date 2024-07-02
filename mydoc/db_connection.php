<?php 
$conn = new mysqli('localhost', 'root', '12345678', 'non-tax');


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>