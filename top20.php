<!DOCTYPE html>
<html lang="en-US">
<head>
<meta charset="UTF-8">

<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="MusicApp.css" rel="stylesheet">
<title>Top 20</title>
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
	<div class="container">
		<h3>
			<p class="lead">
				<I>Top 20 Songs</I>
			</p>
		</h3>

		<p>
        <?php
								include ('include/dbConnect.php');
								
								$query = "SELECT Song.song_id, Song.title, Artist.name, Review.score, Review.description  FROM Song, Album, Artist, Review, AlbumSong, ArtistAlbum
							WHERE Review.score = 5 AND Review.song_id =  Song.song_id AND Song.song_id = AlbumSong.song_id AND ArtistAlbum.album_id = AlbumSong.album_id AND 
							Album.album_id = ArtistAlbum.album_id
							GROUP BY Song.title
							ORDER BY 1 DESC LIMIT 20";
								
								// We're going to construct an HTML table.
								print "<table>\n";
								
								// Query the database.
								$data = $con->query ( $query );
								$data->setFetchMode ( PDO::FETCH_ASSOC );
								
								// Construct the HTML table row by row.
								// Start with a header row.
								$doHeader = true;
								foreach ( $data as $row ) {
									
									// The header row before the first data row.
									if ($doHeader) {
										
										echo "<table>";
										echo "<tr><th>Song Title</th><th>Artist Name</th><th>Review Score</th><th>Review Description</th></tr>";
										foreach ( $data as $row ) {
											echo "<tr>";
											echo "<td>" . $row ['song_id'] . "</td>";
											echo "<td>" . $row ['title'] . "</td>";
											echo "<td>" . $row ['name'] . "</td>";
											echo "<td>" . $row ['score'] . "</td>";
											echo "<td>" . $row ['description'] . "</td>";
											echo "</tr>\n";
										}
										
										echo "</table>";
									} else {
										echo "<p> Error</p>";
									}
								}
								
								?>
    </p>
	</div>
</body>
</html>