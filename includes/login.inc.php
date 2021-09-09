<?php
//log in script
if(isset($_POST['log-in-submit'])){

    require 'dbh.inc.php';

    $user_name = $_POST['user-name'];
    $password = $_POST['password'];

    //checks if empty inputs
    if(empty($user_name) || empty($password)) {
        header("Location: ../Login.php?error=emptyfields");
        exit();
    }

    else{
        $sql = "SELECT * FROM tbl_customer_accounts WHERE customer_username=?;";
        $stmt = mysqli_stmt_init($conn);
        if(!mysqli_stmt_prepare($stmt, $sql)){
            header("Location: ../index.php?error=sqlerror");
            exit();
        }
        //gets the username from DB
        else{
            mysqli_stmt_bind_param($stmt, "s", $user_name);
            mysqli_stmt_execute($stmt);
            $result = mysqli_stmt_get_result($stmt);
            //checks if wrong password
            if($row = mysqli_fetch_assoc($result)){
                $pwdCheck = password_verify($password, $row['customer_password']);
                if($pwdCheck == false){
                    header("Location: ../Login.php?error=wrongpassword");
                    exit();
                }
                //statement if password is true returns to index page
                else if($pwdCheck == true){
                    session_start();
                    $_SESSION['user-id'] = $row['customer_id'];
                    $_SESSION['user-name'] = $row['customer_username'];

                    header("Location: ../index.php?login=success&username=".$user_name);
                    exit();
                }
            } 
            //error if no user found in DB
            else{
                header("Location: ../Login.php?error=nouser");
                exit();
            }
        }
    }

}

