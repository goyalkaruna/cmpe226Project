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
				<I>Remove Song</I>
			</p>
		</h3>



		<p>
        <?php
								
								if (isset ( $_GET ["user_album_song_id"] )) {
									$user_album_song_id = $_GET ['user_album_song_id'];
									include ('include/dbConnect.php');
									
									// Construct the HTML table row by row.
									// Start with a header row.
									$doHeader = true;
									
									// The header row before the first data row.
									if ($doHeader) {
										
										// Delete From UserAlbumSong
										
										$sql = "DELETE FROM UserAlbumSong
												WHERE user_album_song_id = :uasi";
										
										$ps = $con->prepare ( $sql );
										$ps->bindParam ( ':uasi', $user_album_song_id );
										
										$ps->execute ();
										
										echo "Your song has been removed from your jukebox.";
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