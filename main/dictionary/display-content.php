<?php
    session_start();
    include "../../server/global_scope.php";
    $class = new GlobalScope();
    $text = $_POST['PassingText'];
    $class->getWord($text);
?>
