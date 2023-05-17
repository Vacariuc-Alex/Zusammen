<?php
    session_start();
    include "../server/global_scope.php";
    $class = new GlobalScope();

    if(!isset($_POST['nativeLanguage']) and !isset($_POST['foreignLanguage']))
    {
        $class->get_native_lang();
    }

    else if(isset($_POST['nativeLanguage']) and !isset($_POST['foreignLanguage']))
    {
        $nativeLang = $_POST['nativeLanguage'];
        $class->get_foreign_lang($nativeLang);
    }

    else if (isset($_POST['nativeLanguage']) and isset($_POST['foreignLanguage']))
    {
        $_SESSION['nativeLanguage'] = $_POST['nativeLanguage'];
        $_SESSION['foreignLanguage'] = $_POST['foreignLanguage'];
        $_SESSION['idLanguage'] = $class->get_id_lang();
    }
