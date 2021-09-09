<?php

require 'dbh.inc.php';


    $sql_selling = "SELECT * FROM tbl_houses_selling WHERE house_id ORDER BY house_id ASC;";
    $result_selling = mysqli_query($conn, $sql_selling);

    $sql_renting = "SELECT * FROM tbl_houses_renting WHERE house_id ORDER BY house_id DESC;";
    $result_renting = mysqli_query($conn, $sql_renting);

    $sql_feature_renting = "SELECT * FROM tbl_houses_renting WHERE house_id IN ('15', '43', '48', '42') ORDER BY house_id DESC;";
    $result_feature_renting = mysqli_query($conn, $sql_feature_renting);

    $sql_feature_selling = "SELECT * FROM tbl_houses_selling WHERE house_id IN ('12', '45', '23', '38') ORDER BY house_id DESC;";
    $result_feature_selling = mysqli_query($conn, $sql_feature_selling);

    if (isset($_POST["add"])){
        if (isset($_SESSION["cart"])){
            $item_array_id = array_column($_SESSION["cart"],"house_id");
            if (!in_array($_GET["id"], $item_array_id)){
                $count = count($_SESSION["cart"]);
                $item_array = array(
                    'house_id' => $_GET["id"],
                    'house_name' => $_POST["hidden_name"],
                    'agent_id' => $_POST["hidden_agent_id"],
                    'house_price' => $_POST["hidden_price"],
                    'house_img' => $_POST["hidden_img"],
                    'house_bedroom' => $_POST["hidden_bedroom"],
                    'house_type' => $_POST["hidden_type"],
                    'house_status' => $_POST["hidden_status"],
                    'house_kitchen' => $_POST["hidden_kitchen"],
                    'house_comfort_room' => $_POST["hidden_comfort_room"],
                    'house_garage' => $_POST["hidden_garage"],
                    'house_living_room' => $_POST["hidden_living_room"],
                    'house_address' => $_POST["hidden_address"],
                );
                $_SESSION["cart"][$count] = $item_array;
                echo '<script>window.location="cart.php"</script>';
            }

            else{
                echo '<script>alert("Product is already Added to Cart")</script>';
                echo '<script>window.location="cart.php"</script>';
            }
        }

        else{
            $item_array = array(
                    'house_id' => $_GET["id"],
                    'house_name' => $_POST["hidden_name"],
                    'agent_id' => $_POST["hidden_agent_id"],
                    'house_price' => $_POST["hidden_price"],
                    'house_img' => $_POST["hidden_img"],
                    'house_bedroom' => $_POST["hidden_bedroom"],
                    'house_type' => $_POST["hidden_type"],
                    'house_status' => $_POST["hidden_status"],
                    'house_kitchen' => $_POST["hidden_kitchen"],
                    'house_comfort_room' => $_POST["hidden_comfort_room"],
                    'house_garage' => $_POST["hidden_garage"],
                    'house_living_room' => $_POST["hidden_living_room"],
                    'house_address' => $_POST["hidden_address"],
            );
            $_SESSION["cart"][0] = $item_array;
        }
    }
 
    if(isset($_GET["action"])){
        if($_GET["action"] == "delete"){
            foreach($_SESSION["cart"] as $keys => $values){
                if($values["house_id"] == $_GET["id"]){
                    unset($_SESSION["cart"][$keys]);
                    echo '<script>alert("PRODUCT HAS BEEN REMOVED!")</script>';
                    echo '<script>window.location="cart.php"</script>';
                }
            }
        }
    }
  