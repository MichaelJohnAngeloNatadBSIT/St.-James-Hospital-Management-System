<?php

require 'includes/sign-up.inc.php';
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
<body class="register-bg">
<div class="register-elements">
<h1>SIGN UP</h1>
<?php
    if(isset($_GET['error'])){
        if($_GET['error'] == "emptyfields"){
            echo '<p class="error-msg-signup">Fill in all Fields!</p>';
        }
        else if($_GET['error'] == "invalidemail"){
            echo '<p class="error-msg-signup">Invalid Email!</p>';
        }
        else if($_GET['error'] == "invalidusername"){
            echo '<p class="error-msg-signup">Invalid Username!</br>Must only contain(a-z, A-Z, 0-9)</p>';
        }
        else if($_GET['error'] == "usernametaken"){
            echo '<p class="error-msg-signup">Username Taken!</p>';
        }
        else if($_GET['error'] == "email_addresstaken"){
            echo '<p class="error-msg-signup">Email Address Already Used!</p>';
        }
        else if($_GET['error'] == "passwordCheck"){
            echo '<p class="error-msg-signup">Password does not match!</p>';
        }
    }
    else if(isset($_GET['sign-up'])){
        if($_GET['sign-up'] == "success"){
            echo '<p class="error-msg-signup">Sign up Successful!</p>';
        }
    }
?>
<form class="sign-up-form" action="includes/sign-up.inc.php" method="post">
<input type="text" placeholder="first name" name="first-name" required>
<input type="text" placeholder="last name" name="last-name" required>
<input type="text" placeholder="address: #street Barangay City" name="address" required>
<input type="text" placeholder="E-mail Address" name="e-mail-address" required>
<input type="text" placeholder="username" name="username" required>
<input type="password" placeholder="password" name="password" required>
<input type="password" placeholder="confirm password" name="confirm-password" required></br></br>
<input class="bttn-login-regback" type="submit" value="Sign Up" name="sign-up-submit"></br></br>
<a href="index.php" class="bttn-login-regback">BACK</a>
<a href="Login.php" class="bttn-login-regback">Login</a>
</form>
</div>
</div>
</body>
</html>
