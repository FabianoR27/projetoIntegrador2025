<?php
include 'src/includes/header.php';
include 'src/includes/conexao.php';
?>

<main id="main">
    <!-- Seção de Convidados -->
    <section class="py-5 bg-expositores" aria-labelledby="titulo-convidados">
        <div class="container my-0 my-md-5 p-md-0">
            <!-- <div class="row p-4 align-items-center rounded-3 border shadow-lg"> -->
            <header class=" col-lg-7">
                <h1 class="display-4 fw-bold lh-1 text-primary mb-5 text-uppercase" id="titulo-convidados">Conheça os Convidados da Fatecon HQs 2024!</h1>
                <p class="lead">
                    Descubra quem são os grandes nomes que estarão presentes na Fatecon 2024, compartilhando experiências, ideias, histórias e momentos incríveis.
                    Prepare-se para uma programação repleta de artistas de vários gêneros, estilos e traços marcantes!
                </p>
            </header>
            <div class="text-center">
                <img class="img-fluid d-lg-none" src="src/assets/images/expositores/expositores.webp" alt="Visitantes explorando a mesa de quadrinistas e expositores na Fatecon 2024, com cartazes, livros e revistas em destaque" aria-labelledby="titulo-convidados" loading="lazy">
            </div>
            <!-- </div> -->
        </div>
    </section>

    <!-- Seção de Expositores -->
    <section class="py-5" aria-labelledby="titulo-expositores">
        <div class="container my-0 my-md-5 p-md-0">
            <header class="text-center mb-4">
                <h2 id="titulo-expositores" class="display-6 fw-bold lh-1 text-primary">E aqui estão eles:</h2>
            </header>

            <article class="accordion accordion-flush row row-cols-2 row-cols-lg-3 row-cols-xl-4 g-0 justify-content-center" id="accordionExpositores">
                <?php
                $expositores = $conecta->query('SELECT * FROM expositores');
                $contador = 0;

                if ($expositores->num_rows > 0) {
                    while ($linha = $expositores->fetch_assoc()) {
                        $contador++;
                        echo '
                        <div class="accordion-item p-2 bg-transparent border-0">
                            <div class="border shadow p-3 p-md-4 rounded-3 expositores artigo4">
                                <div class="mb-3 text-center">
                                    <img class="img-fluid rounded-3" src="src/assets/images/expositores/' . $linha['imagem'] . '" alt="' . $linha['altImagem'] . '" loading="lazy">
                                </div>

                                <h3 class="accordion-header bg-transparent">
                                    <button class="fs-4 accordion-button collapsed bg-transparent p-0 text-uppercase fw-semibold" type="button"
                                        title="'. $linha['nome'] .'"
                                        data-bs-toggle="collapse" 
                                        data-bs-target="#resumo' . $contador . '" 
                                        aria-expanded="false" 
                                        aria-controls="resumo' . $contador . '">
                                        <span class="text-truncate">' . $linha['nome'] . '</span>
                                    </button>
                                </h3>

                                <article id="resumo' . $contador . '" class="accordion-collapse collapse" data-bs-parent="#accordionExpositores">
                                    <div class="accordion-body p-0">
                                        <p class="pt-2">' . $linha['descricao'] . '</p>
                                    </div>
                                </article>
                            </div>
                        </div>';
                    }
                } else {
                    echo '<h1 class="text-center">Nenhum conteúdo encontrado</h1>';
                }
                ?>
            </article>
        </div>
    </section>
</main>

<?php
$conecta->close();
include 'src/includes/footer.php';
?>