<!DOCTYPE html>
<html>
<head>
	<title>SIGN UP</title>
	<link rel="stylesheet" type="text/css" href="../style.css">
	<link rel="shortcut icon" type="image" href="http://localhost/Zusammen/main/img/icon.png" />

	<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script>
		$(function() {
		  $(document).tooltip();
		});

		$.getJSON("http://localhost/Zusammen/signup/tooltip.json", function(json) {
			$("input").each(function(i) {
				$( this ).attr("title", json.title[i]);
			});
			$( "select:eq(0)" ).attr("title", json.title[6]);
			$( "select:eq(1)" ).attr("title", json.title[7]);
		});
	</script>
</head>
<body
	onload="getSessionStorage('name'); getSessionStorage('email');
	getSessionStorage('date_of_birth'); getSessionStorage('location');
	getSessionStorage('password'); getSessionStorage('re_password');" >

    <form action="signup-gear.php" method="post" class="signup">
     	<h2>SIGN UP</h2>

     	<?php if (isset($_GET['error'])) { ?>
     		<p class="error"><?php echo $_GET['error']; ?></p>
     	<?php } ?>

        <label> Name </label>
        <input type="text" name="name" id="name" placeholder="ex. john Doe" required ><br>

        <label> Email </label>
    	<input type="text" name="email" id="email" placeholder="example@gmail.com" required ><br>

		<label> Date of Birth </label>
		<input type="date" name="date_of_birth" id="date_of_birth" required ><br>

		<label> Location </label>
		<input type="text" name="location" id="location" placeholder="ex. Berlin, Germany" required ><br>

		<label> Password </label>
     	<input type="password" name="password" id="password" placeholder="Password" required ><br>

        <label> Re-enter Password </label>
        <input type="password" name="re_password" id="re_password" placeholder="Re-enter Password" required ><br>

		<select class="form-select"  id="nativeLanguage"></select>
		<select class="form-select" id="foreignLanguage" style="display: none"></select>

     	<button type="submit" onclick="setSessionStorage()" > Sign Up </button>
        <a href="http://localhost/Zusammen/index.php" class="ca">Already have an account?</a>
    </form>

	<script src="signup-script.js"></script>
	<script type="text/javascript">
		//declaring the variables and defining as undefined
		var nativeLanguage, foreignLanguage;
		nativeLanguage = foreignLanguage = 'undefined';

		//check if user selected language
		function check() {
			if(nativeLanguage == 'undefined' || nativeLanguage == 'Choose your native language!')
			{
				return 1;
			}

			else if (foreignLanguage == 'undefined') {
				return 2;
			}

			else {
				return 3;
			}
		}

		//before submining the form, check if all good
		$('button').on('click', function (){
			if(check() == 1)
			{
				alert("Please select your native language!");

				//cancel the submin
				$( ".signup" ).submit(function( event ) {
				  event.preventDefault();
				});
			}

			else if(check() == 2)
			{
				alert("Please select the language you want to study!");

				//cancel the submin
				$( ".signup" ).submit(function( event ) {
				  event.preventDefault();
				});
			}

			else if(check() == 3){
				//make submit possible
				$( ".signup" ).unbind('submit');
			}
		});

		//display all native languages
		$.ajax({
			url: "signup_ajax.php",
			success:function(data)
			{
				$('#nativeLanguage').html(data);
			}
		});

		$("#nativeLanguage").on("change", function() {
			nativeLanguage = this.value;
			foreignLanguage = 'undefined';

			//display foreign language box
			$("#foreignLanguage").css("display", "block");

			//display foreign languages for the native language
			$.ajax({
				url: "signup_ajax.php",
				method:"POST",
				data:{nativeLanguage:nativeLanguage},

				success:function(data)
				{
					$('#foreignLanguage').html(data);
				}
			});

			//define the session variables
			$("#foreignLanguage").on("change", function() {
				foreignLanguage = this.value;

				$.ajax({
					url: "signup_ajax.php",
					method:"POST",
					data:{nativeLanguage:nativeLanguage, foreignLanguage:foreignLanguage},

					success:function()
					{

					}
				});
			});
		});
	</script>

</body>
</html>
