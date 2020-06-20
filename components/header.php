<?php session_start(); ?>
<link rel="stylesheet" type="text/css" href="css/header.css">
<?php include 'php/dbConfig.php'; ?>
<nav class="nav_container">
    <div class="nav-wrapper container black-text">
      <a href="index.php" class="brand-logo"><img id="sg_logo" src="images/logos/logo.png" alt="StudentGator Logo"></a>
      <a href="#" data-target="mobile-demo" class="sidenav-trigger" ><i class="material-icons black-text">menu</i></a>
      <ul class="right hide-on-med-and-down">
        <li><a href="index.php" class="black-text">Home</a></li>
        <li><a href="" class="black-text">News</a></li>
        <li><a href="" class="black-text">Contact</a></li>
        <li><a href="" class="black-text">About us</a></li>
        <?php
        if( isset($_SESSION['username']) && !empty($_SESSION['username']) )
        {
          $username = $_SESSION['username'];
          mysqli_select_db($con, "useregistration");
          $url = $con->query("SELECT profile_picture_url FROM user WHERE username LIKE '%$username%'");
          $pp_url = mysqli_fetch_array($url);

          if(mysqli_num_rows($url)>0){
            $profile_picture = $pp_url["profile_picture_url"];
          }else{
            $profile_picture = "images/user/default.png";
          }
          ?>
          <li>
            <div class="header_profile_container">
              <div class="header_profile_info">
                <h6 style="margin-top: 50px;">
                  <?php
                $name = $con->query("SELECT Name FROM user WHERE username LIKE '%$username%'");
                while($row = mysqli_fetch_array($name)) {
                  $first_surname = $row["Name"];
                }
                echo $first_surname;
                 ?></h6>
                <a href="logout.php" class="logout_btn grey-text">Disconnect</a>
              </div>
              <img src="<?php echo $profile_picture; ?>" class="header_pp" onclick="">
            </div>
          </li>
        <?php }else{ ?>
          <li><a href="login.php" class="waves-effect waves-light btn-large">Login</a></li>
        <?php } ?>
      </ul>
    </div>
  </nav>

  <ul class="sidenav" id="mobile-demo">
    <?php if( isset($_SESSION['username']) && !empty($_SESSION['username']) )
    {
      ?>
    <li>
      <div class="user-view">
        <div class="background">
          <img src="images/backgrounds/sidenav_header.svg" style="transform: rotate(180deg);">
        </div>
      <a href="#user"><img class="circle" src="<?php echo $profile_picture; ?>"></a>
      <a href="#name"><span class="black-text name">Elie Brosset</span></a>
      <a href="#email"><span class="black-text email">eliebrosset@gmail.com</span></a>
    </div></li>
    <?php }else{ ?>
      <li><a class="waves-effect waves-light btn-large" href="login.php">Login</a></li>
    <?php } ?>
    <li><a href="">Home</a></li>
    <li><a href="">News</a></li>
    <li><a href="">Contact</a></li>


  </ul>
  <script type="text/javascript">
    $(document).ready(function(){
       $('.sidenav').sidenav();
      });
  </script>
