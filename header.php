<?php
require 'includes/prod.inc.php';
require 'includes/login.inc.php';
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
<body>
<div class="top-elements">
<div class="header"></div>
 <div class="social">
  <div class="social-icon-div">
    <a href="https://facebook.com"><img class="social-logo"src="img/social-logo_fb.gif"></a>
    <a href="https://twitter.com"><img class="social-logo" src="img/social-logo_twitter.gif"></a>
    <a href="https://instagram.com"><img class="social-logo" src="img/social-logo_instagram.gif"></a>
    </div>
  <div class="log-in-container">
     
  <?php
  if(isset($_SESSION['user-id'])){
    echo '<p class="username-msg">Welcome <b>'.$_SESSION['user-name'].'</b></p>';
    echo '<form action="includes/logout.inc.php" method="post">
    <input class="log-out-bttn" type="submit" value="Log Out" name="log-out-submit">
    </form>';
  }
  else{
    echo '<a class="acct-login-register" href="Login.php">Login</a>';
    echo '<a class="acct-login-register" href="register.php">Register</a> ';
    echo '<p>YOU ARE LOGGED OUT!</p>';
  }
  ?>
  </div>
</div>
</div>
<div class="nav_bar">
<a href="about.php" id="comp-logo"><img src="img/katolkia-logo.png" alt="company-logo"></a>
<a href="index.php">Home</a>
<a href="selling.php">Buy</a>
<a href="renting.php">Rent</a>
<a href="about.php">About</a>
<a href="cart.php">Schedule</a>
</div>
<div class="search-bar">
<form action="search.php" method="POST">
<input type="text" name="search" placeholder="Enter: Ex Name, House Type, Address" id="search-bar">
<button type="submit" name="submit-search" class="search-button">SEARCH</button>
</form>
</div>
<hr />