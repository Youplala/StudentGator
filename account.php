<?php session_start();

$typeOfAccount = 2;
if($typeOfAccount == 0){?>

<?php }elseif ($typeOfAccount == 1) {?>



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
        $curr_student_tasklist = $con->query("SELECT task.content, task.checked, task.due_date, task.date FROM user, tasklink, task WHERE user.username LIKE '%$curr_student_username%' AND user.username = tasklink.user AND task.ID = tasklink.ID_TL ORDER BY task.due_date ASC");

        ?>

        <div id="main">
          <div id="loading"></div>
          <div class="row">
              <div class="col s12 m12 l8 userContainer">
                  <div class="row card">
                    <div class="info_container">
                      <img class="profile_picture modal-trigger tooltipped" data-position="right" data-tooltip="Change your student profile picture" href="#modal2" src=<?php echo $curr_student_pp; ?> alt="Photo de profil">
                      <div id="modal2" class="modal">
                        <div class="modal-content">
                          <h4>Upload profile picture</h4>
                          <p>Take a nice picture to show your professionalism. Formats accepted: jpg, png, jpeg</p>
                          <form action="upload_pp.php?user=<?php echo $curr_student_username; ?>" method="post" enctype="multipart/form-data">
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
                      <div class="infos">
                        <h5><?php echo $curr_student_name; ?></h5>
                        <p><?php echo $curr_student_bio; ?></p>
                      </div>
                    </div>

                    <div class="row">

                      <div class="col s12 m12 l12">
                        <ul id="tabs-swipe-demo" class="tabs tabs-fixed-width transparent">
                          <li class="tab col s3"><a href="#applied_tab">Programs</a></li>
                          <li class="tab col s6 m3 l3"><a href="#documents">Documents</a></li>
                          <li class="tab col s3"><a href="#information_tab">Information</a></li>
                        </ul>
                        <?php include 'php/profile_page/applied_programs.php' ?>
                        <?php include 'php/profile_page/documents_user.php' ?>
                        <?php include 'php/profile_page/profile_info.php' ?>
                      </div>
                  </div>
              </div>
            </div>

            <div class="col s12 m12 l4">
                <div class="collection">
                  <a class="collection-item">
                    <form class="" name="taskForm" action="upload_task.php?curr=<?php echo $curr_student_username; ?>" method="post">
                      <label>

                        <div class="row">
                          <input type="text" name="task_content_input" class="validate" placeholder="Task content" required>
                          <span class="helper-text" data-error="Content shouldn't be empty"></span>
                          <div class="createTaskContainer">
                            <input type="text" name="task_due_input" class="datepicker" placeholder="Due date" style="width: 80%;">
                            <input class="addTaskBtn" type="image" name="submitTask" src="images/icons/add.svg" border="0" alt="Submit" width="45px;">
                          </div>


                        </div>

                      </label>
                    </form>

                  </a>
                  <?php
                  while($curr_student_tasks = mysqli_fetch_array($curr_student_tasklist)) {
                    $curr_student_task_content = $curr_student_tasks["content"];
                    $curr_student_task_checked = $curr_student_tasks["checked"];
                    $curr_student_task_due_date = $curr_student_tasks["due_date"];
                    echo '<a class="collection-item">
                        <label>
                          <input type="checkbox"/>
                          <span class="title">'.$curr_student_task_content.'</span>
                          <p class="date_hour">'.$curr_student_task_due_date.'</p>
                        </label>
                    </a>';
                  }

                   ?>
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


<?php }elseif ($typeOfAccount == 2) {?>


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
        $curr_student_tasklist = $con->query("SELECT task.content, task.checked, task.due_date, task.date FROM user, tasklink, task WHERE user.username LIKE '%$curr_student_username%' AND user.username = tasklink.user AND task.ID = tasklink.ID_TL ORDER BY task.due_date ASC");

        ?>

        <div id="main">
          <div id="loading"></div>
          <div class="row">
              <div class="col s12 m12 l8 userContainer">
                  <div class="row card">
                    <div class="info_container">
                      <img class="profile_picture modal-trigger tooltipped" data-position="right" data-tooltip="Change your student profile picture" href="#modal2" src=<?php echo $curr_student_pp; ?> alt="Photo de profil">
                      <div id="modal2" class="modal">
                        <div class="modal-content">
                          <h4>Upload profile picture</h4>
                          <p>Take a nice picture to show your professionalism. Formats accepted: jpg, png, jpeg</p>
                          <form action="upload_pp.php?user=<?php echo $curr_student_username; ?>" method="post" enctype="multipart/form-data">
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
                      <div class="infos">
                        <h5><?php echo $curr_student_name; ?></h5>
                        <p><?php echo $curr_student_bio; ?></p>
                      </div>
                    </div>

                    <div class="row">

                      <div class="col s12 m12 l12">
                        <ul id="tabs-swipe-demo" class="tabs tabs-fixed-width transparent">
                          <li class="tab col s3"><a href="#applied_tab">Programs</a></li>
                          <li class="tab col s6 m3 l3"><a href="#documents">Documents</a></li>
                          <li class="tab col s3"><a href="#information_tab">Information</a></li>
                        </ul>
                        <?php include 'php/profile_page/applied_programs.php' ?>
                        <?php include 'php/profile_page/documents_user.php' ?>
                        <?php include 'php/profile_page/profile_info.php' ?>
                      </div>
                  </div>
              </div>
            </div>

            <div class="col s12 m12 l4">
                <div class="collection">
                  <a class="collection-item">
                    <form class="" name="taskForm" action="upload_task.php?curr=<?php echo $curr_student_username; ?>" method="post">
                      <label>

                        <div class="row">
                          <input type="text" name="task_content_input" class="validate" placeholder="Task content" required>
                          <span class="helper-text" data-error="Content shouldn't be empty"></span>
                          <div class="createTaskContainer">
                            <input type="text" name="task_due_input" class="datepicker" placeholder="Due date" style="width: 80%;">
                            <input class="addTaskBtn" type="image" name="submitTask" src="images/icons/add.svg" border="0" alt="Submit" width="45px;">
                          </div>


                        </div>

                      </label>
                    </form>

                  </a>
                  <?php
                  while($curr_student_tasks = mysqli_fetch_array($curr_student_tasklist)) {
                    $curr_student_task_content = $curr_student_tasks["content"];
                    $curr_student_task_checked = $curr_student_tasks["checked"];
                    $curr_student_task_due_date = $curr_student_tasks["due_date"];
                    echo '<a class="collection-item">
                        <label>
                          <input type="checkbox"/>
                          <span class="title">'.$curr_student_task_content.'</span>
                          <p class="date_hour">'.$curr_student_task_due_date.'</p>
                        </label>
                    </a>';
                  }

                   ?>
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

<?php  } ?>


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
