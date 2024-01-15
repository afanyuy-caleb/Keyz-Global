
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>My Official webpage</title>

  <link rel="stylesheet" href="styles/index.css">
  <link rel="stylesheet" href="styles/font.css">
  <link rel="stylesheet" href="mediaQueries/main-page-media.css">
    <!-- link to the footer styles -->
  <link rel="stylesheet" href="styles/footer.css">

  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

  <!-- link to fontawesome i -->
  <link rel="stylesheet" href="font/css/all.css">
</head>
<body class="index_body">
  <div class="notification">

    <p>
      <i class="fas fa-xmark" id="notif_cls_btn"></i>
      <i class="fas fa-face-smile"></i> <br>
      Please Login to gain full Access to the site
    </p>
  </div>

  <header>
    <div class="logo">
      <i class="fas fa-globe"></ion-icon></i> 
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

      <a href="NewForms/index.php"><button>Login</button></a>
      <a href="NewForms/register.php"><button>Join</button></a>
    </nav>
    
  </header>

  <!-- The notification for logging in -->
  
  <?php
    $page_identifier = 0;
    include("include.php");
  ?>

  <script>
    localStorage.removeItem('cart');
    localStorage.removeItem('products')
    localStorage.removeItem('tableName')
  </script>
  <script src="JS/index.js"></script>
  <script src="JS/notif.js"></script>

  <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>