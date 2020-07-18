<?php session_start(); ?>
<link rel="stylesheet" type="text/css" href="css/header.css">

<?php
  include 'php/dbConfig.php';
  include 'components/get_user_info.php'
?>

<nav class="nav_container">
    <div class="nav-wrapper black-text">
      <a href="index.php" class="brand-logo"><img id="sg_logo" src="images/logos/logo.svg" alt="StudentGator Logo"></a>
      <a href="#" data-target="mobile-demo" class="sidenav-trigger" ><i class="material-icons black-text">menu</i></a>
      <ul class="right hide-on-med-and-down">
        <li><a href="index.php">Home</a></li>
        <li><a href="SGallprogs.php">Programs</a></li>
        <li><a href="blog.php">Blog</a></li>
        <?php
        if( isset($_SESSION['username']) && !empty($_SESSION['username']) )
        {
          ?>
          <li>
            <div class="header_profile_container">
              <div class="header_profile_info">
                <img src="<?php echo $profile_picture; ?>" class="header_pp dropdown-trigger" data-target="dropdown1">
                  <ul id='dropdown1' class='dropdown-content' data-constrainWidth="false">
                    <li class="user_name_li transparent"><span class="user_name"><?php echo $first_surname; ?></span></li>
                    <li class="divider"></li>
                    <li><a href="account.php"><img src="images/icons/user.svg" alt="User icon" width="28px;">Your profile</a></li>
                    <li><a href=""><img src="images/icons/help.svg" alt="Help icon" width="28px;">Help</a></li>
                    <li><a href="logout.php"><img src="images/icons/cancel.svg" alt="Disconnect icon" width="28px;">Disconnect</a></li>
                  </ul>
              </div>
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
    <li><a href="index.php" class="black-text">Home</a></li>
    <li><a href="SGallprogs.php" class="black-text">Programs</a></li>
    <li><a href="blog.php" class="black-text">Blog</a></li>


  </ul>
  <script type="text/javascript">
    $(document).ready(function(){
       $('.sidenav').sidenav();
       $('.dropdown-trigger').dropdown({
        constrainWidth: false,
        coverTrigger: false,
        closeOnClick: false, // Displays dropdown below the button
       });
      });
  </script>
