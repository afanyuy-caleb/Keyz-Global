<?php
  include_once("reg.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>

  <link rel="icon" type="image/png" href="../images/Myimage/K.png">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Registration</title>

  <link rel="stylesheet" href="../styles/font.css">
  <link rel="stylesheet" href="Assets/css/login-reg.css">
  <link rel="stylesheet" href="Assets/css/register.css">
  <link rel="stylesheet" href="../styles/index.css">
  <link rel="stylesheet" href="../mediaQueries/main-page-media.css">
  <link rel="stylesheet" href="../mediaQueries/login-media.css">

  <!-- link to fontawesome icons -->
  <link rel="stylesheet" href="../font/css/all.css">  

</head>
<body class="reg-body">
  
  <?php if(isset($alertmessge)): ?>
    <div class="login_now">
    <i class="fas fa-face-smile"></i> 
      <?= $alertmessge ?>
      <a href="index.php" class="login_btn">Log in</a>
    </div>;

    <?php
      die;
      endif; 
    ?>
  <?php
    include('header.php');

  ?>

  <div class="wrapper register">
    <a href="../index.php">
      <button class="close"><i class="fas fa-x"></i></button>
    </a>
    <span class="bg-anime-register"></span>

    <div class="info-region Register">
      <h2>Welcome!!</h2>
      <p>You're highly welcomed to join us today. <br> Eenter your basic info and then feel free to explore and enjoy our packages.</p>
    </div>

    <div class="form-box" id="Register">
      <h2>Sign Up Now</h2>
      <p class="error-message">
        <?= $regist_error??NULL; ?>
      </p>
      <form method="POST" enctype="multipart/form-data" novalidate> 
        <!-- Begin of carousel -->
        <div class="carousel">

          <div class="slider">
            <!-- Section 1 of the slider -->
            <section>
              <div class="input-region">
                <input type="text" name="username" id="uname" required>
                <label for="uname"> Username</label>
                <i class="fas fa-user"></i>
                <p class="error-message">
                  <?php echo $namerr??NULL; ?>
                </p>
              </div> 
              <div class="input-region">
                <input type="email" name="email" id="email" required>
                <label for="email"> Email</label>
                <i class="fas fa-envelope"></i>
                <p class="error-message">
                  <?php echo $emailerr??NULL; ?>
                </p>
              </div>
              <div class="input-region">
                <input type="text" name="occupation" id="occupation" required>
                <label for="occupation">Occupation</label>
                <i class="fas fa-briefcase"></i>
              </div> 
              <div class="control-buttons">
                <span></span>
                <span class="next but" onclick="changeSection('next', 0);">Next</span>
                <span></span>
              </div>
            </section>
            
            <!-- Section 2 of the slider -->
            <section>
              <div class="input-region">
                <input type="text" name="country" id="country" required>
                <label for="occ"> Country</label>
                <i class="fas fa-location-dot"></i>
              </div>
              <div class="input-region">
                <input type="tel" name="tel" id="tel" required>
                <label for="tel"> Telephone</label>
                <i class="fas fa-phone"></i>
              </div>
              <fieldset required>
                <legend>Gender</legend>
                <input type="radio" name="sex" value="Male" id="male">
                <label for="male">Male</label> <br>
                <input type="radio" name="sex" value="Female" id="female">
                <label for="female">Female</label>
              </fieldset>

              <div class="control-buttons">
                <span class="back but" onclick="changeSection('prev', 1);">Previous</span>
                <span class="next but" onclick="changeSection('next', 1);">Next</span>
              </div>
              
            </section>
            
            <!-- Section 3 of the carousel -->
            <section>
              <div class="input-region">
                <input type="password" id="password" name="password" required>
                <label for="password"> Password</label>
                <i class="fas fa-eye pass-icon"></i>
                <p class="error-message">
                  <?php echo $passerr??NULL; ?>
                </p>
              </div>
              <div class="input-region">                
                <input type="password" id="password_confirmation" name="password_confirm" required>
                <label for="password_confirmation">Confirm Password</label>
                <i class="fas fa-eye pass-icon"></i>
                <p class="error-message">
                  <?php echo $passcnferr??NULL; ?>
                </p>
              </div>
              <div class="remember-forgot">
                <label for="remember">
                  <input type="checkbox" name="check">
                  Agree to terms and conditions
                </label>
              </div>
              <fieldset class="profile-pic-section">
                <legend for="profile-pic">Profile picture</legend>  
                <input type="file" id="profile-pic" name="profile-pic" value="Browse..">  
              </fieldset>
              <p class="error-message">
                <?php echo $message??NULL; ?>
              </p>
              <div class="control-buttons">
                <span class="back but" onclick="changeSection('prev', 2);">Previous</span>
                <button type="submit" class="next but" name="sign-up">Sign Up</button>
              </div>
            </section>

          </div>          

          <!-- End of carousel -->
        </div>
        
        <div class="login-link">
          Already have an account?? <a href="index.php" class="forgot">Login</a>
        </div>
      </form>

    </div>

  </div>
  
  <script src="script.js"> 
  </script>

  <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

</body>
</html>

