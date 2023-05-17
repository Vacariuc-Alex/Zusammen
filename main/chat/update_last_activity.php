<?php
    include('database_connection.php');
    session_start();

    //query to update the information about logged in users
    $query = "
    UPDATE login_details
    SET last_activity = now()
    WHERE login_details_id = '".$_SESSION["login_details_id"]."'
    ";

    $statement = $connect->prepare($query);
    $statement->execute();

    //query to clear the repeating data from the server
    $clear_query = "
    DELETE FROM login_details
    WHERE idPerson = '".$_SESSION['idPerson']."'
    AND login_details_id != '".$_SESSION["login_details_id"]."
    ';";

    $statement = $connect->prepare($clear_query);
    $statement->execute();
