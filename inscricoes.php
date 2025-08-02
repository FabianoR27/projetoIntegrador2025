<?php
include 'src/includes/header.php';
include 'src/includes/conexao.php';

// Processa envio do formulário
$mensagem = '';
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nome = trim($_POST['name']);
    $email = trim($_POST['email']);
    $tipo = $_POST['subscriptionType'];
    $comentarios = trim($_POST['comments']);

    // Prepara e executa a inserção
    $stmt = $conecta->prepare("INSERT INTO inscricoes (nome, email, tipo_inscricao, comentarios) VALUES (?, ?, ?, ?)");
    if ($stmt) {
        $stmt->bind_param("ssss", $nome, $email, $tipo, $comentarios);
        if ($stmt->execute()) {
            $mensagem = "Inscrição realizada com sucesso!";
        } else {
            $mensagem = "Erro ao salvar: " . $stmt->error;
        }
        $stmt->close();
    } else {
        $mensagem = "Erro na preparação da consulta: " . $conecta->error;
    }
}

// Puxa conteúdo da página
$pagina = ['titulo' => 'Inscreva-se', 'descricao' => 'Preencha o formulário abaixo.'];
$result = $conecta->query("SELECT titulo, descricao FROM pagina_inscricao LIMIT 1");
if ($result && $result->num_rows > 0) {
    $pagina = $result->fetch_assoc();
}

// Puxa opções do select
$tipos = [];
$resultTipos = $conecta->query("SELECT nome, valor FROM tipos_inscricao");
if ($resultTipos && $resultTipos->num_rows > 0) {
    while ($row = $resultTipos->fetch_assoc()) {
        $tipos[] = $row;
    }
}
?>

<!-- Conteúdo da página -->
<main id="main>
    <section class="py-5" aria-labelledby="titulo-inscricoes">
        <div class="container my-0 my-md-5 p-md-0">
            <div class="row row-cols-lg-2 g-0 justify-content-center">
                <!-- Texto de apresentação -->
                <header class="text-center text-lg-start p-2 align-self-center">
                    <h1 id="titulo-inscricoes" class="display-4 fw-bold text-primary mb-3 text-uppercase"><?= htmlspecialchars($pagina['titulo']) ?></h1>
                    <p class="fs-4 mb-4"><?= nl2br(htmlspecialchars($pagina['descricao'])) ?></p>
                </header>

                <!-- Formulário -->
                <div class="p-2 position-relative">
                    
                    <div role="form" class="p-5 border-blue rounded-3 bg-dark text-white" method="post" aria-label="Preencha o formulário abaixo para se inscrever">
                        <fieldset>
                            <legend class="visually-hidden">Informações da inscrição</legend>

                            <div class="mb-3">
                                <label for="inputNome" class="form-label">Nome completo <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" id="inputNome" name="name">
                            </div>

                            <div class="mb-3">
                                <label for="inputEmail" class="form-label">E-mail <span class="text-danger">*</span></label>
                                <input type="email" class="form-control" id="inputEmail" name="email">
                            </div>

                            <div class="mb-3">
                                <label for="tipoInscricao" class="form-label">Tipo de inscrição <span class="text-danger">*</span></label>
                                <select class="form-select" id="tipoInscricao" name="subscriptionType">
                                    <option value="" selected disabled>Selecione uma opção</option>
                                    <?php foreach ($tipos as $tipo): ?>
                                        <option value="<?= htmlspecialchars($tipo['valor']) ?>">
                                            <?= htmlspecialchars($tipo['nome']) ?>
                                        </option>
                                    <?php endforeach; ?>
                                </select>
                            </div>

                            <div class="mb-3">
                                <label for="comentarios" class="form-label">Comentários ou observações (opcional)</label>
                                <textarea class="form-control" id="comentarios" name="comments" rows="4"></textarea>
                            </div>

                            <button id="btnInscrever" class="btn btn-primary w-100" type="submit">Inscrever-se</button>

                            <small class="fw-light">Todos os campos com <span class="text-danger">*</span> são obrigatórios.</small>
                            <hr class="my-3">
                            
                            <div class="text-center">
                                <small class="text-light">
                                    Ao clicar em Inscrever-se, você concorda com os <a href="normas.php" class="text-warning">termos de uso</a>.
                                </small>
                            </div>

                            <?php if (!empty($mensagem)): ?>
                                <div class="alert alert-info mt-3" role="alert">
                                    <?= htmlspecialchars($mensagem) ?>
                                </div>
                            <?php endif; ?>
                        </fieldset>
                    </div>
                </div>

                <!-- Mensagem de alerta -->
                <div id="mensagemAlerta" class="p-5 position-fixed z-3 translate-middle-x-50 bottom-0" data-bs-theme="dark"></div>
            </div>
        </div>
    </section>
</main>

<?php
$conecta->close();
include 'src/includes/footer.php';
?>