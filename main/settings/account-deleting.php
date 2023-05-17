<?php
    session_start();
    include '../../server/global_scope.php';
    $class = new GlobalScope();
    $class->account_deleting_process($_SESSION['email']);
