<?php
include("include/connection.php");
?>
    <div class="main-section">
    <div class="row">


            <!-- getting the user information who is logged in-->
            <?php
                $user=$_SESSION['username'];
                $get_user = "select * from user where username = '$user' ";
                $run_user = mysqli_query($con, $get_user);
                $row = mysqli_fetch_array($run_user);
                $user_name = $row['username'];
                $uname = $row['Name'];
             ?>



<!-- ADMIN SUPPORT-->
            <?php
                  if ($user_name == 'S_Admin') {
                    // getting the user data on which admin clicks
                        if (isset($_GET['username'])){
                            global $con;

                            $get_username = $_GET['username'];
                            $get_user = "select * from user where username = '$get_username'";
                            $run_user = mysqli_query($con, $get_user);
                            $row_user = mysqli_fetch_array($run_user);
                            $username = $row_user['username'];
                            $name = $row_user['Name'];
                            $update_msg = mysqli_query($con, "UPDATE users_chat SET msg_status = 'read'
                             WHERE sender_username = '$username' " )
                            ;
                           //$user_profile_image = $row_user['user_profile'];
                           ?>
                           <div class="right-header">

                                     <div class="right-header-detail">
                                     <p id="name_of_user" class="name_user">
                                       <?php echo"$name"; ?>  <small text-transform="lowercase"> <?php echo"$username" ?></small> </p>
                                 </div>


                           <div class="col s3 left-chat">
                               <ul>
                                 <?php include("include/get_users_data.php");
                                   ?>
                                 </ul>
                           </div>


                         <div id="scrolling_to_bottom" class="col s9 push-s0 right-header-contentChat">
                           <?php

                               $sel_msg = "select * from users_chat where (sender_username = '$user_name'
                               AND receiver_username = '$username')  OR (receiver_username = '$user_name'
                               AND sender_username = '$username') ORDER by 1 ASC";
                               $run_msg = mysqli_query($con, $sel_msg);

                               while ($row = mysqli_fetch_array($run_msg)){
                                 $sender_username = $row['sender_username'];
                                 $receiver_username = $row['receiver_username'];
                                 $msg_content = $row['msg_content'];
                                 $msg_date = $row['msg_date'];
                                 $msg_status = $row['msg_status'];

                            ?>
                               <ul>
                                 <?php
                                     if($user_name == $sender_username AND $username == $receiver_username){

                                       echo"
                                         <li>
                                         <div class='rightside-right-chat'>
                                           <span> <small> $msg_date </small> $uname </span> <br>
                                           <p>$msg_content</p>
                                           <span> <small> $msg_status</small></span>
                                           </div>
                                         </li>
                                         ";
                                     }

                                     else if($user_name == $receiver_username AND $username == $sender_username){
                                       echo"
                                         <li>
                                         <div class='rightside-left-chat'>
                                           <span> $name <small> $msg_date </small> </span>
                                           <br>
                                           <p>$msg_content</p>
                                           </div>
                                         </li>
                                         ";
                                       }
                                  ?>
                                  </ul>
                                  <?php
                                } global $con; ?>
                         </div>

                           <div class="col s9 push-s0 right-chat-textbox">
                             <form class=""  method="post">
                                 <input autocomplete="off" type="text" name="msg_content" placeholder="Write your message...">
                                 <button class="btn" name="submit" onclick="chat.php?username=$username" >
                                 <i class="fa fa-telegram" aria-hidden="true"></i>Answer</button>
                             </form>
                           </div>
           </div>

         <?php  }else{?>
           <div class="right-header">

                     <div class="right-header-detail">
                     <p id="name_of_user" class="name_user">Select a student</p>
                   </div>
          </div>
           <div class="col s3 left-chat">
               <ul>
                 <?php include("include/get_users_data.php");
                   ?>
                 </ul>
           </div>
           <?php

                         }

            ?>

</div>

</div>
  <?php
        if(isset($_POST['submit'])) {
          $msg = htmlentities($_POST['msg_content']);
          if($msg ==" " || $msg== ""){
            echo"
              <div class ='alert alert-danger'>
              M.toast({html: 'Message was unable to send'})  ;
                <strong> <center> Message was unable to send </center> <strong>
                </div>
            ";
          }
          else if (strlen($msg) >1000){
            echo"
              <div class ='alert alert-danger'>
                <strong> <center> Message is too long. Use only 100 characters </center> <strong>
                </div>
            ";
          }
          else{
            $insert = "insert into users_chat(sender_username, receiver_username,
            msg_content, msg_status, msg_date) values('$user_name', '$username', '$msg', 'unread', NOW())";
            $run_insert = mysqli_query($con, $insert);
            global $con;

          }

      ?>








<!-- USERS SUPPORT-->

<?php } } else {

      global $con;

      $get_user = "select * from user where username = 'S_Admin'";
      $run_user = mysqli_query($con, $get_user);
      $row_user = mysqli_fetch_array($run_user);
      $username = $row_user['username'];
      $name = $row_user['Name'];



    $total_messages = "select * from users_chat where (sender_username = '$user_name'
    AND receiver_username='$username' AND msg_status='unread')";
    $run_messages = mysqli_query($con, $total_messages);
    $total = mysqli_num_rows($run_messages);



              ?>
              <div class="right-header">
                <div class="right-header-detail">

            <div id="scrolling_to_bottom" class="right-header-contentChat">
              <?php
                  $update_msg = mysqli_query($con, "UPDATE users_chat SET msg_status = 'read'
                    WHERE sender_username = '$username' AND receiver_username = '$user_name'" )
                    ;

                  $sel_msg = "select * from users_chat where (sender_username = '$user_name'
                  AND receiver_username = '$username')  OR (receiver_username = '$user_name'
                  AND sender_username = '$username') ORDER by 1 ASC";
                  $run_msg = mysqli_query($con, $sel_msg);

                  while ($row = mysqli_fetch_array($run_msg)){
                    $sender_username = $row['sender_username'];
                    $receiver_username = $row['receiver_username'];
                    $msg_content = $row['msg_content'];
                    $msg_date = $row['msg_date'];
                    $msg_status = $row['msg_status']

               ?>
                  <ul>
                    <?php
                        if($user_name == $sender_username AND $username == $receiver_username){

                          echo"
                            <li>
                            <div class='rightside-right-chat'>
                              <span> <small> $msg_date </small> $uname </span> <br>
                              <p>$msg_content</p>
                              </div>
                            </li>
                            ";
                        }

                        else if($user_name == $receiver_username AND $username == $sender_username){
                          echo"
                            <li>
                            <div class='rightside-left-chat'>
                              <span> $name <small> $msg_date </small> </span>
                              <p>$msg_content</p>
                                <br>
                              </div>
                            </li>
                            ";
                          }
                     ?>
                     </ul>
                     <?php
                   }  global $con;?>
            </div>

              <div class="right-chat-textbox">
                <form class=""  method="post">
                    <input autocomplete="off" type="text" name="msg_content" placeholder="Write your message...">
                    <button class="btn" name="submit">
                    <i class="fa fa-telegram" aria-hidden="true"></i>Send</button>
                </form>
            </div>
          </div>
        </div>
      </div>

</div>
<?php
      if(isset($_POST['submit'])) {
        $msg = htmlentities($_POST['msg_content']);
        if($msg ==" " || $msg== "" ){
          echo"
            <div class ='alert alert-danger'>
              <strong> <center> Message was unable to send </center> <strong>
              </div>
          ";
        }
        else if (strlen($msg) >1000){
          echo"
            <div class ='alert alert-danger'>
              <strong> <center> Message is too long. Use only 100 characters </center> <strong>
              </div>
          ";
        }
        else{
          $insert = "insert into users_chat(sender_username, receiver_username,
          msg_content, msg_status, msg_date) values('$user_name', '$username', '$msg', 'unread', NOW())";
          $run_insert = mysqli_query($con, $insert);
        }
      }
   }?>


<!-- SCROLL-->

<script type="text/javascript">
  $('#scrolling_to_bottom').scrollTop($('#scrolling_to_bottom')[0].scrollHeight);
</script>

</html>
