<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>IJK(India Korea Japan</title>

<script type="text/javascript" src="bootstrap.js"></script>
<script type="text/javascript" src="bootstrap.min.js"></script>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="MusicApp.css" rel="stylesheet">
</head>
<body align="center">
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
      <a class="navbar-brand" href="#">IJK</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Music App <span class="sr-only">(current)</span></a></li>
        <li><a href="#">Hi User</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">My Account</a></li>
            <li><a href="#">My History</a></li>
            <li><a href="#">My Jukebox</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
      </ul>
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">About</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">My Account</a></li>
            <li><a href="#">My History</a></li>
            <li><a href="#">My Jukebox</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<?php


include ('include/dbConnect.php');


             $title  = filter_input(INPUT_POST, "title");
             $duration = filter_input(INPUT_POST, "duration");
              $genre  = filter_input(INPUT_POST, "genre");
              $audio_url = filter_input(INPUT_POST, "audio_url");
              $video_url = filter_input(INPUT_POST, "video_url");
              $language = filter_input(INPUT_POST, "language");

              $queryGenre ="SELECT * FROM Genre where type = '$genre'";
              $result = $con->query($queryGenre);
              $row = $result->fetch(PDO::FETCH_ASSOC);
              $genre_id = $row['genre_id'];
              print 'genre id is'.$genre_id;

              //Checking Audio URL submitted by User
              if($audio_url){
                $queryAudio ="SELECT * FROM audio where data = '$audio_url'";
                $result = $con->query($queryAudio);
                $row = $result->fetch(PDO::FETCH_ASSOC);
                if($row){
                  $audio_id = $row['audio_id'];
                  print '\naudio id is '.$audio_id;
                }else{
              $sql_audio = "INSERT INTO audio(data) VALUES('$audio_url')";
              $con->exec($sql_audio);
              $audio_id = $con->lastInsertId();
              echo "\nNew record created successfully. Last inserted ID is: " . $audio_id;
               }
             }else{
               $audio_id = 0;
             }

              // Check on Video URL subitted by user
              if($video_url){
              $queryVideo ="SELECT * FROM video where data = '$video_url'";
              $result = $con->query($queryVideo);
              $row = $result->fetch(PDO::FETCH_ASSOC);
              if($row){
                $video_id = $row['video_id'];
                print '\n video id is '.$video_id;
              }else{
              $sql_video = "INSERT INTO video(data) VALUES('$video_url')";
              $con->exec($sql_video);
              $video_id= $con->lastInsertId();
              echo "<p> New record created successfully. Last inserted ID is:<p></br> " . $video_id;
              }
            }else{
              $video_id =0;
            }
                if($title && $duration && $genre && $language && $video_id){
              $sql_video = "INSERT INTO song(title, duration, genre_id, video_id, audio_id, language) VALUES('$title', '$duration','$genre_id','$video_id','audio_id', '$language')";
              $con->exec($sql_video);
              echo "<p> New record created in the song table successfully. <p></br> " ;
              header("Location: /cmpe226/newUpload.html");
                }

      ?>
   </body>
</html>
