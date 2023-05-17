<?php
    session_start();
    include '../../server/global_scope.php';
    $class = new GlobalScope();

    if($_SESSION['email'] == "" || $_SESSION['email'] == NULL)
    {
        header("Location: http://localhost/Zusammen/index.php");
    }

    else
    {
        include('database_connection.php');
        $level = $_GET['level'];
        $type = $_GET['type'];
    }
?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <title> <?php echo $type; ?> </title>
        <link rel="shortcut icon" type="image" href="http://localhost/Zusammen/main/img/icon.png" />

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <?php
        display_courses($connect, $level, $type);
     ?>
</html>
