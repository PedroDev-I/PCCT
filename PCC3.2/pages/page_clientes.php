<?php
require '../includes/config.php';
$lista = [];
$sql = $pdo->query("SELECT * FROM cliente");
if($sql->rowCount() > 0){
    $lista = $sql->fetchAll(PDO::FETCH_ASSOC);
}
?>

<a href="#">Adicionar Usuário</a>

<table border="1" width="100%">
    <tr>
        <th>ID</th>
        <th>CPF</th>
        <th>Nome</th>
        <th>Email</th>
        <th>Ações</th>
    </tr>

    <?php foreach($lista as $usuario): ?>
            <tr>
                <td><?=$usuario['id_cliente'];?></td>
                <th><?=$usuario['cpf'];?></th>
                <td><?=$usuario['nome'];?></td>
                <td><?php echo $usuario['email']; ?></td>
                <td>
                    <a href="../actions/editar_cliente.php?id=<?=$usuario['id_cliente'];?>"onclick="return confirm('Você tem certeza que deseja editar esse usuário?')">[ Editar ]</a>
                    <a href="../actions/excluir_cliente.php?id=<?=$usuario['id_cliente'];?>" onclick="return confirm('Você tem certeza que deseja excluir esse usuário?')">[ Excluir ]</a>
                </td>
            </tr>
    <?php endforeach; ?>