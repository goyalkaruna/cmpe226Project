
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>IJK(India Korea Japan</title>

<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="MusicApp.css" rel="stylesheet">

</head>
<body align="center">

<nav class="navbar navbar-custom">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="home.php">IJK Music App</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

<ul class="nav navbar-nav navbar-right">
	<li class="active"><a href="search.html"   role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a></li>
  <li ><a href="login.php">Login</a></li>

</ul>
		</div><!-- /.navbar-collapse -->
	</div><!-- /.container-fluid -->
</nav>






	<form action="" method="POST">
		<div><h3>Registration Form</h3></div></br>
	<p><label>	Name: </label> <input type="text" name="name"></p><br />
	<p><label>	Address:</label> <input type="text" name="address"></p><br />
	<p><label>	Email: </label><input type="text" name="email"></p><br />
	<p><label>	Password:</label> <input type="password" name="pass"></p><br />
		<input type="submit" value="Register" name="submit" />
	</form>
<?php
include ('include/dbConnect.php');
if (isset ( $_POST ["submit"] ))
{

	if (!empty ( $_POST ['email'] ) && !empty ( $_POST ['pass'] ) && !empty ( $_POST ['name'] ) && !empty ( $_POST ['address'] ))
	{
		$name = $_POST ['name'];
		$address = $_POST ['address'];
		$email = $_POST ['email'];
		$pass = $_POST ['pass'];




			$sql = "INSERT INTO User(name, address, email, password) VALUES('$name', '$address', '$email','$pass')";

		$con->exec($sql);

				echo "<p>Account Successfully Created.</p>";
				header('Location:login.php');


}
}



?>

</body>
</html>
