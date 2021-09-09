<?php

require 'includes/purchase.inc.php';
require 'includes/prod.inc.php';
require 'includes/agent.inc.php';

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
<h1>Visit Information</h1>
<?php
    if(isset($_GET['error'])){
        if($_GET['error'] == "emptyfields"){
            echo '<p class="error-msg-signup">Fill in all Fields!</p>';
        }
        else if($_GET['error'] == "invalidemail"){
            echo '<p class="error-msg-signup">Invalid Email!</p>';
        }
        else if($_GET['error'] == "wrongusername"){
            echo '<p class="error-msg-signup">Username does not match!</p>';
        }
        
    }
?>
<form class="sign-up-form" action="includes/purchase.inc.php" method="post" >
<input type="text" placeholder="first name" name="first-name">
<input type="text" placeholder="last name" name="last-name">
<input type="text" placeholder="address: #street Barangay City" name="address">
<input type="text" placeholder="Contact Number" name="contact-number">
<input type="text" placeholder="E-mail Address" name="e-mail-address">
<input type="text" placeholder="username" name="username">

<label for="Visit Date">Visit Date:</label>
  <input type="date" name="date-of-visit">
  </br>



<?php 
 
    if(!empty($_SESSION["cart"])){
            $total = 0;
            foreach ($_SESSION["cart"] as $key => $values){
                  
                
?>

<input type="hidden" name="hidden_id" value="<?php echo $values["house_id"] ?>">
<input type="hidden" name="hidden_agent_id" value="<?php echo $values["agent_id"] ?>">
<input type="hidden" name="hidden_name" value="<?php echo $values["house_name"] ?>">
<input type="hidden" name="hidden_status" value="<?php echo $values["house_status"] ?>">
<input type="hidden" name="hidden_address" value="<?php echo $values["house_address"] ?>">
<?php 
    }
?>
<input class="bttn-login-regback" type="submit" value="Schedule Visit" name="purchase-submit"></br></br>
<a href="cart.php" class="bttn-login-regback">BACK</a>
<?php 
    }
    
?>

</form>
</div>
</div>
</body>
</html>
