<?php
include 'member.php';
// Show MyGuests Data

require 'dbcon.php';

// define variables and set to empty values
$id = "";

$id = $_GET['nid'];
$sql = "SELECT bookheadline, bookdetails FROM  tblbooks where bookid=$id";
$result = $conn->query($sql);
$conn->query($sql);
$row = $result->fetch_assoc();

echo "<Center>";
echo "<H1> Update Category Data </H1>";
echo "<Form action=updateinsertbooks.php method=post>";
echo "<input type=hidden name=id value=$id>";
echo "<H3> Book Details <Input type=text name=cn value=". $row['bookdetails'] ."> <Br>";
echo "<Input type=submit value=Submit>";
echo "</Form>";
echo "</Center>";

$conn->close();

?>