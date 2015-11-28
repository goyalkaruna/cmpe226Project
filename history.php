<!DOCTYPE html>
<html lang="en-US">
<head>
<meta charset="UTF-8">

<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="MusicApp.css" rel="stylesheet">
<title>History</title>
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
				<I>User History</I>
			</p>
		</h3>

		<p>
        <?php
								include ('include/dbConnect.php');
								
								$query = "SELECT User.name, Song.title, HistorySong.played_at 
									FROM History, HistorySong, Song, User 
									WHERE History.history_id = HistorySong.history_id 
									AND HistorySong.song_id = Song.song_id AND History.user_id = User.user_id";
								
								// We're going to construct an HTML table.
								print "<table>\n";
								
								// Query the database.
								$data = $con->query ( $query );
								$data->setFetchMode ( PDO::FETCH_ASSOC );
								
								// Construct the HTML table row by row.
								// Start with a header row.
								$doHeader = true;
								// The header row before the first data row.
								if ($doHeader) {
									
									echo "<table>";
									echo "<tr><th>UserID</th><th>Song title</th><th>Time Played</th></tr>";
									foreach ( $data as $row ) {
										echo "<tr>";
										echo "<td>" . $row ['name'] . "</td>";
										echo "<td>" . $row ['name'] . "</td>";
										echo "<td>" . $row ['title'] . "</td>";
										echo "<td>" . $row ['played_at'] . "</td>";
										
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
