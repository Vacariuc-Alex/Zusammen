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
        <h1 class="title"> Terms and Conditions of Service </h1>
        <div>
            <h2 class="info"> General </h2>
            <p> The Zusammen website is a language platform and diploma thesis to be presented at CEEF. This project was developed by Vacariuc Alex, student of the PAP1714 group at CEEF, coordinated by Vasilache Grigore, Database Professor at CEEF. Access to and use of the platform is subject to the following Terms of Use ("Terms and Conditions"). By accessing or using any part of the platform, you represent that you have read, understood and agree to be bound by these Terms and Conditions, including any future changes.</p>
            <br><br><br>
        </div>

        <div>
            <h2 class="info"> Description </h2>
            <p> The Platform allows users to access and use a variety of educational services, including learning or practicing a language. Zusammen may, in its sole discretion and at any time, update, change, suspend, make improvements to or discontinue any aspect of the service, temporarily or permanently.</p>
            <br><br><br>
        </div>

        <div>
            <h2 class="info"> Registration </h2>
            <p> In connection with the registration and use of the platform, you agree to provide accurate, current and complete information about yourself, as requested; to keep your password and other information secure about your account confidential; to maintain and promptly update any registration information you provide to Zusammen, in order to maintain this accurate, current and complete information; and be fully responsible for any use of your account and for any actions that occur through your account.</p>
            <br><br><br>
        </div>

        <div>
            <h2 class="info"> Restrictions </h2>
            <p> You will not upload, display or otherwise provide on or through the platform content that: is defamatory, defamatory, abusive, threatening, harassing, hateful, offensive or infringes any law or infringes the rights of any third party including copyright, trademarks, privacy, publicity or other personal or property rights; or in the sole opinion of Zusammen, is unacceptable or restricts or inhibits any other person from using the Service or who may expose Zusammen or its users to any harm or liability of any kind.</p>
            <br><br><br>
        </div>

        <div>
            <h2 class="info"> Termination </h2>
            <p> Zusammen may close your access and delete your account immediately at any time, for any reason, and you will no longer be allowed to use your account. You cannot terminate your account if you violate the above restrictions.</p>
            <br><br><br>
        </div>

        <div>
            <h2 class="info"> Privacy </h2>
            <p> Use of the Service is also governed by our Privacy Policy, a copy of which is available at Privacy Policy. By using the Service, you agree to the terms of the Privacy Policy</p>
            <br><br><br>
        </div>

        <div>
            <h2 class="info"> Language </h2>
            <p> All information on the platform was originally written in English (USA). To the extent that any translated version of this Agreement conflicts with the English version, the English version controls.</p>
            <br><br><br>
        </div>
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

            //content
            $('.content h1').html(json.terms.name);
            $('.info:eq(0)').html(json.terms.title1);
            $('.info:eq(1)').html(json.terms.title2);
            $('.info:eq(2)').html(json.terms.title3);
            $('.info:eq(3)').html(json.terms.title4);
            $('.info:eq(4)').html(json.terms.title5);
            $('.info:eq(5)').html(json.terms.title6);
            $('.info:eq(6)').html(json.terms.title7);
            $('.content div:eq(0) p').html(json.terms.par1);
            $('.content div:eq(1) p').html(json.terms.par2);
            $('.content div:eq(2) p').html(json.terms.par3);
            $('.content div:eq(3) p').html(json.terms.par4);
            $('.content div:eq(4) p').html(json.terms.par5);
            $('.content div:eq(5) p').html(json.terms.par6);
            $('.content div:eq(6) p').html(json.terms.par7);
        });
    });
</script>
</html>
