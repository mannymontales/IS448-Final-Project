<?php
include 'member.php';
// Show MyGuests Data

require 'dbcon.php';

// define variables and set to empty values
$id = "";

$id = $_GET['nid'];
$sql = "Delete FROM tblcomment Where commentid=$id";

$conn->query($sql);
$conn->close();


//echo "Data Deleted"
header('Location: displaycomments.php');

?>