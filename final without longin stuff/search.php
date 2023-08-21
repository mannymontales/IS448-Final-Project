<html>
<head>
	<title> IS448 NEWS-Project </title>
	<link rel="stylesheet" href="style/main.css">
	
	<style>
<?php
require 'dbcon.php';
$sql = "Select * from tblstyle";
$result = $conn->query($sql);
	while($row = $result->fetch_assoc()) 
	{
	If ($row["tag"]=='H1')
	{
	echo "h1 {color:".$row["value"].";}";
	}
	elseif ($row["tag"]=='H2')
	{
	echo "h2 {color:".$row["value"].";}";
	}
	else
	{
	echo "h3 {color:".$row["value"].";}";
	}
	}
?>
	</style>

</head>
<body>

	<header class="banner">
	<img src="images/newlogo.png">  

	<div class="panel panel-nav">
		<center>
			<ul>
			<li> <a href="index.php"> Home </a> </li>
			<li> <a href=""> About Us </a> </li>
			<li> <a href="contactus.html"> Contact Us </a> </li>
			<div class="dropdown">
    				<button class="dropbtn">Category</button>
					<div class="dropdown-content">
				
						<?php
        				// Connect to the database
						require 'dbcon.php';
						$sql = "Select * from tblcategory";
						$result = $conn->query($sql);

						
        		        // Display the categories as a menu
        while($row = mysqli_fetch_array($result)) {
			// Use the GET method to pass the selected category as a parameter in the URL
			echo "<li><a href='category.php?id=" . $row['catid'] . "'>" . $row['catname'] . "</a></li>";
			}
			?>
					
						
					</div>
				</div> 
			
			<li>  <div class="search">
							<Form action="search.php">
							<input type="text" name="search" size="20" height="24">
							<input type="image" src="images/search.png" alt="Submit" width="24" height="24">
							</Form>
							</div>	 
			</li>
			</ul>
		</center>
	</div>
	</header>
	
	<main>
	
	<?php


require 'dbcon.php';
//echo "Connected successfully";

$id = "";
$id = $_GET['search'];

//$sql = "SELECT * from tblnews LEFT JOIN tblcategory ON tblnews.newscatid = tblcategory.catid where newsheadline like %".$id."% or newsdetails like ".$id."";
$sql = "SELECT * from tblbooks LEFT JOIN tblcategory ON tblbooks.bookcatid = tblcategory.catid where bookheadline like '%".$id."%' or bookdetails like '%".$id."%'  or bookauthor like '%".$id."%'";
//echo $sql;
// SELECT * FROM table1 LEFT JOIN table2 ON table1.id=table2.id;
$result = $conn->query($sql);

    while($row = $result->fetch_assoc()) 
	{
	
	echo 	"
			<section>	
				<article>
					<img width=250px src=images/".$row["bookimage"]." />
					<BR>
					<h2> ".$row["bookheadline"]." </h2>
					<p> ".substr($row["bookdetails"],0,300)." </p>
					<p><br><br><a href=details.php?id=".$row["bookid"].">Details</a><br><br></p>
					<p> Author: ".$row["bookauthor"]." Date: ".$row["bookdate"]."  Category: ".$row["catname"]." </p>

				</article>
			</section>";
		
	}
	
$conn->close();

	?>
	
	</main>
	
	<footer>
		<center>
			Footer information
		</center>
	</footer>
</body>
</html>