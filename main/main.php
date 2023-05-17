<?php
    session_start();
    include '../server/global_scope.php';
    $class = new GlobalScope();

    if($_SESSION['email'] == "" || $_SESSION['email'] == NULL)
    {
        header("Location: http://localhost/Zusammen/index.php");
    }
?>

<!DOCTYPE html>
<html>
<head>
    <title> Home </title>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" type="image" href="http://localhost/Zusammen/main/img/icon.png" />
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"
        integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
        crossorigin="anonymous"></script>
</head>
<body>

    <div class="header">
        <img src="http://localhost/Zusammen/main/img/logo.jpg" class="logo">
        <div class="header-right">
            <a class="inactive" href="http://localhost/Zusammen/signup/logout-gear.php"> Logout </a>
            <a class="inactive" href="http://localhost/Zusammen/main/settings/settings.php"> Settings </a>
            <a class="inactive" href="http://localhost/Zusammen/main/dictionary/dictionary.php"> Dictionary </a>
            <a class="inactive" href="http://localhost/Zusammen/main/chat/chat.php"> Chat </a>
            <a class="inactive" href="http://localhost/Zusammen/main/lessons/lessons.php"> Lessons </a>
            <a class="active" href="http://localhost/Zusammen/main/main.php"> Home </a>
            <!-- Display the avatar Image -->
            <img class="avatar" alt="" src="" >
            <script>
                $(document).ready(function() {
                    $(".avatar").attr("src", "<?php echo $class->get_user_settings($_SESSION['email'], 'avatarPath'); ?>");
                    $(".avatar").attr("alt", "img");
                });
            </script>
        </div>
    </div>

    <div class="content">
        <div class="header_inside_content">
            <p>  Zusammen is a new language platform designed to help you learn a foreign language without stress and in an interactive way. Here you will be able to find new friends, communicate with them and find answers to your questions. At the same time, you will have a variety of texts and exercises grouped by levels that will help you improve your ability to read, answer questions and think in a new language. All the more so, his is absolutely free. Welcome and join us!</p>

            <br><br><br><br>
            <img src="img/icon_resized.png" alt="Company Logo">
        </div>

        <div class="block">
            <h2> Our Story </h2>
            <img src="img/story.png">
            <p> Our name "Zusammen" comes from the German word meaning "together". Inspired by the modern method of communication and social interaction, we decided to create a chat system and a set of interactive exercises that will allow users to communicate with each other and develop their thinking skills in a foreign language.</p>
            <p> This platform is open to all people and for all age groups! </p>
        </div>

        <div class="block">
            <h2> Education </h2>
            <img src="img/education.png">
            <p> We offer language courses from beginner level A1 to upper intermediate level B2. You can take our courses in sequence or study and review the topics that are most relevant to you! </p>
        </div>
    </div>

    <div class="footer">
        <hr class="footer_space_bar">
        <div class="references_holder_div_footer">
            <ul class="list_for_references_footer">
                <li class="list_item_reference_footer"><a class="a_reference_footer" href="http://localhost/Zusammen/main/footer/terms.php" target="_blank" > Terms </a></li>
                <li class="list_item_reference_footer"><a class="a_reference_footer" href="http://localhost/Zusammen/main/footer/aboutus.php" target="_blank" > About Us </a></li>
                <li class="list_item_reference_footer"><a class="a_reference_footer" href="http://localhost/Zusammen/main/footer/location.php" target="_blank" > Location </a></li>
                <li class="list_item_reference_footer"><a class="a_reference_footer" href="http://localhost/Zusammen/main/footer/contactus.php" target="_blank" > Contact US </a></li>
                <li class="list_item_reference_footer"><a class="a_reference_footer" href="http://localhost/Zusammen/main/footer/privacypolicy.php" target="_blank" > Privacy Policy </a></li>
            </ul>
        </div>
    </div>
</body>
<script type="text/javascript">
    $(document).ready(function(){
        $.getJSON("http://localhost/Zusammen/translations/<?php echo $_SESSION['nativeLanguage']; ?>.json", function(json) {
            //title
            $('title').html(json.title.home);

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

            //body
            $('.header_inside_content p').html(json.home.par1);
            $('.block:eq(0) h2').html(json.home.title1);
            $('.block:eq(0) p:eq(0)').html(json.home.par2);
            $('.block:eq(0) p:eq(1)').html(json.home.par3);
            $('.block:eq(1) h2').html(json.home.title2);
            $('.block:eq(1) p:eq(0)').html(json.home.par4);

        });
    });
</script>
</html>
