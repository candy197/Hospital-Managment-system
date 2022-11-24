<?php

session_start();

include 'connect.php';


if (isset($_POST["submit"])) {
	$user = $_POST["user"];
	$pass = $_POST["pass"];

	$sql = "select * from admin where username = '$user' and password = '$pass'" or die("Query is wrong");
	echo $sql;


	$query = mysqli_query($con,$sql);

	$row = mysqli_fetch_assoc($query);
	
	if ($row) {
			echo "Successfully login";
			
			$ID = $row['ID'];
			$_SESSION['ID']=$ID;
			$_SESSION['user']=$user;
			$FullName = $row['FullName'];

			$_SESSION['FullName']=$FullName;


			header("location:dashboard.php");

	}
	else{
		header("location:Admin.php");
	}



	


}

	

	

?>