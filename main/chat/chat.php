<?php
    session_start();
    include '../../server/global_scope.php';
    $class = new GlobalScope();

    if($_SESSION['email'] == "" || $_SESSION['email'] == NULL)
    {
        header("Location: http://localhost/Zusammen/index.php");
    }

    else
    {
        include('database_connection.php');

        //get all of the information from database about current user
        $query = "SELECT * FROM personen WHERE email = '" . $_SESSION['email'] . "';";
        $statement = $connect->prepare($query);
        $statement->execute();
        $result = $statement->fetchAll();

        foreach($result as $row)
        {
            $_SESSION['idPerson'] = $row['idPerson'];
            $_SESSION['name'] = $row['name'];

            //setting the online user in database
            $sub_query = "
            INSERT INTO login_details
            (idPerson)
            VALUES ('".$row['idPerson']."')
            ";

            $statement = $connect->prepare($sub_query);
            $statement->execute();

            $_SESSION['login_details_id'] = $connect->lastInsertId();
        }
    }
?>

<!DOCTYPE html>
<html>
<head>
    <title> Chat </title>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" type="image" href="http://localhost/Zusammen/main/img/icon.png" />
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"
        integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
        crossorigin="anonymous"></script>

    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.rawgit.com/mervick/emojionearea/master/dist/emojionearea.min.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="https://cdn.rawgit.com/mervick/emojionearea/master/dist/emojionearea.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.2/jquery.form.js"></script>
</head>
<body>

    <div class="header">
        <img src="http://localhost/Zusammen/main/img/logo.jpg" class="logo">
        <div class="header-right">
            <a class="inactive" href="http://localhost/Zusammen/signup/logout-gear.php" style="text-decoration:none"> Logout </a>
            <a class="inactive" href="http://localhost/Zusammen/main/settings/settings.php" style="text-decoration:none" > Settings </a>
            <a class="inactive" href="http://localhost/Zusammen/main/dictionary/dictionary.php" style="text-decoration:none" > Dictionary </a>
            <a class="active" href="http://localhost/Zusammen/main/chat/chat.php" style="text-decoration:none" > Chat </a>
            <a class="inactive" href="http://localhost/Zusammen/main/lessons/lessons.php" style="text-decoration:none" > Lessons </a>
            <a class="inactive" href="http://localhost/Zusammen/main/main.php" style="text-decoration:none" > Home </a>
            <!-- Display the avatar Image -->
            <img class="avatar" style="width: 50px; height: 50px; margin-left:50px" alt="" src="" >
            <script>
                $(document).ready(function() {
                    $(".avatar").attr("src", "<?php echo $class->get_user_settings($_SESSION['email'], 'avatarPath'); ?>");

                    $(".avatar").attr("alt", "img");
                });
            </script>
        </div>
    </div>

    <div class="container">
        <!-- bootstrap table div -->
		<div class="table-responsive" style="margin-top:10rem">
			<div id="user_details"></div>
			<div id="user_model_details"></div>
		</div>
		<br />
		<br />
	</div>

    <div class="footer">
        <hr class="footer_space_bar">
        <div class="references_holder_div_footer">
            <ul class="list_for_references_footer">
                <li class="list_item_reference_footer"><a class="a_reference_footer" href="http://localhost/Zusammen/main/footer/terms.php" target="_blank" >Terms</a></li>
                <li class="list_item_reference_footer"><a class="a_reference_footer" href="http://localhost/Zusammen/main/footer/aboutus.php" target="_blank" >About Us</a></li>
                <li class="list_item_reference_footer"><a class="a_reference_footer" href="http://localhost/Zusammen/main/footer/location.php" target="_blank" >Location</a></li>
                <li class="list_item_reference_footer"><a class="a_reference_footer" href="http://localhost/Zusammen/main/footer/contactus.php" target="_blank" >Contact US</a></li>
                <li class="list_item_reference_footer"><a class="a_reference_footer" href="http://localhost/Zusammen/main/footer/privacypolicy.php" target="_blank" >Privacy Policy</a></li>
            </ul>
        </div>
    </div>
</body>
<script type="text/javascript">
    $(document).ready(function(){
        $.getJSON("http://localhost/Zusammen/translations/<?php echo $_SESSION['nativeLanguage']; ?>.json", function(json) {
            //title
            $('title').html(json.title.chat);

            //header
            $('a:eq(0)').html(json.header[0]);
            $('a:eq(1)').html(json.header[1]);
            $('a:eq(2)').html(json.header[2]);
            $('a:eq(3)').html(json.header[3]);
            $('a:eq(4)').html(json.header[4]);
            $('a:eq(5)').html(json.header[5]);

            //footer
            $('.a_reference_footer:eq(0)').html(json.footer[0]);
            $('.a_reference_footer:eq(1)').html(json.footer[1]);
            $('.a_reference_footer:eq(2)').html(json.footer[2]);
            $('.a_reference_footer:eq(3)').html(json.footer[3]);
            $('.a_reference_footer:eq(4)').html(json.footer[4]);
        });
    });
