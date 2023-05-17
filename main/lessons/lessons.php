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
    <title> Lessons </title>
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
            <a class="active" href="http://localhost/Zusammen/main/lessons/lessons.php"> Lessons </a>
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
        <div style="padding:1rem">
            <div class="grid-item vocabulary" >
                <p class="vocLevel"> Vocabulary </p>
                <p class="vocClass"> Good opportunity to learn something new! </p>
                <p class="vocType"> Successful communication is dependent upon a good vocabulary base. Using the right words when talking, makes you a more effective communicator. Having a good vocabulary to draw from can help you write more effectively. Everyone need to use a more formal tone when writing – not conversational language – and to do that, you need a richer vocabulary to tap into those words we don’t use when we speak. </p>
            </div>
        </div>

        <div class="grid-container">
            <div class="grid-item readingA1" >
                <p class="exLevel"> A1 </p>
                <p class="exClass"> Reading </p>
                <p class="exType">  A great way to learn new words and improve your reading skills, if you are a beginner, feel free to click! </p>
            </div>
            <div class="grid-item listeningA1" >
                <p class="exLevel"> A1 </p>
                <p class="exClass"> Listening </p>
                <p class="exType"> Listening is how we first learn words and can profoundly impact how we learn to pronounce and use them! </p>
            </div>
            <div class="grid-item grammarA1" >
                <p class="exLevel"> A1 </p>
                <p class="exClass"> Grammar </p>
                <p class="exType"> Grammar helps with the correct placement of words in a sentence. Usage involves using the proper word! </p>
            </div>

            <div class="grid-item readingA2" >
                <p class="exLevel"> A2 </p>
                <p class="exClass"> Reading </p>
                <p class="exType"> If you can understand sentences and frequently used expressions, feel free to take these reading exercises! </p>
            </div>
            <div class="grid-item listeningA2" >
                <p class="exLevel"> A2 </p>
                <p class="exClass"> Listening </p>
                <p class="exType"> If you can communicate in simple tasks requiring a direct exchange of information on familiar matters, welcome here! </p>
            </div>
            <div class="grid-item grammarA2" >
                <p class="exLevel"> A2 </p>
                <p class="exClass"> Grammar </p>
                <p class="exType">  If you can simply describe aspects of his/her background, then you're ready for some easy grammar exercises! </p>
            </div>

            <div class="grid-item readingB1" >
                <p class="exLevel"> B1 </p>
                <p class="exClass"> Reading </p>
                <p class="exType"> If you can understand the main points of clear standard input on familiar matters, then this course if perfect for you! </p>
            </div>
            <div class="grid-item listeningB1" >
                <p class="exLevel"> B1 </p>
                <p class="exClass"> Listening </p>
                <p class="exType"> If you can deal with most situations while travelling abroad, then here you'll find interesting dialogues! </p>
            </div>
            <div class="grid-item grammarB1" >
                <p class="exLevel"> B1 </p>
                <p class="exClass"> Grammar </p>
                <p class="exType"> If you can produce simple connected text on familiar topics, then some grammar training will help you grow! </p>
            </div>

            <div class="grid-item readingB2" >
                <p class="exLevel"> B2 </p>
                <p class="exClass"> Reading </p>
                <p class="exType"> If you can understand the main ideas of complex text on concrete topics, then these texts will help you rise! </p>
            </div>
            <div class="grid-item listeningB2" >
                <p class="exLevel"> B2 </p>
                <p class="exClass"> Listening </p>
                <p class="exType"> If you can interact with a degree of fluency and spontaneity, then these dialogue would be a good practice for you! </p>
            </div>
            <div class="grid-item grammarB2" >
                <p class="exLevel"> B2 </p>
                <p class="exClass"> Grammar </p>
                <p class="exType"> If you can produce clear, detailed text on a wide range of subjects, then this grammar level will suite best for you! </p>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            //reading file open
            $(document).on('click', '.readingA1', function(click) {
                open("theme_preview.php?type=reading&level=A1", "_blank");
            })

            $(document).on('click', '.readingA2', function(click) {
                open("theme_preview.php?type=reading&level=A2", "_blank");
            })

            $(document).on('click', '.readingB1', function(click) {
                open("theme_preview.php?type=reading&level=B1", "_blank");
            })

            $(document).on('click', '.readingB2', function(click) {
                open("theme_preview.php?type=reading&level=B2", "_blank");
            })


            //listening file open
            $(document).on('click', '.listeningA1', function(click) {
                open("theme_preview.php?type=listening&level=A1", "_blank");
            })

            $(document).on('click', '.listeningA2', function(click) {
                open("theme_preview.php?type=listening&level=A2", "_blank");
            })

            $(document).on('click', '.listeningB1', function(click) {
                open("theme_preview.php?type=listening&level=B1", "_blank");
            })

            $(document).on('click', '.listeningB2', function(click) {
                open("theme_preview.php?type=listening&level=B2", "_blank");
            })


            //listening file open
            $(document).on('click', '.grammarA1', function(click) {
                open("theme_preview.php?type=grammar&level=A1", "_blank");
            })

            $(document).on('click', '.grammarA2', function(click) {
                open("theme_preview.php?type=grammar&level=A2", "_blank");
            })

            $(document).on('click', '.grammarB1', function(click) {
                open("theme_preview.php?type=grammar&level=B1", "_blank");
            })

            $(document).on('click', '.grammarB2', function(click) {
                open("theme_preview.php?type=grammar&level=B2", "_blank");
            })

            //vocabulary
            $(document).on('click', '.vocabulary', function(click) {
                open("theme_preview.php?type=vocabulary&level=", "_blank");
            })
        })
    </script>

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
            $('title').html(json.title.lessons);

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
            $('.vocabulary p:eq(0)').html(json.learning.voc);
            $('.vocabulary p:eq(1)').html(json.learning.voc2);
            $('.vocabulary p:eq(2)').html(json.learning.voc3);

            $('.readingA1 p:eq(1)').html(json.learning.rd);
            $('.readingA2 p:eq(1)').html(json.learning.rd);
            $('.readingB1 p:eq(1)').html(json.learning.rd);
            $('.readingB2 p:eq(1)').html(json.learning.rd);

            $('.readingA1 p:eq(2)').html(json.learning.rd1);
            $('.readingA2 p:eq(2)').html(json.learning.rd2);
            $('.readingB1 p:eq(2)').html(json.learning.rd3);
            $('.readingB2 p:eq(2)').html(json.learning.rd4);

            $('.listeningA1 p:eq(1)').html(json.learning.ls);
            $('.listeningA2 p:eq(1)').html(json.learning.ls);
            $('.listeningB1 p:eq(1)').html(json.learning.ls);
            $('.listeningB2 p:eq(1)').html(json.learning.ls);

            $('.listeningA1 p:eq(2)').html(json.learning.ls1);
            $('.listeningA2 p:eq(2)').html(json.learning.ls2);
            $('.listeningB1 p:eq(2)').html(json.learning.ls3);
            $('.listeningB2 p:eq(2)').html(json.learning.ls4);

            $('.grammarA1 p:eq(2)').html(json.learning.gr1);
            $('.grammarA2 p:eq(2)').html(json.learning.gr2);
            $('.grammarB1 p:eq(2)').html(json.learning.gr3);
            $('.grammarB2 p:eq(2)').html(json.learning.gr4);



        });
    });
</script>
</html>
