<?php 

    $db_user = "root";
    $db_password = "";
    $db_host= "localhost";
    $db_name = "projetoETC";

    $pdo = new PDO("mysql:dbname=".$db_name.";host=".$db_host, $db_user, $db_password);

?>