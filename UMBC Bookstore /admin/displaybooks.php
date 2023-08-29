<head><title> Display NEWS </title> 
<link rel=stylesheet href=css/style.css> 
</head>


<?php
include 'member.php';


require 'dbcon.php';

$sql = "SELECT * from tblbooks LEFT JOIN tblcategory ON tblbooks.bookcatid = tblcategory.catid";
$result = $conn->query($sql);

echo "<Center>";
echo "<BR>";
Echo "<H2><BR><BR><BR>
<a href=addnewbook.php > Add New Book         ---     <A Href=page1.php> [ Home ] </A></a></H2>";
echo "<BR>";
echo "<BR>";
echo "<HR>";

echo "<h2>Data From Books Table</h2> <Br>";

echo "<Table border=0 width=50%>";
echo "<TR bgcolor=#85e085>";
echo "<TD> Book Title </TD><TD> Book Details </TD><TD>Book Author </TD><TD> Book Category ID </TD><TD> Modify Book Details </TD><TD> Delete </TD>";
echo "</TR>";

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
		echo "<TR>";
		echo "<TD>";
        echo $row["bookheadline"];
		echo "</TD>";
		echo "<TD>";
        echo $row["bookdetails"];
		echo "</TD>";
		echo "<TD>";
        echo $row["bookauthor"];
		echo "</TD>";
		echo "<TD>";
        echo $row["bookcatid"];
		echo "</TD>";
        echo "";
		echo "<TD>";
		echo "<A href=updatebooks.php?nid=$row[bookid]> <img src=image/edit.gif width=25 height=25> </A>";
		echo "</TD>";
		echo "<TD>";
		echo "<A href=deletebooks.php?nid=$row[bookid]> <img src=image/delete.gif width=25 height=25  onclick=\"return confirm('Are you sure you want to delete this item?');\"> </A> ";
		echo "</TD>";
		echo "</TR>";
    }
} else {
    echo "0 results";
}


echo "</Table>";
echo "</Center>";

$conn->close();


?>
