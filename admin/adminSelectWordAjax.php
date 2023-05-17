<?php
    session_start();
    $connect = new PDO("mysql:host=localhost;dbname=zusammen;", "root", "");

        $query = "
            SELECT * FROM sprache
            ORDER BY idLanguage asc;
        ";

        $query_run = $connect->prepare($query);
        $query_run->execute();
        $query_exec = $query_run->fetchAll(PDO::FETCH_OBJ);
        $output = "<option value='0'> Select language!</option>";

        foreach ($query_exec as $row) {
            $output .= "<option value='".$row->idLanguage."'>".$row->nativeLanguage." - ".$row->foreignLanguage."</option>";
        }

        echo $output;
