<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <link href="https://fonts.googleapis.com/css2?family=Baloo+Paaji+2:wght@400;600&display=swap" rel="stylesheet">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>
  <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
  <link rel="stylesheet" type="text/css" href="css/account.css">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <script src="js/script.js"></script>
</head>
  <header>
    <?php include 'components/header.php';?>
    <?php include 'php/dbConfig.php'; ?>
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
    <div class="main container">
      <div class="row">
        <div class="col s12 m12 l7">
            <div class="row card">
              <div class="info_container">
                <img class="profile_picture modal-trigger tooltipped" data-position="left" data-tooltip="Change your profile picture" href="#modal1" src=<?php echo $pp_url["profile_picture_url"]; ?> alt="Photo de profil" title="Change your profile picture" >
                <div class="infos">
                  <h5><?php echo $first_surname; ?></h5>
                  <p><?php echo $biography; ?></p>
                </div>
              </div>
              <div id="modal1" class="modal">
                <div class="modal-content">
                  <h4>Upload profile picture</h4>
                  <p>Take a nice picture to show your professionalism. Formats accepted: jpg, png, jpeg</p>

                  <form action="account.php" method="post" enctype="multipart/form-data">
                    <div class="file-field input-field">
                      <div class="btn">
                        <span>Choose</span>
                        <input type="file" name="upload_pp" id="upload_pp">
                      </div>
                      <div class="file-path-wrapper">
                        <input class="file-path validate" type="text" placeholder="Profile picture">
                      </div>
                    </div>
                    <p>When done, reload the page to see your new picture</p>
                    <div class="modal-footer">
                      <input type="submit" name="submit" value="Done" class="modal-close waves-effect waves-green btn-flat">
                    </div>
                  </form>
                </div>
                <?php include 'upload_pp.php'; ?>
              </div>
              <div class="row">
                <div class="col s12 m12 l12">
                  <ul id="tabs-swipe-demo" class="tabs tabs-fixed-width transparent">
                    <?php
                    $isSubagent = 0;
                    if ($isSubagent == 1){
                      ?>
                    <li class="tab col s6 m3 l3"><a href="#documents">Documents</a></li>
                    <li class="tab col s3"><a href="#information_tab">Information</a></li>

                  </ul>
                  <?php include 'php/profile_page/documents_subagent.php' ?>
                  <?php include 'php/profile_page/profile_info.php' ?>
                  <?php }else{?>
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
                  <?php } ?>

                </div>


            </div>
        </div>

      </div>

      <div class="col s12 m12 l5">
        <div class="card">
          <?php
            if($isSubagent == 1){
           ?>

           <h4>Students list</h4>
           <div class="input-field">
             <input id="student_search" type="text" class="validate">
             <label for="student_search">Search for a student</label>
           </div>
           <div class="collection">
              <a href="#!" class="collection-item">Elie Brosset</a>
              <a href="#!" class="collection-item">Mohamed Hassanien</a>
              <a href="#!" class="collection-item">Dorian Roux</a>
              <a href="#!" class="collection-item">Maria-Paula Roulet</a>
            </div>
          <?php }else{ ?>

          <h4>Tasklist</h4>
          <div class="collection">
            <a href="#!" class="collection-item">
                <label>
                  <input type="checkbox"/>
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
        <?php } ?>
        </div>
      </div>
    </div>
  </div>
</div>

      <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
      <script>
      $(document).ready(function(){
      $('.modal').modal();
      $('.tooltipped').tooltip();
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
      <?php include 'components/footer.php';?>

  </body>
</html>
