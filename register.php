<!doctype html>
<html>
<head>
<meta charset="utf-8" />
<title>Register</title>
<script type="text/javascript" src="bootstrap.js"></script>
<script type="text/javascript" src="bootstrap.min.js"></script>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<style>
.navbar-default1 {
	background-color: #F8F8F8;
	border-color: #E7E7E7;
}

.navbar-custom {
	background-color: #4682B4;
	color: #ffffff;
	border-radius: 0;
}

.navbar-custom .navbar-nav>li>a {
	color: #fff;
}

.navbar-custom .navbar-nav>.active>a, .navbar-nav>.active>a:hover,
	.navbar-nav>.active>a:focus {
	color: #ffffff;
	background-color: transparent;
}

.navbar-custom .navbar-brand {
	color: #eeeeee;
}
</style>

</head>
<body align="center">
	<nav class="navbar navbar-custom">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">IJK</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Music App <span class="sr-only">(current)</span></a></li>
					<li><a href="#">Hi User</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Dropdown <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">My Account</a></li>
							<li><a href="#">My History</a></li>
							<li><a href="#">My Jukebox</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">Separated link</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">One more separated link</a></li>
						</ul></li>
				</ul>
				<form class="navbar-form navbar-left" role="search">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Search">
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
				</form>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">About</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false"><span class="glyphicon glyphicon-user"
							aria-hidden="true"></span> <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">My Account</a></li>
							<li><a href="#">My History</a></li>
							<li><a href="#">My Jukebox</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<p>
		<a href="register.php">Register</a>
	</p>


	<h3>Registration Form</h3>
	<form action="" method="POST">
		Name: <input type="text" name="name"><br /> 
		Address: <input type="text" name="address"><br /> 
		Email: <input type="text" name="email"><br /> 
		Password: <input type="password" name="pass"><br />
		<input type="submit" value="Register" name="submit" />
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
		
		$con = mysql_connect ( 'localhost', 'root', 'root' ) or die ( mysql_error () );
		mysql_select_db ( 'assignment04' ) or die ( "cannot select DB" );
		
		$query = mysql_query ( "SELECT * FROM User WHERE email = '$email'" );
		$numrows = mysql_num_rows ( $query );
		if ($numrows == 0) {
			$sql = "INSERT INTO User(name, address, email, password) VALUES('$name', '$address', '$email','$pass')";
			
			$result = mysql_query ( $sql );
			
			if ($result) 
			{
				echo "Account Successfully Created";
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