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
<form action="uploadSong.php"
       method= "post">
<div class="container">

  <h3><p class="lead"><I>Upload a song !!!</I> </p></h3>

                                <div class="progress progress-xs m-t-md">
                                  <div class="progress-bar bg-success" style="width: 100%;"></div>
                                </div>

                                  <div class="form-group">
                                    <label class="col-sm-2 label-sm"><Strong>Title of song<span id="required">*</span></Strong></label>
                                    <input type="text" name="title" placeholder="Its My Life"><br /> <br />
                                    <label class="col-sm-2 label-sm"><Strong>Browse lyrics file </Strong></label>
                                     <input type="file" name="file"><br />
                                     <label class="col-sm-2 label-sm"><Strong>Tag</Strong></label>
                                     <input type="text" name="tag" placeholder="love"><br /> <br />
                                     <label class="col-sm-2 label-sm"><Strong>Duration</Strong></label>
                                     <input type="text" name="duration" placeholder="300"><br /> <br />
                                     <div>
                                     <label class="col-sm-2 label-sm"><Strong>Genre <span id="required">*</span></Strong></label>
                                     <select name="genre">
                                      <option value="Pop">Pop</option>
                                      <option value="Classic">Classic</option>
                                      <option value="Jazz">Jazz</option>
                                      <option value="Rock">Rock</option>
                                      <option value="R&B">R&B</option>
                                      <option value="Other">Other</option>
                                    </select> </div></br>
                                    <div><label class="col-sm-2 label-sm"><Strong>Language <span id="required">*</span></Strong></label>
                                    <select name ="language">
                                     <option value="English">English</option>
                                     <option value="Hindi">Hindi</option>
                                     <option value="Japanese">Japanese</option>
                                     <option value="Korean">Korean</option>
                                   </select></div></br>


                                   <div>
                                   <label class="col-sm-2 label-sm"><Strong>Video url<span id="required">*</span> </Strong></label>
                                   <input type="text" name="video_url" size="60" placeholder="http://........"><br /> <br /></div>
                                    <div class="col-sm-10">
                                  <p>
                                      <input class="btn btn-small btn-primary" type="submit" value="Upload">&nbsp;&nbsp;&nbsp;
                                      <input class="btn btn-small " onclick="clearForm();" type="reset" value="Reset">
                                        </p>
                                    </div>




</div>

<div> <a href="#" class="btn btn-success"><span class="glyphicon glyphicon-thumbs-up"></span> App is amazing!</a></div><br>
</div>
</form>
</body>
</html>
