<?php
//starting the session and connect with the database
//session_start();
include "../server/global_scope.php";

//function to generate a random new password
function generateRandomString($length = 12)
{
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
}

//sending the new password to email address
//make sure that you remember to change the official mail
if (isset($_POST['email']) and filter_var($_POST['email'], FILTER_VALIDATE_EMAIL))
{
    $new_password = generateRandomString();

    $to = $_POST['email'];
    $subject = "New Password";
    $txt = "The new password is : ".$new_password;
    $headers = "From: pap1714vacariucalex@gmail.com";

    mail($to,$subject,$txt,$headers);
    echo "<script>
        alert('The new code sent to : " . $_POST['email'] .  " ');
        document.location = 'http://localhost/Zusammen/index.php';
    </script>";
}


else{
	echo "<script> alert('A valid email is required!'); document.location = 'recover.html' </script>";
	exit();
}
