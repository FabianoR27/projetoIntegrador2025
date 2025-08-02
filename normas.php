<?php
include 'src/includes/header.php';
include 'src/includes/conexao.php';
?>
<main id="main">

    <article class="py-5">
        <div class="container my-0 my-md-5 p-md-0">

            <h1 class="text-ceffnter fw-bold mb-4">Termos e Condições de Uso</h1>
            <p class="text-cenrter mx-auto mb-5">
                Este site é oferecido pelo portal FateconHQs, que regulamenta todos os direitos e obrigações de seus visitantes. Ao acessar o site, você concorda em cumprir as regras e diretrizes aqui estabelecidas, em conformidade com a legislação vigente.
            </p>

            <div class="accordion accordion-flush col-lg-5 m-afuto border-black" id="accordionFlushExample" role="presentation" aria-label="Normas do Portal Fatecon">

                <?php
                $normas = $conecta->query('SELECT * FROM normas');
                $contador = 0;

                if ($normas->num_rows > 0) {
                    while ($linha = $normas->fetch_assoc()) {
                        $contador++;
                        echo '
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingOne">
                            <button class="fs-3 accordion-button collapsed bg-mustard fw-semibold text-uppercase" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse' . $contador . '" aria-expanded="false" aria-controls="flush-collapse' . $contador . '">
                                ' . $contador . '. ' . $linha['titulo'] .  '
                            </button>
                        </h2>
                        <div id="flush-collapse' . $contador . '" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body row align-items-center">
                                <div class="col-12 col-md-8">
                                    <p>' . $linha['descricao'] . '</p>
                                </div>
                                <div class="col-12 col-md-4 text-center text-md-end mt-3 mt-md-0">
                                    <img src="src/assets/images/normas/' . $linha['imagem'] . '" alt="' . $linha['altImagem'] . '" class="img-fluid border-black" loading="lazy">
                                </div>
                            </div>
                        </div>
                    </div>';
                    }
                } else {
                    echo '<h1 class="text-center">Nenhum conteúdo encontrado';
                }
                ?>
            </div>
        </div>
    </article>
</main>

<?php
$conecta->close();
include 'src/includes/footer.php';
?>