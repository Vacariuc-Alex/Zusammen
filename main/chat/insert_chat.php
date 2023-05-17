<?php


	include('database_connection.php');

	session_start();

	//encrypts the current message
	$_POST['chat_message'] = encrypt($_POST['chat_message'], 1);


	$data = array(
		':to_user_id'		=>	$_POST['to_user_id'],
		':from_user_id'		=>	$_SESSION['idPerson'],
		':chat_message'		=>	$_POST['chat_message'],
		':status'			=>	'1'
	);

	//writes the encrypted message in the database
	$query = "
	INSERT INTO chat_message
	(to_user_id, from_user_id, chat_message, status)
	VALUES (:to_user_id, :from_user_id, :chat_message, :status)
	";

	$statement = $connect->prepare($query);

	if($statement->execute($data))
	{
		echo fetch_user_chat_history($_SESSION['idPerson'], $_POST['to_user_id'], $connect);
	}
