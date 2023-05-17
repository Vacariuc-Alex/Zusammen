<?php

    include('database_connection.php');
    if(isset($_POST["chat_message_id"]))
    {
        $query = "
        DELETE FROM chat_message
        WHERE chat_message_id = '".$_POST["chat_message_id"]."'
        ";

        $statement = $connect->prepare($query);
        $statement->execute();
    }
