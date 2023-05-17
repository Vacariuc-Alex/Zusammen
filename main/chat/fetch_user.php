<?php


	include('database_connection.php');

	session_start();

	//select all of the user from database except the current one
	$query = "
	SELECT * FROM personen
	WHERE idPerson != '".$_SESSION['idPerson']."'
	";

	$statement = $connect->prepare($query);
	$statement->execute();
	$result = $statement->fetchAll();


	//display the table
	$output = '
	<table class="table table-bordered table-striped">
		<tr>
			<th width="70%">Username</td>
			<th width="20%">Status</td>
			<th width="10%">Action</td>
		</tr>
	';

	foreach($result as $row)
	{
		//setting the status of user
		//display wheathere he is online or offline
		$status = '';
		$current_timestamp = strtotime(date("Y-m-d H:i:s") . '- 2 second');
		$current_timestamp = date('Y-m-d H:i:s', $current_timestamp);
		$user_last_activity = fetch_user_last_activity($row['idPerson'], $connect);

		if($user_last_activity > $current_timestamp)
		{
			$status = '<span class="label label-success">Online</span>';
		}

		else
		{
			$status = '<span class="label label-danger">Offline</span>';
		}


		//display the avatar of each user in the table
		$display_avatar = "<img src='".$row['avatarPath']."' style='height: 3rem; width: 3rem;border-radius: 100%; margin-right: 2rem; margin-bottom: 4px;'>";


		//display the content of the table, like : avatar, user name ans Status
		//set to each user an unique id
		//anzeigeeindeutigerbenutzerinformationen - will be used as a parameter, to it we will append the user id
		$output .= '
		<tr>
			<td style="font-weight:bold; cursor:pointer;" class="benutzername" id="anzeigeeindeutigerbenutzerinformationen' . $row['idPerson'] . '">'.$display_avatar . $row['name'] . ' '.count_unseen_message($row['idPerson'], $_SESSION['idPerson'], $connect).' '.fetch_is_type_status($row['idPerson'], $connect).'</td>
			<td>'.$status.'</td>
			<td><button type="button" class="btn btn-info btn-xs start_chat" data-touserid="'.$row['idPerson'].'" data-tousername="'.$row['name'].'">Start Chat</button></td>
		</tr>
		';
	}

	$output .= '</table>';

	echo $output;
