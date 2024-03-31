<?php
// database connection code
if(isset($_POST['fName']))
{
// $con = mysqli_connect('localhost', 'database_user', 'database_password','database');
$con = mysqli_connect('localhost', 'root', '','db_contact');

// get the post records

$fName = $_POST['fName'];
$lName = $_POST['lEmail'];
$Message = $_POST['Message'];

// database insert SQL code
$sql = "INSERT INTO `tbl_team4` (`Id`, `fName`, `lName`, `Message`) VALUES ('0', '$fName', '$lName', '$Message')";

// insert in database 
$rs = mysqli_query($con, $sql);
if($rs)
{
	echo "Record Added";
}
}
else
{
	echo "Are you dim or something?";
	
}
?>
