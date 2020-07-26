<html>
    <head>
      <meta charset="utf-8">
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>
      <link href="https://fonts.googleapis.com/css2?family=Baloo+Paaji+2:wght@400;600&display=swap" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@600&display=swap" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css2?family=Francois+One&display=swap" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css2?family=Secular+One&display=swap" rel="stylesheet">
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
      <link rel="stylesheet" type="text/css" href="css/blog.css">
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      <script src="https://cdn.tiny.cloud/1/pey3w0rlrjtwz103klfkfluaaymjykovcczyih5wjhg54pjv/tinymce/5/tinymce.min.js" referrerpolicy="origin"/></script>
      <script src="js/script.js"></script>
      <script src="tinymce/tinymce.min.js"></script>
      <script src="tinymce/tinymce-init.js"></script>
    </head>
  <title>CY TECH - EISTI</title>
  <header>
    <?php include 'components/header.php';?>
    <?php include 'php/dbConfig.php'; ?>
  </header>

    <body>
      <div class="main container">
        <?php
        mysqli_select_db($con, "useregistration");
        $query = "SELECT * FROM articles ORDER BY date DESC";
        $articles = mysqli_query($con, $query);
         ?>
        <div class="title center">
          <h1 class="teal-text text-darken-4">StudentGator Blog</h1>
        </div>
        <div class="cards_container">
          <?php
          while ($rows=$articles->fetch_assoc()) {
            $id = $rows['id'];
            $title = $rows['title'];
            $content = $rows['content'];
            $date = $rows['date'];
            $author = $rows['author'];
            echo "<div class='card blog_card'>";
            echo "<a href='article.php?id=".$id."'>";
            echo "<div class='card-image'>";
            echo "<img src='images/backgrounds/essec.jpg'>";
            echo "</div>";
            echo "<div class='card-content'>";
            echo "<p class='black-text'>$date</p>";
            echo "<span class='card-title black-text'>$title</span>";
            echo "<span class='catchphrase'>StudentGator will be your best friend to find programs.</span>";
            echo "<div class='article_info'>";
            echo "  <div class='chip'>
                <img src='$profile_picture' alt='Contact Person'>$author</div>";
            echo "</div>
          </div>
          </a>
        </div>";
          } ?>


        <div class="fixed-action-btn">
          <a class="btn-floating btn-large teal tooltipped" href="tiny.php" data-position="left" data-tooltip="Write an article">
            <i class="large material-icons">mode_edit</i>
          </a>
        </div>


        </div>
      </div>
      <script type="text/javascript">
      document.addEventListener('DOMContentLoaded', function() {
        var elems = document.querySelectorAll('.fixed-action-btn');
        var instances = M.FloatingActionButton.init(elems, options);
        var chips = document.querySelectorAll('.chips');
        var chip_instance = M.Chips.init(chips, options);
        });
        $(document).ready(function(){
   $('.tooltipped').tooltip();
 });
      </script>
      <?php include 'components/footer.php';?>
      <script type="text/javascript" src="js/materialize.min.js"></script>
    </body>
  </html>
