
 <?php 
 require "header.php";
?>
<div class="body-content">

<div class="cart">
<div class="see-cart">
<table class="cart-table">
<div class="new"><h1>SCHEDULE</h1>
</div>

<?php
        if(!empty($_SESSION["cart"])){
            $total = 0;
            foreach ($_SESSION["cart"] as $key => $values){
                $item_name_arr[] = $values["house_name"]; 
    ?>
<form method="POST" action="<?php if(isset($_SESSION['user-id'])){  echo 'check-out.php'; } else { echo 'cart.php'; } ?>">

<div class="cart-item">
<img src="<?php echo $values["house_img"] ?>"  name="house_img" alt="house-image"/> 
</br> <h3 name="house_name"><?php echo $values["house_name"]; ?></h3>
</br><h5 name="house_type"><b>Type:</b> <?php echo $values["house_type"]; ?></h5>
<h5 name="house_address"><b>Address:</b> <?php echo $values["house_address"]; ?></h5>
<h5 name="house_bedroom"><b>Bedrooms:</b> <?php echo $values["house_bedroom"]; ?></h5>
<h5 name="house_kitchen"><b>Kitchen:</b> <?php echo $values["house_kitchen"]; ?></h5>
<h5 name="house_comfort_room"><b>Comfort Room:</b> <?php echo $values["house_comfort_room"]; ?></h5>
<h5 name="house_garage"><b>Garage:</b> <?php echo $values["house_garage"]; ?></h5>
<h5 name="house_living_room"><b>Living Room:</b> <?php echo $values["house_living_room"]; ?></h5>
<h5 name="house_status"><b>House Status:</b> <?php echo $values["house_status"]; ?></h5>
<h3 name="house_price">₱<?php echo  number_format($values["house_price"]) ?></h3>

<a href="cart.php?action=delete&id=<?php echo $values["house_id"];?>">
<input type="button" class="bttn-remove" value="REMOVE"/></a></br></br>

</div>
<?php 
        }
?>

<tr class="purchase-bar">
    <td></td>
    <td></td>
    <td><strong>TOTAL: ₱<?php echo number_format($values["house_price"], 2);  ?></strong></br>
    <input type="hidden" name="hidden_price" value="<?php echo number_format($values["house_price"], 2); ?>">
    </td>
    <td>
    
    <input type="submit" class="bttn-purchase" value="Schedule Visit" name="purchase-bttn"></input>
    <?php
    if(!isset($_SESSION['user-id'])){
    echo '<h6>you need to log in first</h6>';
    echo '<script>alert("you need to log in first!")</script>';
    }
    if(isset($_GET['purchase'])){
        if($_GET['purchase'] == "success"){
            echo '<script>alert("Visit Schedule has been Placed")</script>';
            echo '<script>window.location="cart.php"</script>';
        }
    }
    ?>
    </td>
</tr>

<?php 
    }
    
?>
</form>
</table>
   </div>
  </div>
 </div>


</body>

</html>
