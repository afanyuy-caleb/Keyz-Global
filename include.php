  <?php
    include_once('db_ops/Prd-db-cnct.php');

    $catsql = "SELECT * FROM category";
    $cat_form = $pdconn->query($catsql);
    $categories = $cat_form->fetch_all(MYSQLI_ASSOC);

    $trainsql = "SELECT * FROM trainings";
    $train_form = $pdconn->query($trainsql);
    $trainings = $train_form->fetch_all(MYSQLI_ASSOC);

  ?>

  <section class="image-portion" id="Home">
    <div class="transparent">
      <div class="bg_img_slider">
        <div class="img_div">
          <img src="images/tech/tech14.jpeg" alt="">
        </div>
        <div class="img_div">
          <img src="images/Wallpapers/AI-wallpaper2.jpg" alt="">
        </div>
        <div class="img_div">
          <img src="images/Wallpapers/transit-Wallpaper.jpg" alt="">
        </div>
      </div>  
      
    </div>
    <section class="section2">
      <div class="page-motiv">
        <p id="intro">Just Don't Look Back, Then Enjoy!</p>
        <p id="search">Search for any Product Category here</p>
        <div class="input-section">
          <input type="text" placeholder="Get whatever you feel...">
          <button class="search-button" type="submit">
            <i class="fa fa-search"></i>
            <div class="tooltip">
              Search
            </div>
          </button> 
        </div>
      </div>
      <div class="trending">
        <p>Trending :</p>
        <span onclick="Page_redirect_notification(<?php echo $page_identifier; ?>, 'Automobiles.php')">Automobiles</span>
          <span onclick="Page_redirect_notification(<?php echo $page_identifier; ?>, 'AI Techs.php')">AI Techs</span>
        <span onclick="Page_redirect_notification(<?php echo $page_identifier; ?>, 'Action Room.php')">Movies</span>
        <span onclick="Page_redirect_notification(<?php echo $page_identifier; ?>, 'Fabric Designs.php')">Fabrics</span>
      </div>

    </section>

    <section class="below-header">
      <button onclick="Page_redirect_notification(<?php echo $page_identifier; ?>, 'Soul Lifting.php')">Soul Lifting</button>
      <button onclick="Page_redirect_notification(<?php echo $page_identifier; ?>, 'Electronics.php')" >Electronic Gadgets</button>
      <button onclick="Page_redirect_notification(<?php echo $page_identifier; ?>, 'Automobiles.php')">Automobiles</button>
      <button onclick="Page_redirect_notification(<?php echo $page_identifier; ?>, 'Fruit Store.php')">Fruits</button>
      <button onclick="Page_redirect_notification(<?php echo $page_identifier; ?>, 'Fabric Designs.php')">Fabrics</button>
      <button onclick="Page_redirect_notification(<?php echo $page_identifier; ?>, 'Shoes.php')">Shoes</button>
      <button onclick="Page_redirect_notification(<?php echo $page_identifier; ?>, 'AI Techs.php')">AI Techs</button>
      <button onclick="Page_redirect_notification(<?php echo $page_identifier; ?>, 'Musicals.php')">Musical Instruments</button>
      <button onclick="Page_redirect_notification(<?php echo $page_identifier; ?>, 'Action Room.php')">Movies</button>
      <button onclick="Page_redirect_notification(<?php echo $page_identifier; ?>, 'Cartoons.php')">Animes/Cartoons</button>
      <button onclick="Page_redirect_notification(<?php echo $page_identifier; ?>, 'Wallpapers.php')">Wallpapers</button>  

    </section>
  </section>

  <!-- Product section -->

  <section class="Products" id="Products">
    
    <div class="Product-section">
      <?php
        foreach($categories as $cat): 
      ?>
      <div class="image-desc">
        <div class="product-divisions">
          <img class="lone-image" src="images/<?php echo $cat['picture']?>" alt="">  
        </div>
        <div class="description">
          <h1><?php echo $cat['name'] ?></h1>
          <p><?php echo $cat['description'] ?>
          </p>
          <span onclick="Page_redirect_notification(<?php echo $page_identifier; ?>, '<?php echo $cat['name'].'.php' ?>')">View More</span>
        </div>
      </div>

      <?php endforeach; ?>
    
    </div>
  </section>
  <!-- Training section -->

  <section class="training" id="Training">
    <h1>Our <span class="train">Trainings</span></h1>

    <p class="training-intro">
      Get extremely professional in any
      digital and electronic field of your choice 
      as you kick off with any or all of the
      below mentioned specialties.
      Its completely free.
    </p>
    <div class="training-section">
      <?php 
        foreach($trainings as $train): 
      ?>
      <div class="training-content">
        <div>
          <i class="<?php echo $train['icon']; ?>"></i>
        </div>
        
        <h2><?php echo $train['title']; ?></h2>
        <p><?php echo $train['description']; ?>
        </p>
        <a href="<?= $train['link']?>" target="_blank">Kick Off</a>
      </div>
      
      <?php endforeach; ?>

    </div>
  </section>
  
  <!-- About section -->
  <section class="About" id="About">

    <h1>About <span class="us">Me</span></h1>
    <div class="About-content">
      <div class="About-image">
        <img src="images/Myimage/20230423_131054.jpg" alt="">
      </div>
      <div class="About-desc">
        <div class="desc-content">
          <h2>The Guy Behind the Design</h2>
          <div class="About-me">
            <div>
              <h4>Origin</h4>
              <p>Afanyuy Caleb was born on 5th
                of January 2004, at Misaje - Donga-Mantung 
                division - North-West Region of Cameroon.
              </p>
              <p>Went through both primary and secondary 
                school at Kumbo and obtained his GCE A/L 
                certificate at Nkambe.
              </p>
              <p>He is currently at the African Institute 
                of Computer Sciences(AICS) Cameroon, located
                at Nkolanga, Yaounde.
              </p>
            </div>
            <hr>
            <div>
              <h4>Objective</h4>
              <p>His main goal is to become exellent in the 
                Above mentioned services and to see that 
                the acquired knowledge in these areas are been 
                disposed at a global level.
              </p>
              <p>Also, being able to apply the tales above in 
                solving realistic problems is what our young designer
                purely craves for, One of which is to apply 
                AI to medical practices.
              </p>
            </div>
          </div>
          <hr>
          <h5>Visit Him:</h5>
          <div class="platforms">
            <a href="mailto:afanyuys@gmail.com" target="_blank" class='bx bxl-gmail' ></a>
            <a href="https://www.facebook.com/profile.php?id=100089952266984" 
            target="_blank" class='bx bxl-facebook'></a>
            <a href="#" class='bx bxl-twitter' target="_blank"></a>
            <a href="#" class='bx bxl-whatsapp' target="_blank"></a>

          </div>
        </div>

      </div>
    </div>
  </section>
  
  <!-- Contact section -->
  <section class="contact" id="Contact">
    <h1>Contact <span class="us">Us!</span></h1>
    <p class="contact-intro">Get in touch with us, through 
      our online platforms above or
      send to us your request anyday, anytime.
      Keyz-Global at your service.
    </p>
    <div class="contact-content">
      <form method="POST">
        <div class="contact-details">
          <input type="text" placeholder="First name" name="fname" required>
          <input type="text" placeholder="Last name" name="lname">
        </div>
        <div class="contact-details">
          <input type="text" placeholder="Email" name="email" required>
        </div>
        <div class="contact-details">
          <input type="text" placeholder="Subject" name="subject">
        </div>
        <textarea name="message" placeholder="Enter message"></textarea>
        </div>
        <button class="submit" type="submit"><a href="mailto:afanyuys@gmail.com">Send message</a></button>
      </form>
    </div>
  </section>

  <?php
    $footer_control = '';
    include_once('footer.php');
  ?>

  <div class="scroll-up">
    <i id="scroll-up-value">&uarr;</i>
  </div>


  <noscript>
    Sorry, javascript is needed to advance with the site <br>
    So see to it that it is enabled in your browser. <br>
    Thank you.
  </noscript>
