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
                                    <label class="col-sm-2 label-sm"><Strong>Browse your lyrics</Strong></label>
                                     <input type="file" name="file"><br />



<Jukebox>

<Lyrics>
<lyrics_id>1000</lyrics_id>
<text>When sky blue gets dark enough To see the colors of the city lights A trail of ruby red and diamond white Hits her like a sunrise She comes and goes and comes and goes Like no one can Tonight she''s out to lose herself And find a high on Peachtree Street From mixed drinks to techno beats it''s always Heavy into everything She comes and goes and comes and goes Like no one can She comes and goes and no one knows She''s slipping through my hands She''s always buzzing just like Neon, neon Neon, neon Who knows how long, how long, how long She can go before she burns away I can''t be her angel now You know it''s not my place to hold her down And it''s hard for me to take a stand When I would take her anyway I can She comes and goes and comes and goes Like no one can She comes and goes and no one knows She''s slipping through my hands She''s always buzzing just like Neon, neon Neon, neon Who knows how long, how long, how long She can go before she burns away</text>
<tag_id>1000</tag_id>
</Lyrics>

<Lyrics>
<lyrics_id>1001</lyrics_id>
<text>Take all of your wasted honor Every little past frustration Take all of your so-called problems, Better put ''em in quotations Say what you need to say [8x] Walking like a one man army Fighting with the shadows in your head Living out the same old moment Knowing you''d be better off instead, If you could only . . .  Say what you need to say [8x] Have no fear for giving in Have no fear for giving over You''d better know that in the end It''s better to say too much Than never to say what you need to say again Even if your hands are shaking And your faith is broken Even as the eyes are closing Do it with a heart wide open (a wide heart) Say what you need to say [24x]</text>
<tag_id>1001</tag_id>
</Lyrics>


<Lyrics>
<lyrics_id>1002</lyrics_id>
<text>There''s only two types of people in the world The ones that entertain, and the ones that observe Well baby I''m a put-on-a-show kinda girl Don''t like the backseat, gotta be first (oh, oh) I''m like the ringleader I call the shots (call the shots) I''m like a firecracker I make it hot When I put on a show [Bridge:] I feel the adrenaline moving through my veins (hah, hah, hah) Spotlight on me and I''m ready to break (hah, hah, hah) I''m like a performer, the dancefloor is my stage (hah, hah, hah) Better be ready, hope that ya feel the same (hah, hah, hah) [Chorus:] All the eyes on me in the center of the ring Just like a circus (ah, ah, ahaha-hah) When I crack that whip, everybody gonna trip Just like a circus (ah, ah, ahaha-hah) Don''t stand there watching me, follow me Show me what you can do Everybody let go, we can make a dancefloor Just like a circus (ah, ah, ahaha-hah, ha, ha, ha, ha, ho, ho, ho) [VERSE 2] There''s only two types of guys out there, Ones that can hang with me, and ones that are scared So baby I hope that you came prepared I run a tight ship, so beware I''m like a ring leader, I call the shots (call the shots) I''m like a fire cracker, I make it hot When I put on a show.</text>
<tag_id>1002</tag_id>
</Lyrics>

<Lyrics>
<lyrics_id>1003</lyrics_id>
<text>Superstar Where you from, hows it going? I know you Gotta clue, what you''re doing? You can play brand new to all the other chicks out here But I know what you are, what you are, baby Look at you Gettin more than just re-up Baby, you Got all the puppets with their strings up Faking like a good one, but I call ''em like I see ''em I know what you are, what you are, baby Womanizer, Woman, Womanizer You''re a Womanizer, oh Womanizer oh You''re a Womanizer, baby You you you are, You you you are Womanizer, Womanizer, Womanizer (Womanizer) Boy, don''t try to front I know just what you are Boy, don''t try to front I know just what you are You got me goin'' You''re oh so charmin'' But I can do it Womanizer Boy, don''t try to front I know just what you are Boy, don''t try to front I know just what you are You say I''m crazy I got your crazy You''re nothin'' but a Womanizer Daddy-O You got the swagger of champion Too bad for you You just cant find the right companion I guess when you have one too many, makes it hard It could be easy, who you are That''s just who you are, baby Lollipop Must mistake me, you''re a sucker To think that I Would be a victim not another Say it, play it how you wanna But no way I''m ever gonna fall for you, never you, baby Womanizer, Woman, Womanizer You''re a Womanizer, oh Womanizer oh You''re a Womanizer, baby You you you are, You you you are Womanizer, Womanizer, Womanizer (Womanizer) Boy, don''t try to front I know just what you are Boy, don''t try to front I know just what you are You got me goin'' You''re oh so charmin'' But I can do it You Womanizer Boy, don''t try to front I know just what you are Boy, don''t try to front I know just what you are You say
</text>
<tag_id>1003</tag_id>
</Lyrics>


<Lyrics>
<lyrics_id>1004</lyrics_id>
<text>I used to think</text>
<tag_id>1004</tag_id>
</Lyrics>

