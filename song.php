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
<h3><p class="lead"><I>Songs !!!</I> </p></h3>

    <p>
        <?php
           include ('include/dbConnect.php');
		         if(isset($_GET["artist_id"])){
		             $artist_id = $_GET['artist_id'];

                    $query = "SELECT * FROM Song s, ArtistSong sa, Artist a WHERE a.artist_id =  '$artist_id' and a.artist_id = sa.artist_id and sa.song_id = s.song_id";


                // We're going to construct an HTML table.
                print "<table>\n";

                // Query the database.
                $data = $con->query($query);
                $data->setFetchMode(PDO::FETCH_ASSOC);

                // Construct the HTML table row by row.
                // Start with a header row.
                $doHeader = true;
                foreach ($data as $row) {

                    // The header row before the first data row.
                    if ($doHeader) {

                      echo "<table>";
                      echo "<tr><th>Artist Name</th><th>Song Title</th><th>Duration</th><th>language</th><th>Listen</th></tr>";
                      foreach( $data as $row) {
                          echo "<tr>";
                          echo "<td>".$row['artist_id']."</td>";
                          echo "<td>".$row['name']."</td>";
                          echo "<td>".$row['song_title']."</td>";
                          echo "<td>".$row['duration']."</td>";
                          echo "<td>".$row['language']."</td>";

                          echo "<td><a href='player.php?song_id=".$row['song_id']."'>Play</a></td>";
                          echo "</tr>\n";
                      }

                      echo "</table>";
                    }

            }
    }else
        if(isset($_GET["album_id"])){
		        $album_id = $_GET['album_id'];

                    $query = "SELECT * FROM Song s, AlbumSong sa, Album a, Publisher p, Image i WHERE a.album_id = '$album_id' and a.album_id = sa.album_id and sa.song_id = s.song_id and p.publisher_id = a.publisher_id and a.cover_image_id = i.image_id";

                // We're going to construct an HTML table.
                print "<table>\n";

                // Query the database.
                $data = $con->query($query);
                $data->setFetchMode(PDO::FETCH_ASSOC);
 		             if ($data){

   		          //	echo (string)$data[0]['album_id'];
                // Construct the HTML table row by row.
                // Start with a header row.
                $doHeader = true;

                foreach ($data as $row) {

                    // The header row before the first data row.
                    if ($doHeader) {

                      echo "<table>";
                      echo "<tr><th>Image</th>
                      		<th>Album Name</th>
                  				<th>Song Title</th>
                  				<th>Duration</th>
                  				<th>language</th>
                  				<th>Published by</th>
                  				<th>Listen</th></tr>" ;


                      //	foreach( $row as $data) {


                          echo "<td>".$row['album_id']."</td>";
                          echo "<td><img src =".$row['data']."></td>";
                          echo "<td>".$row['album_title']."</td>";
                          echo "<td>".$row['song_title']."</td>";
                          echo "<td>".$row['duration']."</td>";
                          echo "<td>".$row['language']."</td>";
			                    echo "<td>".$row['name']."</td>";
                          echo "<td><a href='player.php?song_id=".$row['song_id']."'>Play</a></td>";
                          echo "</tr>\n";
              //        		}

                      echo "</table>";
			                 }
		              else{
    			             echo "doHeader is false";
			                 }
                     }
                   }else  echo "<p> No data present for this combination!!!</p>";
                 }else{
                   echo "<p> Album or Artist Id empty!!!</p>";
                 }



        ?>
    </p>
  </div>
</body>
</html>
