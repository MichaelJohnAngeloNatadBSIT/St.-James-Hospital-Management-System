
<?php 
require "header.php";
?>
<div class="slide-container">
  <div class="slides-fade fade">
      <img src="img/house-bg.jpg" class="img-slide">
      <div class="caption-text">Good Quality</div>
  </div>
  <div class="slides-fade fade">
    <img src="img/house-bg2.jpg" class="img-slide">
    <div class="caption-text">We value your Satisfaction</div>
  </div>
  <div class="slides-fade fade">
    <img src="img/house-bg3.jpg" class="img-slide">
    <div class="caption-text">Ergonomic</div>
  </div>
  <div class="slides-fade fade">
    <img src="img/house-bg4.jpg" class="img-slide">
    <div class="caption-text">A Good house is a Good Home</div>
  </div>
  <div class="slides-fade fade">
    <img src="img/house-bg5.jpg" class="img-slide">
    <div class="caption-text">Many Options</div>
  </div>
</div>
<div class="body-content">
<div class="new"><h1>New Listings</h1></div>
<hr />

<div class="sec_2">
<?php 

if(mysqli_num_rows($result_feature_renting) > 0){
        while($row = mysqli_fetch_array($result_feature_renting)){
         
?>
<form method="post" action="cart.php?action=add&id=<?php echo $row["house_id"]?>" >
<table>

<tr class="cart-item">
<td> <img src="<?php echo $row["house_img"] ?>"  name="house_img" alt="house-image"/> 
</br> <h3 name="house_name"><?php echo $row["house_name"]; ?></h3>
</br><h5 name="house_type"><b>Type:</b> <?php echo $row["house_type"]; ?></h5>
<h5 name="house_address"><b>Address:</b> <?php echo $row["house_address"]; ?></h5>
<h5 name="house_bedroom"><b>Bedrooms:</b> <?php echo $row["house_bedroom"]; ?></h5>
<h5 name="house_kitchen"><b>Kitchen:</b> <?php echo $row["house_kitchen"]; ?></h5>
<h5 name="house_living_room"><b>Living Room:</b> <?php echo $row["house_living_room"]; ?></h5>
<h5 name="house_status"><b>Living Room:</b> <?php echo $row["house_status"]; ?></h5>
<h3 name="house_price">₱<?php echo  number_format($row["house_price"]) ?></h3>
<input type="hidden" name="hidden_name" value="<?php echo $row["house_name"]; ?>">
<input type="hidden" name="hidden_agent_id" value="<?php echo $row["agent_id"]; ?>">
<input type="hidden" name="hidden_price" value="<?php echo $row["house_price"]; ?>">
<input type="hidden" name="hidden_img" value="<?php echo $row["house_img"]; ?>">
<input type="hidden" name="hidden_type" value="<?php echo $row["house_type"]; ?>">
<input type="hidden" name="hidden_comfort_room" value="<?php echo $row["house_comfort_room"]; ?>">
<input type="hidden" name="hidden_garage" value="<?php echo $row["house_garage"]; ?>">
<input type="hidden" name="hidden_status" value="<?php echo $row["house_status"]; ?>">
<input type="hidden" name="hidden_bedroom" value="<?php echo $row["house_bedroom"]; ?>">
<input type="hidden" name="hidden_kitchen" value="<?php echo $row["house_kitchen"]; ?>">
<input type="hidden" name="hidden_living_room" value="<?php echo $row["house_living_room"]; ?>">
<input type="hidden" name="hidden_address" value="<?php echo $row["house_address"]; ?>">
</br><input class="bttn-addCart" type="submit" value="Schedule Visit" name="add"/>
</br> </br>
</td>
</tr>

</table>
</form>
<?php 
        }
      }
?>
<?php
if(mysqli_num_rows($result_feature_selling) > 0){
        while($row = mysqli_fetch_array($result_feature_selling)){
         
?>
<form method="post" action="cart.php?action=add&id=<?php echo $row["house_id"]?>" >
<table>

<tr class="cart-item">
<td> <img src="<?php echo $row["house_img"] ?>"  name="house_img" alt="house-image"/> 
</br> <h3 name="house_name"><?php echo $row["house_name"]; ?></h3>
</br><h5 name="house_type"><b>Type:</b> <?php echo $row["house_type"]; ?></h5>
<h5 name="house_address"><b>Address:</b> <?php echo $row["house_address"]; ?></h5>
<h5 name="house_bedroom"><b>Bedrooms:</b> <?php echo $row["house_bedroom"]; ?></h5>
<h5 name="house_kitchen"><b>Kitchen:</b> <?php echo $row["house_kitchen"]; ?></h5>
<h5 name="house_living_room"><b>Living Room:</b> <?php echo $row["house_living_room"]; ?></h5>
<h5 name="house_status"><b>Living Room:</b> <?php echo $row["house_status"]; ?></h5>
<h3 name="house_price">₱<?php echo  number_format($row["house_price"]) ?></h3>
<input type="hidden" name="hidden_name" value="<?php echo $row["house_name"]; ?>">
<input type="hidden" name="hidden_agent_id" value="<?php echo $row["agent_id"]; ?>">
<input type="hidden" name="hidden_price" value="<?php echo $row["house_price"]; ?>">
<input type="hidden" name="hidden_img" value="<?php echo $row["house_img"]; ?>">
<input type="hidden" name="hidden_type" value="<?php echo $row["house_type"]; ?>">
<input type="hidden" name="hidden_comfort_room" value="<?php echo $row["house_comfort_room"]; ?>">
<input type="hidden" name="hidden_garage" value="<?php echo $row["house_garage"]; ?>">
<input type="hidden" name="hidden_status" value="<?php echo $row["house_status"]; ?>">
<input type="hidden" name="hidden_bedroom" value="<?php echo $row["house_bedroom"]; ?>">
<input type="hidden" name="hidden_kitchen" value="<?php echo $row["house_kitchen"]; ?>">
<input type="hidden" name="hidden_living_room" value="<?php echo $row["house_living_room"]; ?>">
<input type="hidden" name="hidden_address" value="<?php echo $row["house_address"]; ?>">
</br><input class="bttn-addCart" type="submit" value="Schedule Visit" name="add"/>
</br> </br>
</td>
</tr>

</table>
</form>
<?php 
        }
      }
?>
</div>
</div>

 <?php 
 require "footer.php" 
 ?>
<script type="text/javascript" src="CSS/styleScript.js"></script>

