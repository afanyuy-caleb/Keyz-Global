<?php
  
  session_start(); 

  $email = $_SESSION['e-mail'];

  include_once('db_ops/database-connect.php');

  $passerr = $passwd = $real_pass = $password_hash = "";
  if($_POST){
   if(isset($_POST['home'])){
    if(! isset($_SESSION['values']['email'])){
      session_destroy(); 
      header("Location:NewForms/index.php");
      exit();
    }
    session_destroy(); 
    header("Location:homepage.php");
    exit();
   }
   else{
    //verify password 
    if(!empty($_POST['passwd'])){
      if(strlen($_POST['passwd']) < 5){
        $passerr= 'Password must be atleast 5 characters';
      }
      elseif(!preg_match('/[a-z]/i', $_POST['passwd'])){
        $passerr = 'Password must contain a character';
      }
      elseif(!preg_match("/[0-9]/", $_POST['passwd'])){
        $passerr = 'Password must contain atleast a digit';
      }
      elseif($_POST['passwd'] != $_POST['passwd-conf']){
        $passerr = 'Passwords must match';
      }
      else{
        $password_hash = password_hash($_POST['passwd'],PASSWORD_BCRYPT);
        $real_pass = $_POST['passwd'];
      }
    }
    else{
      $passerr = 'New password cannot be empty';
    }

    if($passerr == ""){
      //insert into db
      $sql = "UPDATE user set pass_hash = '$password_hash' WHERE email = '$email' ";

      $real = "UPDATE Real_pass set password = '$real_pass' WHERE email = '$email'";

      if(! $conn->query($sql)){
        die('Update password failed'. $conn->error);
      }
      if(! $conn->query($real)){
        die('Real password update failed'. $conn->error);
      }
      $passerr = " Password Changed Successfully";
    }
  }  
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <link rel="icon" type="image/png" href="images/Myimage/K.png">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Change Password</title>

  <link rel="stylesheet" href="styles/font.css">
  <link rel="stylesheet" href="styles/changepass.css">
</head>
<body>
<div class="container">
    <p>
      <?php echo $passerr;?>
    </p>
    <h2>Change Password</h2>
    <form action="" method="POST">
      <input type="password" name="passwd" placeholder="New password">
      <input type="password" name="passwd-conf" placeholder="Confirm new password">
      
      <div class="submit-section">
        <input type="submit" value="Back" name="home">
        <input type="submit" name="verify" value="change">
      </div>
      
    </form>
  </div>
  
</body>
</html>