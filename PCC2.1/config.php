<?php 

    $user= "root";
    $password= "";
    $host= "localhost";
    $dbname= "bd_animalsave";

    $pdo = new PDO("mysql:dbname=".$dbname.";host=".$host, $user, $password);
?>