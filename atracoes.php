<?php
include 'src/includes/header.php';
include 'src/includes/conexao.php';

$resultConteudoArtigo = $conecta->query("SELECT * FROM artigoatracoes");
$linhaConteudoArtigo = $resultConteudoArtigo->fetch_assoc();
?>

<main id="main">
    <!-- Assunto: Diviulgação do evento -->
    <article class="py-5" aria-labelledby="tituloArtigo">
        <div class="container my-0 my-md-5 p-0">
            <header class="text-center">
                <h1 id="tituloArtigo" class="fw-bold px-2 text-uppercase">
                    <?php echo $linhaConteudoArtigo['tituloartigo'] ?>
                </h1>
            </header>

            <div class="row mx-auto">
                <div class="col-12 col-md-7 mt-4">
                    <p><?php echo $linhaConteudoArtigo['paragrafo1'] ?></p>

                    <h2 class="pt-4 text-start fw-semibold text-primary"><?php echo $linhaConteudoArtigo['subtituloartigo'] ?></h2>

                    <p><?php echo $linhaConteudoArtigo['paragrafo2'] ?></p>
                    <p><?php echo $linhaConteudoArtigo['paragrafo3'] ?></p>
                </div>

                <aside class="col-12 col-md-5 mt-4 p-3 py-md-0 text-center text-md-end">
                    <img class="img-fluid text-center rounded-3 border-blue" src="src/assets/images/atracoes/<?php echo $linhaConteudoArtigo['imagem'] ?>.png" alt="<?php echo $linhaConteudoArtigo['alttext'] ?>" loading="lazy">
                </aside>
            </div>
        </div>
    </article>

    <!-- Atrações da Fatecon -->
    <section class="py-5" aria-labelledby="tituloSecaoAtracoes">
        <div class="container my-0 my-md-5 p-0">
            <header class="text-center">
                <h2 id="tituloSecaoAtracoes" class="h1 fw-bold text-uppercase text-primary">Atrações</h2>
            </header>

            <div class="row row-cols-md-2 row-cols-xl-4 text-light g-0 pb-5">
                <?php
                $consultaSecaoAtracoes = $conecta->query("SELECT * FROM secaoatracoes");
                while ($linhaAtracao = $consultaSecaoAtracoes->fetch_assoc()): ?>
                    <div class="p-2">
                        <div class="mt-4 p-4 border border-warning rounded-3 shadow-sm bg-dark h-100">
                            <div class="text-center p-4">
                                <img src="src/assets/images/atracoes/<?php echo $linhaAtracao['imagematracao'] ?>.png" alt="<?php echo $linhaAtracao['alttextimagem'] ?>" class=" img-fluid text-center rounded" loading="lazy">
                            </div>
                            <h2 class="h3 py-2 fw-semibold text-warning text-uppercase"><?php echo $linhaAtracao['tituloatracao'] ?></h2>
                            <p class="pt-2"><?php echo $linhaAtracao['textoatracao'] ?></p>
                        </div>
                    </div>
                <?php endwhile ?>
            </div>
        </div>
    </section>

    <!-- Seção de autores na FAtecon -->
    <section class="py-5" aria-labelledby="tituloSecaoAutores" style="background-color: #033e8c;">
        <div class="container my-0 my-md-5 p-0">
            <header class="text-center">
                <h2 class="h1 text-light fw-bold text-uppercase" id="tituloSecaoAutores">Alguns dos autores que estarão na Fatecon HQs</h2>
            </header>
            <div role="group" class="carousel user-select-none" aria-label="Veja abaixo os autores que estarão na Fatecon HQs 2024" id="carrosselAtracoes">
                <button class="scroll-button middle left" type="button" id="scrollLeft" aria-label="Mova a lista para a esquerda">
                    <i class="bi bi-chevron-left text-light"></i>
                </button>
                <button class="scroll-button middle right" type="button" id="scrollRight" aria-label="Mova a lista para a direita">
                    <i class="bi bi-chevron-right text-light"></i>
                </button>

                <ul role="menu" class="d-flex justify-content-between list-unstyled gap-2 gap-md-3 gap-lg-4 overflow-x-scroll m-0 p-2 text-uppercase" id="imageContainer">
                    <?php
                    $consultaAutoresParticipantes = $conecta->query("SELECT * FROM autoresparticipantes");
                    while ($autorParticipante = $consultaAutoresParticipantes->fetch_assoc()): ?>
                        <li role="menuitem" class="mt-1">
                            <img src="src/assets/images/atracoes/<?php echo $autorParticipante['fotoAutor'] ?>.png" class=" rounded-3" tabindex="0" alt="<?php echo $autorParticipante['altTextImagem'] ?>" loading="lazy">
                            <p class="h4 mt-3 text-start m-0 text-light text-uppercase"><?php echo $autorParticipante['nomeAutor'] ?></p>
                        </li>
                    <?php endwhile ?>
                </ul>
            </div>
        </div>
    </section>


    <!-- Galeria de imagens -->
    <section class="py-5" aria-labelledby="tituloSecaoGaleria">
        <div class="container my-0 my-md-5">
            <header class="text-center">
                <h2 class="h1 text-primary fw-bold text-uppercase" id="tituloSecaoGaleria">Um pouco da Fatecon HQs 2023</h2>
            </header>

            <p class="pt-4 lead"> Em 2023 a feira geek foi realizada nos dias 12 e 13 de maio no Recanto da Cascata, sendo essa a segunda edição do evento, e foi um sucesso, contou com mais de 80 artistas, desfile de cosplay, palestras, workshops e não poderia faltar o concurso "Desenhe São Roque".</p>

            <div class="d-flex flex-wrap justify-content-center gap-3 ft-ftc user-select-none ft-ftc">
                <?php
                $consultaGaleria = $conecta->query("SELECT * FROM galeriaevento");
                while ($linhaGaleria = $consultaGaleria->fetch_assoc()): ?>
                    <img class="ft2023" src="src/assets/images/atracoes/<?php echo $linhaGaleria['imagem'] ?>.png" alt="<?php echo $linhaGaleria['altText'] ?>" tabindex="0" loading="lazy">
                <?php endwhile ?>
            </div>
        </div>
    </section>

    <aside class="py-5" aria-labelledby="tituloSecaoInscrever">
        <div class="container my-0 my-md-5">
            <div class="p-5 text-center bg-dark border-yellow rounded-3">
                <h3 class="h1 text-warning fw-bold" id="tituloSecaoInscrever">Gostaria de colaborar com o crescimento do nosso evento e ter a chance de ter sua obra exposta para milhares de pessoas?</h3>
                <p class="lead text-light">Participe do evento FATECon escolhendo sua categoria: inscreva-se no concurso de cosplay, seja um expositor ou colabore como voluntário. Venha fazer parte dessa experiência única e contribuir para o sucesso do maior evento geek da região!</p>
                <div class="d-grid gap-2 d-md-flex justify-content-md-center">
                    <a class="btn btn-primary btn-lg px-4" href="inscricoes.php?page=Inscricoes">Inscreva-se agora mesmo!</a>
                </div>
            </div>
        </div>
    </aside>
</main>

<?php
$conecta->close();
include 'src/includes/footer.php';
?>