<?php
  session_start();

  include_once('db_ops/database-select.php');

  if(!isset($_SESSION['values'])){
    header("Location: index.php");
    die;
  } 
  if(!isset($_SESSION['index'])){
    $_SESSION['index'] = 0;
  }

  $data = "SELECT * FROM user WHERE role_id != 1";
  $datum = mysqli_query($conn, $data);
  $answers = mysqli_fetch_all($datum, MYSQLI_ASSOC);
  
  $size = 0;
  while(!empty($answers[$size])){
    $size++;
  }

  if(isset($_POST['right'])){
    if($_SESSION['index'] != $size -1){
      $_SESSION['index']++;
    }
  }

  if(isset($_POST['left'])){
    if($_SESSION['index'] !=0){
      $_SESSION['index']--;
    }    
  }

  if(isset($_POST['logout'])){
    session_destroy();
    header("location:index.php");
  }

  $role_query = "SELECT * FROM role WHERE id = (SELECT role_id FROM user WHERE email = '$email')";
  $user_role = mysqli_query($conn, $role_query);
  $role = mysqli_fetch_assoc($user_role);

?>

<!DOCTYPE html>
<html lang="en">
<head>

  <link rel="icon" type="image/png" href="images/Myimage/K.png">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Dashboard</title>

  <link rel="stylesheet" href="styles/dashboard.css">
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
  
  <link rel="stylesheet" href="styles/font.css">
  <link rel="stylesheet" href="font/css/all.css">

