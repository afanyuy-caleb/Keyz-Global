<?php
  session_start();
  include_once('../db_ops/database-connect.php');

  $allowed_ext = ['png', 'jpg', 'jpeg', 'wpeg','gif', 'webp'];
  $namerr = $emailerr = $passerr = $passcnferr = $message = $term_error = "";

  if(isset($_POST['sign-up'])){

    /* username Validation */
    if(empty($_POST['username'])){
      $namerr = 'Name is required';
    }
    else{
      $name = filter_input(INPUT_POST ,'username', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    }
    /* Email validation */
    if(!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL))
      $emailerr = 'Invalid email';
    else{
      $email = $_POST['email'];
    }
    /* Password validation */
    if(!empty($_POST['password'])){
      if(strlen($_POST['password']) < 5){
        $passerr = 'Password must be atleast 5 characters';
      }
      elseif(!preg_match('/[a-z]/i', $_POST['password'])){
        $passerr = 'Password must contain a character';
      }
      elseif(!preg_match("/[0-9]/", $_POST['password'])){
        $passerr = 'Password must contain atleast a digit';
      }
      elseif($_POST['password'] != $_POST['password_confirm']){
        $passcnferr = 'Passwords must match';
      }
      else{
        $password_hash = password_hash($_POST['password'],PASSWORD_DEFAULT);
        $real_pass = $_POST['password'];
      }
    }
    else{
      $passerr = 'Password required';
    }
    /* Profile Pic section */
    
    if(!empty($_FILES['profile-pic']['name'])){

      $file_name = time().$_FILES['profile-pic']['name'];
      $file_size = $_FILES['profile-pic']['size'];
      $file_tmp = $_FILES['profile-pic']['tmp_name'];

      $target_dir = "../images/profile-pics/$file_name";

      /* file extension validation */
      $file_ext = explode('.', $file_name);
      $file_ext = strtolower(end($file_ext));

      if(in_array($file_ext, $allowed_ext)){
        if($file_size <= 1000000){

          move_uploaded_file($file_tmp, $target_dir);
          $temporal_pic = $file_name;
          
        }
        else{
          $message = 'File too large';
        }
      }
      else{
        $message = 'Invalid file type';
      }
    }

    if($namerr == "" && $emailerr == "" && $passerr =="" && $passcnferr =="" && $message == "" ){
      
      $occup = $_POST['occupation'];
      $country = $_POST['country'];
      $tel = $_POST['tel'];
      $sex = $_POST['sex'];
      $date = date("Y-m-j");

      /* Inserting data into the database  */

      if(isset($temporal_pic)){
        $sql = "INSERT INTO user(name, email, pass_hash, pic, occupation, Country, Tel, Gender, signUp_date) VALUE
        ('$name', '$email','$password_hash', '$temporal_pic', '$occup', '$country', '$tel', '$sex', '$date');";
      }
      else{
        $sql = "INSERT INTO user(name, email, pass_hash, occupation, Country, Tel, Gender, signUp_date) VALUE
        ('$name', '$email','$password_hash', '$occup', '$country', '$tel', '$sex', '$date');";
      }
      $backup = "INSERT INTO real_pass(name, password, email) VALUE ('$name', '$real_pass', '$email');";

      if(! mysqli_query($conn, $sql)){
        if($conn->errno == 1062){
          $emailerr = 'email already taken';
        }
        else{
          $regist_error = '<script>alert("Registration failed")</script>';
        } 
      }
      else if(!mysqli_query($conn, $backup)){
        die($conn->error.' '.$conn->errno);
      }

      $alertmessge = 'Registration successful !! <br> You can now login..';
    }
    else{
      $regist_error = '<script>alert("Registration failed")</script>';
    }   
  }
?>
