
<?php

  if(!isset($_SESSION['values'])){
    header("Location: ../index.php");
    exit();
  }

  include_once('../db_ops/database-select.php');
  include_once('../db_ops/Prd-db-cnct.php');

  include_once('Product_assets/Data_search.php');

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><?= $title?></title>

  <link rel="stylesheet" href="../styles/font.css">
  <link rel="stylesheet" href="Product_assets/styles/elec.css">

  <!-- Link to the footer styles -->
  <link rel="stylesheet" href="../styles/footer.css">

  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
  <!-- link to fontawesome i -->
  <link rel="stylesheet" href="../font/css/all.css">

</head>
<body>
  <header>
    <div class="logo">
      <i class="fas fa-globe"></i>
      <p>Keyz-<span>Global</span></p>
    </div>
    <div class="header-search">
      <div class="all-products-link">
        <i class='bx bx-grid-small'></i>
        <p>All products</p>
        <div class="all-products">
          <a href="Soul Lifting.php">Soul Lifting</a>
          <a href="Electronics.php">Electronic Gadgets</a>
          <a href="Automobiles.php">Automobiles</a>
          <a href="Fruit Store.php">Fruits</a>
          <a href="Fabric Designs.php">Fabrics</a>
          <a href="
          Shoes.php">Shoes</a>
          <a href="AI Techs.php">AI Techs</a>
          <a href="Musicals.php">Musical Instruments</a>
          <a href="Action Room.php">Movies</a>
          <a href="Cartoons.php">Animes/Cartoons</a> 
          <a href="Wallpapers.php">Wallpapers</a> 
        </div>
      </div>
      <form action="" method="POST">
        <input type="text" placeholder="Search for any <?php echo $title; ?>" name="search"> 
        <button>
          <i type="submit" class="fas fa-search" title="search"></i>
        </button>  
      </form>
      
    </div>
    <nav>
      <a href="../Cart/index.php">
        <i class="fas fa-cart-shopping" title="cart" id="cart">
          <span id="pd_qnty_num">
          </span>
        </i>
      </a>

      <h3 class="user-name"> <?= $name??'Guest'; ?></h3>

      <div class="prof-image" title="View profile">
        <img src="../images/profile-pics/<?= $pic??'default.jpg'; ?>" alt="">
        <i class="fas fa-chevron-down"></i>

        <div class="profile-links">
          <a href="../homepage.php">Home</a>
          <a href="../profile.php">My profile</a>
          <a href="" title="orders">My orders</a>
          <a href="" title="Wallet">My Wallet</a>
          <a href="../changepass.php" title="password">Change password</a>
          <form action="" method="POST">
            <input type="submit" name="dashboard" value="Dashboard" title="dashboard"> <br>
            <input type="submit" name="logout" value="Logout" title="Logout"></input>
          </form>
          
        </div>
      </div>
      
    </nav>
  </header>

  <main class="section1">
    <div class="bg-anime" style="background-image: url(../images/<?= $bg_image?>);">
    </div>

    <div class="Title">
      <?= $title ?>
    </div>
    <div class="advert">
      <i class="fas fa-star"></i>
      Best seller <?= $title?>
    </div>

    <section class="main_container">
      <?php 
        if(isset($error)){
          echo '<p class="DB_error_msg">'.$error .'</p>'; #Error message display in the case of no files
        }
        else{
      ?>
      <section class="slider" style="width:<?= $range*100?>vw;">

          <script>
            // Declaring an array to store the indices of the image sections, so it can be referenced by the spans at the bottom
            let range = <?= $range?>;
            let test = false;  
            let ind;
          </script>
        
        <?php
          
          if($pd_count < 20){
            echo '<script>test = true </script>'; #Declaring a test variable that can identify the page swapper.
            #This also helps in the number of page slides we'll use
          }
          $initial = 0;

          if($pd_count > 20){
            $final = 20;
            $pd_count -= 20;
          }else{
              $final = $pd_count;
          }

          // Need an array to store the various slide numbers
          $img_array = array();
          for($slide = 0; $slide < $range; $slide++) :         
        ?>

        <section class="image_sections" id="section<?=$slide?>">

          <?php
            
            // Insert the slide numbers into the array
            $img_array[$slide] = $slide;
            for($i = $initial; $i < $final; $i++) :
          ?>

          <div class="img_desc">
            <div class="image">
              <a href="../images/<?= $img_folder?>/<?php echo $products[$i]['image']?>" target="_blank">
                <img src="../images/<?= $img_folder?>/<?php echo $products[$i]['image']?>"alt="">
              </a>
            </div>
          
            <p class="name">
              <?php 
                echo $products[$i]['pd_name'];
              ?>
            </p>
            <p class="likes">
              <i class="far fa-thumbs-up" id="like_btn" title="like"></i>
              <span id="numb_likes">0</span>
            </p>

            <p class="prices"> &dollar;<?php echo $products[$i]['price']?> &nbsp; <span>&dollar;<?php echo $products[$i]['discount']?></span></p>
          
            <div class="qnty">

              Quantity: &nbsp;
              <select name="pd_qty" class="pd_qty item_<?=$products[$i]['id']?>">

                <?php 
                  for($k = 1; $k <=10; $k++):
                ?>
                <option value="<?= $k?>" ><?= $k?></option>
                
                <?php
                
                endfor;
              ?>
              </select>              

            </div> 
            <p>Shipping to <?php echo $feedback['Country']?> in 3 weeks</p>

            <div class="exists exists-alert-<?=$products[$i]['id']?>"></div>

            <button class="add_btn" id="add_btn" data-productId="<?=$products[$i]['id']?>">Add to Cart</button>

          </div>

          <?php
            endfor;
          ?>

        </section>        
        <?php

          $initial = $final;
          
          // Necessary to check the remaining elements of the array.
          if($pd_count > 20){
            $final = $final + 20;
            $pd_count = $pd_count - 20;
          }else{
              $final = $final + $pd_count;
          }
          endfor;
        ?>
        
      </section>
      
    </section>

    <div class="page_swapper">
      
      <a href="#section<?=$img_array[0]?>" title="page 1" class="active"  >1</a>

      <?php
        for ($a = 2; $a <= $range; $a++){
          echo '
          <a href="#section'.$img_array[$a-1].'" title="page '.$a.'">'.$a.'</a>';
        }
      } #End of the error message condition
      ?>

    </div>

  </main>

  <?php

    if(empty($_SESSION['email-address'])){
      // variable to control the link directions in the footer
      $footer_control = '../';
    }else{
      $footer_control = '../homepage.php';
    }
      
    include_once('../footer.php');
  ?>

  <script type="module" src="Product_assets/script/elec.js"></script>

</body>
</html>