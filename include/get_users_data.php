<?php

$con = mysqli_connect("localhost", "root","","useregistration");

  $user = "select * from user";
  //$chat = "select * from users_chat"
  //$sender = "select sender_username from users_chat"

  $run_user = mysqli_query($con, $user);
//  $run_chat = mysqli_query($con,$chat )

  while ($row_user = mysqli_fetch_array($run_user)){
    $name1 = $row_user['Name'];
    $username1 = $row_user['username'];
    $total_messages = "select * from users_chat where (sender_username = '$username1'
    AND receiver_username='S_Admin' AND msg_status = 'unread')";
    $run_messages = mysqli_query($con, $total_messages);
    $total = mysqli_num_rows($run_messages);

    //$total = $row['msg_status'];
    //$sender1 = $row_user['sender_username'];

    echo "

      <li>

        <div class='chat-left-detail'>
        <a href='chat.php?username=$username1'> $name1 </a>  <span > $total </span>  <br> <br>"  ;

    //if($total != 0) {

        //echo "<span> <i class='fa fa-circle' aria-hidden='true'></i> </span>" ;
      //}else{
      //  echo "<span> <i class='fa fa-circle-o' aria-hidden='true'> </i> Offline </span>" ;
      //}
      " </div>

      </li>

    ";//<small>$username1</small>
  }


?>
<script type="text/javascript">
  var total = [];
  total = $(total);
    ordered = total.sort();
    return ordered;
</script>
