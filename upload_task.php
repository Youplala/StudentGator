<?php
session_start();
include 'php/dbConfig.php';

$username = $_SESSION['username'];
mysqli_select_db($con, "useregistration");

if(isset($_POST["submitTask_x"]) && isset($_GET['curr']) && !empty($_POST['task_content_input'])){
    $currStudent = $_GET['curr'];
    $taskContent = $_POST['task_content_input'];
    $taskDueDate = $_POST['task_due_input'];
    $taskDate = date("M/d/Y");
    $insertTask = $con->query("INSERT INTO task (content, due_date, date) VALUES ('$taskContent', '$taskDueDate', '$taskDate')");
    if($insertTask){
      $lastID = $con -> insert_id;
      $insertTaskLink = $con->query("INSERT INTO tasklink (user, ID_TL) VALUES ('$currStudent', '$lastID')");
      header('Location: account.php?user='.$currStudent);
    }else{
      echo "no";
    }

    }else{
      $currStudent = $_GET['curr'];
      header('Location: account_dev.php?user='.$currStudent);
    }
 ?>
