<?php
// DB config
$dbHost     = "localhost";
$dbUsername = "root";
$dbPassword = "";
$dbName     = "useregistration";

$mysqli=new mysqli($dbHost,$dbUsername,$dbPassword);
$con = mysqli_connect($dbHost,$dbUsername,$dbPassword);
if ($mysqli->connect_error) {
    die("Connection to database failed: " . $mysqli->connect_error);
}
?>
