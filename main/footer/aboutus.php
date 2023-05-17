<?php
    session_start();
    include '../../server/global_scope.php';
    $class = new GlobalScope();

    if($_SESSION['email'] == "" || $_SESSION['email'] == NULL)
    {
        header("Location: http://localhost/Zusammen/index.php");
    }
?>

<!DOCTYPE html>
<html>
<head>
    <title> Zusammen </title>
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
            <a class="inactive" href="http://localhost/Zusammen/main/main.php"> Home </a>
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
        <h1 class="title"> About Us </h1>
        <section>
            <img src="../img/learning.png" class="img">
            <div class="block">
                <h2 class="info"> Learning </h2>
                <p> Each person has their own study preferences. Some prefer in large groups of people, others prefer alone. But despite the fact that we are so different, we will try to find ways to make learning an essential and preferred thing for the person. </p>
                <p> Our ultimate goal is to provide experience and the pleasure of studying something new, to feel the culture and way of thinking of people abroad. </p>
                <hr>
            </div>
        </section>
        <br><br><br>

        <section>
            <img src="../img/entertainment.png" class="img">
            <div class="block">
                <br>
                <h2 class="info"> Entertainment </h2>
                <p>It is difficult to stay motivated when learning online, for some this seems offensive or virtually impossible. That's why we tried to make our platform as fun as possible and we hope you have beautiful results after traveling in the world of foreign languages.</p>
                <hr>
            </div>
        </section>
        <br><br><br>

        <section>
            <img src="../img/free_of_charge.png" class="img">
            <div class="block">
                <br>
                <h2 class="info"> Free of charge </h2>
                <p> We created Zusammen so that everyone has a chance to spend their precious time doing fun and useful things at the same time. We offer free language education - no hidden fees, no premium content, just free. </p>
                <hr>
            </div>
        </section>
        <br><br><br>

    </div>

    <div class="footer">
        <hr class="footer_space_bar">
        <div class="references_holder_div_footer">
            <ul class="list_for_references_footer">
                <li class="list_item_reference_footer"><a class="a_reference_footer" href="terms.php" target="_blank" >Terms</a></li>
                <li class="list_item_reference_footer"><a class="a_reference_footer" href="aboutus.php" target="_blank" >About Us</a></li>
                <li class="list_item_reference_footer"><a class="a_reference_footer" href="location.php" target="_blank" >Location</a></li>
                <li class="list_item_reference_footer"><a class="a_reference_footer" href="contactus.php" target="_blank" >Contact US</a></li>
                <li class="list_item_reference_footer"><a class="a_reference_footer" href="privacypolicy.php" target="_blank" >Privacy Policy</a></li>
            </ul>
        </div>
    </div>
</body>
<script type="text/javascript">
    $(document).ready(function(){
        $.getJSON("http://localhost/Zusammen/translations/<?php echo $_SESSION['nativeLanguage']; ?>.json", function(json) {
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
            $('.title').html(json.about.title);
            $('.block:eq(0) h2').html(json.about.head1);
            $('.block:eq(1) h2').html(json.about.head2);
            $('.block:eq(2) h2').html(json.about.head3);
            $('.block:eq(0) p:eq(0)').html(json.about.par1);
            $('.block:eq(0) p:eq(1)').html(json.about.par2);
            $('.block:eq(1) p').html(json.about.par3);
            $('.block:eq(2) p').html(json.about.par4);
        });
    });
</script>
</html>
