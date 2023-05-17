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
    <title>Dictionary</title>
    <link rel="stylesheet" href="style-dictionary.css">
    <link rel="shortcut icon" type="image" href="http://localhost/Zusammen/main/img/icon.png" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

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
            <a class="active" href="http://localhost/Zusammen/main/dictionary/dictionary.php"> Dictionary </a>
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
        <form action="dictionary.php" method="post">
            <div class="header2">
                <h1>Dictionary</h1>
            </div>

            <div class="wrapper">
                <div class="words">
                        <input type="text" name="word" id="search" placeholder="search ...">
                        <button type="submit"> Translate </button>
                    <!-- Here will appear al of the matching words -->
                    <ul id="word_list"></ul>
                </div>

                <div class="word">
                    <h3 id="word_text"></h3>
                    <div id="appendText"></div>
                    <p id="translation"></p>
                </div>
            </div>
        </form>
        <div class="loadWordFromDatabaseGear"></div>
    </div>

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

  <script>
    $(document).ready(function(){

        //the word which we clicked on
        var index;

        //showing the translation of the first word from the list by default
        var passingText = $("#passingListIdDictionary1").text();
        $(".loadWordFromDatabaseGear").load("display-content.php", {PassingText : passingText});

        //getting the info of word from database
        function assign(i) {
            index = ++i;
            var passingText = $("#passingListIdDictionary" + index).text();

            //ajax
            $(".loadWordFromDatabaseGear").load("display-content.php", {PassingText : passingText});
        }

        //reacts when the word is clicked
        function makeAlertNumber(element, i) {
            element.addEventListener('click', function() {
               assign(i);
            }, false);
        }

        //when we click on a word, call the above function
        [].slice.call(document.getElementById('word_list').children).forEach(makeAlertNumber);

    });
  </script>
  <script type="text/javascript">
      $(document).ready(function(){
          $.getJSON("http://localhost/Zusammen/translations/<?php echo $_SESSION['nativeLanguage']; ?>.json", function(json) {
              //title
              $('title').html(json.title.dictionary);

              //header
              $('a:eq(0)').html(json.header[0]);
              $('a:eq(1)').html(json.header[1]);
              $('a:eq(2)').html(json.header[2]);
              $('a:eq(3)').html(json.header[3]);
              $('a:eq(4)').html(json.header[4]);
              $('a:eq(5)').html(json.header[5]);

              //content
              $('.header2 h1').html(json.dictionary.dictionary);
              $('.words #search').attr("placeholder", json.dictionary.placeholder);
              $('.words button').html(json.dictionary.translate);

              //text generated from php
              if($('.word #word_text').html() == 'Welcome to use the dictionary to translate unknown words!')
                $('.word #word_text').html(json.dictionary.messages.welcome);
              else if ($('.word #word_text').html() == 'No search found!')
                $('.word #word_text').html(json.dictionary.messages.notfound);
              else if ($('.word #word_text').html() == 'Please fill the textbox!')
                $('.word #word_text').html(json.dictionary.messages.empty);

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
    if(isset($_POST['word']))
    {
        $word = $_POST['word'];

        if(!empty($word))
        {
            //the searching word will be allways displayes in searchbar menu
            echo "<script>
                    $(\"#search\").val(\"".$word."\");
                </script>";
            $class = new GlobalScope();
            $class->displayWord($word);
        }

        else
        {
            //error message in case the textbox is empty
            echo "<script>
                    document.getElementById('word_text').innerHTML = "."'Please fill the textbox!'"."
                    document.getElementById('word_text').style.color = \"green\";
                </script>";
            exit();
        }
    }

    else
    {
        //error message in case the textbox is not set
        echo "<script>
                document.getElementById('word_text').innerHTML = "."'Welcome to use the dictionary to translate unknown words!'"."
                document.getElementById('word_text').style.color = \"dodgerblue\";
            </script>";
        exit();
    }
?>
