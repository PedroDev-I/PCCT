<link rel="stylesheet" href="../assets/css/adm_page/admprodt.css">

<form action="../action/adicionar_produto_action.php" method="POST" enctype="multipart/form-data">

    <a href="../pages/admdashboard.php" class="voltar-btn">
        <img src="../assets/img/dashboardadm/addprodt/back.png" alt="Voltar">
    </a>

    <div class="adicionar">
        <div class="campos">
            <label for="nome_pd">Nome do produto</label>
            <input type="text" name="nome_pd" id="nome_pd" class="input-padrao">

            <label for="imagem">Imagem</label>
            <input type="file" name="imagem" id="imagem" class="input-padrao">

            <label for="descricao">Descrição</label>
            <input type="text" name="descricao" id="descricao" class="input-padrao">

            <label for="preco">Preço</label>
            <input type="number" name="preco" id="preco" step="0.01" class="input-padrao">

            <label for="quantidade">Quantidade</label>
            <input type="number" name="quantidade" id="quantidade" class="input-padrao">

            <button type="submit" class="btn-finalizar">Finalizar</button>
        </div>
    </div>

    <div class="tabel">
        <?php require_once "../includes/config.php"; ?>
    </div>
</form>
