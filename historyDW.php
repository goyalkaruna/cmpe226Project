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
        <li class="active"><a href="upload.php">Upload a Song <span class="glyphicon glyphicon-upload" aria-hidden="true"></span></a></li>

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
		<h3>
			<p class="lead">
				<I>User History</I>
			</p>
		</h3>

		<p>
        <?php
								include ('include/dbConnect.php');

								$query = "select CD.year, CD.quarter, CD.month, GD.type, AD.name, sum(SLF.number_of_listen) as sum from
  CalendarDimension CD, GenreDimension GD, ArtistDimension AD, UserDimension UD, SongListenFact SLF where
  CD.calendar_key = SLF.calendar_key and
  GD.genre_key = SLF.genre_key and
  AD.artist_key = SLF.artist_key and
  UD.name = 'fred' and
  UD.user_key = SLF.user_key group by
  UD.name, CD.year, CD.month, GD.type, AD.name";

								$ps = $con->prepare ( $query );


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

									echo "<table>";
									echo "<tr><th>Year</th><th>Quarter</th><th>Month</th><th>Genre</th><th>Artist</th><th>Number</th></tr>";
									foreach ( $data as $row ) {
										echo "<tr>";
										echo "<td></td>";
										echo "<td>" . $row ['year'] . "</td>";
                    echo "<td>" . $row ['quarter'] . "</td>";
										echo "<td>" . $row ['month'] . "</td>";
                    echo "<td>" . $row ['type'] . "</td>";
                    echo "<td>" . $row ['name'] . "</td>";
                    echo "<td>" . $row ['sum'] . "</td>";


										echo "</tr>\n";
									}

									echo "</table>";
								} else {
									echo "<p> Error</p>";
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
