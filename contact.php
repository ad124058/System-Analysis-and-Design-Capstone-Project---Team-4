<?php
// database connection code
if(isset($_POST['txtName']))
{
// $con = mysqli_connect('localhost', 'database_user', 'database_password','database');
$con = mysqli_connect('localhost', 'root', '','db_contact');

// get the post records

$txtName = $_POST['txtName'];
$txtEmail = $_POST['txtEmail'];
$txtPhone = $_POST['txtPhone'];
$txtMessage = $_POST['txtMessage'];

// database insert SQL code
$sql = "INSERT INTO `tbl_tm4` (`Id`, `fName`, `lName`, `Message`) VALUES ('0', '$fName', '$lName', '$Message')";

// insert in database 
$rs = mysqli_query($con, $sql);
if($rs)
{
	echo "Contact Records Inserted";
	$url = "index.html";
	echo "<a href='$url'>Home</a>";
}
}
else
{
	echo "Are you a genuine visitor?";
	
}
?>
