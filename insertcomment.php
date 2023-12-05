<?php
include 'member.php';
// Show MyGuests Data

require 'dbcon.php';

// define variables and set to empty values
$comment = "";

$comment =  $_REQUEST['comment'];

$sql = "INSERT INTO tblcomment (comment) VALUES ('$comment')";

if ($conn->query($sql) === TRUE) {
  echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();

header('Location: index.php');
?>