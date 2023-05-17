<?php
    session_start();
    include('database_connection.php');

    //function to reset the quiz
    function resetQuiz($qindex, $radioBox)
    {
        for ($i=0; $i < 4; $i++)
        {
            echo "
            <script>
                $('label[for=\"quiz".$qindex."\"]:eq(".$i.")').css('color', 'black');
                if(".$radioBox." == true)
                {
                    $('input[name=\"quiz".$qindex."\"]:eq(".$i.")').prop('checked', false);
                }
            </script>
            ";
        }
    }

    function correctAnswerOrder($row)
    {
        //getting the order of correct answer
        for ($i=1; $i <= 4; $i++)
        {
            if($row['correctAnswer'] == $row['option'.$i.''])
            {
                return $i;
            }
        }
    }


    if(isset($_POST['idQuestion']) and isset($_POST['answerOrder']))
    {
        //receiveing data from ajax
        $idQuestion = $_POST['idQuestion'];
        $answerOrder = $_POST['answerOrder'];

        //extracting data from the server
        $query = "
            SELECT * FROM Questions
            WHERE idQuestion = $idQuestion
        ";

        $statement = $connect->prepare($query);
        $statement->execute();
        $result = $statement->fetchAll();

        //foreach question
        foreach($result as $row)
        {
            //reset the quiz by removing previous answers
            resetQuiz($row['onPageOrder'], 0);

            //if answer was not selected, display the correct answer
            if($answerOrder == 0)
            {
                $correctAnswerOrder = correctAnswerOrder($row);
                echo
                "
                    <script>
                        $('label[for=\"quiz".$row['onPageOrder']."\"]:eq(".(--$correctAnswerOrder).")').css('color', '#b7c100');
                    </script>
                ";
            }


            //if the answer is correct, highlight with green
            else if($row['correctAnswer'] == $row['option'.$answerOrder.''])
            {
                echo
                "
                    <script>
                        $('label[for=\"quiz".$row['onPageOrder']."\"]:eq(".(--$answerOrder).")').css('color', '#14bd7b');
                    </script>
                ";
            }

            //if the answer is incorrect, highlight with red and show the correct answer
            else
            {
                $correctAnswerOrder = correctAnswerOrder($row);
                echo
                "
                    <script>
                        $('label[for=\"quiz".$row['onPageOrder']."\"]:eq(".(--$answerOrder).")').css('color', 'red');
                        $('label[for=\"quiz".$row['onPageOrder']."\"]:eq(".(--$correctAnswerOrder).")').css('color', '#14bd7b');
                    </script>
                ";
            }
        }
    }

    //reset the whole quiz
    else
    {
        //receiveing data from ajax
        $idQuestion = $_POST['idQuestion'];

        //extracting data from the server
        $query = "
            SELECT * FROM Questions
            WHERE idQuestion = $idQuestion
        ";

        $statement = $connect->prepare($query);
        $statement->execute();
        $result = $statement->fetchAll();

        //foreach question
        foreach($result as $row)
        {
            //reset the quiz by removing previous answers
            resetQuiz($row['onPageOrder'], 1);
        }
    }
