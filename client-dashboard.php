<?php
  session_start();
  include_once('db_ops/database-select.php');

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Dashboard</title>

  <link rel="stylesheet" href="styles/font.css">
  <link rel="stylesheet" href="font/css/all.css">

  <link rel="stylesheet" href="styles/client-dash.css">
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>

  <main>
    <section class="user-info">
      <div class="logo">
        <i class="fas fa-globe"></i>
        <p>Keyz-<span>Global</span></p>
      </div>

      <div class="prof-image" title="View profile">
        <img src="images/profile-pics/<?= $pic??'default.jpg'; ?>" alt=""/>
        <div class="user">
          <h3 class="user-name"> <?php 
          echo ($feedback['Gender'] === 'Male')? 'Mr. ': 'Mrs. '; echo $name??'Guest'; ?></h3>
          <p class="user-prof"> <?= $prof?></p>
        </div>
        
      </div>

      <div class="links">
        <a href="">
        <i class='bx bxs-grid-alt'></i>  
          Dashboard
        </a>
        <a href="homepage.php">
          <i class="fas fa-house"></i>  
          Home
        </a>
        <a href="profile.php">
          <i class="fas fa-user"></i>  
          My Profile
        </a>

        <a href="#">
          <i class='fas fa-comment'></i>
          <p>Messaging Forum</p>
        </a>

        <form action="" method="POST">
          <i class=""></i>
          <input type="submit" value="Sign Out" name="logout">
        </form>
      </div>
    </section>

    <section class="section2">
      
      <div class="title">
        Dashboard
      </div>

      <div class="top">
        <div>
          Total Purchases
          <span id="tot-purch">0</span>
        </div>
        <div>
          Total Downloads
          <span id="tot-down">0</span>
        </div>
        <div>
          Total streams
          <span id="tot-str">0</span>
        </div>
      </div>

      <div class="transactions">
        Recent Transactions
      </div>
      
      <table>
        <tr>
          <th>Date</th>
          <th>Type</th>
          <th>Amount</th>
        </tr>
        <tr>
          <td>20/05/2019</td>
          <td>Purchase</td>
          <td>20,000</td>
        </tr>
      </table>
    </section>
  </main>
  
</body>
</html>