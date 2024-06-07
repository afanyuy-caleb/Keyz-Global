<?php

  session_start();

  if(!isset($_SESSION['values'])){
    header("Location: index.php");
    exit();
  }
  else{
    include_once '../db_ops/database-select.php';
  }
?>

<!DOCTYPE html>
<html lang="en">
<head>

  <link rel="icon" type="image/png" href="../images/Myimage/K.png">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Checkout Page</title>
  <link rel="stylesheet" href="styles/style.css">

  <link rel="stylesheet" href="../styles/font.css">
  <link rel="stylesheet" href="../font/css/all.css">

  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>

  <section>
    <a href="../homepage.php" class="curve">
      <span>Continue Shopping</span>
    </a>

    <div class="header">
      <div class="logo">
        <i>
          <img src="../images/Myimage/K-removebg.png" alt="">
        </i> 
        <p>Keyz-<span>Global</span></p>
      </div>

      <div class="prof-image" title="View profile">
        <img src="../images/profile-pics/<?= $pic??'default.jpg'; ?>" alt="">
        <div class="user-info">
          <h3 class="user-name"> <?php 
          echo ($feedback['Gender'] === 'Male')? 'Mr. ': 'Mrs. '; echo $name??'Guest'; ?></h3>
          <p class="user-prof"> <?= $prof?></p>
        </div>
        
      </div>
    </div>

    <div class="title">
     Shopping Cart
    </div>
    <div class="order-header">
      <span> Product </span>
      <span> Unit Price </span>
      <span> Quantity </span>
      <span> SubTotal </span>
    </div>
    <div class="orderedItems">
    </div>
    <div class="payment">
      <div class="pay-title">
        Order Summary
      </div>
      <div class="js-summary">

      </div>

    </div>

  </section>

  <script type="module" src="JS_cart/checkout.js"></script>
</body>
</html>