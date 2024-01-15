<?php

  include_once('db_ops/database-connect.php');
  $allowed_ext = ['png', 'jpg', 'jpeg', 'wpeg','gif', 'webp', 'avif'];

  if(!empty($_SESSION['email-address'])){
    $email = $_SESSION['email-address'];
  }

  if(isset($_POST['upload'])){
    if(!empty($_FILES['prof']['name'])){

      $file_name = time() .'_'.$_FILES['prof']['name'];
      $file_size = $_FILES['prof']['size'];
      $file_tmp = $_FILES['prof']['tmp_name'];

      $target_dir = "images/profile-pics/$file_name";

      /* file extension validation */
      $file_ext = explode('.', $_FILES['prof']['name']);
      $file_ext = strtolower(end($file_ext));

      if(in_array($file_ext, $allowed_ext)){
        if($file_size <= 1500000){

          move_uploaded_file($file_tmp, $target_dir);
          $temporal_pic = $file_name;
          
          //insert the new pic into the db
          $mys = "UPDATE user set pic='$temporal_pic' WHERE email = '$email';";

          if(! mysqli_query($conn, $mys)){
            die('Connection error... '.$conn->error);
          }
        }else{
          $message = '<p style="color: red;" >'.'File too large'.'</p>';
        }
      }else{
        $message = '<p style="color: red;" >'.'Invalid file type'.'</p>';
      }
    }else{
      $message = '<p style="color: red;" >'.'No New file uploaded!!'.'</p>';
    }
  }

?>