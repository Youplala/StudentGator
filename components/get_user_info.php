<?php
if( isset($_SESSION['username']) && !empty($_SESSION['username']) )
{
  $username = $_SESSION['username'];
  mysqli_select_db($con, "useregistration");
  $url = $con->query("SELECT profile_picture_url FROM user WHERE username LIKE '%$username%'");
  $pp_url = mysqli_fetch_array($url);
  $name = $con->query("SELECT Name FROM user WHERE username LIKE '%$username%'");
  
  while($row = mysqli_fetch_array($name)) {
    $first_surname = $row["Name"];
  }
  if(mysqli_num_rows($url)>0){
    $profile_picture = $pp_url["profile_picture_url"];
  }else{
    $profile_picture = "images/user/default.png";
  }
}else{

} ?>
