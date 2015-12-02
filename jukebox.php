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
        <li class="active"><a href="album.php">My Albums <span class="glyphicon glyphicon-folder" aria-hidden="true"></span></a></li>
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
		<h3>
			<p class="lead">
				<I>User Jukebox</I>
			</p>
		</h3>

		<p>
        <?php
								include ('include/dbConnect.php');

								$query = "SELECT User.user_id
											  FROM User
											  WHERE User.name = :name AND User.email = :email";

								$ps = $con->prepare ( $query );
								$ps->bindParam ( ':name', $_SESSION ['sess_name'] );
								$ps->bindParam ( ':email', $_SESSION ['sess_email'] );

								$ps->execute ();
								$data = $ps->fetchAll ( PDO::FETCH_ASSOC );

								foreach ( $data as $row ) {
									$user_id = $row['user_id'];
								}



								$query = "SELECT DISTINCT  Song.song_id, UserAlbum.title, Song.song_title as stitle, UserAlbumSong.user_album_song_id as usa
      							FROM Jukebox, JukeBoxUserAlbum , UserAlbum, UserAlbumSong, User, Song
      							WHERE Jukebox.user_id = :id AND Jukebox.jukebox_id = JukeBoxUserAlbum.jukebox_id
								AND JukeBoxUserAlbum.user_album_id = UserAlbum.user_album_id AND UserAlbum.user_album_id = UserAlbumSong.user_album_id
								AND UserAlbumSong.song_id = Song.song_id
                    				ORDER BY 1 DESC";

								// We're going to construct an HTML table.
								print "<table>\n";

								$ps = $con->prepare ( $query );
								$ps->bindParam ( ':id', $user_id );

								$ps->execute ();
								$data = $ps->fetchAll ( PDO::FETCH_ASSOC );

								// Construct the HTML table row by row.
								// Start with a header row.
								$doHeader = true;

								// The header row before the first data row.
								if ($doHeader) {

									echo "<table>";
									echo "<tr><th>User Album Name</th><th>Song Name</th><th>User Album Song ID</th></tr>";
									foreach ( $data as $row ) {
										echo "<tr>";
										echo "<td>" . $row ['song_id'] . "</td>";
										echo "<td>" . $row ['song_title'] . "</td>";
										echo "<td>" . $row ['stitle'] . "</td>";
										echo "<td><a href='player.php?song_id=".$row['song_id']."'>Play</a></td>";
										echo "<td><a href='removesong.php?user_album_song_id=".$row['usa']."'>Remove</a></td>";
										echo "</tr>\n";
									}

									echo "</table>";
								} else {
									echo "<p> Error</p>";
								}

								?>
    </p>
	</div>
</body>
</html>
