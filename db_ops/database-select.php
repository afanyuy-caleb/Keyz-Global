<?php

  include_once("database-connect.php");

  if(isset($_SESSION['email-address'])){

    $email = $_SESSION['email-address'];
    
    $select = "SELECT * from user where email = '$email'";
    $feedback = $conn->query($select);
    $feedback = $feedback->fetch_assoc();
    
    $name = $feedback['name'];
    $prof = $feedback['occupation'];
    if(!empty($feedback['pic'])){
      $pic = $feedback['pic'];  
    }else{
      $pic = 'default.jpg';
    }

  }  
?>