<Lyrics>
<lyrics_id>1005</lyrics_id>
<text>I stay out too late Got nothing in my brain That''s what people say, mmm-mmm That''s what people say, mmm-mmm I go on too many dates [chuckle] But I can''t make them stay At least that''s what people say, mmm-mmm That''s what people say, mmm-mmm But I keep cruising Can''t stop, won''t stop moving It''s like I got this music In my mind Saying, "It''s gonna be alright." ''Cause the players gonna play, play, play, play, play And the haters gonna hate, hate, hate, hate, hate Baby, I''m just gonna shake, shake, shake, shake, shake I shake it off, I shake it off Heart-breakers gonna break, break, break, break, break And the fakers gonna fake, fake, fake, fake, fake Baby, I''m just gonna shake, shake, shake, shake, shake I shake it off, I shake it off</text>
<tag_id>1005</tag_id>
</Lyrics>

<Lyrics>
<lyrics_id>1006</lyrics_id>
<text>He said, "Let''s get out of this town, Drive out of the city, away from the crowds." I thought heaven can''t help me now.</text>
<tag_id>1006</tag_id>
</Lyrics>


<Lyrics>
<lyrics_id>1007</lyrics_id>
<text>Right from the start You were a thief You stole my heart And I your willing victim I let you see the parts of me That weren''t all that pretty And with every touch you fixed them Now you''ve been talking in your sleep oh oh Things you never say to me oh oh Tell me that you''ve had enough Of our love, our love Just give me a reason Just a little bit''s enough Just a second we''re not broken just bent And we can learn to love again It''s in the stars It''s been written in the scars on our hearts We''re not broken just bent And we can learn to love again </text>
<tag_id>1007</tag_id>
</Lyrics>


<Lyrics>
<lyrics_id>1008</lyrics_id>
<text>I threw a wish in the well, Don''t ask me, I''ll never tell I looked to you as it fell, And now you''re in my way I''d trade my soul for a wish, Pennies and dimes for a kiss I wasn''t looking for this, But now you''re in my way Your stare was holdin'', Ripped jeans, skin was showin ''Hot night, wind was blowin'' Where do you think you''re going, baby?</text>
<tag_id>1008</tag_id>
</Lyrics>


<Lyrics>
<lyrics_id>1009</lyrics_id>
<text>Woke up late today, and I still feel the sting of the pain.  But I brushed my teeth anyway, got dressed through the mess and put a smile on my face.</text>
<tag_id>1009</tag_id>
</Lyrics>

<Lyrics>
<lyrics_id>1010</lyrics_id>
<text>Este amor llega asi esta manera No tiene la culpa Caballo le ven sabana Porque muy depreciado, Por eso no te perdon de llorar Este amor llega asi esta manera No tiene la culpa, Amor de comprementa Amor del mes pasado Bebele, bembele, bembele Bamboleo, bambolea Porque mi vida, yo la prefiero vivir asi Bamboleo, bambolea Porque mi vida, yo la prefiero vivir asi No tiene pardon de dios Tu eres mi vida, la fortuna del destino Pero el destino tendressa para dos Lo mismo yo que ayer Lo mismo soy yo No te encuentro a l''abandon Es imposible no te encuentro de verdad Por eso un dia no cuentro si de nada Lo mismo you que ayer Yo pienso en ti Bamboleo, bambolea Porque mi vida, yo la prefiero vivir asi Bamboleo, bambolea Porque mi vida, yo la prefiero vivir asi Bamboleo, bambolea Porque mi vida, yo la prefiero vivir asi Bamboleo,</text>
<tag_id>1010</tag_id>
</Lyrics>

<Lyrics>
<lyrics_id>1011</lyrics_id>
<text>Is this the real life? Is this just fantasy? Caught in a landslide, No escape from reality. </text>
<tag_id>1011</tag_id>
</Lyrics>


<Lyrics>
<lyrics_id>1012</lyrics_id>
<text>Buddy you''re a boy make a big noise Playin'' in the street gonna be a big man some day You got mud on yo'' face You big disgrace Kickin'' your can all over the place Singin'' We will we will rock you We will we will rock you Buddy you''re a young man hard man Shoutin'' in the street gonna take on the world some day You got blood on yo'' face You big disgrace Wavin'' your banner all over the place We will we will rock you (Sing it!) We will we will rock you Buddy you'</text>
<tag_id>1012</tag_id>
</Lyrics>

<Lyrics>
<lyrics_id>1013</lyrics_id>
<text>High dive into frozen waves where the past comes back to life Fight fear for the selfish pain, it was worth it every time Hold still right before we crash ''cause we both know how this ends A clock ticks ''til it breaks your glass and I drown in you again ''Cause you are the piece of me I wish I didn''t need Chasing relentlessly, still fight and I don''t know why If our love is tragedy, why are you my remedy?</text>
<tag_id>1013</tag_id>
</Lyrics>

<Lyrics>
<lyrics_id>1014</lyrics_id>
<text>I get up, and nothing gets me down.  You got it tough. I''ve seen the toughest all around.</text>
<tag_id>1014</tag_id>
</Lyrics>

</Jukebox>





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
                                      <input class="btn btn-small btn-primary" type="submit" value="Upload">
                                      <input class="btn btn-small " onclick="clearForm();" type="reset" value="Reset">
                                        </p>
                                    </div>




</div>

<div> <a href="#" class="btn btn-success"><span class="glyphicon glyphicon-thumbs-up"></span> App is amazing!</a></div><br>
</div>
</form>
</body>
</html>
