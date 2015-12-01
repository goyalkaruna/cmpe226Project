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
<title>IJK(India Korea Japan)</title>

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
      <a class="navbar-brand"  href="home.php">IJK Music App</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse">
      <ul class="nav navbar-nav">
        <li class="username"><a class="active" href="home.php"><B>Hi <?php  echo $_SESSION['sess_name']; ?> </B></a></li>
      </ul>

      <ul class="nav navbar-nav navbar-left active">
        <li class="active"><a href="upload.php">Upload an Album <span class="glyphicon glyphicon-upload" aria-hidden="true"></span></a></li>
      </ul>
      <ul class="nav navbar-nav navbar-left active">
        <li class="active"><a href="album.php">My Albums <span class="glyphicon glyphicon-folder" aria-hidden="true"></span></a></li>
	      <li class="active"><a href="history.php">My History</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li class="active"><a href="search.html"   role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a></li>
        <li><a href="logout.php">logout <span class="glyphicon glyphicon-user" aria-hidden="true"></a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<div class="container">


  <div class="row">
    <div class="col-lg-4 col-sm-6 col-xs-12">
        <a href="top20.php">
             <img id="choices"  src="images/top20.JPG" class="thumbnail img-responsive">
             <p><B> Block Busters</B></p>
        </a>
    </div>
     <div class="col-lg-4 col-sm-6 col-xs-12">
        <a href="genre.php">
             <img id="choices" src="images/fast.jpg" class="thumbnail img-responsive">
             <p><B> Diverse Genre</B></p>
        </a>
    </div>
     <div class="col-lg-4 col-sm-6 col-xs-12">
        <a href="artist.php">
             <img id="choices" src="images/artist.jpg" class="thumbnail img-responsive">
             <p><B> Talented Artists</B></p>
        </a>
    </div>
     <div class="col-lg-4 col-sm-6 col-xs-12">
        <a href="album.php">
             <img id="choices" src="images/music1.jpg" class="thumbnail img-responsive">
             <p><B> Numerous Albums</B></p>
        </a>
    </div>
     <div class="col-lg-4 col-sm-6 col-xs-12">
        <a href="history.php">
             <img id="choices" src="images/history.jpg" class="thumbnail img-responsive">
             <p><B> My History</B></p>
        </a>
    </div>
     <div class="col-lg-4 col-sm-6 col-xs-12">
        <a href="jukebox.php">
             <img id="choices" src="images/myjukebox.jpg" class="thumbnail img-responsive">
         <p><B> Jukebox</B></p>
        </a>
    </div>

  </div>


</div>

</body>
</html>
