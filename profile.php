<?php

  session_start();
  include_once('picture_upload.php');

  include_once('db_ops/database-select.php');

  /* The save function */
  if($_POST){
    if(isset($_POST['dash'])){
      if($feedback['role_id'] != 1){
        header("Location: client-dashboard.php");
      }
      else{
        header("Location:dashboard.php");
      }
    }
    else if(isset($_POST['chang_pass'])){
      header("Location: changepass.php");
    }
  }
  if(isset($_POST['save'])){
      header('Location:homepage.php');
    }

  if(isset($temporal_pic)){
    $picture = $temporal_pic;
    $profile_pic = $temporal_pic;
  }
  else{
    if(isset($pic)){
      $picture = $pic;
      $profile_pic = $pic;
   }
   else{
    $picture = "profile.png";
    $profile_pic = " ";
  }
}
  if(!isset($message)){
    $message = "";
  }

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My profile</title>

    <link rel="stylesheet" href="styles/font.css">
    <link rel="stylesheet" href="styles/profile.css">
    <link rel="stylesheet" href="styles/index.css">
    
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
     <!-- link to fontawesome icons -->
    <link rel="stylesheet" href="font/css/all.css">
  </head>

  <body>
    <header class="scrollbg">
      <div class="logo">
        <i class="fas fa-globe"></i>
        <p> Keyz-<span>Global</span> </p>
      </div>
      <i id="menu" class='bx bx-menu'></i>
      <div class="header-search">
        <div class="all-products">
          <i class='bx bx-grid-small'></i>
          <p>All products</p>
          <div class="products">
            <a href="Products/Soul Lifting.php">Soul Lifting</a>
            <a href="Products/Electronics.php">Electronic Gadgets</a>
            <a href="Products/Automobiles.php">Automobiles</a>
            <a href="Products/Fruit Store.php">Fruits</a>
            <a href="Products/Fabric Designs.php">Fabrics</a>
            <a href="Products/Shoes.php">Shoes</a>
            <a href="Products/AI Techs.php">AI Techs</a>
            <a href="Products/Musicals.php">Musical Instruments</a>
            <a href="Products/Action Room.php">Movies</a>
            <a href="Products/Cartoons.php">Animes/Cartoons</a> 
            <a href="Products/Wallpapers.php">Wallpapers</a> 
          </div>
        </div>

        <input id="input" type="text" placeholder="Get whatever you feel...">
        <i id="search-button" class='bx bx-search'></i>
      </div>
      
      <nav class="navigation">
        <a href="Cart/index.php"><i class='bx bx-cart-alt' id="cart"></i></a>
        <h3>
          <?php echo $name ?>
        </h3>
        <div class="pro-image">
          <img src="images/profile-pics/<?php echo $pic; ?>" id="image" >
        </div>
      </nav>
    </header>

    <main>
      <section class="section1">
        <div>
          <i class='bx bxs-user'></i>
          <p id="prof-title">My profile</p>
        </div>

        <form method="POST">
          
          <input type="submit" value="Dashboard" name="dash">
           <input type="submit" value="Personalize" name="Personalize">
          <input type="submit" value="Change password" name="chang_pass">

        </form>

        <a href="Cart/index.php">
          <i class='bx bxs-cart-alt'></i>
          <span>My Orders</span>
        </a>
        <a href="Cart/index.php">
          <i class='bx bxs-wallet'></i>
          <span>My Wallet</span>
        </a>

      </section>

      <section class="profile-section">
        <div class="image">
          <img src="images/profile-pics/<?php echo $picture; ?>" alt=""> 
          <i class="bx bx-camera" id="camera"></i> 
        </div>

        <h4><?php 
          echo $name;
        ?></h4>
        <p>
          <?php
            echo $_SESSION['email-address'].'<br>';
            echo $message;
          ?>
        </p> 
        <div class="changes">
          <a href="homepage.php"> Back</a>
          <form action="" method="POST">
            <input type="submit" value="Save changes" name="save">
          </form>
        </div>
        
      </section>

      <section class="section3">
        <div id="header-div">User details</div>
        <div class="div1">
          <div>
            <h6>User Name</h6>  
            <p>
              <?php
                echo $name;
              ?>
            </p>
          </div>
          <div>
            <h6>Email Address</h6>
            <p><?php
            echo $_SESSION['email-address']; ?></p>
          </div>  
        </div>
        <div class="div2">
          <div>
            <h6>Time Zone</h6>
            <p>Cameroon-WAT-Africa/Douala</p>
            <p> <?php echo date("Y F j "); ?></p>
          </div> 
        </div>
      </section>

      <script>
        // Image preview before upload

        function displayImage(e){
          if(e.files[0]){
  
            let reader = new FileReader();

            reader.onload = function(e){
      
              document.querySelector('#Img_preview').setAttribute('src', e.target.result);
            }

            reader.readAsDataURL(e.files[0]);
            
          }
        }
      </script>

      <div class="shadow">
        <div class="pic-section">
          <div class="close-header">
            <p>Choose a profile picture</p>
            <i class='bx bx-x' id="close-button" title="close"></i>
          </div>
          <form action="" method="POST" enctype="multipart/form-data">
            <input type="file" id="input-file" name="prof" onchange="displayImage(this)">
            <div class="image-choice">
              <img src="images/profile-pics/<?php echo $profile_pic; ?>" alt="" id="Img_preview">
            </div>
            <input type="submit" value="Upload" id="upload" name="upload">
          </form>
          
        </div>
      </div>
    </main>
    
    <audio controls autoplay>
      <source src="audio/Vengeance.mp3" type="audio/mp3">
    </audio>
    <script defer src="JS/profile.js"></script>

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

  </body>

</html>