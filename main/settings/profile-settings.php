<?php
    session_start();
    include '../../server/global_scope.php';
    $class = new GlobalScope();

    if(isset($_POST['submit_profile']))
    {
        //validation here
        if(strlen($_POST['location']) > 255)
        {
            echo "<script>";
            echo "window.alert('The name is too long!');";
            echo "window.location.href=\"settings.php?block=profile\"";
            echo "</script>";
            exit();
        }

        else if(strlen($_POST['hobby']) > 255)
        {
            echo "<script>";
            echo "window.alert('The name is too long!');";
            echo "window.location.href=\"settings.php?block=profile\"";
            echo "</script>";
            exit();
        }

        else
        {
            $class->update_profile($_SESSION['email'], $_POST['location'], $_POST['hobby'], $_POST['bio']);
            header("Location: settings.php?block=profile");
            exit();
        }
    }
