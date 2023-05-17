<?php
    include '../server/global_scope.php';
    session_start();
    $classCall = new GlobalScope();

    //display immediately all of the available languages
    //check is another session to check if the user is one of the administrat
    if(isset($_SESSION['check']) and $_SESSION['check'] == true)
    {
        echo "<link rel=\"shortcut icon\" type=\"image\" href=\"http://localhost/Zusammen/main/img/icon.png\" />";
    }

    else
    {
        echo "<script> window.location.href = 'http://localhost/Zusammen/admin/admin-gate.php';</script>";
        exit();
    }
?>


<!DOCTYPE html>
<html>
    <head>
        <title> Word </title>
        <link rel="stylesheet" type="text/css" href="style.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"
            integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
            crossorigin="anonymous"></script>
    </head>

    <body>
        <form class="add_words" action="addwords.php" method="post">
            <label for="word"> Enter word : </label>
            <input type="text" name="word" id="word" value="" placeholder="word in foreign language..." required ><br>
            <label for="translation"> Enter it's translation : </label>
            <input type="text" name="translation" id="translation" value="" placeholder="translation in native language..." required ><br>
            <label for="audio"> Enter the path of audio file : </label>
            <input type="text" name="audio" id="audio" value="" placeholder="audio path..." required ><br>
            <select class="form-select"  id="languages"></select>
            <button type="button" name="button"> Add </button>
        </form>
        <div class="ajax"></div>
    </body>
</html>

<script>
    $(document).ready(function() {
        //0 means that selected box is not changed
        var idLanguage = 0;

        //display the available languages
        $.ajax({
            url: "adminSelectWordAjax.php",

            success:function (data) {
                $("#languages").html(data);
            }
        });

        //get the country id
        $("select#languages").change(function(){
            idLanguage = $(this).children("option:selected").val();
        });

        //when button is clicked, display the word added in database
        $("button").click(function() {
            var local_word = $("#word").val();
            var local_translation = $("#translation").val();
            var local_audio = $("#audio").val();

            if(idLanguage == 0)
            {
                alert("Please select the language option!");
            }

            else
            {
                //set the word in the dictionary
                $(".ajax").load("addwords-gear.php", {
                    word : local_word,
                    translation : local_translation,
                    audio : local_audio,
                    idLanguage : idLanguage
                });

                //reset the textboxes
                $("#word").val('');
                $("#translation").val('');
                $("#audio").val('');
            }
        });
    });
</script>
