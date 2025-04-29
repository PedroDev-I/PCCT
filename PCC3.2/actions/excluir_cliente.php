<?php
require '../includes/config.php';

$id = filter_input(INPUT_GET, 'id_cliente');
if($id){
    $sql = $pdo->prepare("DELETE FROM cliente WHERE id_cliente = :id_cliente");
    $sql->bindValue(':id_cliente', $id);
    $sql->execute();
}

header("Location: index.php");
exit;