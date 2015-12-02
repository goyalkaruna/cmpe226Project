
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
<body>

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
	<li><a href="login.php">Login</a> <li>


</ul>
		</div><!-- /.navbar-collapse -->
	</div><!-- /.container-fluid -->
</nav>





<form action="" method="POST" class="form-signin col-md-4 col-md-offset-4" role="form">
	 <fieldset>
    <legend class="label">Registration Form <span class="glyphicon glyphicon-user"></span></legend>

	<input type="text" name="name" class="form-control" placeholder="your name" required autofocus><br/>
	<input type="text" name="address" class="form-control" placeholder="your addess" required><br/>
		<input type="text" name="email" class="form-control" placeholder="abc@example.com" required autofocus><br/>
		<input type="password" name="pass" class="form-control" placeholder="Password" required><br/>
		<button class="btn btn-lg btn-primary btn-block" type="submit">Register</button><br/>

	</fieldset>
</form>

<?php
if (isset ( $_POST ["submit"] ))
{

	if (!empty ( $_POST ['email'] ) && !empty ( $_POST ['pass'] ) && !empty ( $_POST ['name'] ) && !empty ( $_POST ['address'] ))
	{
		$name = $_POST ['name'];
		$address = $_POST ['address'];
		$email = $_POST ['email'];
		$pass = $_POST ['pass'];


	 include ('include/dbConnect.php');
		$query = mysql_query ( "SELECT * FROM User WHERE email = '$email'" );
		$numrows = mysql_num_rows ( $query );
		if ($numrows == 0) {
			$sql = "INSERT INTO User(name, address, email, password) VALUES('$name', '$address', '$email','$pass')";

			$result = mysql_query ( $sql );

			if ($result)
			{
				echo "Account Successfully Created";
				header('Location: login.php');
			}
			else
			{
				echo "Failure!";
			}
		} else
		{
			echo "That username already exists! Please try again with another.";
		}
	}
	else
	{
		echo "All fields are required!";
	}
}
?>

</body>
</html>
