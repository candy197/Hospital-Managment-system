<?php  
include 'connect.php';



$FullName = $_POST['FullName'];
$Address = $_POST['Address'];
$Mobile = $_POST['Mobile'];
$City = $_POST['City'];
$username = $_POST['username'];
$password = $_POST['pass'];
$date = $_POST['date'];
$Gender = $_POST['Gender'];
$BloodGroup = $_POST['BloodGroup'];
$Symtoms = $_POST['Symptoms'];
$status = "Pending";
echo $date;
echo $BloodGroup;
echo $City;
echo $Symtoms;

$sql ="INSERT INTO patient(FullName,Address,Mobile,username,password,city,bloodgroup,Gender,DOB,Symptoms,status)values('$FullName','$Address','$Mobile','$username','$password','$City','$BloodGroup','$Gender','$date','$Symptoms','$status')" or die("Failed to executed");

$result = mysqli_query($con,$sql);
if ($result) {
	header("location:index.html");
}
else{
	echo "failed to executed";
}







?>