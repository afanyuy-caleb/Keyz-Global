<?php

  $host="localhost";
  $user="Keyz_dev";
  $pass="cream";
  $db_name="Registration"; 

  $conn = new mysqli($host, $user, $pass);

  if(mysqli_connect_errno()){
    die("connection failed". mysqli_connect_error());
  } 

?>