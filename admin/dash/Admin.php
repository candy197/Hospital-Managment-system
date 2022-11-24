
<?php
session_start();
?>


<!DOCTYPE html>
<html>
<head>
	<title>Admin Login</title>
	<link rel="stylesheet" type="text/css" href="admin.css">
</head>
<body>

	<div class="login-box">


		<div class="form-box">
		<img src="pic2.png" alt="Avatar" class="img">

	<form id="old" class="login" action="adminlogin.php" method="POST">
				<input type="text" class="input" placeholder="username" name="user" required="">
				<input type="password" class="input" placeholder="Passwords" name="pass" required="">
				<button type="submit" class="submit-btn" name="submit" onsubmit="return Validate()">Login</button>	
	</form>
	</div>
</div>
</div>
<script type="text/javascript">
	function Validate() {
	UserName = document.forms['myForm']['user'].value;
	Passwords = document.forms['myForm']['Pass'].value;

	if (UserName == "") {
		alert("Enter Username.......");
		return false;
	}
	if (Passwords == "") {
		alert("Enter Passwords.......");
		return false;
	}
}

</script>
</body>
</html>

