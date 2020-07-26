<?php session_start(); ?>

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

    <ul id="slide-out" class="sidenav sidenav-fixed" style="width: 220px;">
      <li style="padding: 10px;"><img id="sg_logo" src="images/logos/logo.svg" alt="StudentGator Logo" width="180px"></li>
      <li><div class="user-view">

        <img class="profile_picture circle" src=<?php echo $pp_url["profile_picture_url"]; ?> alt="Photo de profil">
        <a href="#name"><span class="black-text name"><?php echo $first_surname; ?></span></a>
        <a href="#email"><span class="black-text email">eliebrosset@gmail.com</span></a>
      </div></li>
      <li><a class="subheader">NAVIGATION</a></li>
      <li><a href="index.php">Home</a></li>
      <li><a href="SGallprogs.php">Programs</a></li>
      <li><a href="blog.php">Blog</a></li>
      <li><div class="divider"></div></li>
      <li><a class="subheader">DASHBOARD</a></li>
      <li><a class="waves-effect" href="#!">General</a></li>
    </ul>
    <a href="#" data-target="slide-out" class="sidenav-trigger"><i class="material-icons">menu</i></a>




    <ul id="student_list_side" class="sidenav sidenav-fixed sidenav-right">


      <li><a class="subheader">STUDENT LIST</a></li>
      <div class="row">
        <div class=" col s8 input-field">
          <input id="student_search" type="text" class="validate">
          <label for="student_search">Search for a student</label>
        </div>
        <div class="col s1">
          <a class="btn-floating waves-effect waves-light"><i class="material-icons">add</i></a>
        </div>

      </div>
      <?php
      mysqli_select_db($con, "useregistration");
      $subagent_query = $con->query("SELECT Name, username, profile_picture_url, nationality FROM user WHERE subagent LIKE '%$username%'");
       ?>
      <div class="collection">
        <?php
        while($student = mysqli_fetch_array($subagent_query)) {
          $student_name = $student["Name"];
          $student_username = $student["username"];
          $student_pp = $student["profile_picture_url"];
          $student_nationality = $student["nationality"];
          echo "<a href='account_dev.php?user=".$student_username."' class='collection-item avatar'>";
          echo '<img class="profile_picture circle" src='.$student_pp.' alt="Photo de profil">';
          echo '<span class="title">'.$student_name.'</span>';
          echo '<p class="grey-text">'.$student_nationality.'</p></a> ';
        }
         ?>

    </div>


    </ul>
    <a href="#" data-target="student_list_side" class="sidenav-trigger right"><i class="material-icons">menu</i></a>


    <?php
    if(isset($_GET['user']) && !empty($_GET['user'])){
      $curr_student = $_GET['user'];
      mysqli_select_db($con, "useregistration");
      $curr_student_query = $con->query("SELECT * FROM user WHERE username LIKE '%$curr_student%'");
      while($curr_student = mysqli_fetch_array($curr_student_query)) {
        $curr_student_name = $curr_student["Name"];
        $curr_student_username = $curr_student["username"];
        $curr_student_pp = $curr_student["profile_picture_url"];
        $curr_student_bio = $curr_student["bio"];
      }
      ?>
      <div id="main">
        <div class="row">
            <div class="col s12 m12 l8">
                <div class="row">
                  <div class="info_container">
                    <img class="profile_picture modal-trigger tooltipped" data-position="left" data-tooltip="Change your profile picture" href="#modal1" src=<?php echo $curr_student_pp; ?> alt="Photo de profil" title="Change your profile picture" >
                    <div class="infos">
                      <h5><?php echo $curr_student_name; ?></h5>
                      <p><?php echo $curr_student_bio; ?></p>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col s12 m12 l12">
                      <ul id="tabs-swipe-demo" class="tabs tabs-fixed-width transparent">
                        <li class="tab col s3"><a href="#applied_tab">Applied programs</a></li>
                        <li class="tab col s6 m3 l3"><a href="#documents">Documents</a></li>
                        <li class="tab col s3"><a href="#information_tab">Information</a></li>
                        <li class="tab col s3"><a href="#support_tab">Support</a></li>
                      </ul>
                      <?php include 'php/profile_page/applied_programs.php' ?>
                      <?php include 'php/profile_page/documents_user.php' ?>
                      <?php include 'php/profile_page/profile_info.php' ?>
                      <div id="support_tab" class="col s12 ">
                        <div class="s12 m12 l12">
                          <h5>Chat in construction</h5>
                        </div>
                      </div>
                    </div>
                </div>
            </div>
          </div>

          <div class="col s12 m12 l4">
            <div class="row valign-wrapper">
              <h4 class="col s8">Tasklist</h4>
              <div class="col s2">
                <a class="btn-floating waves-effect waves-light"><i class="material-icons">add</i></a>
              </div>

            </div>
              <div class="collection">
                <a href="#!" class="collection-item">
                    <label>
                      <input type="checkbox" checked="checked"/>
                      <span class="title">Write the new motivation letter for Brandon </span>
                      <p class="date_hour">Monday 27 | 17h30</p>
                    </label>
                </a>
                <a href="#!" class="collection-item">
                    <label>
                      <input type="checkbox" checked="checked"/>
                      <span class="title">Write the new motivation letter for Brandon </span>
                      <p class="date_hour">Monday 27 | 17h30</p>
                    </label>
                </a>
                <a href="#!" class="collection-item">
                    <label>
                      <input type="checkbox" checked="checked"/>
                      <span class="title">Write the new motivation letter for Brandon </span>
                      <p class="date_hour">Monday 27 | 17h30</p>
                    </label>
                </a>
                <a href="#!" class="collection-item">
                    <label>
                      <input type="checkbox" checked="checked"/>
                      <span class="title">Write the new motivation letter for Brandon </span>
                      <p class="date_hour">Monday 27 | 17h30</p>
                    </label>
                </a>
                <a href="#!" class="collection-item">
                    <label>
                      <input type="checkbox" checked="checked"/>
                      <span class="title">Write the new motivation letter for Brandon </span>
                      <p class="date_hour">Monday 27 | 17h30</p>
                    </label>
                </a>
                <a href="#!" class="collection-item">
                    <label>
                      <input type="checkbox" checked="checked"/>
                      <span class="title">Write the new motivation letter for Brandon </span>
                      <p class="date_hour">Monday 27 | 17h30</p>
                    </label>
                </a>
                <a href="#!" class="collection-item">
                    <label>
                      <input type="checkbox"/>
                      <span class="title">Write the new motivation letter for Brandon</span>
                      <p class="date_hour">Monday 27 | 17h30</p>
                    </label>
                </a>
                <a href="#!" class="collection-item">
                    <label>
                      <input type="checkbox"/>
                      <span class="title">Write the new motivation letter for Brandon</span>
                      <p class="date_hour">Monday 27 | 17h30</p>
                    </label>
                </a>
                <a href="#!" class="collection-item">
                    <label>
                      <input type="checkbox"/>
                      <span class="title">Write the new motivation letter for Brandon</span>
                      <p class="date_hour">Monday 27 | 17h30</p>
                    </label>
                </a>
              </div>
          </div>
      </div>
    </div>

  <?php }else{?>
    <div id="main">
      <div class="row container">
          <div class="col s12 m12 l12">
            <h5 class="center-align">Select a student to overview</h5>
            <h6 class="center-align">OR</h6>
            <h4 class="center-align">Add one</h4>
          </div>
      </div>
    </div>
  <?php  }?>



      <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
      <script>
      $(document).ready(function(){
        $('.modal').modal();
        $('.tabs').tabs();
        $('.tooltipped').tooltip();
        $('.sidenav').sidenav();
        $('.sidenav-right').sidenav({
          edge:'right',
        });
    });
      var el = document.querySelector('.tabs');
      var instance = M.Tabs.init(el, {});
      var hasTouchscreen = 'ontouchstart' in window;
      if (hasTouchscreen) {
        var instance = M.Tabs.init(el, {swipeable:true});
      }
      var elem = document.querySelector('.collapsible.expandable');
      var instance = M.Collapsible.init(elem, {
        accordion: false
      });
      </script>

  </body>
</html>
