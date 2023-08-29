<?php
include 'member.php';
// Show MyGuests Data

require 'dbcon.php';

// define variables and set to empty values
$bookdetails = "";
$id = "";
$id = $_POST['id'];
$bookdetails = $_POST['cn'];
echo $id;
echo "<BR>";
echo $bookdetails;

$sql = "update tblbooks set bookdetails='$bookdetails' Where bookid=$id";
$conn->query($sql);

$conn->close();


header('Location: displaybooks.php');

?>