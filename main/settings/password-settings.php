<?php
    session_start();
    include '../../server/global_scope.php';
    $class = new GlobalScope();

    if(isset($_POST['submit_password']))
    {
        //validation here
        function validate($data)
        {
            $data = trim($data);
            $data = stripslashes($data);
            $data = htmlspecialchars($data);
            return $data;
        }
        
        $uppercase = preg_match('@[A-Z]@', $_POST['new_password']);
        $lowercase = preg_match('@[a-z]@', $_POST['new_password']);
        $number    = preg_match('@[0-9]@', $_POST['new_password']);
        $specialChars = preg_match('@[^\w]@', $_POST['new_password']);

        $_POST['submit_password'] = validate($_POST['submit_password']);
        $_POST['new_password'] = validate($_POST['new_password']);
        $_POST['current_password'] = validate($_POST['current_password']);

        if(!$uppercase || !$lowercase || !$number || !$specialChars || strlen($_POST['new_password']) < 8)
        {
            echo "<script>";
            echo "window.alert('Password should be at least 8 characters in length and should include at least one upper case letter, one number, and one special character!');";
            echo "window.location.href=\"settings.php?block=password\"";
            echo "</script>";
            exit();
        }

        else if(strlen($_POST['new_password']) > 255)
        {
            echo "<script>";
            echo "window.alert('The new password is too long!');";
            echo "window.location.href=\"settings.php?block=password\"";
            echo "</script>";
            exit();
        }

        else if(md5($_POST['current_password']) != $class->get_user_settings($_SESSION['email'], 'password'))
        {
            echo "<script>";
            echo "window.alert('Your current password is incorrect!');";
            echo "window.location.href=\"settings.php?block=password\"";
            echo "</script>";
            exit();
        }

        else if($_POST['confirm_new_password'] != $_POST['new_password'])
        {
            echo "<script>";
            echo "window.alert('The new password doesn\'t match!');";
            echo "window.location.href=\"settings.php?block=password\"";
            echo "</script>";
            exit();
        }

        else if($_POST['current_password'] == $_POST['new_password'])
        {
            echo "<script>";
            echo "window.alert('This password already exists! Try another!');";
            echo "window.location.href=\"settings.php?block=password\"";
            echo "</script>";
            exit();
        }

        else
        {
            $class->update_password($_SESSION['email'], md5($_POST['new_password']));
            echo "<script>";
            echo "window.alert('Password changed successfully!');";
            echo "window.location.href=\"settings.php?block=password\"";
            echo "</script>";
            exit();
        }
    }
