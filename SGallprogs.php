<html>

<head>
  <head>
    <meta charset="utf-8">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Baloo+Paaji+2:wght@400;600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@600&display=swap" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
    <link rel="stylesheet" type="text/css" href="css/allprogs.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <script src="js/script.js"></script>
  </head>

</head>
<title>All programs</title>
  <header>
    <?php include 'components/header.php';?>
    <?php include 'components/searchbar.php';?>
  </header>

  <body>
    <?php if(isset($_POST['filter'])){
      $count=0;
      $query="SELECT * FROM progs WHERE";
      if (!empty($_POST['Country'])) {
      $city=$_POST['Country'];
      $query=$query." city LIKE '%$city%'";
      $count=$count+1;
      }
      if (!empty($_POST['field'])) {
        $type=$_POST['field'];
        if ($count>0) {
          $query=$query." AND type LIKE '%$type%'";
          $count=$count+1;
        }
        else {
          $query=$query." type LIKE '%$type%'";
        }
      }
      if (!empty($_POST['TypeProg'])) {
        $level=$_POST['TypeProg'];
        if ($count>0) {
          $query=$query." AND level LIKE '%$level%'";
          $count=$count+1;
        }
        else {
          $query=$query." level LIKE '%$level%'";
        }
      }
      if (!empty($_POST['school'])) {
        $school=$_POST['school'];
        if ($count>0) {
          $query=$query." AND school LIKE '%$school%'";
          $count=$count+1;
        }
        else {
          $query=$query." school LIKE '%$school%'";
        }
      }
      if (!empty($_POST['lang'])) {
        $lang=$_POST['lang'];
        if ($count>0) {
          $query=$query." AND Language LIKE '%$lang%'";
          $count=$count+1;
        }
        else {
          $query=$query." Language LIKE '%$lang%'";
        }
      }
    filterprogs($query);
      $count=0;

    } else {
      $query="SELECT * FROM progs";
      $search_result=filterprogs($query);
    }

function filterprogs($query){
  include 'php/dbConfig.php';
  $filter_result=mysqli_query($mysqli,$query);
  return $filter_result;
}
include 'php/dbConfig.php';
mysqli_select_db($mysqli,'useregistration');
$resultcities=$mysqli->query("SELECT City FROM cities ORDER BY City ASC;");
$resulttypes=$mysqli->query("SELECT type FROM types ORDER BY  type  ASC;");
$resultprograms=$mysqli->query($query);
$resultlevels=$mysqli->query("SELECT * FROM levels");
$resultschools=$mysqli->query("SELECT * FROM schools ORDER BY name ASC");

     ?>
    <div class="row">
      <div class="col l2 m3 s12">
          <form  class="dropdowns" action="SGallprogs.php" method="post" size="3">
            <select class="browser-default grey-text text-darken-3" name="Country">
              <option value="Country" disabled selected>Cities</option>

              <?php while ($rows=$resultcities->fetch_assoc()) {
                $city=$rows['City'];
                echo "<option value='$city'>$city</option>";
              } ?>
            </select>

            <select class="browser-default grey-text text-darken-3"  name="TypeProg">
              <option value=""  disabled selected hidden>Program</option>
              <?php while ($rows=$resultlevels->fetch_assoc()) {
                $level=$rows['level'];
                echo "<option value='$level'>$level</option>";
              } ?>
            </select>

            <select class="browser-default grey-text text-darken-3" name="field">
              <option value="City" disabled selected hidden>Field</option>

              <?php while ($rows=$resulttypes->fetch_assoc()) {
                $type=$rows['type'];
                echo "<option value='$type'>$type</option>";
              } ?>
            </select>
            <select class="browser-default grey-text text-darken-3" name="school">
              <option value="school" disabled selected hidden>School</option>
            <?php while ($rows=$resultschools->fetch_assoc()) {
              $school=$rows['name'];
              echo "<option value='$school'>$school</option>";
            } ?>
          </select>
          <select class="browser-default grey-text text-darken-3" name="lang">
            <option value="lang" disabled selected hidden>Language</option>
            <option value="English">English</option>
            <option value="French">French</option>
        </select>
            <input type="submit" name="filter" class="waves-effect waves-light btn-large" value="Filter">
          </form>
          </div>


      <div class="col l8 m10 s12">
        <div class="programs">
          <ul class="collection">
            <?php   while ($rows=$resultprograms->fetch_assoc()) {
              $progname=$rows['Name'];
              $tut=$rows['fee'];
              $school=$rows['school'];
              $city=$rows['city'];

            echo " <li class='collection-item avatar'>";

              echo " <span class='title black-text text-darken-4'>";
              echo "$progname </span>";
                 echo "<div class='row'>";
                echo   "<div class='col l4'>";
                  echo    "<p>$school</p>";
                  echo    "<p>$city</p>";
                   echo "</div>";
                echo   " <div class='col l3'>";
                  echo    "<p>TUITION FEE</p>";
                  echo   " <p>$tut</p>";
                  echo "</div>";
                echo " </div>";
               echo "<a href='#!' class='secondary-content'><i class='material-icons'></i></a>";
             echo "</li>";
               } ?>



    <?php include 'components/footer.php';?>
    <script type="text/javascript" src="js/materialize.min.js"></script>
  </body>
</html>
