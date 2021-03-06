<?php
session_start();
if(!isset($_SESSION['sess_name'])){
			header('Location: login.php?err=2');
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
			<ul class="nav navbar-nav">

				<li class="username"><a class="active" href="home.php"><B>Hi <?php  echo $_SESSION['sess_name']; ?> </B></a></li>


			</ul>

			<ul class="nav navbar-nav navbar-left active">
				<li class="active"><a href="upload.php">Upload an Album <span class="glyphicon glyphicon-upload" aria-hidden="true"></span></a></li>

			</ul>
			<ul class="nav navbar-nav navbar-left active">
				<li class="active"><a href="myalbum.php">My Albums <span class="glyphicon glyphicon-folder" aria-hidden="true"></span></a></li>
	<li><a href="history.php">My History</a></li>
			</ul>
<ul class="nav navbar-nav navbar-right">
	<li class="active"><a href="search.html"   role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a></li>
	<li><a href="logout.php">logout <span class="glyphicon glyphicon-user" aria-hidden="true"></a></li>

</ul>
		</div><!-- /.navbar-collapse -->
	</div><!-- /.container-fluid -->
</nav>
	<div class="container">


        <?php

								if (isset ( $_GET ["song_id"] )) {
									$song_id = $_GET ['song_id'];
									include ('include/dbConnect.php');

									$_SESSION ['song_id'] = $song_id;

									$query = "SELECT data
										  FROM Video, Song
										  WHERE Song.song_id = :id
										  AND Song.video_id = Video.video_id";

									$ps = $con->prepare ( $query );

									$ps->bindParam ( ':id', $song_id );

									// We're going to construct an HTML table.
									print "<table>\n";

									// Query the database.
									$ps->execute ();
									$data = $ps->fetchAll ( PDO::FETCH_ASSOC );

									// Construct the HTML table row by row.
									// Start with a header row.
									$doHeader = true;

									// The header row before the first data row.
									if ($doHeader) {

										foreach ( $data as $row ) {

											$url = str_replace ( "https://www.youtube.com/watch?v=", "", $row ['data'] );

											echo "<iframe width='640' height='480'  frameborder='0'
										allowfullscreen src='http://www.youtube.com/embed/" . $url . "?autoplay=1'></iframe>";
										}

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

										// Get history id matching the user
										$query = "SELECT History.history_id
											  FROM History
											  WHERE History.user_id = :user_id";

										$ps = $con->prepare ( $query );
										$ps->bindParam ( ':user_id', $user_id );

										$ps->execute ();
										$data = $ps->fetchAll ( PDO::FETCH_ASSOC );

										foreach ( $data as $row ) {
											$history_id = $row ['history_id'];
										}

										// Auto add into history using history id and song id
										$query = "INSERT INTO HistorySong(history_id, song_id, played_at)
    								VALUES(:history_id, :song_id, Now())";
										$ps = $con->prepare ( $query );
										$ps->bindParam ( ':history_id', $history_id );
										$ps->bindParam ( ':song_id', $song_id );

										$ps->execute ();
										echo "<br/></br></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
										echo "&nbsp;&nbsp;<a href='addsong.php?song_id= $song_id'>Add to Jukebox</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
										echo "<a href='jukebox.php'>Your Jukebox</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
										echo "<a href='search.html'>Search Another</a>&nbsp;&nbsp;</br></br>";

									} else {
										echo "<p> Error</p>";
									}
								} else {
									echo "<p> Invalid Song!!!</p>";
								}
								?>


<div class="form-group">
		<form action="review.php" method="post">
		<fieldset>
		<legend class="label">Rate this Song <span class="glyphicon glyphicon-star"></span></legend>
		<label class="col-sm-2 label-sm">Rate</label>
		<input type="radio" name="score"  value="1" /> 1
		<input type="radio" name="score" value="2" /> 2
		<input type="radio" name="score"  value="3" /> 3
		<input type="radio" name="score"  value="4" /> 4
		<input type="radio" name="score"  value="5" checked /> 5</br></br>
		<label class="col-sm-2 label-sm">Description:</label>
		<textarea rows="5" cols="50" name="description"
			placeholder="Details of your review!" autofocus></textarea></br>



	</fieldset>
	<div align="center">
	<input class="btn btn-small btn-primary" type="submit" value="Submit">&nbsp;&nbsp;&nbsp;
	<input class="btn btn-small " onclick="clearForm();" type="reset" value="Reset">
</div>
		</form>
	</div>
</body>
</html>