</head>
<body>
  <span id="exch"></span>
  <section class="section1">
    <header>
      <i class='fas fa-globe'></i>
      <p>Keyz-Global</p>
    </header>

    <!-- Admin profile -->
    <div class="admin-image-portion">
      <div class="admin-image">
        <img src="images/profile-pics/<?php echo $pic??'default.jpg'; ?>" alt="">
      </div>
      <p>Dr. <?php echo $feedback['name']??'Hello'; ?></p>
      <p>Project Admin</p>  
    </div>
    <div class="sidepane-links-section">
      <h4>MENU</h4>
      <a href="homepage.php" class="sidepane-links indent">
        <i class='bx bxs-home'></i>
        <p> Home</p>
      </a>
      <a href="#" class="sidepane-links indent" id="dash">
        <i class='bx bxs-grid-alt'></i>
        <p> Dashboard</p>
      </a>
      <a href="#customers" class="sidepane-links indent">
        <i class='bx bxs-group'></i>
        <p> Customer</p>
      </a>
      <h4>PRODUCTS</h4>
      <a href="#" class="sidepane-links indent">
        <i class='bx bxs-collection'></i>
        <p> Product Category</p>
      </a>
      <a href="#" class="sidepane-links indent">
        <i class='bx bxs-duplicate'></i>
        <p> items</p>
      </a>
      <h4>REPORTS</h4>
      <a href="#" class="sidepane-links indent">
        <i class='bx bx-question-mark'></i>
        <p>Questions</p>
      </a>
      <a href="#" class="sidepane-links indent">
        <i class='bx bxs-message-dots'></i>
        <p> Messages</p>
      </a>
      <h4>PROFILE</h4>
      <a href="profile.php" class="sidepane-links indent">
        <i class='bx bxs-user-account'></i>
        <p> My Profile</p>
      </a>
      <h4>UPGRADE</h4>
      <a href="#" class="sidepane-links indent">
      <i class='bx bx-upvote'></i>
        <p> Upgrade to PRO</p>
      </a>
      <hr>
    </div>
    
    <form method="POST" class="logout-button">      
      <input type="submit" value="Sign Out" name="logout" class="logout">
    </form>
        
  </section>  
  <section class="section2">
    <header>
      <i class='fas fa-bars' id="menu-icon"></i>

      <div class="image-section">
       
        <img src="images/profile-pics/<?php echo $pic??'default.jpg'; ?>" alt="">
        <hr>
        <div class="parag">
          <p>Dr. <?php echo $feedback['name']??'Hello'; ?></p>
          <p>Web Developer</p>
        </div>  
      </div>

    </header>
    <main class="main1" id="dashboard">
      <div class="title">
        <h3><?php echo $role['name']??NULL ?> Dashboard</h3>
        <p>overview <i class='bx bx-info-circle'></i></p>
      </div>
      <div class="page-stats">
        <div class="trans-section">
          <div class="trans">
            <i class='bx bxs-group'></i>
            <h4>Total Customers</h4>
          </div>
          <div class="para-info">
            <p>12005 <div class="div">+30% New users</div></p>
          </div>
        </div>
        <div class="trans-section"> 
          <div class="trans">
            <i class='bx bxl-graphql'></i>
            <h4>Total Sales</h4>
          </div>
          <div class="para-info">
            <p>$482.06k <div class="div">15% increase</div></p>
          </div>
          
        </div>
        <div class="trans-section">
          <div class="trans">
            <i class='bx bxs-basket'></i>
            <h4>Total Orders</h4>
          </div>
          <div class="para-info">
            <p>275.78k <div class="div">Decrease by 12% </div></p>
          </div>
          
        </div>
        <div class="trans-section">
          <div class="trans">
            <i class='bx bxs-download'></i>
            <h4>Downloads</h4>
          </div>
          <div class="para-info">
            <p>2M <div class="div">Low, -36%</div></p>
          </div>
          
        </div>
      </div>
      <div class="monthly-stats">
        <div class="general-stats">
          <i class='bx bx-line-chart'></i>
          <h4>Monthly Profit</h4>
          <p>+35% target reached</p>
          <h3>$304.78M</h3>

        </div>
        <div class="general-stats">
          <i class='bx bx-wallet'></i>
          <h4>Average Income</h4>
          <p>Total for this month</p>
          <h3>$124.200.00</h3>

        </div>
        <div class="general-stats">
          <i class='bx bx-body'></i>
          <h4>Site Visitors</h4>
          <p>Dropped by 20%</p>
          <h3>304.700</h3>
        </div>
      </div>

      <div class="animation-section">
        <div></div>
        <div class="container">
          <?php
            for ($i=0; $i<20; $i++):
          ?>
          
          <span style="--i:<?=$i?>"></span>
          
          <?php
            endfor;
          ?>
        </div>
      </div>

    </main>
    <main class="main2" id="customers">
      <div class="title">
        <h3>Customer Info</h3>
      </div>
      <section class="info">
        
        <div class="customer-info">

          <h3>Recent customers(<?php echo $size ?>)</h3>
          <p>and activites</p>

          <div class="images-info">
            <div class="image-portion">
            <form method="POST" action="">
            <input type="submit" name="left" id="arrl" style="display:none;">
              <label for="arrl">
                <div class="arrow" >
                  &larr;
                </div>      

              </label>     
              </form>
              <img src="images/profile-pics/<?php echo $answers[$_SESSION['index']]['pic']; ?>" alt="image here">
              <form method="POST" action="">
              <input type="submit" name="right" id="arr" style="display:none;">
              <label for="arr">
                <div class="arrow" >
                  &rarr;
                </div>     

              </label>     
              </form>
            </div>
            <div class="cust-name">
              <p><?php echo $answers[$_SESSION['index']]['name']  ?></p>
              <p><?php echo $answers[$_SESSION['index']]['email'].'&nbsp;&nbsp;'.date("Y F j") ; ?></p>
            </div>
          </div>    
        </div>
      
        <div class="container">
          <div></div>
          <div></div>
          <div></div>
          <div></div>
          <div></div>
          <div></div>
        </div>

      </section>
    </main>
    
  </section>
  <audio controls autoplay>
    <source src="audio/lion.mp3" type="audio/mp3">
    <source src="audio/great-mercy.mp3" type="audio/mp3">
  </audio>

  <script src="JS/dashboard.js"></script>
</body>
</html>