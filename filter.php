<?php if(isset($_POST['filter'])){
  $city=$_POST['Country'];
  $type=$_POST['field'];
  $level=$_POST['TypeProg'];
  $query="SELECT * FROM db2 WHERE City='$city' AND Type='$type' AND Level='$level' ";
  filterprogs($query);
} else {
  $query="SELECT * FROM db2";
  $search_result=filterprogs($query);
}

function filterprogs($query){
$mysqli=new mysqli('localhost','root','');
$filter_result=mysqli_query($mysqli,$query);
return $filter_result;
}
?>
