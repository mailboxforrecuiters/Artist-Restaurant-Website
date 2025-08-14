<?php

include 'admin/includes/connect.php';
header('Content-Type: text/html; charset=utf-8');
$con->set_charset("utf8mb4");
function wine($con){
    $image = "assets/img/menu/mozzarella.jpg";
    $con->set_charset("utf8mb4");
    $result = mysqli_query($con,"SELECT DISTINCT `type` as ctg FROM wine");
    while($row = mysqli_fetch_array($result)){
        echo '<div class="col-lg-6 menu-item filter-wine">
            <img src="assets/img/menu/mozzarella.jpg" class="menu-img" alt="" />
            <div class="menu-content">
              <a href="#">'.$row['ctg'].'</a>
            </div>
            <div class="menu-ingredients"> ';
               $res2 = mysqli_query($con,"SELECT name,percent,descr FROM wine WHERE type='$row[ctg]'");
                 while($row2 = mysqli_fetch_array($res2)){
                    if(strlen($row2['descr'])  == 0  ) {
                        echo $row2['name'].' '.$row2['percent']."%<br/>";
                    }else{
                        echo $row2['name'].' '.$row2['descr'].' '.$row2['percent']."%<br/>";
                    }
                 }
              echo'
            </div>
          </div>
         ';
    }
    
};

function drinks($con){
    $image = "assets/img/menu/mozzarella.jpg";
    $con->set_charset("utf8mb4");
    $result = mysqli_query($con,"SELECT DISTINCT `type` as ctg FROM drinks");
    while($row = mysqli_fetch_array($result)){
         echo '<div class="col-lg-6 menu-item filter-drinks">
            <img src="assets/img/menu/mozzarella.jpg" class="menu-img" alt="" />
            <div class="menu-content">
              <a href="#">'.$row['ctg'].'</a>
            </div>
            <div class="menu-ingredients">';
             $res2 = mysqli_query($con,"SELECT name,percent,descr FROM drinks WHERE type='$row[ctg]'");
             while($row2 = mysqli_fetch_array($res2)){
                if(strlen($row2['descr'])  == 0  ) {
                    echo $row2['name'].' '.$row2['percent']."%<br/>";
                }else{
                    echo $row2['name'].' '.$row2['descr'].' '.$row2['percent']."%<br/>";
                }
             }
            echo '</div>
          </div>';
    }
    
    
    
}

function lau($con){    
    $image = "assets/img/menu/mozzarella.jpg";
    $con->set_charset("utf8mb4");
    $result = mysqli_query($con,"SELECT * FROM lau");
    while($row = mysqli_fetch_array($result)){
        echo '<div class="col-lg-6 menu-item filter-lau">
            <img src="assets/img/menu/mozzarella.jpg" class="menu-img" alt="" />
            <div class="menu-content">
              <a href="#">'.$row['name'].'</a><span>S '.$row['small'].'</span><span>L '.$row['large'].'</span>
            </div>
            <div class="menu-ingredients">
              '.$row['descr'].'
            </div>
          </div>';
    }   
};

function grab_items($show,$category_name,$con){
	$con->set_charset("utf8mb4");
    $result = mysqli_query($con,"SELECT * FROM items WHERE category = '$category_name' AND deleted = 0");
    while($row = mysqli_fetch_array($result)){
        if( $row['image'] != NULL  ) {
            $image = "admin/".$row['image'];
        }else{
            $image = "assets/img/menu/mozzarella.jpg";
        }
        if( $row['price'] == 0.00){
            $price = "Seasonal";
        }else{
            $price = $row['price'];
        }     
        echo '<div class="col-lg-6 menu-item filter-'.$category_name.'">
            <img src="'.$image.'" class="menu-img" alt="" />
            <div class="menu-content">
              <a href="#">'.$row['name'].'</a><span>'.$price.'</span>
            </div>
            <div class="menu-ingredients">
              '.$row['descr'].'
            </div>
          </div>';
    }    
    
}



