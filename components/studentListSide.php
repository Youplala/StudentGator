<ul id="student_list_side" class="sidenav sidenav-fixed sidenav-right">
  <?php
  mysqli_select_db($con, "useregistration");
  if($typeOfAccount == 1){
    $subagent_query = $con->query("SELECT Name, username, profile_picture_url, nationality FROM user WHERE subagent LIKE '%$username%'");
  }elseif ($typeOfAccount == 2) {
    $subagent_query = $con->query("SELECT Name, username, profile_picture_url, nationality FROM user");
  }
   ?>
  <div class="collection">
    <?php
    while($student = mysqli_fetch_array($subagent_query)) {
      $student_name = $student["Name"];
      $student_username = $student["username"];
      $student_pp = $student["profile_picture_url"];
      $student_nationality = $student["nationality"];
      echo "<a href='account.php?user=".$student_username."' class='collection-item avatar'>";
      echo '<img class="profile_picture circle" src='.$student_pp.' alt="Photo de profil">';
      echo '<span class="title">'.$student_name.'</span>';
      echo '<p class="grey-text">'.$student_nationality.'</p></a> ';
    }
     ?>

   </div>


</ul>
