<?php

  include_once("database-connect.php");

  if(isset($_SESSION['email-address'])){

    $email = $_SESSION['email-address'];
    
    $mysql = "SELECT * FROM user WHERE email ='$email'";

    $result = mysqli_query($conn, $mysql);
    $feedback = mysqli_fetch_assoc($result);
    
    $name = $feedback['name'];
    $prof = $feedback['occupation'];
    if(!empty($feedback['pic'])){
      $pic = $feedback['pic'];  
    }else{
      $pic = 'default.jpg';
    }

  }  
?>
