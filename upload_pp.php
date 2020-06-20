<?php
$statusMsg = '';

// File upload path


$username = $_SESSION['username'];
$targetDir = "images/user/";

mysqli_select_db($con, "useregistration");

if(isset($_POST["submit"]) && !empty($_FILES["upload_pp"]["name"])){
    // Allow certain file formats
    $fileName = basename($_FILES["upload_pp"]["name"]);
    $targetFilePath = $targetDir . $fileName;
    $fileType = pathinfo($targetFilePath,PATHINFO_EXTENSION);
    $newURL = $targetDir.$username.".".$fileType;
    $allowTypes = array('jpg','JPG','png','jpeg');
    if(in_array($fileType, $allowTypes)){
        // Upload file to server
        $query = "UPDATE user SET profile_picture_url= '$newURL' WHERE username LIKE '%$username%'";
        mysqli_query($con, $query);
        if(move_uploaded_file($_FILES["upload_pp"]["tmp_name"], $newURL)){
            // Insert image file name into database
            $statusMsg = "The file ".$fileName. " has been uploaded successfully.";
            if(!isset($_SESSION['already_refreshed'])){
                //Number of seconds to refresh the page after.
                $refreshAfter = 5;
                //Send a Refresh header.
                header('Refresh: ' . $refreshAfter);
                //Set the session variable so that we don't
                //refresh again.
                $_SESSION['already_refreshed'] = true;
            } 
            }else{
                $statusMsg = "File upload failed, please try again.";
            }
        }else{
            $statusMsg = "Sorry, there was an error uploading your file.";
        }
    }else{
        $statusMsg = 'Sorry, only JPG, JPEG, PNG, GIF, & PDF files are allowed to upload.';
    }

?>
