<?php
/*
*   Quick content and guidance for searching classes!!!
*   1. Header
*   2. Content
*   3. Account Settings
*   4. Profile Settings
*   5. Password settings
*   6. Language Settings
*   7. Menu setting bar
*   8. Footer
*
*/

    session_start();
    include '../../server/global_scope.php';
    $class = new GlobalScope();

    if($_SESSION['email'] == "" || $_SESSION['email'] == NULL)
    {
        header("Location: http://localhost/Zusammen/index.php");
    }

    if($class->account_deleting_proof($_SESSION['email']) == false)
    {
        header("Location: http://localhost/Zusammen/signup/logout-gear.php");
    }
?>

<!DOCTYPE html>
<html>
<head>
    <title> Settings </title>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" type="image" href="http://localhost/Zusammen/main/img/icon.png" />
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"
        integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
        crossorigin="anonymous"></script>
</head>

<body>
    <!-- Header -->
    <div class="header">
        <img src="http://localhost/Zusammen/main/img/logo.jpg" class="logo">
        <div class="header-right">
            <a class="inactive" href="http://localhost/Zusammen/signup/logout-gear.php"> Logout </a>
            <a class="active" href="http://localhost/Zusammen/main/settings/settings.php"> Settings </a>
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

    <!-- Content -->
    <div class="content">
        <!-- Account Settings -->
        <div class="account_settings" style="display: block;">
        <form  action="account-settings.php" method="post" id="language_submit">
            <div class="settings_header">
                <h1 class="title"> Account settings </h1>
                <button class="save_changes_button" type="submit" name="submit_account" > Save changes </button>
            </div>

            <!-- textboxes for name and email input -->
            <div class="main_settings_menu">
                <label class="settings_menu_label" for="name"> Name </label>
                <br>
                <input id="name" class="settings_menu_input" name="name" type="text" required >
                <br>
                <label class="settings_menu_label" for="email"> Email </label>
                <br>
                <input id="email" name="email" class="settings_menu_input" type="text" required >
                <br>
                <lable class="prof_pic"> Profile picture </lable>
            </form>

                <!-- Avatar selection button -->
                <form enctype="multipart/form-data" action="image-settings.php" method="post">
                    <label class="avatar_choose">
                    <input accept="image/*" class="avatar_input" name="picture" type="file"> Choose file </label>

                    <script>
                        //confirm uploading button added programably
                        $(".avatar_choose").click(function() {
                            $(".submit_image").css("display", "inline-block");
                        });
                    </script>

                    <input type="submit" name="submit_image" class="submit_image">

                    <script>
                        //confirm uploading button removed programably after it was clicked
                        $(".submit_image").click(function() {
                            $(".submit_image").css("display", "none");
                        });
                    </script>

                </form>

                <!-- Displaying the error messages for account settings -->
                <p class="error_message"> <?php if (isset($_GET['error'])) echo $_GET['error']."<br>"; ?> </p>
                <lable class="warning_lable"> maximum image size is 1 MB </lable>
                <br><br>
                <button class="delete_acc"> Delete my account </button>
                <!-- Ajax div for deleting the account -->
                <!-- function called in script-deleting-account.js -->
                <div id="load"></div>

                <script src="script-delete-account.js"></script>
                <br><br>
            </div>
        </div>

        <!-- Profile Settings -->
        <div class="profile_settings" style="display: none">
        <form  action="profile-settings.php" method="post">
            <div class="settings_header">
                <h1 class="title"> Profile settings </h1>
                <button class="save_changes_button" type="submit" name="submit_profile" > Save changes </button>
            </div>

            <!-- textboxes for location, hobby and bio input -->
            <div class="main_settings_menu">
                <label class="settings_menu_label" for="location"> Location </label>
                <br>
                <input id="location" class="settings_menu_input" name="location" type="text" required >
                <br>
                <label class="settings_menu_label" for="hobby"> Hobby </label>
                <br>
                <input id="hobby" name="hobby" class="settings_menu_input" type="text" >
                <br>
                <label class="settings_menu_label" for="bio"> Bio </label>
                <br>
                <textarea id="bio" name="bio" class="text_area_profile settings_menu_input" rows="3" spellcheck="false" type="text" ></textarea>
                <br>
            </div>
        </form>
        </div>

        <!-- Password settings -->
        <div class="password_settings" style="display: none">
        <form  action="password-settings.php" method="post">
            <div class="settings_header">
                <h1 class="title"> Password settings </h1>
                <button class="save_changes_button" type="submit" name="submit_password" > Save changes </button>
            </div>

            <!-- textboxes for passwords -->
            <div class="main_settings_menu">
                <label class="settings_menu_label" for="current_password"> Current Password </label>
                <br>
                <input class="settings_menu_input" name="current_password" type="password" required >
                <br>
                <label class="settings_menu_label" for="new_password"> New Password </label>
                <br>
                <input name="new_password" class="settings_menu_input" type="password" required >
                <br>
                <label class="settings_menu_label" for="confirm_new_password"> Confirm New Password </label>
                <br>
                <input name="confirm_new_password" class="settings_menu_input" type="password" required >
                <br>
            </div>
        </form>
        </div>


        <!-- Language Settings -->
        <div class="language_settings" style="display: none">
            <div class="settings_header">
                <h1 class="title"> Language settings </h1>
            </div>

            <!-- select menu for language -->
            <div class="main_settings_menu language_select">
                <select class="form-select"  id="nativeLanguage"></select>
        		<select class="form-select" id="foreignLanguage" style="display: none"></select>
            </div>
            <script type="text/javascript" src="script-language.js"></script>
        </div>


        <!-- Menu setting bar -->
        <div class="menu_settings_bar">
            <div class="header_of_settings">
                    <img alt="" class="avatar" src="" style="height: 40px; width: 40px;">
                <h2 class="name"></h2>
            </div>

            <ul class="menu_settings_bar_ul">
                <li class="menu_settings_bar_li" style="background: #dadada" >
                    <span class="menu_settings_bar_span" id="account"> Account </span>
                </li>

                <li class="menu_settings_bar_li ">
                    <span class="menu_settings_bar_span" id="profile" > Profile </span>
                </li>

                <li class="menu_settings_bar_li ">
                    <span class="menu_settings_bar_span" id="password" > Password </span>
                </li>

                <li class="menu_settings_bar_li ">
                    <span class="menu_settings_bar_span" id="language" > Language </span>
                </li>
            </ul>
        </div>
    </div>


    <!-- Footer -->
    <div class="footer">
        <div class="footer_distance_span" style="margin-top: 15rem; margin-left: 10rem;">
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
    </div>
