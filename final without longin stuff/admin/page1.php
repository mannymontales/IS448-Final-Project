<?php
include 'member.php';
?>
<html>
<body>

<?php
Echo '<a href=logout.php> || Logout  ||</a>';
echo '<br><Center>';
echo '<H1> Admin Home </H1>';

	echo '<br><H3>';
	echo '<br>';
	Echo '<a href=displaycat.php> [ Category ]</a>';
	echo '   ---   |   ---   ';
	Echo '<a href=displaybooks.php> [ Books ]</a>';
	echo '   ---   |   ---   ';
	Echo '<a href=displaycomments.php> [ Comments ]</a>';
	echo '   ---   |   ---   ';
	Echo '<a href=displaycontact.php> [ Contact Us Responses ]</a>';
	echo '   ---   |   ---   ';

	Echo '<a href=> [ StyleSheet ]</a>';
	echo '</H3><br>';
	
	
echo '<br></Center>';
?>

</body>
</html>