<?php
include 'src/includes/header.php';
include 'src/includes/conexao.php';

$page = 'HQs';
if (isset($_GET['page'])) {
    $page = $_GET['page'];
}

if ($page == "HQs") {
    $id = 1;
    $codename = "hqs";
} else if ($page == "Mangas") {
    $id = 2;
    $codename = "mangas";
}

$conteudoArtigo = $conecta->query("SELECT * FROM artigoshqsemangas WHERE id = {$id}");
$conteudoImagens = $conecta->query("SELECT * FROM imagensartigoshqsemangas WHERE id = {$id}");
$linhaConteudo = $conteudoArtigo->fetch_assoc();
$imagensArtigo = $conteudoImagens->fetch_assoc();
?>

<main id="main">
    <!-- HISTÓRIA DAS HQS-->
    <article id="artigoPrincipal" class="py-5" aria-labelledby="tituloArtigoPrincipal">
        <div class="container my-0 my-md-5 p-md-0">
            <header class="text-center">
                <h1 id="tituloArtigoPrincipal" class="text-uppercase fw-bold px-2"><?php echo $linhaConteudo['Titulo'] ?></h1>
            </header>

            <div class="d-flex flex-column flex-wrap flex-lg-nowrap flex-md-row gap-3 gap-xl-4 justify-content-center">
                <div class="d-none d-md-block order-1 order-lg-0">
                    <img class="rounded-3" src="src/assets/images/<?php echo $codename ?>/<?php echo $imagensArtigo['Imagem1'] ?>" alt="<?php echo $imagensArtigo['AltImagem1'] ?>" loading="lazy">
                </div>

                <div class="order-0 order-lg-1">
                    <div class="m-auto pt-4">
                        <p><?php echo $linhaConteudo['Paragrafo1'] ?></p>
                        <p><?php echo $linhaConteudo['Paragrafo2'] ?></p>
                        <p><?php echo $linhaConteudo['Paragrafo3'] ?></p>
                    </div>
                </div>

                <div class="d-none d-md-block order-2 ">
                    <img class="rounded-3" src="src/assets/images/<?php echo $codename ?>/<?php echo $imagensArtigo['Imagem2'] ?>" alt="<?php echo $imagensArtigo['AltImagem2'] ?>" loading="lazy">
                </div>
            </div>

            <aside class="d-flex justify-content-evenly mt-4" aria-label="Grandes heróis dos quadrinhos">
                <figure class="p-3 text-center" style="filter: drop-shadow(0 0 1rem #a3a3a3)" aria-labelledby="heroiUm">
                    <img class="rounded-circle img-fluid" src="src/assets/images/<?php echo $codename ?>/<?php echo $imagensArtigo['Imagem3'] ?>" alt="imagem do <?php echo $imagensArtigo['AltImagem3'] ?>" loading="lazy">
                    <figcaption id="heroiUm" class="fw-bold pt-3 text-uppercase"><?php echo $imagensArtigo['AltImagem3'] ?></figcaption>
                </figure>
                <figure class="p-3 text-center" style="filter: drop-shadow(0 0 1rem #1658ad)" aria-labelledby="heroiDois">
                    <img class=" rounded-circle img-fluid" src="src/assets/images/<?php echo $codename ?>/<?php echo $imagensArtigo['Imagem4'] ?>" alt="imagem do <?php echo $imagensArtigo['AltImagem4'] ?>" loading="lazy">
                    <figcaption id="heroiDois" class="fw-bold pt-3 text-uppercase"><?php echo $imagensArtigo['AltImagem4'] ?></figcaption>
                </figure>
                <figure class="p-3 text-center" style="filter: drop-shadow(0 0 1rem #8C1C25)" aria-labelledby="heroiTres">
                    <img class="rounded-circle img-fluid" src="src/assets/images/<?php echo $codename ?>/<?php echo $imagensArtigo['Imagem5'] ?>" alt="imagem do <?php echo $imagensArtigo['AltImagem5'] ?>" loading="lazy">
                    <figcaption id="heroiTres" class="fw-bold pt-3 text-uppercase"><?php echo $imagensArtigo['AltImagem5'] ?></figcaption>
                </figure>
            </aside>
        </div>
    </article>

    <!--Seção HQs/Mangás que inspiraram séries-->
    <section id="secaoInspiramSeries" class="py-5" aria-labelledby="tituloSecaoUm">
        <div class="container my-0 my-md-5 p-md-0">
            <header class="text-center">
                <h2 id="tituloSecaoUm" class="h1 px-2 text-uppercase fw-bold"><?php echo $imagensArtigo['Categoria'] ?> Que Inspiraram Séries</h2>
            </header>

            <div class="row row-cols-lg-2 text-light g-0 pt-4">

                <?php
                $consultaObrasSeries = $conecta->query("SELECT * FROM {$codename}series"); // consulta a tabela da lista de animes
                while ($obrasSeries = $consultaObrasSeries->fetch_assoc()): ?>
                    <!-- aqui começa o conteúdo dinâmico -->
                    <div class="p-2">
                        <article class="obras-series<?php echo $obrasSeries['id'] ?>  clearfix p-3 shadow h-100 rounded-3" aria-label="Conheça a obra <?php echo $obrasSeries['titulo'] ?>"> <!-- nessa linhha trocar cor das imagens -->
                            <figure class="p-1 px-md-0 p-lg-1 ms-2 text-center float-end">
                                <img src="src/assets/images/<?php echo $codename ?>/<?php echo $obrasSeries['Imagem'] ?>" alt="<?php echo $obrasSeries['AltImagem'] ?>" loading="lazy">
                                <figcaption class="text-center" style="font-size: small;">
                                    <small><?php echo $obrasSeries['LegendaImagem'] ?></small>
                                </figcaption>
                            </figure>

                            <div class="p-1">
                                <h3 class="fw-semibold"><?php echo $obrasSeries['titulo'] ?></h3>
                                <small class="h6 fw-semibold"><?php echo $obrasSeries['NomeAutor'] ?></small>
                                <p class="mt-2"><?php echo $obrasSeries['Paragrafo1'] ?></p>
                                <a href="<?php echo $obrasSeries['linkWeb'] ?>" target="_blank" class="btn btn-sm btn-warning fw-semibold link-underline-opacity-0 mt-2">SAIBA MAIS <i class="bi bi-box-arrow-up-right ms-1"></i></a>
                            </div>
                        </article>
                    </div>
                <?php endwhile; ?>
                <!-- aqui termina o conteúdo dinâmico -->
            </div>
        </div>
    </section>

    <!--Seção HQs/Mangás que inspiraram filmes-->
    <section id="secaoInspiramFilmes" class="py-5" aria-labelledby="tituloSecaoDois">
        <div class="container my-0 my-md-5 p-md-0">
            <header class="text-center">
                <h2 id="tituloSecaoDois" class="h1 px-2 text-uppercase fw-bold"><?php echo $imagensArtigo['Categoria'] ?> Que Inspiraram Filmes</h2>
            </header>

            <div class="row row-cols-md-2 row-cols-xl-4 pt-4 g-0">

                <?php
                $consultaObrasFilmes = $conecta->query("SELECT * FROM {$codename}filmes");
                while ($obrasFilmes = $consultaObrasFilmes->fetch_assoc()): ?>
                    <!-- começo do artigo dimanico -->
                    <div class="p-2">
                        <article class="obras-filmes<?php echo $obrasFilmes['id'] ?> p-2 shadow rounded-3 h-100" aria-label="Conheça a obra <?php echo $obrasFilmes['titulo'] ?>">
                            <div class="text-center pt-4">
                                <h3 class="h4 fw-semibold"><?php echo $obrasFilmes['titulo'] ?></h3>
                            </div>
                            <div class="text-center">
                                <figure class="mt-3">
                                    <img src="src/assets/images/<?php echo $codename ?>/<?php echo $obrasFilmes['Imagem'] ?>" alt="<?php echo $obrasFilmes['AltImagem'] ?>" class="img-fluid" loading="lazy">
                                    <figcaption style="font-size: small;" class="pt-2"><?php echo $obrasFilmes['LegendaImagem'] ?></figcaption>
                                </figure>
                            </div>
                            <p class="p-2"><?php echo $obrasFilmes['Paragrafo1'] ?></p>
                        </article>
                    </div>
                <?php endwhile; ?>
                <!-- fim do artigo dimanico -->
            </div>
        </div>
    </section>

    <!-- Seção Autores -->
    <section id="secaoAutores" class="py-5 bg-<?php echo $codename ?> " aria-labelledby="tituloSecaoTres">
        <div class="container my-0 my-md-5 p-md-0">
            <header class="text-center text-light">
                <h2 id="tituloSecaoTres" class="h1 px-2 text-uppercase fw-bold">Grandes Autores de <?php echo $imagensArtigo['Categoria'] ?></h2>
            </header>

            <div class="d-flex flex-column flex-lg-row gap-3 justify-content-between align-items-center align-items-lg-stretch pt-4">

                <?php
                $consultaAutores = $conecta->query("SELECT * FROM autores{$codename}"); // consulta a tabela da lista de animes
                while ($autores = $consultaAutores->fetch_assoc()): ?>
                    <!-- início conteúdo dinamico -->
                    <article class=" p-2 shadow rounded-3 w-75 text-dark bg-light" aria-label="Conheça o autor <?php echo $autores['NomeAutor'] ?>">
                        <div class="text-center px-1 mb-2 pt-4">
                            <img class=" rounded-circle img-fluid" src="src/assets/images/<?php echo $codename ?>/<?php echo $autores['Imagem'] ?>.jpg" alt="<?php echo $autores['AltImagem'] ?>" loading="lazy">
                        </div>
                        
                        <div class="text-center pt-4">
                            <h3 class="h4 fw-semibold"><?php echo $autores['NomeAutor'] ?></h3>
                        </div>

                        <p class="p-2"><?php echo $autores['Paragrafo'] ?></p>
                    </article>
                <?php endwhile; ?>
                <!-- fim conteúdo dinamico -->
            </div>
        </div>
    </section>

    <!--complemento Veja Também (também mudará dinamicamente) -->
    <aside class="py-5">
        <div class="container my-0 my-md-5 p-md-0 text-center">
            <h3 class="h2 fw-bold">CONHEÇA TAMBÉM: 5 SÉRIES QUE TROUXERAM AS HQS PARA A TV</h3>
            <p class="lead">Heróis, Vilões e Muito Mais: veja aqui 5 Séries de TV que Vieram das Histórias em Quadrinhos</p>
            <a class="btn btn-secondary btn-lg" href="entretenimento.php?page=Series">SAIBA MAIS</a>
        </div>
    </aside>
</main>

<?php
$conecta->close();
include 'src/includes/footer.php';
?>