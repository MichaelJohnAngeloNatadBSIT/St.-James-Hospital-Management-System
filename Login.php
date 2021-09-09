
<?php 
    require 'includes/login.inc.php';
    require 'includes/sign-up.inc.php';
   
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="keywords" content="furnitures"/>
<meta name="author" content="Michael John Angelo D. Natad"/>
<title>Katolkia</title>
<link rel="stylesheet" type="text/css" href="css/style.css?ts=<?php echo time(); ?>"/>
<link href="https://fonts.googleapis.com/css2?family=Antic+Slab&display=swap" rel="stylesheet">
<link rel="shortcut icon" type="image/png" href="img/katolkia-logo.png"/>
</head>

<body class="login-bg">
<div class="login-elements">
<h1>LOGIN</h1>

<?php
  if(isset($_GET['error'])){
    if($_GET['error'] == "wrongpassword"){
      echo '<p class="error-msg">Wrong Password!</p>';
    }
    if($_GET['error'] == "nouser"){
      echo '<p class="error-msg">Wrong Password or Username!</p>';
    }
  }


  if(isset($_SESSION['user-id'])){
    echo '<form action="includes/logout.inc.php" method="post">
    <input class="bttn-login-reg" type="submit" value="Log Out" name="log-out-submit">
    </form>';
  }
  else{
    echo '<form class="sign-up-form" action="includes/login.inc.php" method="post">
    <input type="text" placeholder="username" name="user-name" required>
    <input type="password" placeholder="password" name="password" required>
    <input class="bttn-login-reg" type="submit" value="Login" name="log-in-submit">
    <div class="buttons-div">
    <a href="index.php"  class="bttn-login-regback">BACK</a>
    <a href="register.php"  class="bttn-login-regback">Sign Up</a>';
  }
  ?>


</div>
</form>
</div>
</div>
</body>
</html>
