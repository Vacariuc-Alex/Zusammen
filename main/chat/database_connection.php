<?php
	$connect = new PDO("mysql:host=localhost;dbname=zusammen;charset=utf8mb4", "root", "");
	date_default_timezone_set('Europe/Chisinau');

	function fetch_user_last_activity($idPerson, $connect)
	{
		$query = "
		SELECT * FROM login_details
		WHERE idPerson = '$idPerson'
		ORDER BY last_activity DESC
		LIMIT 1
		";

		$statement = $connect->prepare($query);
		$statement->execute();
		$result = $statement->fetchAll();

		foreach($result as $row)
		{
			return $row['last_activity'];
		}
	}


	function fetch_user_chat_history($from_user_id, $to_user_id, $connect)
	{
		//select everything from database about a specific conversation
		$query = "
		SELECT * FROM chat_message
		WHERE (from_user_id = '".$from_user_id."'
		AND to_user_id = '".$to_user_id."')
		OR (from_user_id = '".$to_user_id."'
		AND to_user_id = '".$from_user_id."')
		ORDER BY timestamp DESC
		";

		$statement = $connect->prepare($query);
		$statement->execute();
		$result = $statement->fetchAll();
		$output = '<ul class="list-unstyled">';

		foreach($result as $row)
		{
			$user_name = '';

			//ecables/disables remove chat button
			if($row["from_user_id"] == $from_user_id)
			{
				$user_name = '<button type="button" class="btn btn-danger btn-xs remove_chat" id="' . $row['chat_message_id'] . '">x</button> &nbsp; <b class="text-success">You</b>';
			}

			else
			{
				$user_name = '<b class="text-danger">'.get_user_name($row['from_user_id'], $connect).'</b>';
			}


			// Decrypt the message from the database
			$row['chat_message'] = encrypt($row['chat_message'], 0);

			//prints the chat message inside the chat box
			$output .= '
			<li style="border-bottom:1px dotted #ccc">
				<p>'.$user_name.' - '.$row['chat_message'].'
					<div align="right">
						- <small><em>'.$row['timestamp'].'</em></small>
					</div>
				</p>
			</li>
			';
		}

		$output .= '</ul>';

		//updates the status of the message inside the database
		$query = "
		UPDATE chat_message
		SET status = '0'
		WHERE from_user_id = '".$to_user_id."'
		AND to_user_id = '".$from_user_id."'
		AND status = '1'
		";

		$statement = $connect->prepare($query);
		$statement->execute();
		return $output;
	}


	function get_user_name($idPerson, $connect)
	{
		$query = "SELECT name FROM personen WHERE idPerson = '$idPerson'";
		$statement = $connect->prepare($query);
		$statement->execute();
		$result = $statement->fetchAll();

		foreach($result as $row)
		{
			return $row['name'];
		}
	}


	function count_unseen_message($from_user_id, $to_user_id, $connect)
	{
		$query = "
		SELECT * FROM chat_message
		WHERE from_user_id = '$from_user_id'
		AND to_user_id = '$to_user_id'
		AND status = '1'
		";

		$statement = $connect->prepare($query);
		$statement->execute();
		$count = $statement->rowCount();
		$output = '';

		if($count > 0)
		{
			$output = '<span class="label label-success">'.$count.'</span>';
		}
		return $output;
	}


	function fetch_is_type_status($idPerson, $connect)
	{
		$query = "
		SELECT is_type FROM login_details
		WHERE idPerson = '".$idPerson."'
		ORDER BY last_activity DESC
		LIMIT 1
		";

		$statement = $connect->prepare($query);
		$statement->execute();
		$result = $statement->fetchAll();
		$output = '';

		foreach($result as $row)
		{
			if($row["is_type"] == 'yes')
			{
				$output = ' - <small><em><span class="text-muted">Typing...</span></em></small>';
			}
		}
		return $output;
	}

	function encrypt($given_message, $arg)
	{
		$ciphering = "AES-128-CTR";
		$iv_length = openssl_cipher_iv_length($ciphering);
		$options = 0;
		$IV = '1234567891011121';
		$KEY = "QTxlZjZw9ES5isKa";

		if($arg == 0)
			return openssl_decrypt($given_message, $ciphering, $KEY, $options, $IV);

		else if($arg == 1) {
			return openssl_encrypt($given_message, $ciphering, $KEY, $options, $IV);
		}
	}
