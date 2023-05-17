<?php
    session_start();
    include '../../server/global_scope.php';
    $class = new GlobalScope();

    if(isset($_POST['submit_image']))
    {
        //get all of the information about the uploaded file
        $file = $_FILES['picture'];

        $fileName = $_FILES['picture']['name'];
        $fileDir = $_FILES['picture']['tmp_name'];
        $fileType = $_FILES['picture']['type'];
        $fileError = $_FILES['picture']['error'];
        $fileSize = $_FILES['picture']['size'];

        //get the extention of the file
        $fileTempExt = explode('.', $fileName);
        $fileExtension = strtolower(end($fileTempExt));

        $allowed = array('jpg', 'jpeg', 'png');

        if(in_array($fileExtension, $allowed))
        {
            if($fileError === 0)
            {
                //file size must be less then 1 megabyte
                if($fileSize <= 1048576)
                {
                    //setting a new unique name to uploaded file
                    $newFileName = uniqid('', true).'.'.$fileExtension;

                    //set 2 links to it
                    //the web link will be stored in database
                    //disk link will be used to manipulate with the image
                    $filePathWeb = "http://localhost/Zusammen/pictures/".$newFileName;
                    $filePathDisk = "../../pictures/".$newFileName;

                    //moving the file to local folder
                    move_uploaded_file($fileDir, $filePathDisk);

                    //setting the location in database
                    $class->upload_avatar_in_database($_SESSION['email'], $filePathWeb);
                    header("Location: settings.php?upload=success");
                }

                else
                {
                    header("Location: settings.php?error=The file is too large!");
                }
            }

            else
            {
                header("Location: settings.php?error=There is an error with the uploading file!");
            }
        }

        else
        {
            header("Location: settings.php?error=Incorrect file format!");
        }
    }
