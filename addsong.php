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
					<li class="active"><a href="myalbum.php">My Albums <span
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




		<p align = "center">
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

										// Get user_album_id

										$query = "SELECT user_album_id
											  FROM UserAlbum
											  WHERE UserAlbum.user_id = :id";

										$ps = $con->prepare ( $query );
										$ps->bindParam ( ':id', $user_id );

										$ps->execute ();
										$data = $ps->fetchAll ( PDO::FETCH_ASSOC );

										foreach ( $data as $row ) {
											$user_album_id = $row ['user_album_id'];
										}

										// Insert into UserAlbumSong

										$sql = "INSERT INTO UserAlbumSong(user_album_id, song_id)
												VALUES (:useralbum, :song)";

										$ps = $con->prepare ( $sql );
										$ps->bindParam ( ':useralbum', $user_album_id );
										$ps->bindParam ( ':song', $song_id );

										$ps->execute ();

										echo "<label><Strong>Success!!! Song has been added to your jukebox.</strong></label>";
									} else {
										echo "<p> Error</p>";
									}
								} else {
									echo "<p> Invalid Song!!!</p>";
								}
								?>
								<br/>
								<br/>
								<div align="center">

								<a href="upload.php" class="btn btn-success"><span class="glyphicon glyphicon-upload"></span><b> Upload a song!</b></a>
							&nbsp;&nbsp;&nbsp;
							<a href="search.html" class="btn btn-success"><span class="glyphicon glyphicon-search"></span><b> Search a song!</b></a>
							&nbsp;&nbsp;&nbsp;
							<a href="jukebox.php" class="btn btn-success"><span class="glyphicon glyphicon-folder-close"></span><b> My Jukebox</b></a>

								</div><br>
    </p>
	</div>
</body>
</html>
