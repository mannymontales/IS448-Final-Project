<?php
include 'member.php';
// Show MyGuests Data

require 'dbcon.php';

// define variables and set to empty values
$ca = $hl = $au = $da = $im = $de = "";

$ca = $_POST['ca'];
$hl = $_POST['hl'];
$au = $_POST['au'];
$da = $_POST['da'];
$im = $_POST['im'];
$de = $_POST['de'];


  $sql = "INSERT INTO tblbooks (bookcatid, bookheadline, bookauthor, bookdate, bookimage, bookdetails )
  VALUES 
  ($ca, '$hl', '$au', '$da', '$im', '$de')";
  
if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();

header('Location: displaybooks.php');
?>