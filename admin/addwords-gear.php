<?php
    include '../server/global_scope.php';
    session_start();
    $classCall = new GlobalScope();

    //form validation
    if(
        isset($_POST['word']) && !empty($_POST['word']) &&
        isset($_POST['translation']) && !empty($_POST['translation']) &&
        isset($_POST['idLanguage']) &&  !empty($_POST['idLanguage'])
        )
    {
        //textbox length validation
        if(strlen($_POST['word']) > 255)
        {
            echo "<script> alert('Word exceded 225 character limit!');</script>";
        }

        else if(strlen($_POST['translation']) > 255)
        {
            echo "<script> alert('Translation exceded 225 character limit!');</script>";
        }

        //if everything is fine, the new word will be added
        else
        {
            $word = $_POST['word'];
            $translation = $_POST['translation'];
            $idLanguage = $_POST['idLanguage'];

            if(isset($_POST['audio']) and !empty($_POST['audio']))
            {
                $audio = $_POST['audio'];
            }

            else
            {
                $audio = NULL;
            }

            $classCall->setWordInTheDictionary($word, $translation, $audio, $idLanguage);
        }
    }

    else
    {
        echo "<script>alert('Unexpected error occured!')</script>";
    }
