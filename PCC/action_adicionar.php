<?php 

require "config.php";

$nome = filter_input(INPUT_POST,"nome",);
$marca =  filter_input(INPUT_POST,"marca",);
$tipo =  filter_input(INPUT_POST,"type",);
$quanti = filter_input(INPUT_POST,"quant");
$valor =  filter_input(INPUT_POST,"valor");
$desc = filter_input(INPUT_POST,'desc');


if($nome && $marca && $tipo && $quanti && $valor && $desc){

    $slq = $pdo->prepare("SELECT * FROM alimentos");
    $slq->execute();
