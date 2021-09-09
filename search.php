<?php 
require "header.php";
?>

<div class="body-content">
<div class="new"><h1>Houses</h1>

</div>
<hr />
<?php
//if clicked search button
if(isset($_POST['submit-search'])){
    
    $search = mysqli_real_escape_string($conn, $_POST['search']);
    $sql = "SELECT * FROM tbl_houses_selling WHERE house_name LIKE '%$search%' OR house_address LIKE '%$search%' OR house_type LIKE '%$search%'";//searches the DB
    
    $result = mysqli_query($conn, $sql);//executes query
    $queryResult = mysqli_num_rows($result); //displays results
            
        ?>
        <h3 class="new"> <?php echo "There are ".$queryResult." results!"; ?></h3>
        <?php
        if($queryResult > 0){
            while($row = mysqli_fetch_assoc($result)){
                ?>



<div class="sec_2">
                
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
                <h3 name="house_price">₱<?php echo  number_format($row["house_price"]) ?></h3>
                <input type="hidden" name="hidden_name" value="<?php echo $row["house_name"]; ?>">
                <input type="hidden" name="hidden_price" value="<?php echo $row["house_price"]; ?>">
                <input type="hidden" name="hidden_img" value="<?php echo $row["house_img"]; ?>">
                <input type="hidden" name="hidden_type" value="<?php echo $row["house_type"]; ?>">
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
      <?php      }
            }
        else{
            echo "There are no results matching your search!";
        }
    }
?>
    </div>
</div>
<?php
require 'footer.php';
?>