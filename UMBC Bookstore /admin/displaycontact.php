<head><title> Display Books </title> 
<link rel=stylesheet href=css/style.css> 
</head>


<?php
include 'member.php';


require 'dbcon.php';

$sql = "SELECT * from contactus1";
$result = $conn->query($sql);

echo "<Center>";
echo "<BR>";
Echo "<H2><BR><BR><BR>
<A Href=page1.php> [ Home ] </A></a></H2>";
echo "<BR>";
echo "<BR>";
echo "<HR>";

echo "<h2>Responses from Contact Form</h2> <Br>";

echo "<Table border=0 width=50%>";
echo "<TR bgcolor=#85e085>";
echo "<TD> Contact ID </TD><TD> Contact Name </TD><TD> Contact Address </TD><TD> Contact Message </TD><TD> Date </TD>";
echo "</TR>";

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
		echo "<TR>";
		echo "<TD>";
        echo $row["id"];
		echo "</TD>";
		echo "<TD>";
        echo $row["name"];
		echo "</TD>";
		echo "<TD>";
        echo $row["address"];
		echo "</TD>";
		echo "<TD>";
        echo $row["message"];
		echo "</TD>";
        echo "<TD>";
        echo $row["date"];
		echo "</TD>";
        echo "";
    }
} else {
    echo "0 results";
}


echo "</Table>";
echo "</Center>";

$conn->close();


?>