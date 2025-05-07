<?php
require '../includes/config.php';

$id = filter_input(INPUT_POST, 'id_cliente');
$name = filter_input(INPUT_POST, 'name');
$email = filter_input(INPUT_POST, 'email', FILTER_VALIDATE_EMAIL);

if ($id && $name && $email){
    $sql = $pdo->prepare("UPDATE cliente SET nome = :name, email = :email WHERE id_cliente = :id_cliente");
    $sql->bindValue(':name', $name);
    $sql->bindValue(':email', $email);
    $sql->bindValue(':id', $id);
    $sql->execute();

    header("Location: index.php");
    exit;
}else {
    header("Location: adicionar.php");
    exit;
}