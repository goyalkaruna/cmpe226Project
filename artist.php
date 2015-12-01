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
	<li><a href="history.php">My History</a></li>
      </ul>

      <ul class="nav navbar-nav navbar-left active">
        <li class="active"><a href="upload.php">Upload an Album <span class="glyphicon glyphicon-upload" aria-hidden="true"></span></a></li>

      </ul>
      <ul class="nav navbar-nav navbar-left active">
        <li class="active"><a href="album.php">My Albums <span class="glyphicon glyphicon-folder" aria-hidden="true"></span></a></li>

      </ul>
<ul class="nav navbar-nav navbar-right">
  <li class="active"><a href="search.html"   role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a></li>
  <li><a href="logout.php">logout <span class="glyphicon glyphicon-user" aria-hidden="true"></a></li>

</ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
  <div class="container">
    <h3><p class="lead"><I>Choose your Artist !!!</I> </p></h3>

    <p>
        <?php
          include ('include/dbConnect.php');


                    $query = "SELECT * FROM Artist a, Album b, ArtistAlbum c where a.artist_id = c.artist_id and b.album_id = c.album_id";
                    // Query the database.
       //echo "<td><a href="songs.php?id=$row['artist_id']">Songs</a></td>";
                    $data = $con->query($query);
                    $data->setFetchMode(PDO::FETCH_ASSOC);

                    echo "<table>";
                    echo "<tr><th>Artist Name</th><th>Album Name</th><th>Released On</th><th>Details</th></tr>";
                    foreach( $data as $row) {
                        echo "<tr>";
                        echo "<td>".$row['artist_id']."</td>";
                        echo "<td>".$row['name']."</td>";
			echo "<td>".$row['album_title']."</td>";
			echo "<td>".$row['released_date']."</td>";
			echo "<td><a href='song.php?artist_id=".$row['artist_id']."'>songs</a></td>";

                        echo "</tr>\n";
                    }

                    echo "</table>";

    ?>

</p>
  </div>
</body>
</html>
