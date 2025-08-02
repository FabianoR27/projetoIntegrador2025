<?php
include 'src/includes/header.php';
include 'src/includes/conexao.php';
?>

<main id="main" class="py-5">
    <div class="container my-0 my-md-5 p-md-0">
        <?php
        $integrantes = $conecta->query("SELECT * FROM integrantes");
        $contador = 0;

        if ($integrantes->num_rows > 0) {
            while ($linhasIntegrantes = $integrantes->fetch_assoc()) {

                $paginas = $conecta->query("SELECT pagina, link FROM paginas WHERE id_integrante = {$linhasIntegrantes['id']}");
                $hrefs = '';
                while ($linhaPaginas = $paginas->fetch_assoc()) {
                    $hrefs .= "<a href='{$linhaPaginas['link']}'>{$linhaPaginas['pagina']}</a> ";
                }

                $contador++;
                $flexRowClasse = 'flex-md-row';
                $direcaoTextoClasse = 'text-md-start';
                if ($contador % 2 == 0) {
                    $flexRowClasse = 'flex-md-row-reverse';
                    $direcaoTextoClasse = 'text-md-end';
                }
                echo '
                <div class="d-flex flex-column ' . $flexRowClasse . ' justify-content-between align-items-center mb-5 gap-5" tabindex="0">
                    <div class="text-center">
                        <img src="src/assets/images/quemsomos/' . $linhasIntegrantes['imagem'] . '" alt="' . $linhasIntegrantes['altImagem'] . '" loading="lazy">
                    </div>
                    <div class="' . $direcaoTextoClasse . '">
                        <h1 class="mb-4 fw-semibold">' . $linhasIntegrantes['nome'] . ', ' . $linhasIntegrantes['apelido'] . '</h1>
                        <p>' . $linhasIntegrantes['descricao'] . '</p> 
                        <p class="fw-semibold">Responsável pelas páginas: ' . $hrefs . '<p>
                        <p><span class="fw-semibold">R.A.:</span> ' . $linhasIntegrantes['ra'] . '.</p>
                    </div>
                </div>';
            }
        } else {
            echo '<h1 class="text-center">Nenhum conteúdo encontrado</h1>';
        }
        ?>
    </div>
</main>

<?php
$conecta->close();
include 'src/includes/footer.php';
?>