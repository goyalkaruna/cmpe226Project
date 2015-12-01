<?php
session_start ();
if (! isset ( $_SESSION ['sess_name'] )) {
	header ( 'Location: login.php?err=2' );
}
?>
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
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="home.php">IJK Music App</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">

					<li class="username"><a class="active" href="home.php"><B>Hi <?php  echo $_SESSION['sess_name']; ?> </B></a></li>

				</ul>

				<ul class="nav navbar-nav navbar-left active">
					<li class="active"><a href="upload.php">Upload an Album <span
							class="glyphicon glyphicon-upload" aria-hidden="true"></span></a></li>

				</ul>
				<ul class="nav navbar-nav navbar-left active">
					<li class="active"><a href="album.php">My Albums <span
							class="glyphicon glyphicon-folder" aria-hidden="true"></span></a></li>
					<li><a href="history.php">My History</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="search.html" role="button"
						aria-haspopup="true" aria-expanded="false"><span
							class="glyphicon glyphicon-search" aria-hidden="true"></span></a></li>
					<li><a href="logout.php">logout <span
							class="glyphicon glyphicon-user" aria-hidden="true"></a></li>

				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<div class="container">
		<h3>
			<p class="lead">
				<I>Player</I>
			</p>
		</h3>

		<form action="review.php" method="post">
			<fieldset>

				<p>
					<label>Score: </label> <input type="radio" name="score" value="5"
						checked /> 5 <input type="radio" name="score" value="4" /> 4 <input
						type="radio" name="score" value="3" /> 3 <input type="radio"
						name="score" value="2" /> 2 <input type="radio" name="score"
						value="1" /> 1
				</p>

				<p>
					<label>Description:</label>
					<textarea rows="4" cols="50" name="description"
						placeholder="Details of your review!"></textarea>
				</p>
				<p>
					<input type="submit" value="Submit" />
					<button onclick="#">Cancel</button>
				</p>
			</fieldset>
		</form>

		<p>
        <?php
								
								if (isset ( $_GET ["song_id"] )) {
									$song_id = $_GET ['song_id'];
									include ('include/dbConnect.php');
									
									// Construct the HTML table row by row.
									// Start with a header row.
									$doHeader = true;
									
									// The header row before the first data row.
									if ($doHeader) {
										
										// Get user id of login session
										$query = "SELECT User.user_id
											  FROM User
											  WHERE User.name = :name AND User.email = :email";
										
										$ps = $con->prepare ( $query );
										$ps->bindParam ( ':name', $_SESSION ['sess_name'] );
										$ps->bindParam ( ':email', $_SESSION ['sess_email'] );
										
										$ps->execute ();
										$data = $ps->fetchAll ( PDO::FETCH_ASSOC );
										
										foreach ( $data as $row ) {
											$user_id = $row ['user_id'];
										}
										if (isset ( $_POST ["submit"] )) {
											if (!empty ( $_POST ['description'] )) {
												
												$score = filter_input ( INPUT_POST, "score" );
												
												if ($score == "5") {
													$output = "5";
												} else if ($score == "4") {
													$output = "4";
												} else if ($score == "3") {
													$output = "3";
												} else if ($score == "2") {
													$output = "2";
												} else {
													$output = "1";
												}
												
												$score_out = ( int ) $output;
												
												$description = filter_input ( INPUT_POST, "description" );
												
												$sql = "INSERT INTO Review(score, description, user_id, song_id)
										VALUES ('$score_out', '$description', $user_id, '$song_id')";
												
												// use exec() because no results are returned
												$con->exec ( $sql );
												echo "Your post has been created successfully. GOOD LUCK!!";
											}
											else
											{
												echo "All fields are required!";
											}
										}
									} else {
										echo "<p> Error</p>";
									}
								} else {
									echo "<p> Invalid Song!!!</p>";
								}
								?>
    </p>
	</div>
</body>
</html>