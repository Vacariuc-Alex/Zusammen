<?php
// Load the database configuration file
session_start();
include '../server/global_scope.php';
$class = new GlobalScope();
$db = new PDO("mysql:host=localhost;dbname=zusammen;", "root", "");

// Get and decode the POST data
$userData = json_decode($_POST['userData']);

if(!empty($userData)){

    // The user's profile info
    $first_name = !empty($userData->given_name)?$userData->given_name:'';
    $last_name  = !empty($userData->family_name)?$userData->family_name:'';
    $email      = !empty($userData->email)?$userData->email:'';
    $picture    = "http://localhost/Zusammen/pictures/default.jpg";
    $password   = !empty($userData->id)?$userData->id:'';

    // Check if user exists
    $query = "
    SELECT * FROM personen
    WHERE email = '".$email ."';
    ";
    $result = $db->query($query);

    if($result->rowCount() > 0){

        $_SESSION['email'] = $email;
        $_SESSION['nativeLanguage'] = $class->get_language_package("nativeLanguage");
        $_SESSION['foreignLanguage'] = $class->get_language_package("foreignLanguage");
        $_SESSION['idLanguage'] = $class->get_language_package("idLanguage");
    }

    else
    {
        $query = "
        INSERT INTO `personen` (`password`, `name`, `email`, `avatarPath`)
        VALUES ('".md5($password)."', '".$first_name."', '".$email."', '".$picture."')
        ";

        $query_run = $db->prepare($query);
        $query_exec = $query_run->execute();


        $_SESSION['email'] = $email;
        $query =
        "
        UPDATE `personen` SET `idLanguage`= 1
        WHERE email = '".$_SESSION['email']."';
        ";
        $query_run = $db->prepare($query);
        $query_exec = $query_run->execute();

        $_SESSION['nativeLanguage'] = $class->get_language_package("nativeLanguage");
        $_SESSION['foreignLanguage'] = $class->get_language_package("foreignLanguage");
        $_SESSION['idLanguage'] = $class->get_language_package("idLanguage");
    }
    return true;
}
?>
