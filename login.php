<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Baloo+Paaji+2:wght@400;600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@600&display=swap" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
    <link rel="stylesheet" type="text/css" href="css/allprogs.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <script src="js/login.js"></script>
    <link rel="stylesheet" href="css/login.css">
    <title>Login</title>
  </head>

  <header>
    <?php
     include 'components/header.php';
     ?>
  </header>
  <body>

    <div class="row">
      <div class="col s0 m3 l4">
      </div>
      <div class="col s12 m6 l4 ">
        <div class="login-box">
          <h1>Login</h1>
          <div class="textbox">
        <form class="" action="" method="post">
          <input type="text" placeholder="Username" name="username" value="" required>
          </div>
          <div class="textbox">
          <input type="password" placeholder="Password" id="pass" name="password" value="" required>
          <p>
              <label>
                <input type="checkbox" onclick="myFunction()" />
                <span>Show Password</span>
              </label>
            </p>
          </div>
          <input class="btn login_btn" type="submit" name="submit" value="Sign in">
        </form>
          <a id="reg" href="signupform.php" style="	color: #808080;"><u>Create an account from here</u></a>
        </div>
      </div>
      <div class="col s0 m3 l4">
      </div>
    </div>
    <script type="text/javascript" src="js/materialize.min.js"></script>
    <?php
      $con=mysqli_connect('localhost','root','');
      mysqli_select_db($con,'useregistration');
      if (isset($_POST['submit'])){
        $name=$_POST['username'];
        $password=$_POST['password'];
        $s="select * from user where username='".$name."' AND password='".$password."'";
        $result=mysqli_query($con,$s);
      if ( false===$result ) {
        printf("error: %s\n", mysqli_error($con));
      }
      $num=mysqli_num_rows($result);
      if($num==1){
        $_SESSION['username']=$name;
        header('location:account.php',true);
      }else {
        echo "Wrong username or password";
      }}
    ?>
    <?php include 'components/footer.php';?>
  </body>



</html>
