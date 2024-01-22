<?php
  include_once('process-login.php');
  include_once '../Data/index.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>

  <link rel="stylesheet" href="../styles/font.css">
  <link rel="stylesheet" href="Assets/css/login-reg.css">
  <link rel="stylesheet" href="../styles/index.css">
  <link rel="stylesheet" href="../mediaQueries/main-page-media.css">
  <link rel="stylesheet" href="../mediaQueries/login-media.css">

  <!-- link to fontawesome icons -->
  <link rel="stylesheet" href="../font/css/all.css">  
</head>
<body class="reg-body">

  <div class="wrapper">
    <a href="../index.php">
      <button class="close"><i class="fas fa-x"></i></button>
    </a>
    <span class="bg-anime"></span>
    <div class="form-box Login">
      <h2>Login</h2>  
        
      <form method="POST"> 
         
        <div class="input-region">
          <input type="email" name="email" id="email" required>
          <label for="email"> Email</label>
          <i class="fas fa-envelope"></i>
        </div>
        <div class="input-region">
          <input type="password" id="password" name="password" required>
          <label for="password"> Password</label>
          <i class="fas fa-eye" id="pass-icon"></i>
        </div>
        
        <div class="remember-forgot">
          <label for="remember">
            <input type="checkbox">
            Remember me
          </label>
          <a href="../changepass.php" class="forgot">Forgot Password?</a>
        </div>
        
        <p class="error-message">
          <?= $error_msg??NULL; ?>
        </p>
        <button type="submit" name="login">Login</button>
        
        <div class="register-link">
          Don't have an account?? <a href="register.php" class="forgot">Register</a>
        </div>
        
      </form>

    </div>
    <div class="info-region">
      <h2>Welcome Back !!</h2>
      <p>Keyz Global is happy to have you back with us.</p>
    </div> 
  </div>

  <script>
    
    /* menu bar toggle */
    const menuIcon = document.querySelector('#menu');
    const navigation = document.querySelector('.navigation');

    menuIcon.onclick = () => {
      menuIcon.classList.toggle('fa-x');
      navigation.classList.add('active');
    };

  // The function for the view password button
  const pswrField = document.querySelector(".input-region input[type='password']");
  const pass_icon = document.querySelector('#pass-icon');

  pass_icon.addEventListener('click', function() {
  if(pswrField.type == "password"){
    pswrField.type = "text";
    pass_icon.className = "fas fa-eye-slash";
  }
  else{
    pswrField.type = "password";
    pass_icon.className = 'fas fa-eye';
  }
  });
  // End of the view password button functions  

  </script>
  
  <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
  
</body>
</html>