</script>
</html>



<script>
	$(document).ready(function(){

		fetch_user();

        //updating the site every second
		setInterval(function(){
			update_last_activity();
			fetch_user();
			update_chat_history_data();
		}, 1000);

        //display all of the users in the table
		function fetch_user()
		{
			$.ajax({
				url:"fetch_user.php",
				method:"POST",
				success:function(data){
					$('#user_details').html(data);
				}
			})
		}

        //checking if user is online or offline
		function update_last_activity()
		{
			$.ajax({
				url:"update_last_activity.php",
				success:function()
				{

				}
			})
		}

        //function that uses bootstrap and displays the chat window dialogue
		function make_chat_dialog_box(to_user_id, to_user_name)
		{
			var modal_content = '<div id="user_dialog_'+to_user_id+'" class="user_dialog" title="'+to_user_name+'">';

			modal_content += '<div style="height:300px; border:1px solid #ccc; overflow-y: scroll; margin-bottom:24px; padding:16px;" class="chat_history" data-touserid="'+to_user_id+'" id="chat_history_'+to_user_id+'">';
			modal_content += fetch_user_chat_history(to_user_id);
			modal_content += '</div>';

			modal_content += '<div class="form-group">';
			modal_content += '<textarea name="chat_message_'+to_user_id+'" id="chat_message_'+to_user_id+'" class="form-control chat_message"></textarea>';

            modal_content += '</div><div class="form-group" align="right">';
			modal_content+= '<button type="button" name="send_chat" id="'+to_user_id+'" class="btn btn-info send_chat">Send</button></div></div>';
			$('#user_model_details').html(modal_content);
		}

        //find the clicked user id and display it's info in a new page
        $(document).on('click', '.benutzername', function(click) {
            open("userinfo.php?benutzer=" + click.target.id, "_self");
        })

        $(document).on('click', '.benutzername:first-child', function(click) {
            open("userinfo.php?benutzer=" + click.target.id, "_self");
        })

        //Makes the chat dialogue to be active when we click on start chat button
		$(document).on('click', '.start_chat', function(){
			var to_user_id = $(this).data('touserid');
			var to_user_name = $(this).data('tousername');
			make_chat_dialog_box(to_user_id, to_user_name);
			$("#user_dialog_"+to_user_id).dialog({
				autoOpen:false,
				width:400
			});
			$('#user_dialog_'+to_user_id).dialog('open');
			$('#chat_message_'+to_user_id).emojioneArea({
				pickerPosition:"top",
				toneStyle: "bullet"
			});
		});

        //sent the message to another user, allows emoji also
		$(document).on('click', '.send_chat', function(){
			var to_user_id = $(this).attr('id');
			var chat_message = $('#chat_message_'+to_user_id).val();
			$.ajax({
				url:"insert_chat.php",
				method:"POST",
				data:{to_user_id:to_user_id, chat_message:chat_message},
				success:function(data)
				{
					var element = $('#chat_message_'+to_user_id).emojioneArea();
					element[0].emojioneArea.setText('');
					$('#chat_history_'+to_user_id).html(data);
				}
			})
		});

        //loads the history of the chat from database
		function fetch_user_chat_history(to_user_id)
		{
			$.ajax({
				url:"fetch_user_chat_history.php",
				method:"POST",
				data:{to_user_id:to_user_id},
				success:function(data){
					$('#chat_history_'+to_user_id).html(data);
				}
			})
		}

        //updates the chat history after we send a message or open the chatbox
		function update_chat_history_data()
		{
			$('.chat_history').each(function(){
				var to_user_id = $(this).data('touserid');
				fetch_user_chat_history(to_user_id);
			});
		}

        //close the chat box
		$(document).on('click', '.ui-button-icon', function(){
			$('.user_dialog').dialog('destroy').remove();
			$('#is_active_group_chat_window').val('no');
		});

        //revove the message when we click on the button remove
        $(document).on('click', '.remove_chat', function() {
            var chat_message_id = $(this).attr('id');
            if(confirm("Are you sure you want to remove this chat?"))
            {
                $.ajax({
                    url:"remove_chat.php",
                    method:"POST",
                    data:{chat_message_id:chat_message_id},
                    success:function(data)
                    {
                        update_chat_history_data();
                    }
                })
            }
        });

		$(document).on('focus', '.chat_message', function(){
			var is_type = 'yes';
			$.ajax({
				url:"update_is_type_status.php",
				method:"POST",
				data:{is_type:is_type},
				success:function()
				{

				}
			})
		});

		$(document).on('blur', '.chat_message', function(){
			var is_type = 'no';
			$.ajax({
				url:"update_is_type_status.php",
				method:"POST",
				data:{is_type:is_type},
				success:function()
				{

				}
			})
		});
	});
</script>
