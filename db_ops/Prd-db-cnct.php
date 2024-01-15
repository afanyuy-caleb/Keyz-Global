<?php
  $pdconn = new mysqli("localhost", "Keyz_dev", "cream", "products");
  if (mysqli_connect_error()){
    die('Connection failed '. mysqli_connect_error());
  }
?>