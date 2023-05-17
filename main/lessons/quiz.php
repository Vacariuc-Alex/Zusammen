<?php
    session_start();
    include '../../server/global_scope.php';
    $class = new GlobalScope();

    if($_SESSION['email'] == "" || $_SESSION['email'] == NULL)
    {
        header("Location: http://localhost/Zusammen/index.php");
    }

    else
    {
        include('database_connection.php');
        $level = $_GET['level'];
        $type = $_GET['type'];
        $title = $_GET['title'];

        //getting the id of current exercise
        $query =
        "
        SELECT id".$type." FROM ".$type."
        WHERE title = '".$title."'
        ";

        $statement = $connect->prepare($query);
        $statement->execute();
        $result = $statement->fetchAll();

        foreach ($result as $row) {
            $id = $row['id'.$type.''];
        }


    }
?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" type="image" href="http://localhost/Zusammen/main/img/icon.png" />
        <title> <?php echo $title; ?> </title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>

    <?php
        if($type == "vocabulary")
        {
            vocabulary_exercises($connect, $title, $id);
        }

        else
        {
            display_quiz_passage($connect, $level, $type, $title);
            display_quiz_exercises($connect, $level, $type, $title, $id);
        }
     ?>

     <script type="text/javascript">
         $(document).ready(function () {

            //click on check button
            $(document).on("click", ".btn[value='Check!']", function () {

                //pushing into the array onPageOrder value of each question
                var idArray = [];
                $(".quest").each(function () {
                    idArray.push(this.id);
                });

                //along all of the questions
                for (var i = 0; i < idArray.length; i++) {

                    //get the index of selected answer
                    var radioButtons = $("input:radio[name='quiz" + (i + 1) + "']");
                    var selectedIndex = radioButtons.index(radioButtons.filter(':checked'));
                    var answerOrder = selectedIndex + 1;

                    //passing the order of current question and given answer to ajax
                    $.ajax({
                        url: "quiz_check.php",
                        method: "POST",
                        data:{idQuestion:idArray[i], answerOrder:answerOrder},

                        success:function(data){
                            $('#ajax').html(data);
                        }
                    })
                }
            });

            $(document).on("click", ".btn[value='Reset!']", function (){
                //pushing into the array onPageOrder value of each question
                var idArray = [];
                $(".quest").each(function () {
                    idArray.push(this.id);
                });

                for (var i = 0; i < idArray.length; i++) {
                    $.ajax({
                        url: "quiz_check.php",
                        method: "POST",
                        data:{idQuestion:idArray[i]},

                        success:function(data){
                            $('#ajax').html(data);
                        }
                    })
                }
            });
         });
     </script>
</html>
