<?php 
session_start();
unset($_SESSION['sess_userrole']);
session_destroy();
header("location:userLogin.php");
?>
