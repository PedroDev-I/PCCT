<?php
require '../includes/config.php';
$lista = [];
$sql = $pdo->query("SELECT * FROM cliente");
if($sql->rowCount() > 0){
    $lista = $sql->fetchAll(PDO::FETCH_ASSOC);
}
?>
<link rel="stylesheet" href="../assets/css/adm_page/pageclient.css">
<a href="javascript:void(0);" onclick="document.getElementById('popupModal').style.display='block'" style="background-color: gold; color:white;border-radius:50px;padding: 10px 30px;">Adicionar Cliente</a>

<table border="1" width="100%">
    <tr>
        <th>ID</th>
        <th>Perfil</th>
        <th>CPF</th>
        <th>Nome</th>
        <th>Email</th>
        <th>Ações</th>
    </tr>

    <?php foreach($lista as $usuario): ?>
            <tr>
                <td><?=$usuario['id_cliente'];?></td>
                <td><img src="../assets/img/profile/<?=$usuario['perfil'];?>" width="50" alt="Imagem do cliente"></td>
                <th><?=$usuario['cpf'];?></th>
                <td><?=$usuario['nome'];?></td>
                <td><?php echo $usuario['email']; ?></td>
                <td>
                    <a href="../actions/editar_cliente.php?id=<?=$usuario['id_cliente'];?>"onclick="return confirm('Você tem certeza que deseja editar esse usuário?')"style="background-color: green; border-radius:100px; color:white; padding: 3%; margin-right: 10px;">Editar</a>
                    <a href="../actions/excluir_cliente.php?id=<?=$usuario['id_cliente'];?>" onclick="return confirm('Você tem certeza que deseja excluir esse usuário?')"style=";background-color: red; border-radius:100px;color:white;padding:3%;">Excluir</a>
                </td>
            </tr>
    <?php endforeach; ?>