?>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8"/>
  <meta http-equiv="Content-Language" content="vi" />
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Artist Cafe</title>
  <meta content="greatest late night dining vibes you will ever experience. Not only is the food fantastic, but the beers are also very affordable. Truly truly one of orange county's hidden gems -- known for their ribeye steak, or if you're a southerner, then the crawfish is gonna leave you feeling like you've never left the south." name="description" />
  <meta content="" name="keywords" />

  <!-- Favicons -->
  <link href="assets/img/artist_logo.png" rel="icon" />
  <link href="assets/img/artist_logo.png" rel="apple-touch-icon" />

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Playfair+Display:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  <link rel="stylesheet" href="assets/css/jquery-ui.css">
  <!-- =======================================================
  * Template Name: Restaurantly - v3.1.0
  * Template URL: https://bootstrapmade.com/restaurantly-restaurant-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Top Bar ======= -->
  <div id="topbar" class="d-flex align-items-center fixed-top">
    <div class="container d-flex justify-content-center justify-content-md-between">

      <div class="contact-info d-flex align-items-center">
        <i class="bi bi-phone d-flex align-items-center"><span><a href="tel:+7149651695">+1 714.839.2200</a></span></i>
        <i class="bi bi-clock d-flex align-items-center ms-4"><span>Mon: 2:30PM - 11:30PM</span> / <span>Tuesday: Closed</span> / <span> Wed-Sun: 1:30PM - 11:30PM</span> </i>
      </div>

      <div class="languages d-none d-md-flex align-items-center">
        
      </div>
    </div>
  </div>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-cente">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-lg-between">

      <h1 class="logo me-auto me-lg-0"><a href="https://www.facebook.com/pages/Cafe-Artist-Restaurant/109331572439906" class="facebook" target="_blank"><i class="bx bxl-facebook"></i></a>&nbsp;<a href="https://www.instagram.com/cafe_artist_restaurant/" class="instagram"  target="_blank"><i class="bx bxl-instagram"></i></a>&nbsp;<img src="frame.png" alt="Download Our Menu" title="Download Our Menu" class="bx"/></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto me-lg-0"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
          <li><a class="nav-link scrollto" href="#about">About</a></li>
          <li><a class="nav-link scrollto" href="#menu">Menu</a></li>
          <li><a class="nav-link scrollto" href="#specials">Specials</a></li>
          <!---
          <li><a class="nav-link scrollto" href="#events">Events</a></li>
          <li><a class="nav-link scrollto" href="#chefs">Chefs</a></li>
          <li><a class="nav-link scrollto" href="#gallery">Gallery</a></li>
          <li class="dropdown"><a href="#"><span>Drop Down</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="#">Drop Down 1</a></li>
              <li class="dropdown"><a href="#"><span>Deep Drop Down</span> <i class="bi bi-chevron-right"></i></a>
                <ul>
                  <li><a href="#">Deep Drop Down 1</a></li>
                  <li><a href="#">Deep Drop Down 2</a></li>
                  <li><a href="#">Deep Drop Down 3</a></li>
                  <li><a href="#">Deep Drop Down 4</a></li>
                  <li><a href="#">Deep Drop Down 5</a></li>
                </ul>
              </li>
              <li><a href="#">Drop Down 2</a></li>
              <li><a href="#">Drop Down 3</a></li>
              <li><a href="#">Drop Down 4</a></li>
            </ul>
          </li>---!>
          <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->
     <!--- <a href="#book-a-table" class="book-a-table-btn scrollto d-none d-lg-flex">Book a table</a>---!>

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">
    <div class="container position-relative text-center text-lg-start" data-aos="zoom-in" data-aos-delay="100">
      <div class="row">
        <div class="col-lg-8">
          <h1>Welcome to <span>Artist Cafe</span></h1>
          <h2>The best Vietnamese cuisine in Westminster</h2>

          <div class="btns">
            <a href="#menu" class="btn-menu animated fadeInUp scrollto">Our Menu</a>
            <a href="assets/Artist-menu.pdf" download="artist-cafe-menu" class="btn-book animated fadeInUp scrollto">Download Menu</a>
          </div>
        </div>
        <div class="col-lg-4 d-flex align-items-center justify-content-center position-relative" data-aos="zoom-in" data-aos-delay="200">
          <a href="004B52E248BD6B501919F6C1560DA68A_video_dashinit.mp4" class="glightbox play-btn"></a>
        </div>

      </div>
    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="row">
          <div class="col-lg-6 order-1 order-lg-2" data-aos="zoom-in" data-aos-delay="100">
            <div class="about-img">
              <img src="assets/img/about.jpg" alt="">
            </div>
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content">
            <h3>Welcome to Artist Cafe Restaurant, Home of the original Orange County Cajun Crawfish!</h3>
            <p class="fst-italic">
              This unassuming decor diner embodies some of the greatest late night dining vibes you will ever experience. Not only is the food fantastic, but the beers are also very affordable. Truly truly one of orange county's hidden gems -- known for their ribeye steak, or if you're a southerner, then the crawfish is gonna leave you feeling like you've never left the south.
            </p>
            <ul>
              <li><i class="bi bi-check-circle"></i> Fresh hot asian fusion cuisine made to order.</li>
              <li><i class="bi bi-check-circle"></i> Famous flavorful steak on a sizzling platter.  Originator of the Orange county cajun crawfish.</li>
              <li><i class="bi bi-check-circle"></i> Always showing the latest UFC events, shown below are the upcoming dates.  You are welcome to stop by and have a drink and a meal</li>
            </ul>
            <p>
              We offer a friendly environment to watch sporting events while enjoying a cold refreshment, enjoy our asian delicacies and bask in the lively friendly environment!
            </p>
          </div>
        </div>

      </div>
    </section><!-- End About Section -->

    <!-- ======= Why Us Section ======= -->
    <!--<section id="why-us" class="why-us">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Why Us</h2>
          <p>Why Choose Our Restaurant</p>
        </div>

        <div class="row">

          <div class="col-lg-4">
            <div class="box" data-aos="zoom-in" data-aos-delay="100">
              <span>01</span>
              <h4>Lorem Ipsum</h4>
              <p>Ulamco laboris nisi ut aliquip ex ea commodo consequat. Et consectetur ducimus vero placeat</p>
            </div>
          </div>

          <div class="col-lg-4 mt-4 mt-lg-0">
            <div class="box" data-aos="zoom-in" data-aos-delay="200">
              <span>02</span>
              <h4>Repellat Nihil</h4>
              <p>Dolorem est fugiat occaecati voluptate velit esse. Dicta veritatis dolor quod et vel dire leno para dest</p>
            </div>
          </div>

          <div class="col-lg-4 mt-4 mt-lg-0">
            <div class="box" data-aos="zoom-in" data-aos-delay="300">
              <span>03</span>
              <h4> Ad ad velit qui</h4>
              <p>Molestiae officiis omnis illo asperiores. Aut doloribus vitae sunt debitis quo vel nam quis</p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Why Us Section -->

    <!-- ======= Menu Section ======= -->
    <section id="menu" class="menu section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Menu</h2>
          <p>Check Our Tasty Menu</p>
          <p style="font-size: small;"><span style="color: red;font-weight:bold;">*</span>&nbsp;Prices are subject to change.</p>
        </div>

        <div class="row" data-aos="fade-up" data-aos-delay="100">
          <div class="col-lg-12 d-flex justify-content-center">
            <ul id="menu-flters">
            <li data-filter="*" class="filter-active">All</li>
             <?php
              $list = $con->query("SELECT category_name,category_list_name,category_description FROM category_list");
              while( $irow = mysqli_fetch_array($list) ){
                echo "<li data-filter='.filter-$irow[category_name]'>$irow[category_list_name]</li>";
                $ctg[] = array(   
                    "data_name"=>"$irow[category_name]",
                    "show_name"=>"$irow[category_list_name]",
                    "descript"=>$irow['category_description']
                );
              }
             ?>
            </ul>
          </div>
        </div>

        <div class="row menu-container" data-aos="fade-up" data-aos-delay="200">
          <?php            
            for( $i=0; $i<count($ctg) ;$i++ ){
                echo "<div class='col-lg-6 menu-item filter-".$ctg[$i]['data_name']."' style='width:100%;'><h2>".$ctg[$i]['show_name']."</h2>
                <p>".$ctg[$i]['descript']."</p>
                </div>";
                
                if($ctg[$i]['data_name'] =="lau"){
                     lau($con);
                }else if($ctg[$i]['data_name'] == "drinks"){
                     drinks($con);
                }else if ($ctg[$i]['data_name'] == "wine"){
                     wine($con);
                }else{
                     grab_items($ctg[$i]['show_name'],$ctg[$i]['data_name'],$con);   
                }                
                
            }
          ?>
        </div>
      </div>
    </section><!-- End Menu Section -->

    <!-- ======= Specials Section ======= -->
    <section id="specials" class="specials">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Specials</h2>
          <p>Check Our Specials</p>
        </div>

        <div class="row" data-aos="fade-up" data-aos-delay="100">
          <div class="col-lg-3">
            <ul class="nav nav-tabs flex-column">
              <li class="nav-item">
                <a class="nav-link active show" data-bs-toggle="tab" href="#tab-1">UPCOMING UFC FIGHTS</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab-2">Special Promotions</a>
              </li>
              
              <!--
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab-3">Pariatur explicabo vel</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab-4">Nostrum qui quasi</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab-5">Iusto ut expedita aut</a>
              </li>--!>
            </ul>
          </div>
          <div class="col-lg-9 mt-4 mt-lg-0">
            <div class="tab-content">
              <div class="tab-pane active show" id="tab-1">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1" id="ufc">
                    
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="assets/img/ufc_Logo.jpg" alt="" class="img-fluid" />
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-2">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                      <?php 
                        $eventx = mysqli_query($con,"SELECT * FROM event");
                        $ev = mysqli_fetch_array($eventx);
                      ?>
                     <h1><?php echo $ev['event_title']; ?></h1>
                     <p><?php 
                        echo html_entity_decode($ev['event_desc']);
                     ?>
                     </p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                   <?php if( strlen(trim($ev['image'])) >0 ){
                        ?>
                        <img src="<?php echo $ev['image']; ?>" alt="" class="img-fluid" />
                        <?php
                   } ?>
                    
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-3">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Impedit facilis occaecati odio neque aperiam sit</h3>
                    <p class="fst-italic">Eos voluptatibus quo. Odio similique illum id quidem non enim fuga. Qui natus non sunt dicta dolor et. In asperiores velit quaerat perferendis aut</p>
                    <p>Iure officiis odit rerum. Harum sequi eum illum corrupti culpa veritatis quisquam. Neque necessitatibus illo rerum eum ut. Commodi ipsam minima molestiae sed laboriosam a iste odio. Earum odit nesciunt fugiat sit ullam. Soluta et harum voluptatem optio quae</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="assets/img/specials-3.png" alt="" class="img-fluid" />
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-4">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Fuga dolores inventore laboriosam ut est accusamus laboriosam dolore</h3>
                    <p class="fst-italic">Totam aperiam accusamus. Repellat consequuntur iure voluptas iure porro quis delectus</p>
                    <p>Eaque consequuntur consequuntur libero expedita in voluptas. Nostrum ipsam necessitatibus aliquam fugiat debitis quis velit. Eum ex maxime error in consequatur corporis atque. Eligendi asperiores sed qui veritatis aperiam quia a laborum inventore</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="assets/img/specials-4.png" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-5">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Est eveniet ipsam sindera pad rone matrelat sando reda</h3>
                    <p class="fst-italic">Omnis blanditiis saepe eos autem qui sunt debitis porro quia.</p>
                    <p>Exercitationem nostrum omnis. Ut reiciendis repudiandae minus. Omnis recusandae ut non quam ut quod eius qui. Ipsum quia odit vero atque qui quibusdam amet. Occaecati sed est sint aut vitae molestiae voluptate vel</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="assets/img/specials-5.png" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
    </section><!-- End Specials Section -->

    

    <!-- ======= Book A Table Section ======= -->
    <!--<section id="book-a-table" class="book-a-table">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Reservation</h2>
          <p>Book a Table</p>
        </div>

        <form action="forms/book-a-table.php" method="post" role="form" class="php-email-form" data-aos="fade-up" data-aos-delay="100">
          <div class="row">
            <div class="col-lg-4 col-md-6 form-group">
              <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars">
              <div class="validate"></div>
            </div>
            <div class="col-lg-4 col-md-6 form-group mt-3 mt-md-0">
              <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email">
              <div class="validate"></div>
            </div>
            <div class="col-lg-4 col-md-6 form-group mt-3 mt-md-0">
              <input type="text" class="form-control" name="phone" id="phone" placeholder="Your Phone" data-rule="minlen:4" data-msg="Please enter at least 4 chars">
              <div class="validate"></div>
            </div>
            <div class="col-lg-4 col-md-6 form-group mt-3">
              <input type="text" name="date" class="form-control" id="date" placeholder="Date" data-rule="minlen:4" data-msg="Please enter at least 4 chars">
              <div class="validate"></div>
            </div>
            <div class="col-lg-4 col-md-6 form-group mt-3">
              <input type="text" class="form-control" name="time" id="time" placeholder="Time" data-rule="minlen:4" data-msg="Please enter at least 4 chars">
              <div class="validate"></div>
            </div>
            <div class="col-lg-4 col-md-6 form-group mt-3">
              <input type="number" class="form-control" name="people" id="people" placeholder="# of people" data-rule="minlen:1" data-msg="Please enter at least 1 chars">
              <div class="validate"></div>
            </div>
          </div>
          <div class="form-group mt-3">
            <textarea class="form-control" name="message" rows="5" placeholder="Message"></textarea>
            <div class="validate"></div>
          </div>
          <div class="mb-3">
            <div class="loading">Loading</div>
            <div class="error-message"></div>
            <div class="sent-message">Your booking request was sent. We will call back or send an Email to confirm your reservation. Thank you!</div>
          </div>
          <div class="text-center"><button type="submit">Book a Table</button></div>
        </form>

      </div>
    </section>---!><!-- End Book A Table Section -->

    <!-- ======= Testimonials Section ======= -->
    <!--<section id="testimonials" class="testimonials section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Testimonials</h2>
          <p>What they're saying about us</p>
        </div>

        <div class="testimonials-slider swiper-container" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">

            <div class="swiper-slide">
              <div class="testimonial-item">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
                <img src="assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
                <h3>Saul Goodman</h3>
                <h4>Ceo &amp; Founder</h4>
              </div>
            </div><!-- End testimonial item -->

            <!--<div class="swiper-slide">
              <div class="testimonial-item">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam anim culpa.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
                <img src="assets/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
                <h3>Sara Wilsson</h3>
                <h4>Designer</h4>
              </div>
            </div><!-- End testimonial item -->

            <!--<div class="swiper-slide">
              <div class="testimonial-item">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Enim nisi quem export duis labore cillum quae magna enim sint quorum nulla quem veniam duis minim tempor labore quem eram duis noster aute amet eram fore quis sint minim.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
                <img src="assets/img/testimonials/testimonials-3.jpg" class="testimonial-img" alt="">
                <h3>Jena Karlis</h3>
                <h4>Store Owner</h4>
              </div>
            </div><!-- End testimonial item -->

            <!--<div class="swiper-slide">
              <div class="testimonial-item">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Fugiat enim eram quae cillum dolore dolor amet nulla culpa multos export minim fugiat minim velit minim dolor enim duis veniam ipsum anim magna sunt elit fore quem dolore labore illum veniam.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
                <img src="assets/img/testimonials/testimonials-4.jpg" class="testimonial-img" alt="">
                <h3>Matt Brandon</h3>
                <h4>Freelancer</h4>
              </div>
            </div><!-- End testimonial item -->

            <!--<div class="swiper-slide">
              <div class="testimonial-item">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Quis quorum aliqua sint quem legam fore sunt eram irure aliqua veniam tempor noster veniam enim culpa labore duis sunt culpa nulla illum cillum fugiat legam esse veniam culpa fore nisi cillum quid.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
                <img src="assets/img/testimonials/testimonials-5.jpg" class="testimonial-img" alt="">
                <h3>John Larson</h3>
                <h4>Entrepreneur</h4>
              </div>
            </div><!-- End testimonial item -->

          <!--</div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section> --!><!-- End Testimonials Section -->

    <!-- ======= Gallery Section ======= -->
    <section id="gallery" class="gallery">

      <div class="container" data-aos="fade-up">
        <div class="section-title">
          <h2>Gallery</h2>
          <p>Some photos from Our Restaurant</p>
        </div>
      </div>

      <div class="container-fluid" data-aos="fade-up" data-aos-delay="100">

        <div class="row g-0">
            <?php
            $handle = opendir('assets/img/gallery/');
                while($file = readdir($handle)){
                  if($file !== '.' && $file !== '..'){
                    echo '<div class="col-lg-3 col-md-4"><div class="gallery-item"><a href="assets/img/gallery/'.$file.'" class="gallery-lightbox" data-gall="gallery-item"><img src="assets/img/gallery/'.$file.'" alt="" class="img-fluid" /></a></div></div>';
                  }
                }
            
            ?>
        </div>

      </div>
    </section><!-- End Gallery Section -->

    <!-- ======= Chefs Section ======= -->
    <!-- End Chefs Section -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Contact</h2>
          <p>Contact Us</p>
        </div>
      </div>

      <div data-aos="fade-up">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3317.215932882102!2d-117.95790832472782!3d33.75508553336346!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80dd27c413fe0f05%3A0x3b44e4e0c92ae74f!2s14281%20Brookhurst%20St%2C%20Garden%20Grove%2C%20CA%2092844!5e0!3m2!1sen!2sus!4v1701812137227!5m2!1sen!2sus" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
      </div>

      <div class="container" data-aos="fade-up">

        <div class="row mt-5">

          <div class="col-lg-4">
            <div class="info">
              <div class="address">
                <i class="bi bi-geo-alt"></i>
                <h4>Location:</h4>
                <p>14281 Brookhurst St, Garden Grove, CA 92843</p>
              </div>

              <div class="open-hours">
                <i class="bi bi-clock"></i>
                <h4>Open Hours:</h4>
                <p>
                  Wednesday-Sunday:<br/>
                  1:30 PM - 1130 PM<br />
                  Monday:<br />
                  2:30 PM - 11:30 PM<br/>
                  Tuesday <br />
                  Closed.<br />
                  Closing Dates <br />
                  <ul>
                  <li>1st day lunar new year</li>
                  <li>thanks giving</li>
                  <li>christmas day</li>
                  <li>new years eve</li>
                  </ul>
                </p>
              </div>

              <!--<div class="email">
                <i class="bi bi-envelope"></i>
                <h4>Email:</h4>
                <p>info@example.com</p>
              </div>--!>

              <div class="phone">
                <i class="bi bi-phone"></i>
                <h4>Call:</h4>
                <p><a href="tel:+7148392200">+1 714.839.2200</a></p>
              </div>
            </div>
          </div>

          <div class="col-lg-8 mt-5 mt-lg-0" style="text-align: center;">
           
          <div class='sk-ww-google-reviews' data-embed-id='25588485' style="overflow-y:scroll;height:550px;"  loading="lazy"></div><script src='https://widgets.sociablekit.com/google-reviews/widget.js' defer></script>
            <!--
            <form action="forms/contact.php" method="post" role="form" class="php-email-form">
              <div class="row">
                <div class="col-md-6 form-group">
                  <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
                </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                  <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
                </div>
              </div>
              <div class="form-group mt-3">
                <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>
              </div>
              <div class="form-group mt-3">
                <textarea class="form-control" name="message" rows="8" placeholder="Message" required></textarea>
              </div>
              <div class="my-3">
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>
              </div>
              <div class="text-center"><button type="submit">Send Message</button></div>
            </form>
                --!>
          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">
          <div class="col-lg-3 col-md-6">
            <div class="footer-info">
              <h3>Artist Cafe</h3>
              <p>
                14281 Brookhurst St Ste A<br>
                Garden Grove CA 92843, USA<br><br>
                <strong>Phone:</strong><a href="tel:+7149651695">+1.714.839.2200</a><br/>
                <!--<strong>Email:</strong> info@example.com<br>--!>
              </p>
              <div class="social-links mt-3">
                <!--<a href="#" class="twitter"><i class="bx bxl-twitter"></i></a> --!>
                <a href="https://www.facebook.com/pages/Cafe-Artist-Restaurant/109331572439906" class="facebook"><i class="bx bxl-facebook"></i></a>
                <a href="https://www.instagram.com/cafe_artist_restaurant/" class="instagram"><i class="bx bxl-instagram"></i></a>
                <!--<a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>--!>
                <!--<a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a> --!>
              </div>
            </div>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
              <!--<li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>--!>
            </ul>
          </div>

          <!---<div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Design</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li>
            </ul>
          </div>

          <div class="col-lg-4 col-md-6 footer-newsletter">
            <h4>Our Newsletter</h4>
            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
            <form action="" method="post">
              <input type="email" name="email"><input type="submit" value="Subscribe">
            </form>
          </div>--!>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>Artist Cafe</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/restaurantly-restaurant-template/ -->
        Designed by <a href="http://redd7.com/">Redd 7</a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <!--<script src="assets/vendor/php-email-form/validate.js"></script>--!>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  
  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
  <script>
  window.onload= function(){
    $.get("getEvents.php",function(data){
        $("#ufc").html(data);
    })
  }
  $( function() {
        $( "#accordion" ).accordion({
             collapsible: true,
             active: false 
        });
  } );
  
  document.addEventListener('DOMContentLoaded', function() {
        const lazyReviews = document.querySelectorAll('.sk-ww-google-reviews');

        const observerOptions = {
            root: null, // relative to the viewport
            rootMargin: '0px',
            threshold: 0.1 // Trigger when 10% of the element is visible
        };

        const observer = new IntersectionObserver((entries, observer) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    const reviewElement = entry.target;
                    if (reviewElement.tagName === 'IFRAME' && reviewElement.dataset.src) {
                        reviewElement.src = reviewElement.dataset.src;
                    } else if (reviewElement.tagName === 'IMG' && reviewElement.dataset.src) {
                        reviewElement.src = reviewElement.dataset.src;
                    }
                    // Add more conditions for other types of lazy-loaded content if needed

                    observer.unobserve(reviewElement); // Stop observing once loaded
                }
            });
        }, observerOptions);

        lazyReviews.forEach(review => {
            observer.observe(review);
        });
    });
  </script>
</body>

</html>