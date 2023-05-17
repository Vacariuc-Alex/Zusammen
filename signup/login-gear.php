<?php
//starting the session and connect with the database
session_start();
include "../server/global_scope.php";

//if the email and password is set in php
if (isset($_POST['email']) && isset($_POST['password']))
{
	//processing the input data
	function validate($data)
	{
     	$data = trim($data);
	   	$data = stripslashes($data);
	   	$data = htmlspecialchars($data);
	   	return $data;
	}

	//assigning the data inputs to local scope
	$_POST['email'] = validate($_POST['email']);
	$_POST['password'] = validate($_POST['password']);

	//querry to verify if input corresponds like email-password
	//hashing the password
	$class = new GlobalScope();
	$class->getUser($_POST['email'], $_POST['password']);

	//if email correspond with the password
    if (GlobalScope::$email == $_POST['email'] && GlobalScope::$password == md5($_POST['password']))
	{
		//to sessions
		$_SESSION['email'] = GlobalScope::$email;

		//add language id to the user
		$_SESSION['nativeLanguage'] = $class->get_language_package("nativeLanguage");
		$_SESSION['foreignLanguage'] = $class->get_language_package("foreignLanguage");
		$_SESSION['idLanguage'] = $class->get_language_package("idLanguage");


		header("Location: http://localhost/Zusammen/main/main.php");
		exit();
    }

	//oterwise display the error
	else
	{
		header("Location: http://localhost/Zusammen/index.php?error=Incorect email or password!");
		exit();
	}
}


//if the user name and password is not written, reload
else{
	header("Location: http://localhost/Zusammen/index.php?error=Unexpected error has occured!");
	exit();
}
