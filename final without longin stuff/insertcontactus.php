<?php


// Connect to the database
require 'dbcon.php';

$name = "";
$address = "";
$message = "";
$name = $_GET["name"];
$address = $_GET["address"];
$message = $_GET["message"];
$date = date("Y-m-d");


// Construct the INSERT query
$sql = "INSERT INTO contactus1 (name, address, message, date) VALUES ('$name', '$address','$message', '$date')";

// Execute the query
$result = $conn->query($sql);


// Disconnect from the database
$conn->close();

header('Location: index.php');
?>