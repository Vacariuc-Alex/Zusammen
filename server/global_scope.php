<?php

//connection string to the  local database zusammen
include 'connection.php';


/*
*   Quick content and guidance for searching of the function!!!
*   1. for the dictionary
*   2. for the admin dictionary
*   3. for the log in
*   4. for the sign up
*   5. for the settings
*   6. for languages
*
*/

//defining the class which operates with our database
class GlobalScope extends Connection
{
    //scope
    public static $email;
    public static $password;

    //methods
    //for the dictionary
    //get the word's information from searchbar
    //inside the dictionary and display it inside the dictionary
    public function getWord($searchWord)
    {
        $query = "
            SELECT * FROM `worterbuch`
            WHERE word = '".$searchWord."' and idlanguage = '".$_SESSION['idLanguage']."';
        ";
        $query_run = $this->connect()->prepare($query);
        $query_exec = $query_run->execute(array('$searchWord' => $searchWord));

        if ($query_exec)
        {
            if ($query_run->rowcount() == 1)
            {
                foreach ($query_run as $row)
                {
                    $word = $row->word;
                    $translation = $row->translation;
                    $pronunciation = $row->audioPath;
                }

                // displaying the words's information inside the dictionary
                // with word wrapping
                $output = "
                <style>
                    #word_text{
                        overflow-wrap: break-word;
                        max-width: 30rem;
                        font-size: 22px;
                        color: #black;
                    }

                    #translation{
                        overflow-wrap: break-word;
                        max-width: 30rem;
                        font-size: 18px;
                    }

                    #appendText{
                        font-family : Arial, Helvetica, sans-serif;
                        color: #483D8B;
                        font-size: 16px;
                    }

                    .audio-icon{
                        font-size: 22px;
                        margin-right: 10px;
                    }
                </style>
                ";

                if(is_null($pronunciation) || empty($pronunciation))
                {
                    $output .=
                    "
                    <script>
                        document.getElementById('word_text').innerHTML = '".$word."'
                        document.getElementById('appendText').innerHTML = '<hr><h3>Translation:</h3>'
                        document.getElementById('translation').innerHTML = '".$translation."'
                    </script>
                    ";
                }

