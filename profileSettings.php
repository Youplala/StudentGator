<?php session_start();
$typeOfAccount = 1;
if($typeOfAccount == 0){?>


  <!DOCTYPE html>
  <html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link href="https://fonts.googleapis.com/css2?family=Baloo+Paaji+2:wght@400;600&display=swap" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
    <link rel="stylesheet" type="text/css" href="css/account_student.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <script src="js/materialize.min.js"></script>
  </head>
    <header>

      <?php include 'php/dbConfig.php'; ?>
      <?php include 'components/get_user_info.php'?>
      <?php
      mysqli_select_db($con, "useregistration");
      if( isset($_SESSION['username']) && !empty($_SESSION['username'])){
        $bio = $con->query("SELECT bio FROM user WHERE username LIKE '%$username%'");
        if (!$bio) {
          printf("Error: %s\n", mysqli_error($con));
          exit();
        }
      $biography = mysqli_fetch_array($bio)["bio"];
    }else{
      header('Location:login.php');
    }
      ?>
    </header>

    <body>

  <?php include 'components/sidenav.php'; ?>
      <div id="modal1" class="modal">
        <div class="modal-content">
          <h4>Upload profile picture</h4>
          <p>Take a picture so students can see who you are. Formats accepted: jpg, png, jpeg</p>
          <form action="upload_pp.php" method="post" enctype="multipart/form-data">
          <div class="file-field input-field">
            <div class="btn">
              <span>Choose</span>
              <input type="file" name="upload_pp" id="upload_pp" required>
            </div>
            <div class="file-path-wrapper">
              <input class="file-path validate" type="text" placeholder="Profile picture">
            </div>
          </div>
          <div class="modal-footer">
            <input type="submit" name="submit" value="Done" class="modal-close waves-effect waves-green btn-flat">
          </div>
        </form>
        </div>
      </div>

  <?php include 'components/accountHeader.php' ?>

  <div id="main">
    <div id="loading"></div>
    <ul id="account_tabs" class="tabs tabs-fixed-width transparent">
      <li class="tab col s3"><a href="#information_tab">Profile Setting</a></li>
      <li class="tab col s6 m3 l3"><a href="#account_setting">Account Setting</a></li>
      <li class="tab col s3"><a href="#privacy">Privacy & Security</a></li>
    </ul>
    <?php include 'php/profile_page/profile_info.php'; ?>
    <?php include 'php/profile_page/account_setting.php' ?>
    <?php include 'php/profile_page/privacy.php' ?>
  </div>

<?php
}elseif ($typeOfAccount == 1) {?>
  <!DOCTYPE html>
  <html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link href="https://fonts.googleapis.com/css2?family=Baloo+Paaji+2:wght@400;600&display=swap" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
    <link rel="stylesheet" type="text/css" href="css/account_dev.css">

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <script src="js/materialize.min.js"></script>
  </head>
    <header>

      <?php include 'php/dbConfig.php'; ?>
      <?php include 'components/get_user_info.php'?>
      <?php
      mysqli_select_db($con, "useregistration");
      if( isset($_SESSION['username']) && !empty($_SESSION['username'])){
        $bio = $con->query("SELECT bio FROM user WHERE username LIKE '%$username%'");
        if (!$bio) {
          printf("Error: %s\n", mysqli_error($con));
          exit();
        }
      $biography = mysqli_fetch_array($bio)["bio"];
    }else{
      header('Location:login.php');
    }
      ?>
    </header>

    <body>

  <?php include 'components/sidenav.php' ?>

  <?php include 'components/studentListSide.php' ?>

      <div id="modal1" class="modal">
        <div class="modal-content">
          <h4>Upload profile picture</h4>
          <p>Take a picture so students can see who you are. Formats accepted: jpg, png, jpeg</p>
          <form action="upload_pp.php" method="post" enctype="multipart/form-data">
          <div class="file-field input-field">
            <div class="btn">
              <span>Choose</span>
              <input type="file" name="upload_pp" id="upload_pp" required>
            </div>
            <div class="file-path-wrapper">
              <input class="file-path validate" type="text" placeholder="Profile picture">
            </div>
          </div>
          <div class="modal-footer">
            <input type="submit" name="submit" value="Done" class="modal-close waves-effect waves-green btn-flat">
          </div>
        </form>
        </div>
      </div>

  <?php include 'components/accountHeader.php' ?>

  <div id="main">
    <div id="loading"></div>
    <ul id="account_tabs" class="tabs tabs-fixed-width transparent">
      <li class="tab col s3"><a href="#information_tab">Profile Setting</a></li>
      <li class="tab col s6 m3 l3"><a href="#account_setting">Account Setting</a></li>
      <li class="tab col s3"><a href="#privacy">Privacy & Security</a></li>
    </ul>
    <?php include 'php/profile_page/profile_info.php'; ?>
    <?php include 'php/profile_page/account_setting.php' ?>
    <?php include 'php/profile_page/privacy.php' ?>
  </div>


<?php
}elseif ($typeOfAccount == 2) {
  // code...
}else{

}
?>

      <script>
      var right_sidenav = document.querySelectorAll('.sidenav-right');
      var instances = M.Sidenav.init(right_sidenav, {edge:'right'});
      document.addEventListener('DOMContentLoaded', function() {
        var tabs = document.querySelector('.tabs');
        var tabs_instance = M.Tabs.init(tabs, {});
        var hasTouchscreen = 'ontouchstart' in window;
        if (hasTouchscreen) {
          var instance = M.Tabs.init(el, {swipeable:true});
        }
        var collapsible = document.querySelector('.collapsible.expandable');
        var collapsible_instance = M.Collapsible.init(collapsible, {
          accordion: false
        });
      });
      $(document).ready(function(){
        $('#loading').fadeOut(700);
        $('.modal').modal();
        $('.tabs').tabs();
        $('.tooltipped').tooltip();
        $('.sidenav').sidenav();
        $('.datepicker').datepicker();
        $('.sidenav-right').sidenav({edge:'right'});
        $('.dropdown-trigger').dropdown({
         constrainWidth: false,
         coverTrigger: false,
         closeOnClick: false,
         alignment: 'right', // Displays dropdown below the button
        });
      });

      </script>
      <script type="text/javascript" src="js/materialize.min.js"></script>

  </body>
</html>
