<?php
$con = new PDO("mysql:host=localhost;dbname=jukebox",
                "root", "");
 $con->setAttribute(PDO::ATTR_ERRMODE,
                    PDO::ERRMODE_EXCEPTION);

if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

?>