</body>
    <!-- calling the script files -->
    <script src="script-menu.js"></script>
    <script src="script-languages.js"></script>
    <script>
        $(document).ready(function() {
            //these functions are used to automatically fill the textboxes with valid dates
            //from our current database
            //as well as the avatar image
            $(".avatar").attr("src", "<?php echo $class->get_user_settings($_SESSION['email'], 'avatarPath'); ?>");
            $(".avatar").attr("alt", "img");

            $("#name").val("<?php echo $class->get_user_settings($_SESSION['email'], 'name') ?>");
            $("#email").val("<?php echo $class->get_user_settings($_SESSION['email'], 'email') ?>");
            $(".name").text("<?php echo $class->get_user_settings($_SESSION['email'], 'name') ?>");

            $("#location").val("<?php echo $class->get_user_settings($_SESSION['email'], 'location') ?>") ;
            $("#hobby").val("<?php echo $class->get_user_settings($_SESSION['email'], 'hobby') ?>") ;
            $("#bio[name=\"bio\"]").val("<?php echo $class->get_user_settings($_SESSION['email'], 'bio') ?>") ;
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function(){
            $.getJSON("http://localhost/Zusammen/translations/<?php echo $_SESSION['nativeLanguage']; ?>.json", function(json) {
                //title
                $('title').html(json.title.settings);

                //header
                $('a:eq(0)').html(json.header[0]);
                $('a:eq(1)').html(json.header[1]);
                $('a:eq(2)').html(json.header[2]);
                $('a:eq(3)').html(json.header[3]);
                $('a:eq(4)').html(json.header[4]);
                $('a:eq(5)').html(json.header[5]);

                //content
                $('.save_changes_button').html(json.settings.save_changes_button);
                $('.menu_settings_bar_ul li:eq(0) #account').html(json.settings.menu_settings_bar.account);
                $('.menu_settings_bar_ul li:eq(1) #profile').html(json.settings.menu_settings_bar.profile);
                $('.menu_settings_bar_ul li:eq(2) #password').html(json.settings.menu_settings_bar.password);
                $('.menu_settings_bar_ul li:eq(3) #language').html(json.settings.menu_settings_bar.language);

                //account
                $('.account_settings form .settings_header .title').html(json.settings.account.title);
                $('.account_settings form .main_settings_menu label:eq(0)').html(json.settings.account.name);
                $('.account_settings form .main_settings_menu label:eq(1)').html(json.settings.account.email);
                $('.prof_pic').html(json.settings.account.picture);
                $('.warning_lable').html(json.settings.account.max_image_size);
                $('.delete_acc').html(json.settings.account.delete_acc);

                //profile
                $('.profile_settings form .settings_header .title').html(json.settings.profile.title);
                $('.profile_settings form .main_settings_menu label:eq(0)').html(json.settings.profile.location);
                $('.profile_settings form .main_settings_menu label:eq(1)').html(json.settings.profile.hobby);
                $('.profile_settings form .main_settings_menu label:eq(2)').html(json.settings.profile.bio);

                //password
                $('.password_settings form .settings_header .title').html(json.settings.password.title);
                $('.password_settings form .main_settings_menu label:eq(0)').html(json.settings.password.current);
                $('.password_settings form .main_settings_menu label:eq(1)').html(json.settings.password.new);
                $('.password_settings form .main_settings_menu label:eq(2)').html(json.settings.password.confirm);

                //language
                $('.language_settings .settings_header .title').html(json.settings.language.title);

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

<?php
    //this if statement is used to maintain the selected div
    //and to look with a nice design
    //after clicking on submit button
    if(isset($_GET['block']))
    {
        $block = $_GET['block'];
        if($block == 'password')
        {
            echo'
            <script>
                $(".menu_settings_bar_li").eq(0).css("background", "transparent");
                $(".menu_settings_bar_li").eq(1).css("background", "transparent");
                $(".menu_settings_bar_li").eq(2).css("background", "#dadada");
                $(".menu_settings_bar_li").eq(3).css("background", "transparent");

                $(".footer_distance_span").css({
                    "marginTop" : "13rem",
                    "marginLeft" : "10rem"
                });

                $(".account_settings").css("display", "none");
                $(".profile_settings").css("display", "none");
                $(".password_settings").css("display", "block");
                $(".language_settings").css("display", "none");
            </script>
            ';
        }

        else if($block == 'profile')
        {
            echo'
            <script>
                $(".menu_settings_bar_li").eq(0).css("background", "transparent");
                $(".menu_settings_bar_li").eq(1).css("background", "#dadada");
                $(".menu_settings_bar_li").eq(2).css("background", "transparent");
                $(".menu_settings_bar_li").eq(3).css("background", "transparent");

                $(".footer_distance_span").css({
                    "marginTop" : "18rem",
                    "marginLeft" : "13rem"
                });

                $(".account_settings").css("display", "none");
                $(".profile_settings").css("display", "block");
                $(".password_settings").css("display", "none");
                $(".language_settings").css("display", "none");
            </script>
            ';
        }

        else if($block == 'account')
        {
            echo'
            <script>
                $(".menu_settings_bar_li").eq(0).css("background", "#dadada");
                $(".menu_settings_bar_li").eq(1).css("background", "transparent");
                $(".menu_settings_bar_li").eq(2).css("background", "transparent");
                $(".menu_settings_bar_li").eq(3).css("background", "transparent");

                $(".footer_distance_span").css({
                    "marginTop" : "15rem",
                    "marginLeft" : "13rem"
                });

                $(".account_settings").css("display", "block");
                $(".profile_settings").css("display", "none");
                $(".password_settings").css("display", "none");
                $(".language_settings").css("display", "none");
            </script>
            ';
        }
    }
