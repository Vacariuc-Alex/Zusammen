<?php

    include('database_connection.php');
    include '../../server/global_scope.php';
    $class = new GlobalScope();
    session_start();

    $query = "
    SELECT * FROM personen
    WHERE idPerson = '". substr($_GET['benutzer'], 39)."'
    ";

    $statement = $connect->prepare($query);
    $statement->execute();
    $result = $statement->fetchAll();
    foreach ($result as $row) {}
?>

<!DOCTYPE html>
<html lang="en">
    <head>
    	<title> Chat </title>
        <link rel="stylesheet" href="style.css">
    	<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
        <link rel="shortcut icon" type="image" href="http://localhost/Zusammen/main/img/icon.png" />
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"
            integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
            crossorigin="anonymous"></script>
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
            </div>
            <script>
                $(document).ready(function() {
                    $(".avatar").attr("src", "<?php echo $class->get_user_settings($_SESSION['email'], 'avatarPath'); ?>");

                    $(".avatar").attr("alt", "img");
                });
            </script>
        </div>

        <div class="content">
            <div class="wrapper">
                <div class="left">
                    <img src="<?php echo $row['avatarPath'] ?>" alt="user" width="100">
                    <h4><?php echo $row['name'] ?></h4>
                    <p><strong> Lives in : </strong> <?php echo $row['location'] ?></p>
                </div>
                <div class="right">
                    <div class="info">
                        <h3>Information</h3>
                        <div class="info_data">
                            <div class="data">
                                <h4>Email</h4>
                                <p><?php echo $row['email'] ?></p>
                            </div>
                            <div class="data">
                                <h4>Born on</h4>
                                <p><?php echo $row['dateOfBirth'] ?></p>
                            </div>
                        </div>
                    </div>

                    <div class="projects">
                        <h3>About</h3>
                        <div class="projects_data">
                            <div class="data">
                                <h4>Hobby</h4>
                                <p><?php echo $row['hobby'] ?></p>
                            </div>
                            <div class="data">
                                <h4>Bio</h4>
                                <p><?php echo $row['characteristics'] ?></p>
                            </div>
                        </div>
                    </div>
                </div>
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

                //content
                $('.content .wrapper .left p strong').html(json.chat.lives);
                $('.content .wrapper .right .info h3').html(json.chat.info);
                $('.content .wrapper .right .info .info_data .data:eq(0) h4').html(json.chat.email);
                $('.content .wrapper .right .info .info_data .data:eq(1) h4').html(json.chat.born);
                $('.content .wrapper .right .projects h3').html(json.chat.about);
                $('.content .wrapper .right .projects .projects_data .data:eq(0) h4').html(json.chat.hobby);
                $('.content .wrapper .right .projects .projects_data .data:eq(1) h4').html(json.chat.bio);
                //console.log(json.chat.lives);
            });
        });
    </script>
</html>
