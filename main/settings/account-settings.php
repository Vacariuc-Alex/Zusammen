<?php
    session_start();
    include '../../server/global_scope.php';
    $class = new GlobalScope();

    //function to update the modified changes
    function update($class)
    {
        $class->update_account($_SESSION['email'], $_POST['email'], $_POST['name']);
        header("Location: settings.php?block=account");
        exit();
    }


    //if the email was changet
    if($_POST['email'] != $class->get_user_settings($_SESSION['email'], "email"))
    {
        //if the email is of an invalid standard
        if(!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL))
        {
            echo "<script>";
            echo "window.alert('Please enter a valid email!');";
            echo "window.location.href=\"settings.php?block=account\"";
            echo "</script>";
            exit();
        }

        //if the email already exists
        else if($class->verifyUserUnique($_POST['email']) > 0)
        {
            echo "<script>";
            echo "window.alert('The email is currently in use!');";
            echo "window.location.href=\"settings.php?block=account\"";
            echo "</script>";
            exit();
        }

        //if the name is too long
        else if(strlen($_POST['name']) > 50)
        {
            echo "<script>";
            echo "window.alert('The name is too long!');";
            echo "window.location.href=\"settings.php?block=account\"";
            echo "</script>";
            exit();
        }

        //in case everything is fine, call the update function
        else
        {
            update($class);
        }
    }

    //else if the email was not changed
    //will verify only the length of name
    else
    {
        if(strlen($_POST['name']) > 50)
        {
            echo "<script>";
            echo "window.alert('The name is too long!');";
            echo "window.location.href=\"settings.php?block=account\"";
            echo "</script>";
            exit();
        }

        update($class);
    }
