<?php

  include_once("database-connect.php");

  if(isset($_SESSION['email-address'])){

    $email = $_SESSION['values']['email'];
    $feedback = $_SESSION['values'];
    
    $name = $feedback['name'];
    $prof = $feedback['occupation'];
    if(!empty($feedback['pic'])){
      $pic = $feedback['pic'];  
    }else{
      $pic = 'default.jpg';
    }

  }  
?>
