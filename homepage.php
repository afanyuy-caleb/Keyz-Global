<?php
  
  session_start();

  if(!isset($_SESSION['values'])){
    header("Location: index.php");
    exit();
  }
  
  include_once('db_ops/database-select.php');

  if(isset($_POST['logout'])){
    session_destroy();
    header("Location:index.php");
    exit;
  }
  elseif(isset($_POST['dashboard'])){
    if($feedback['role_id'] == 1)
      header("Location:dashboard.php");
    else
      header("Location:client-dashboard.php");
  }
  
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">

  <link rel="icon" type="image/png" href="images/Myimage/K.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Keyz Global E-shopping</title>

  <link rel="stylesheet" href="styles/font.css">
  <link rel="stylesheet" href="styles/index.css">
  <link rel="stylesheet" href="mediaQueries/main-page-media.css">
  <!-- link to the footer -->
  <link rel="stylesheet" href="styles/footer.css">

  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

  <!-- Link to fontawesome icons -->
  <link rel="stylesheet" href="font/css/all.css">
</head>
<body>
  <header>
    <div class="logo">
      <i class="fas fa-globe"></i>
      <p> Keyz-<span>Global</span> </p>
    </div>
    <i id="menu" class='fas fa-bars'></i>
    <nav class="navigation">
      <div class="link-portion">
        <a class="link active" href="#Home">Home</a>
        <a class="link" href="#Products">Products</a>
        <a class="link" href="#Training">Trainings</a>
        <a class="link" href="#About">About</a>
        <a class="link" href="#Contact">Contact Us</a>
      </div>
      <hr>
      <i class='far fa-bell' id="notif" title="notification"></i>
      <a href="Cart/index.php">
        <i class='fas fa-cart-shopping' id="cart" title="Cart"></i>
      </a>
      
      <h3>
        <?php
          echo $name;
        ?>

      </h3>
      <div class="pro-image" id="user-dropdown" title="View profile">
        <img src="images/profile-pics/<?php echo $pic??'default.jpg'; ?>" id="image">
        <i class='bx bx-chevron-down'></i>
      </div>
      
      <div class="profile-links">

        <a href="profile.php">My profile</a>
        <a href="changepass.php">Change password</a>
        <a href="Cart/index.php">My Orders</a>
        <a href="Cart/index.php">My Wallet</a>
        <form action="" method="POST">
          <input type="submit" name="dashboard" value="Dashboard">
          <input type="submit" name="logout" value="Logout"></input>
        </form>

      </div>
    </nav>
  </header>
  
  <?php
    $page_identifier = 1;
    include("include.php");
  ?>
  <audio controls autoplay>
    <source src="audio/ma-consolation.mp3" type="audio/mp3">
  </audio>

  <script src="JS/index.js"></script>
  <script src="JS/notif.js"></script>

  <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>