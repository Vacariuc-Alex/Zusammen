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
        <h2 class="title"> Privacy Policy </h2>
        <div>
            <h3 class="info"> General </h3>
            <p> At Zusammen, we care about your personal information, so we've prepared this privacy policy to explain how we collect, use and share it. </p>

            <p> This Privacy Policy ("Privacy Policy") details the personal data that Zusammen receives about you, how we process it, and your rights and obligations with respect to your personal data. </p>

            <p> By using or accessing the service, you agree to the terms of this privacy policy. Capitalized terms not defined herein have the meanings set out in the terms and conditions ("Terms and Conditions"). We may update our privacy policy to reflect changes in our disclosure practices. </p>
            <br><br><br>
        </div>

        <div>
            <h3 class="info"> Information general </h3>
            <p> This privacy policy explains how we collect, use and share your personal data. </p>

            <p> Through the registration process, you will provide us with your name, email address and age or date of birth. </p>

            <p> We only collect the data we need, which means we don't record or share: Username, Name, Profile images, Email, Addresses, Locations or biographies on the profile page, Passwords </p>
            <br><br><br>
        </div>

        <div>
            <h3 class="info"> Cookies </h3>
            <p> When you access the website, we collect language preferences. Data such as the Username are kept in sessions and will be destroyed after logout </p>
            <br><br><br>
        </div>

        <div>
            <h3 class="info"> Links </h3>
            <p> The service may contain links to other websites. We are not responsible for the privacy practices of other websites. We encourage users to be aware when they leave the Service to read the privacy statements of other websites that collect personally identifiable information. This privacy policy applies only to information collected by Zusammen through the service. </p>
            <br><br><br>
        </div>

        <div>
            <h3 class="info"> Information security </h3>
            <p> Zusammen has implemented administrative and technical protection measures that it deems appropriate to protect the confidentiality, integrity and availability of your personal data, user photo and access credentials. However, given the sufficient resources, a determined attacker could overcome these security measures and can, as a result, gain access to the data we want to protect. </p>

            <p> All passwords and conversations are encrypted, we recommend that you use passwords that are as strict and reliable as possible </p>
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

            //body
            $('.title').html(json.privary.title);
            $('.info:eq(0)').html(json.privary.head1);
            $('.info:eq(1)').html(json.privary.head2);
            $('.info:eq(2)').html(json.privary.head3);
            $('.info:eq(3)').html(json.privary.head4);
            $('.info:eq(4)').html(json.privary.head5);
            $('.content div:eq(0) p:eq(0)').html(json.privary.par1);
            $('.content div:eq(0) p:eq(1)').html(json.privary.par2);
            $('.content div:eq(0) p:eq(2)').html(json.privary.par3);
            $('.content div:eq(1) p:eq(0)').html(json.privary.par4);
            $('.content div:eq(1) p:eq(1)').html(json.privary.par5);
            $('.content div:eq(1) p:eq(2)').html(json.privary.par6);
            $('.content div:eq(2) p:eq(0)').html(json.privary.par7);
            $('.content div:eq(3) p:eq(0)').html(json.privary.par8);
            $('.content div:eq(4) p:eq(0)').html(json.privary.par9);
            $('.content div:eq(4) p:eq(1)').html(json.privary.par10);
        });
    });
</script>
</html>
