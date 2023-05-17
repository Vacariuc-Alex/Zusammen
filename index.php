<!DOCTYPE html>
<html>
<head>
	<title>LOGIN</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="shortcut icon" type="image" href="http://localhost/Zusammen/main/img/icon.png" />

	<script src="https://apis.google.com/js/client:platform.js?onload=renderButton" async defer></script>
	<meta name="google-signin-client_id" content="323964517390-ftb6hthjta9kqtk61fl2vs3l4iv07ukh.apps.googleusercontent.com">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"
		integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
		crossorigin="anonymous"></script>

	<script type="text/javascript">
	// Render Google Sign-in button
	function renderButton() {
		gapi.signin2.render('gSignIn', {
			'scope': 'profile email',
			'width': 250,
			'height': 50,
			'longtitle': true,
			'theme': 'dark',
			'onsuccess': onSuccess,
			'onfailure': onFailure
		});
	}

	// Sign-in success callback
	function onSuccess(googleUser) {
		// Get the Google profile data (basic)
		//var profile = googleUser.getBasicProfile();

		// Retrieve the Google account data
		gapi.client.load('oauth2', 'v2', function () {
			var request = gapi.client.oauth2.userinfo.get({
				'userId': 'me'
			});
			request.execute(function (resp) {
				// Save user data
				saveUserData(resp);
			});
		});
	}

	// Sign-in failure callback
	function onFailure(error) {
		alert("Failed to Log in!");
	}

	// Save user data to the database
	function saveUserData(userData){
		$.post('signup/userData.php', { oauth_provider:'google', userData: JSON.stringify(userData) });
		window.location = "http://localhost/Zusammen/main/main.php";
		exit();
	}
	</script>
</head>

<body onload="getLocalStorage('email'); getLocalStorage('password');">
    <form action="signup/login-gear.php" method="post">
     	<h2>LOGIN</h2>

     	<?php if (isset($_GET['error'])) { ?>
     		<p class="error"> <?php echo $_GET['error']; ?> </p>
     	<?php } ?>

     	<label>Email</label>
     	<input type="text" id="email" name="email" placeholder="Email" required ><br>

     	<label>Password</label>
     	<input type="password" id="password" name="password" placeholder="Password" required ><br>

     	<button type="submit" onclick="setLocalStorage()" style="height: 50px;width: 100px;font-size: 18px;" > Login </button>
		<div id="gSignIn" style="margin-left: 2%;"></div>
        <a href="signup/signup.php" class="ca">Create an account</a>
		<a href="signup/recover.html" class="ca">Forgot Password?</a>
    </form>
	<script type="text/javascript" src="script.js"></script>
</body>
</html>
