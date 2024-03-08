<?php
  session_start();
  
  if(!isset($_SESSION['values']) || isset($_POST['logout'])){
    session_destroy();
    header("Location: index.php");
    exit();
  }

  include_once 'dashboard-data.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>

  <link rel="icon" type="image/png" href="images/Myimage/K.png">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Dashboard</title>

  <link rel="stylesheet" href="styles/font.css">
  <link rel="stylesheet" href="font/css/all.css">

  <link rel="stylesheet" href="styles/client-dash.css">
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<body>

  <main>
    <section class="user-info">
      <div class="logo">
        <i>
          <img src="images/Myimage/K-removebg.png" alt="">
        </i> 
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
        <a href="Cart/index.php">
          <i class='fas fa-shopping-cart'></i>
          <p>My cart</p>
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
          <span id="tot-purch"><?= $total_purchases?></span>
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

      <div class="details-section">
        <div class="table">
          <table>
            <tr>
              <th>S/N</th>
              <th>Date</th>
              <th>Type</th>
              <th>Amount</th>
              <th class="click-link">Double click here</th>
            </tr>

            <?php
              $sn = 1;
              foreach($trans as $tran):
                $type = getTrans($conn, $tran['transId']);  
            ?>
            <tr>
              <td><?= $sn?></td>
              <td><?= $tran['Date']?></td>
              <td><?= $type?></td>
              <td>&dollar;<?= $tran['Amount']?></td>
              
              <td class="detail_link" ><i class="fas fa-circle-info det" title="More details" data-identifier="<?=$tran['id']?>"></i></td>
            </tr>

            <?php
                $sn++;
              endforeach;
            ?>
          </table>
        
        </div>

        <div class="details">
          <div class="header">
              <h3>Items involved <span id="item-nb"></span></h3> 
          </div>
          <div class="contents">
            
          </div>
        </div>
      </div>
      
    </section>
  </main>
  <i id="stagger">
    <img src="images/Myimage/K-removebg.png" alt="">
  </i> 

  <script type="module" src="JS/client-dash.js"></script>

</body>
</html>