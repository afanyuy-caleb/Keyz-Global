<?php
  session_start();

  include_once('../db_ops/database-connect.php');

  if($_POST){

    $alert_msg = "";
    $email = $_POST['email'];
    $password = $_POST['password'];
  
    $mysql = "SELECT * FROM user WHERE email = ?";

    $stmt = $conn->prepare($mysql);
    $stmt->bind_param("s", $email);
    $stmt->execute();

    $result = $stmt->get_result();

    $feedback = $result->fetch_assoc();

    if($feedback){    
      if(password_verify($password, $feedback['pass_hash'])){
        $_SESSION['email-address'] = $email;
        $_SESSION['values'] = $feedback;

        if($feedback['role_id'] == 1){
          header("Location:../dashboard.php");
        }else{
          header("Location:../homepage.php");
        }
      }
      else{
        $error_msg = "Incorrect Email or password";
      }
    }
    $error_msg = "Incorrect Email or password";

  }
?>
