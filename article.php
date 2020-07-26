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
      <script src="js/script.js"></script>
    </head>
  <title>CY TECH - EISTI</title>
  <header>
    <?php
    include 'components/header.php';
    include 'php/dbConfig.php';
    mysqli_select_db($con, "useregistration");
    $id = $_GET['id'];
    $query = "SELECT * FROM articles WHERE id = '$id'";
    $article = mysqli_query($con, $query);
    $rows=$article->fetch_array();
    $id = $rows['id'];
    $title = $rows['title'];
    $content = $rows['content'];
    $date = $rows['date'];
    $author = $rows['author'];
     ?>
  </header>

    <body>
      <div class="main container">
        <div class="article_card card">
          <p><?php echo $date; ?></p>
          <div class="title center">
            <h1 class="teal-text text-darken-4"><?php echo $title; ?></h1>
          </div>
          <div class="content_container">
            <?php echo $content; ?>
          </div>
          <p><?php echo $author; ?></p>
        </div>

      </div>
      <script type="text/javascript" src="js/materialize.min.js"></script>
    </body>
    <?php include 'components/footer.php';?>

  </html>
