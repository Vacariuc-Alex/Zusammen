<?php
//starting the session and connect with the database
session_start();
include "../server/global_scope.php";

//if the all textboxes are filled up written
if (isset($_POST['name']) && isset($_POST['email'])
&& isset($_POST['date_of_birth']) && isset($_POST['location'])
&& isset($_POST['password']) && isset($_POST['re_password']))
{

    //processing the input data, may improve infinitely
	function validate($data)
    {
        $data = trim($data);
        $data = stripslashes($data);
	    $data = htmlspecialchars($data);
	    return $data;
	}

    //first validation process
	$_POST['name'] = validate($_POST['name']);
	$_POST['email'] = validate($_POST['email']);
	$_POST['date_of_birth'] = validate($_POST['date_of_birth']);
	$_POST['location'] = validate($_POST['location']);
    $_POST['password'] = validate($_POST['password']);
    $_POST['re_password'] = validate($_POST['re_password']);

	//if email is not valid
	if(!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL))
	{
		header("Location: signup.php?error=Please enter a valid email!");
		exit();
	}

	// Validate password strength
	$uppercase = preg_match('@[A-Z]@', $_POST['password']);
	$lowercase = preg_match('@[a-z]@', $_POST['password']);
	$number    = preg_match('@[0-9]@', $_POST['password']);
	$specialChars = preg_match('@[^\w]@', $_POST['password']);

	if(!$uppercase || !$lowercase || !$number || !$specialChars || strlen($_POST['password']) < 8) {
	    header("Location: signup.php?error=Password should be at least 8 characters in length and should include at least one upper case letter, one number, and one special character!");
		exit();
	}

	//if reenter password is not good
	if($_POST['password'] !== $_POST['re_password'])
	{
		header("Location: signup.php?error=The confirmation password  does not match!");
		exit();
	}

	else
    {
        //querry to verify if username is unique
        // hashing the password
        $_POST['password'] = md5($_POST['password']);
        $class = new GlobalScope();

        //if user is already taken
		if ($class->verifyUserUnique($_POST['email']) > 0)
        {
			header("Location: signup.php?error=The email is already used, try another!");
	        exit();
		}

        //if username is unique
        else
        {
            //querry to insert the new user into database
            $insert = $class->signup($_POST['name'], $_POST['email'], $_POST['date_of_birth'], $_POST['location'], $_POST['password']);

            //display the message if account has been created successfully
            if ($insert)
            {
				//to sessiins
				$_SESSION['email'] = GlobalScope::$email;

				//add language id to the user
				$class->update_language_package();
                header("Location: http://localhost/Zusammen/main/main.php");
        		exit();
            }

            //display the message if account has not been created successfully
            else
            {
	           	header("Location: signup.php?error=Unknown error occurred!");
		        exit();
            }
        }
	}
}

//if boxes empty, ob_tidyhandler reload
else
{
	header("Location: signup.php");
	exit();
}
