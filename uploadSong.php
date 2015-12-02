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
<p align="center">
<?php





include ('include/dbConnect.php');


             $title  = filter_input(INPUT_POST, "title");
             $duration = filter_input(INPUT_POST, "duration");
              $genre  = filter_input(INPUT_POST, "genre");
                $user_sess_id =   $_SESSION ['sess_id'];
              $video_url = filter_input(INPUT_POST, "video_url");
              $language = filter_input(INPUT_POST, "language");

              $queryGenre ="SELECT * FROM Genre where type = '$genre'";
              $result = $con->query($queryGenre);
              $row = $result->fetch(PDO::FETCH_ASSOC);
              $genre_id = $row['genre_id'];
              //print 'genre id is'.$genre_id;
              

              // Check on Video URL subitted by user
              if($video_url){
              $queryVideo ="SELECT * FROM Video where data = '$video_url'";
              $result = $con->query($queryVideo);
              $row = $result->fetch(PDO::FETCH_ASSOC);
              if($row){
                $video_id = $row['video_id'];
              //  print '\n video id is '.$video_id;
              }else{
              $sql_video = "INSERT INTO Video(data) VALUES('$video_url')";
              $con->exec($sql_video);
              $video_id= $con->lastInsertId();
              //echo "<p> New record created successfully. Last inserted ID is:<p></br> " . $video_id;
              }
            }else{
              $video_id =0;
            }
                if($title && $duration && $genre && $language && $video_id){

               $sql_video = $con->prepare("INSERT INTO Song(song_title, duration, genre_id, video_id, language)
                VALUES('$title', '$duration','$genre_id','$video_id', '$language')");
                $sql_video->execute();
                $songid = $con->lastInsertId();

              $query = $con->prepare("INSERT into UserAlbum(title, user_id)   VALUES('$title', $user_sess_id)");
              $query->execute();
              $Aid = $con->lastInsertId();



              $query2 ="INSERT into UserAlbumSong(song_id, user_album_id) VALUES('$songid', '$Aid' )";


              $con->exec($query2);
              echo "<label><Strong> Success!!!!</Strong> <label></br> " ;
              $msg = "New record created in the song successfully. ";
            //  header("Location: /cmpe226/upload.php");

          }else{
            echo "<p>Error while uploading. Try again.</p></br>";
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
   </body>
</html>
