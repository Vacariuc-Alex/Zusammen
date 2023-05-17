<?php
    include '../server/global_scope.php';
    session_start();
    $classCall = new GlobalScope();
?>

<!DOCTYPE html>
<html>
    <head>
        <title> Gate </title>
        <link rel="stylesheet" type="text/css" href="style.css">
        <link rel="shortcut icon" type="image" href="http://localhost/Zusammen/main/img/icon.png" />
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"
            integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
            crossorigin="anonymous"></script>
    </head>

    <body>
        <form class="gate" action="" method="post">
            <label  for="check">Security Checkup</label>
            <input type="password" name="check" placeholder="security code..." required >
            <button type="submit" name="Submit"> Go </button>
        </form>
    </body>

    <script>
        $(document).ready(function(){
            $(window).on("beforeunload", function() {
                <?php $_SESSION['check'] = false; ?>
            })
        });
    </script>
</html>


<?php
    if(isset($_POST['check']) and !empty($_POST['check']))
    {
        function validate($data)
        {
            $data = trim($data);
            $data = stripslashes($data);
            $data = htmlspecialchars($data);
            return $data;
        }
        $_POST['check'] = validate($_POST['check']);



        //checking if the admin password is good
        //have to improve the admin side if have more time
        //can play with security to delete browsing history
        //or ban user's ip if have more than 3 unsuccessful trialss
        if($classCall->getAdmin($_POST['check']) == true)
        {
            $_SESSION['check'] = true;
            unset($_POST['check']);
            header("Location: addwords.php");
            exit();
        }

        else {
            echo "<script> alert('Access denied!');</script>";
            exit();
        }
    }
