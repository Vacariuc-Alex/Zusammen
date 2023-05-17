<?php
/*
*   Quick content and guidance for searching classes!!!
*   1. function display_courses($connect, $level, $type)
*   2. function display_quiz($connect, $level, $type, $title)
*   3. function display_quiz_content($connect, $level, $type, $title, $id)
*	4. function vocabulary_passage($connect, $level, $title)
*
*/

	$connect = new PDO("mysql:host=localhost;dbname=zusammen;", "root", "");

    function display_courses($connect, $level, $type)
    {
		//vocabulary has no level
		if( $type == "vocabulary")
		{
			$query = "
			SELECT * FROM $type
			WHERE foreignLanguage = '".$_SESSION['foreignLanguage']."';
			";
		}

		else
		{
			$query = "
			SELECT * FROM $type
			WHERE level = '$level'
			AND foreignLanguage = '".$_SESSION['foreignLanguage']."';
			";
		}


        $statement = $connect->prepare($query);
        $statement->execute();
        $result = $statement->fetchAll();

        $output = '
            <style>
                .imagebox {
                  background: black;
                  padding: 0px;
                  position: relative;
                  text-align: center;
                  width: 100%;
                  border-radius: 6px;
                }

                .imagebox img {
                  opacity: 1;
                  transition: 0.5s opacity;
                  margin-bottom: 30px;
                  border-radius: 6px;
                }

                .imagebox .imagebox-desc {
                  background-color: rgba(0, 0, 0, 0.6);
                  bottom: 0px;
                  color: white;
                  font-size: 1.2em;
                  left: 0px;
                  padding: 10px 0px;
                  position: absolute;
                  transition: 0.5s padding;
                  text-align: center;
                  width: 100%;
                  border-radius: 6px;
                }

                .imagebox:hover img {
                  opacity: 0.7;
                }

                .imagebox:hover .imagebox-desc {
                  padding-bottom: 2%;
                }

				.button {
				  background-color: #4CAF50;
				  border: none;
				  color: white;
				  padding: 20px;
				  text-align: center;
				  text-decoration: none;
				  display: inline-block;
				  font-size: 16px;
				  margin: 4px 2px;
				  cursor: pointer;
				  border-radius: 12px;
				  width: 100%;
				  margin-bottom: 2rem;
				  outline: none;
				}

				.imagebox:hover .button {
				  opacity: 0.7;
				}

            </style>

            <body style="background-color: #00000085;">
                <div class="container">
        ';

        foreach($result as $row)
        {
            //all of the images must be of 1200x400 format

			//vocabulary has no level
			if($type == "vocabulary")
			{
				$output .= '
				  <div class="imagebox">
					<a href="http://localhost/Zusammen/main/lessons/quiz.php?type=' . $type . '&level=&title=' . $row['title'] . '">
					  <img src="' . $row['imagePath'] . '"  class="category-banner img-responsive">
					  <span class="imagebox-desc"> ' . $row['title'] . ' </span>
					</a>
				  </div>
				';
			}

			//grammar has no images
			else if($type == "grammar")
			{
				$output .= '
				  <div class="imagebox" style="background-color:transparent">
					<a href="http://localhost/Zusammen/main/lessons/quiz.php?type=' . $type . '&level=' . $level . '&title=' . $row['title'] . '">
					  <button class="button"> ' . $row['title'] . ' </button>
					</a>
				  </div>
				';
			}

			else
			{
				$output .= '
				  <div class="imagebox">
					<a href="http://localhost/Zusammen/main/lessons/quiz.php?type=' . $type . '&level=' . $level . '&title=' . $row['title'] . '">
					  <img src="' . $row['imagePath'] . '"  class="category-banner img-responsive">
					  <span class="imagebox-desc"> ' . $row['title'] . ' </span>
					</a>
				  </div>
				';
			}
        }

        $output .= '
                </div>
                <div style="margin-top: 100px"></div>
            </body>
        ';

        echo $output;
    }

    function display_quiz_passage($connect, $level, $type, $title)
    {
		$query = "
		SELECT * FROM $type
		WHERE level = '$level'
		AND title = '$title'
		";

        $statement = $connect->prepare($query);
        $statement->execute();
        $result = $statement->fetchAll();

        $output = '
            <style>
                body{
                    background-color : #5d775794;
                }

                .imagebox {
                  background: black;
                  padding: 0px;
                  position: relative;
                  text-align: center;
                  width: 100%;
                  border-radius: 6px;
                }

                .imagebox img {
                  opacity: 1;
                  transition: 0.5s opacity;
                  margin-bottom: 3rem;
                  border-radius: 6px;
                  margin-bottom: 30px;
                }

                .imagebox .imagebox-desc {
                  background-color: rgba(0, 0, 0, 0.6);
                  bottom: 0px;
                  color: white;
                  font-size: 1.2em;
                  left: 0px;
                  padding: 10px 0px;
                  position: absolute;
                  transition: 0.5s padding;
                  text-align: center;
                  width: 100%;
                  border-radius: 6px;
                }

                .imagebox:hover img {
                  opacity: 0.7;
                }

                .imagebox:hover .imagebox-desc {
                  padding-bottom: 2%;
                }

                label{
                    font-weight: 600;
                    font-size: 16px;
                }

				.jumbotron p{
					text-align: justify;
				}
            </style>
        ';

        foreach($result as $row)
        {
            //all of the images must be of 1200x400 format


            if($type == "reading")
            {
                $output .= '
                    <body>
                        <div class="container">
                           <div class="imagebox">
                               <img src="' . $row['imagePath'] . '"  class="category-banner img-responsive">
                               <span class="imagebox-desc"> ' . $row['title'] . ' </span>
                           </div>
                        </div>

                        <div class="container">
                           <div class="jumbotron">
                              <p class="lead">' . $row['text'] . '</p>
                            </div>
                        </div>
                    </body>
                ';
            }

            else if($type == "listening")
            {
                $output .= '
                    <style>
                        audio{
                            margin-left: 25%;
                            width: 50%;
                            outline: none;
                            margin-bottom: 30px;
                        }
                    </style>

                    <body>
                        <div class="container">
                           <div class="imagebox">
                               <img src="' . $row['imagePath'] . '"  class="category-banner img-responsive">
                               <span class="imagebox-desc"> ' . $row['title'] . ' </span>
                           </div>
                        </div>

                        <div class="container">
                           <audio controls>
                                <source src="'.$row['audioPath'] .'" type="audio/ogg" />
                                <source src="'.$row['audioPath'] .'" type="audio/mpeg" />
                           </audio>
                        </div>
                    </body>
                ';
        	}

			else if ($type == "grammar")
			{
				$output .= '
					<body>
						<div class="container">
						   <div class="jumbotron">
						   		<h1> Explanation </h1>
								<a href="#demo" class="btn btn-primary" data-toggle="collapse"> Show </a><br><br><br>

								<div id="demo" class="collapse">'.$row['explanation'].'<br></div>

								<script type="text/javascript">
									$(document).ready(function(){
										$("a:eq(1)").click(function(){
											$.getJSON("http://localhost/Zusammen/translations/'.$_SESSION['nativeLanguage'].'.json", function(json) {
												$(\'#demo2\').html(json.grammar.'.$row['level'].'.'.$row['title'].');
											});
										});
									});
								</script>
							</div>
						</div>
					</body>
				';
			}
		}

        $output .= '
                </div>
            </body>
        ';

        echo $output;
    }

    function display_quiz_exercises($connect, $level, $type, $title, $id)
    {
        $query = "
            SELECT * FROM Questions
            INNER JOIN " . $type . "Invoice
            ON Questions.idQuestion = " . $type . "Invoice.idQuestion
            INNER JOIN " . $type . "
            ON " . $type . "Invoice.id" . $type . " = " . $type . ".id" . $type . "
            WHERE " . $type . ".id" . $type . " = ".$id."
            ORDER BY onPageOrder ASC;
        ";

        $statement = $connect->prepare($query);
        $statement->execute();
        $count = $statement->rowCount();
        $result = $statement->fetchAll();

        $output = '
            <div class="container">
                <div class="jumbotron">
        ';

        foreach($result as $row)
        {
            $output .= '
                <div class="quest" id="'.$row['idQuestion'].'">
                    <h2 class="display-4">Question '.$row['onPageOrder'].':</h2>
                    <p class="lead">'.$row['questionText'].'</p>
                    <input type="radio" name="quiz'.$row['onPageOrder'].'" value="'.$row['option1'].'">
                    <label for="quiz'.$row['onPageOrder'].'">'.$row['option1'].'</label><br>
                    <input type="radio" name="quiz'.$row['onPageOrder'].'" value="'.$row['option2'].'">
                    <label for="quiz'.$row['onPageOrder'].'">'.$row['option2'].'</label><br>
                    <input type="radio" name="quiz'.$row['onPageOrder'].'" value="'.$row['option3'].'">
                    <label for="quiz'.$row['onPageOrder'].'">'.$row['option3'].'</label><br>
                    <input type="radio" name="quiz'.$row['onPageOrder'].'" value="'.$row['option4'].'">
                    <label for="quiz'.$row['onPageOrder'].'">'.$row['option4'].'</label><br>
                </div>
                <hr class="my-4">
            ';
        }

        $output .= '
                    <p class="lead" style="margin-bottom: -3%;">
                      <input class="btn btn-primary btn-lg" type="button" value="Check!" style="outline: none; margin-left: 30%;">
                      <input class="btn btn-primary btn-lg" type="button" value="Reset!" style="outline: none; margin-left: 10%;">
                    </p>

                    <div id="ajax"></div>
                </div>
            </div>
        ';

        echo $output;
    }

	function vocabulary_exercises($connect, $title, $id)
    {
        $query = "
		SELECT * FROM Questions
		INNER JOIN VocabularyInvoice
		ON Questions.idQuestion = VocabularyInvoice.idQuestion
		INNER JOIN Vocabulary
		ON VocabularyInvoice.idVocabulary = Vocabulary.idVocabulary
		INNER JOIN VocabularyImage
		ON VocabularyInvoice.idImage = VocabularyImage.idImage
		WHERE Vocabulary.idVocabulary = '".$id."'
		ORDER BY onPageOrder ASC;
        ";

        $statement = $connect->prepare($query);
        $statement->execute();
        $count = $statement->rowCount();
        $result = $statement->fetchAll();
		$i = 0;

        foreach($result as $row)
        {
			$output = '
			<style>
				body{
					background-color : #5d775794;
				}

				.imagebox {
				  background: black;
				  padding: 0px;
				  position: relative;
				  text-align: center;
				  width: 100%;
				  border-radius: 6px;
				}

				.imagebox img {
				  opacity: 1;
				  transition: 0.5s opacity;
				  margin-bottom: 3rem;
				  border-radius: 6px;
				  margin-bottom: 30px;
				}

				label{
					font-weight: 600;
					font-size: 16px;
				}
			</style>

				<div class="container">
					<div class="jumbotron">
			   			<div class="imagebox">
			   				<img src="' . $row['imagePath'] . '"  class="category-banner img-responsive">
			   			</div>

			            <div class="quest" id="'.$row['idQuestion'].'">
			                <h2 class="display-4">Question '.$row['onPageOrder'].':</h2>
			                <p class="lead">'.$row['questionText'].'</p>
			                <input type="radio" name="quiz'.$row['onPageOrder'].'" value="'.$row['option1'].'">
			                <label for="quiz'.$row['onPageOrder'].'">'.$row['option1'].'</label><br>
			                <input type="radio" name="quiz'.$row['onPageOrder'].'" value="'.$row['option2'].'">
			                <label for="quiz'.$row['onPageOrder'].'">'.$row['option2'].'</label><br>
			                <input type="radio" name="quiz'.$row['onPageOrder'].'" value="'.$row['option3'].'">
			                <label for="quiz'.$row['onPageOrder'].'">'.$row['option3'].'</label><br>
			                <input type="radio" name="quiz'.$row['onPageOrder'].'" value="'.$row['option4'].'">
			                <label for="quiz'.$row['onPageOrder'].'">'.$row['option4'].'</label><br>
			            </div>
					</div>
				</div>
			';

			echo $output;
        }

		echo '
		<div class="container">
			<div class="jumbotron">
		<p class="lead" style="margin-bottom: -3%;">
			<input class="btn btn-primary btn-lg" type="button" value="Check!" style="outline: none; margin-left: 30%;margin-top: -1rem;">
			<input class="btn btn-primary btn-lg" type="button" value="Reset!" style="outline: none; margin-left: 10%;margin-top: -1rem;">
		</p>

		<div id="ajax"></div>
		</div>
	</div>
		';
    }