                else {
                    $audiotext = "<a><i class=\"fa fa-volume-up audio-icon\" onclick=\"playSound()\"></i></a><audio id=\"audio\" src=\"".$pronunciation."\"> </audio>' + '".$word."";

                    $output .=
                    "
                    <script>
                        function playSound() {
                            var sound = document.getElementById(\"audio\");
                            sound.play();
                        }

                        document.getElementById('word_text').innerHTML = '".$audiotext."';
                        document.getElementById('appendText').innerHTML = '<hr><h3>Translation:</h3>';
                        document.getElementById('translation').innerHTML = '".$translation."';
                    </script>
                    ";
                }
                echo $output;
            }
        }

        else
        {
            //error message for server errors
            echo "<script>
                    alert('Unexpected Server Error!');
                </script>";
        }
    }

    //match all the words similar to the word typped in
    //and display in word_list div, making them linkable
    public function displayWord($searchWord)
    {
        $query = "
            SELECT * FROM worterbuch
            WHERE word LIKE '%".$searchWord."%' AND idlanguage = '".$_SESSION['idLanguage']."'
            ORDER BY word asc;
        ";
        $query_run = $this->connect()->prepare($query);
        $query_exec = $query_run->execute(array('$searchWord' => $searchWord));

        if ($query_exec)
        {
            if ($query_run->rowcount() > 0)
            {
                $i = 0;
                foreach ($query_run as $row)
                {
                    $i++;
                    $word = $row->word;

                    //script to add the words in word_list
                    echo "<script>"
                    ."document.getElementById('word_list').innerHTML += \"<li id='".'passingListIdDictionary'
                    .$i
                    ."'>\" + "
                    ."'$word'"
                    . "+ \"</li>\";</script>";
                }
            }

            else
            {
                //error message in case we fing nothing
                echo "<script>
                        document.getElementById('word_text').innerHTML = "."'No search found!'"."
                        document.getElementById('word_text').style.color = \"green\";
                    </script>";
            }
        }

        else
        {
            //error message for server errors
            echo "<script>
                    alert('Unexpected Server Error!');
                </script>";
        }
    }


    //for the admin dictionary
    //adding a new word into the dictionary from admin inside
    public function setWordInTheDictionary($word, $translation, $audio, $idLanguage)
    {
        $query = "INSERT INTO worterbuch(word, translation, audioPath, idlanguage) VALUES ('$word', '$translation', '$audio', '$idLanguage')";

        $query_run = $this->connect()->prepare($query);
        $query_exec = $query_run->execute();



        if($query_exec){
            //script for the table
            echo "<style>
                #last-displayes-word{
                    overflow-wrap: break-word;
                    table-layout: fixed;
                }

                table, th, td {
                    border: 1px solid black;
                    text-align: center;
                    font-size: 20px;
                    padding: 7px;
                }
            </style>
                    <table id=\"last-displayes-word\">
                        <tr>
                            <th colspan=\"4\"> <h3 style=\"color:#0c7536; padding-top:1rem\"> Last successfuly added word </h3>
                        </tr>

                        <tr style=\"color: blue\">
                            <th> Word </th>
                            <th> Translation </th>
                            <th> AudioPath </th>
                            <th> Language ID </th>
                        </tr>

                        <tr>
                            <td> ".$word." </td>
                            <td> ".$translation." </td>
                            <td> ".$audio." </td>
                            <td> ".$idLanguage." </td>
                        </tr>

                    </table>";
        }

        else
        {
            echo "<script> alert('Unexpected server error!');</script>";
        }

    }

    public function setNewLanguage($native, $foreign)
    {
        $query = "INSERT INTO sprache(nativeLanguage, foreignLanguage) VALUES ('$native', '$foreign')";

        $query_run = $this->connect()->prepare($query);
        $query_exec = $query_run->execute();

        if(!$query_exec)
        {
            echo "<script> alert('Unexpected server error!');</script>";
        }
    }

    //check if the admin's password coincides with the input
    public function getAdmin($code)
    {
        $code = md5($code);
        $query = "SELECT * FROM personen WHERE admin = '$code'";
        $result = $this->connect()->query($query);

        if ($result->rowcount() == 1) {
            return true;
        }

        else {
            return false;
        }
    }


    //for the log in
    //get the required user information and hold it in the variables
    public function getUser($email, $password)
    {
        $password = md5($password);
        $query = "SELECT * FROM personen WHERE email = '$email' AND password = '$password'";
        $query_run = $this->connect()->prepare($query);
        $query_exec = $query_run->execute(array('$email' => $email, '$password' => $password));

        if ($query_exec)
        {
            if ($query_run->rowcount() > 0)
            {
                foreach ($query_run as $row)
                {
                    self::$email = $row->email;
                    self::$password = $row->password;
                }
            }
        }
    }


    //for the sign up
    //verify if the email is unique
    public function verifyUserUnique($email)
    {
        $query = "SELECT * FROM personen WHERE email = '$email'";
        $query_run = $this->connect()->query($query);
        $query_exec = $query_run->rowCount();

        return $query_exec;
    }

    //insert new user
    public function signup($name, $email, $date, $loc, $pass)
    {
        $query = "INSERT INTO `personen` (`password`, `name`, `dateOfBirth`, `location`, `email`, `avatarPath`)
                  VALUES ('$pass', '$name', '$date', '$loc', '$email', 'http://localhost/Zusammen/pictures/default.jpg')";

        $query_run = $this->connect()->prepare($query);
        $query_exec = $query_run->execute(array('$pass' => $pass, '$name' => $name, '$date' => $date, '$loc' => $loc, '$email' => $email));

        if($query_exec)
        {
            self::$email = $email;
            return true;
        }

        else
            return false;
    }



    //for the settings
    //getting all of the information about the current user from SQLiteDatabase
    //$return_data specifies what kind of information you want to extract
    public function get_user_settings($email, $return_data)
    {
        $query = "SELECT * FROM personen WHERE email = '$email'";
        $query_run = $this->connect()->prepare($query);
        $query_exec = $query_run->execute(array('$email' => $email));

        if ($query_exec)
        {
            if ($query_run->rowcount() == 1)
            {
                foreach ($query_run as $row)
                {
                    $pa = $row->password;
                    $na = $row->name;
                    $av = $row->avatarPath;
                    $lo = $row->location;
                    $ho = $row->hobby;
                    $ch = $row->characteristics;

                    if($return_data == "password")
                        return $pa;

                    else if($return_data == "name")
                        return $na;

                    else if($return_data == "email")
                            return $email;

                    else if($return_data == "avatarPath")
                        return $av;

                    else if($return_data == "location")
                        return $lo;

                    else if($return_data == "hobby")
                        return $ho;

                    else if($return_data == "bio")
                        return $ch;
                }
            }
        }
    }

    //function to load a new avatar for the unserialize
    //and delete the previous MongoCursorException
    public function upload_avatar_in_database($email, $newPath)
    {
        //removing the previous file excepted for the default
        //prevent the output php message when deleting file was not found
        try
        {
            if(substr($this->get_user_settings($email, 'avatarPath'), -11) != "default.jpg")
                unlink("../..".substr($this->get_user_settings($email, 'avatarPath'), 25));
        }
        catch (Exception $e) {}

        $query = "UPDATE personen SET avatarPath = '$newPath' WHERE email = '$email'";
        $query_run = $this->connect()->prepare($query);
        $query_exec = $query_run->execute();
    }

    //deleting the user's account
    public function account_deleting_process($email)
    {
        $query = "DELETE FROM personen WHERE email = '$email'";
        $query_run = $this->connect()->prepare($query);
        $query_exec = $query_run->execute();

        echo "<script>";
        echo "window.alert('Account deleted successfully!');";
        echo "</script>";
    }

    //checking if the account was already deleted
    //return true if it exists and was not deleted
    public function account_deleting_proof($email)
    {
        $query = "SELECT * FROM personen WHERE email = '$email'";
        $query_run = $this->connect()->prepare($query);
        $query_exec = $query_run->execute(array('$email' => $email));

        if ($query_exec)
        {
            if ($query_run->rowcount() == 1)
                return true;

            else
                return false;
        }
    }

    //updating the account settings
    public function update_account($oldEmail, $newEmail, $name)
    {
        $query = "UPDATE personen SET name = '$name', email = '$newEmail' WHERE email = '$oldEmail'";
        $query_run = $this->connect()->prepare($query);
        $query_exec = $query_run->execute();

        $_SESSION['email'] = $newEmail;
    }

    //updating the profile settings
    public function update_profile($email, $location, $hobby, $bio)
    {
        $query = "UPDATE personen SET location = '$location', hobby = '$hobby', characteristics = '$bio' WHERE email = '$email'";
        $query_run = $this->connect()->prepare($query);
        $query_exec = $query_run->execute();
    }

    //updating the password, setting a new password
    public function update_password($email, $password)
    {
        $query = "UPDATE personen SET password = '$password' WHERE email = '$email'";
        $query_run = $this->connect()->prepare($query);
        $query_exec = $query_run->execute();
    }


    //for languages
    public function get_native_lang()
    {
        $query = "SELECT DISTINCT nativeLanguage FROM `sprache`";
        $query_run = $this->connect()->prepare($query);
        $query_exec = $query_run->execute();
        $output = "<option value='undefined' selected> Choose your native language! </option>";

        foreach ($query_run as $row)
        {
            $output .= "<option value='".$row->nativeLanguage."'> ".$row->nativeLanguage." </option>";
        }

        echo $output;
    }

    public function get_foreign_lang($native)
    {
        $query = "
        SELECT foreignLanguage FROM `sprache`
        WHERE nativeLanguage = '".$native."';
        ";
        $query_run = $this->connect()->prepare($query);
        $query_exec = $query_run->execute();
        $output = "<option value='undefined' selected> Choose the language you want to learn! </option>";

        foreach ($query_run as $row)
        {
            $output .= "<option value='".$row->foreignLanguage."'> ".$row->foreignLanguage." </option>";
        }

        echo $output;
    }

    public function get_id_lang()
    {
        $query = "
        SELECT idLanguage FROM `sprache`
        WHERE nativeLanguage = '".$_SESSION['nativeLanguage']."' and foreignLanguage = '".$_SESSION['foreignLanguage']."';
        ";
        $query_run = $this->connect()->prepare($query);
        $query_exec = $query_run->execute();

        foreach ($query_run as $row)
        {
            return $row->idLanguage;
        }
    }

    public function update_language_package()
    {
        $query =
        "
        UPDATE `personen` SET `idLanguage`= '".$_SESSION['idLanguage']."'
        WHERE email = '".$_SESSION['email']."';
        ";
        $query_run = $this->connect()->prepare($query);
        $query_exec = $query_run->execute();
    }

    public function get_language_package($value)
    {
        if($value == "nativeLanguage")
        {
            $query = "
            SELECT nativeLanguage FROM sprache
            INNER JOIN personen
            on sprache.idLanguage = personen.idLanguage
            WHERE personen.email = '".$_SESSION['email']."';
            ";
            $query_run = $this->connect()->prepare($query);
            $query_exec = $query_run->execute();

            foreach ($query_run as $row)
            {
                return $row->nativeLanguage;
            }
        }

        else if($value == "foreignLanguage")
        {
            $query = "
            SELECT foreignLanguage FROM sprache
            INNER JOIN personen
            on sprache.idLanguage = personen.idLanguage
            WHERE personen.email = '".$_SESSION['email']."';
            ";
            $query_run = $this->connect()->prepare($query);
            $query_exec = $query_run->execute();

            foreach ($query_run as $row)
            {
                return $row->foreignLanguage;
            }
        }

        else if($value == "idLanguage")
        {
            $query = "
            SELECT idLanguage FROM `personen`
            WHERE email = '".$_SESSION['email']."';
            ";
            $query_run = $this->connect()->prepare($query);
            $query_exec = $query_run->execute();

            foreach ($query_run as $row)
            {
                return $row->idLanguage;
            }
        }
    }
}
