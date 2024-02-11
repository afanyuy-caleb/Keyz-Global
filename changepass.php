<!-- Change password -->
<?php
  session_start();
  include_once('db_ops/database-connect.php');

  // select all existing emails from the db
  $array = [];
  $sql = "SELECT email FROM user";
  $result = $conn->query($sql);
  $emails = $result->fetch_all();

  foreach($emails as $email){
    foreach($email as $em){
      $array[] = $em;
    }  
  }
  
  $eml = "";
  if($_POST){
    if(isset($_POST['home'])){
      if(empty($_SESSION['values']['email'])){
        header("Location: Newforms/index.php");
        exit();
      }
      else{
        header("Location:homepage.php");
        exit();
      }
      
    }
    else{
      if(empty($_POST['new-email'])){
        $eml = "Email field cannot be empty";
      }
      else{
        //verify if the entered password is found in the db
        //and then put in into a 
        if(in_array($_POST['new-email'], $array)){
          $_SESSION['e-mail'] = $_POST['new-email'];
          header("Location:pass.php");
          exit();
        }
        else{
          $eml = "Invalid email address";
        }
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
  <title>Change password</title>

  <link rel="stylesheet" href="styles/font.css">
  <link rel="stylesheet" href="styles/changepass.css">
</head>
<body>
  <div class="container">
    <p>
      <?php  echo $eml??NULL?>
    </p>
    <h2>Change Password</h2>
    <p>Enter your Email address for authentication</p>
    
    <form action="" method="POST">
      <input type="email" name="new-email" placeholder="xxxx@gmail.com">
      <p>A verification code will be sent to the above email address for you to confirm and then change your password.</p>
      <div class="submit-section">
        <input type="submit" value="Back" name="home">
        <input type="submit" name="verify" value="verify">
      </div>
      
    </form>
  </div>
  
</body>
</html>