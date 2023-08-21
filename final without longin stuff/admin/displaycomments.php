<head><title> Display Books </title> 
<link rel=stylesheet href=css/style.css> 
</head>


<?php
include 'member.php';


require 'dbcon.php';

$sql = "SELECT * from tblcomment LEFT JOIN tblbooks ON tblcomment.commentid = tblbooks.bookid";
$result = $conn->query($sql);

echo "<Center>";
echo "<BR>";
Echo "<H2><BR><BR><BR>
<A Href=page1.php> [ Home ] </A></a></H2>";
echo "<BR>";
echo "<BR>";
echo "<HR>";

echo "<h2>Data From Comments Table</h2> <Br>";

echo "<Table border=0 width=50%>";
echo "<TR bgcolor=#85e085>";
echo "<TD> Comment ID </TD><TD> Comment </TD><TD> Show/Hide Comment </TD><TD> Delete Comments </TD>";
echo "</TR>";

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
		echo "<TR>";
		echo "<TD>";
        echo $row["commentid"];
		echo "</TD>";
		echo "<TD>";
        echo $row["comment"];
		echo "</TD>";
        echo "";
		echo "<TD>";
		echo "<A href=updatecomment.php?nid=$row[bookid]> <img src=image/edit.gif width=25 height=25> </A>";
		echo "</TD>";
		echo "<TD>";
		echo "<A href=deletecomment.php?nid=$row[commentid]> <img src=image/delete.gif width=25 height=25  onclick=\"return confirm('Are you sure you want to delete this item?');\"> </A> ";
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
