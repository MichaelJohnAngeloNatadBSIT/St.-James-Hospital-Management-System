<?php

 if(isset($_POST['purchase-submit'])){  
        
        require 'dbh.inc.php';
        require 'login.inc.php';
        require 'prod.inc.php';

        $first_name = $_POST['first-name'];
        $last_name = $_POST['last-name'];
        $address = $_POST['address'];
        $contact_number = $_POST['contact-number'];
        $username = $_POST['username'];
        $email_address= $_POST['e-mail-address'];
        $house_address = $_POST['hidden_address'];
        $house_name = $_POST['hidden_name'];
        $house_id = $_POST['hidden_id'];
        $agent_id = $_POST['hidden_agent_id'];
        $date_of_visit = $_POST['date-of-visit'];
        $house_status = $_POST['hidden_status'];
        $customer_id = $_SESSION['user-id'];
        $log_in_username = $_SESSION['user-name'];
        $date_placed = date("Y-m-d"); 
        
        //checks if empty fields
        if(empty($first_name) || empty($last_name) || empty($address) || empty($username) || empty($email_address)){
        header("Location: ../check-out.php?error=emptyfields&first-name=".$first_name."&last-name=".$last_name."&address=".$address."&username=".$username."&email-address=".$email_address);
        exit();
        }
        //checks if both username and email are valid
        elseif(!filter_var($email_address, FILTER_VALIDATE_EMAIL) && !preg_match("../^[a-zA-Z0-9]*$../", $username)){
        header("Location: ../check-out.php?error=invalidemail&username=".$username);
        exit();
        }
        //checks if email is valid
        elseif(!filter_var($email_address, FILTER_VALIDATE_EMAIL)){
        header("Location: ../check-out.php?error=invalidemail&username=".$username);
        exit();
        }
        //checks if username is valid
        elseif(!preg_match("/^[a-zA-Z0-9]*$/", $username)){
        header("Location: ../check-out.php?error=invalidusername&username=".$username."&email-address=".$email_address);
        exit();
        }
        //checks if log in email and input username are same
        elseif($log_in_username !== $username){
        header("Location: ../check-out.php?error=wrongusername&username=".$username);
        exit();
        }

        else{
            //SQL query for inserting data to DB
            $sql2 ="INSERT INTO tbl_reservation (house_id, house_status,  house_name, house_address, date_of_visit, agent_id, customer_id, customer_lastname, customer_firstname, customer_address, customer_contact, customer_username, customer_email, date_placed) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            $stmt = mysqli_stmt_init($conn);
            if(!mysqli_stmt_prepare($stmt, $sql2)){
            header("Location: ../cart.php?error=sqlerror");
                exit();
            }

            else{
                //inserts data to DB
                mysqli_stmt_bind_param($stmt, "ssssssssssssss", $house_id, $house_status, $house_name, $house_address, $date_of_visit, $agent_id, $customer_id, $last_name, $first_name, $address, $contact_number, $username, $email_address, $date_placed);
                mysqli_stmt_execute($stmt);//execute the sql statement
                header("Location: ../cart.php?purchase=success");
                exit(); 
                    }
            }

        mysqli_stmt_close($stmt);
        mysqli_close($conn);
    }



    
 
    