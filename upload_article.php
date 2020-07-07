<?php session_start();
include 'php/dbConfig.php';

if( isset($_SESSION['username']) && !empty($_SESSION['username']) )
{
  $username = $_SESSION['username'];
  mysqli_select_db($con, "useregistration");
  $editorContent = $statusMsg = '';
  // If the form is submitted
  if(isset($_POST['submit'])){
    $accepted_origins = array("http://localhost", "http://192.168.1.1", "http://example.com");

    /*********************************************
     * Change this line to set the upload folder *
     *********************************************/
    $imageFolder = "images/blog/";
    $editorContent = $_POST['article_txt_area'];
    $article_title = $_POST['article_title'];
    reset ($_FILES);
    $temp = current($_FILES);
    if (is_uploaded_file($temp['tmp_name'])){
      if (isset($_SERVER['HTTP_ORIGIN'])) {
        if (in_array($_SERVER['HTTP_ORIGIN'], $accepted_origins)) {
          header('Access-Control-Allow-Origin: ' . $_SERVER['HTTP_ORIGIN']);
        } else {
          header("HTTP/1.1 403 Origin Denied");
          return;
        }
      }

      /*
        If your script needs to receive cookies, set images_upload_credentials : true in
        the configuration and enable the following two headers.
      */
      // header('Access-Control-Allow-Credentials: true');
      // header('P3P: CP="There is no P3P policy."');

      // Sanitize input
      if (preg_match("/([^\w\s\d\-_~,;:\[\]\(\).])|([\.]{2,})/", $temp['name'])) {
          header("HTTP/1.1 400 Invalid file name.");
          return;
      }

      // Verify extension
      if (!in_array(strtolower(pathinfo($temp['name'], PATHINFO_EXTENSION)), array("gif", "jpg", "png"))) {
          header("HTTP/1.1 400 Invalid extension.");
          return;
      }

      // Accept upload if there was no origin, or if it is an accepted origin
      $filetowrite = $imageFolder . $temp['name'];
      move_uploaded_file($temp['tmp_name'], $filetowrite);

      // Respond to the successful upload with JSON.
      // Use a location key to specify the path to the saved image resource.
      // { location : '/your/uploaded/image/file'}
      echo json_encode(array('location' => $filetowrite));
    } else {
      // Notify editor that the upload failed
      header("HTTP/1.1 500 Server Error");
    }
      // Get editor content

      // Check whether the editor content is empty
      if(!empty($editorContent)){
          // Insert editor content in the database
          $query = "INSERT INTO articles (title, content, date, author) VALUES ('$article_title','$editorContent', NOW(), '$username')";
          $insert = mysqli_query($con, $query);
          // If database insertion is successful
          if($insert){
              $statusMsg = "The editor content has been inserted successfully.";
          }else{
              $statusMsg = "Some problem occurred, please try again.";
          }
      }else{
          $statusMsg = 'Please add content in the editor.';
      }


      $statusMsg = '';
      $username = $_SESSION['username'];
      $targetDir = "images/blog/";

      mysqli_select_db($con, "useregistration");

      if(!empty($_FILES["article_bg"]["name"])){
          // Allow certain file formats
          $fileName = basename($_FILES["article_bg"]["name"]);
          $targetFilePath = $targetDir . $fileName;
          $fileType = pathinfo($targetFilePath,PATHINFO_EXTENSION);
          mkdir($targetDir.str_replace(' ', '-', $article_title), 0755, true);
          $newURL = $targetDir.str_replace(' ', '-', $article_title).".".$fileType;
          $allowTypes = array('jpg','JPG','png','jpeg');
          if(in_array($fileType, $allowTypes)){
              // Upload file to server
              $query = "UPDATE user SET profile_picture_url= '$newURL' WHERE username LIKE '%$username%'";
              mysqli_query($con, $query);
              if(move_uploaded_file($_FILES["upload_pp"]["tmp_name"], $newURL)){
                  // Insert image file name into database
                  $statusMsg = "The file ".$fileName. " has been uploaded successfully.";
                  }else{
                      $statusMsg = "File upload failed, please try again.";
                  }
              }else{
                  $statusMsg = "Sorry, there was an error uploading your file.";
              }
          }else{
              $statusMsg = 'Sorry, only JPG, JPEG, PNG, GIF, & PDF files are allowed to upload.';
          }
  }

}


header('Location:blog.php');
//echo $statusMsg;

?>
