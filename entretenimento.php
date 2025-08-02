<?php
include 'src/includes/header.php';
include 'src/includes/conexao.php';

$page = 'Animes';
if (isset($_GET['page'])) {
    $page = $_GET['page'];
}

if ($page == "Animes") {
    $id = 1;
    $codename = "animes";
    $asideBorder = "border-red";
    $backgroundColorSection = "bg-black";
} else if ($page == "Series") {
    $id = 2;
    $codename = "series";
    $asideBorder = "border-yellow";
    $backgroundColorSection = "bg-mustard";
}

$consultaArtigo = $conecta->query("SELECT * FROM artigoAnimesESeries WHERE idArtigo = $id"); // consulta a tabela no banco de dados referente ao artigo
$consultaComplemento = $conecta->query("SELECT * FROM complementoAnimesESeries WHERE idComp = $id"); // consulta a tabela referente ao complemento
$artigo = $consultaArtigo->fetch_assoc(); // pega o tabela e transforma em array associativo
$complemento = $consultaComplemento->fetch_assoc();
?>

<main id="main">

    <!-- Essa div abrange a primeira parte: Article e aside -->
    <div class="container py-5">
        <div class="row my-0 my-md-5 p-md-0 justify-content-between">

            <!-- Artigo Principal -->
            <article class="p-md-0 col-12 col-lg-6 col-xl-7" aria-labelledby="titulo-principal">
                <header class="d-flex flex-column align-items-center align-items-md-start gap-3">
                    <h1 class="fw-bold text-uppercase lh-base" id="titulo-principal"><?php echo $artigo['tituloArtigo'] ?></h1>
                    <small>Escrito por: <?php echo $artigo['autorArtigo'] ?>.</small>
                </header>

                <div class="d-flex flex-column jutify-content-center">
                    <figure class="text-center" aria-label="imagem fazendo referência ao conteúdo relacionado">
                        <img src="src/assets/images/<?php echo $codename ?>/<?php echo $artigo['imagemArtigo'] ?>.webp" alt="<?php echo $artigo['altTextImagem'] ?>" class="img-fluid m-auto my-2 rounded-3">
                        <figcaption class="text-end"><?php echo $artigo['figCaption'] ?></figcaption>
                    </figure>
                </div>

                <p class="mt-4"><?php echo $artigo['paragrafo1'] ?></p>
                <p class="mt-4"><?php echo $artigo['paragrafo2'] ?></p>
                <p class="mt-4"><?php echo $artigo['paragrafo3'] ?></p>
                <p class="mt-4"><?php echo $artigo['paragrafo4'] ?></p>
            </article>

            <!-- Aside com Curiosidades -->
            <aside class="col-12 col-lg-5 col-xl-4 p-md-0" aria-labelledby="conteudo-complementar">
                <div class="p-4 py-5 h-100 <?php echo $asideBorder ?>">
                    <header class="text-center">
                        <h2 class="text-uppercase text-primary fw-semibold" id="conteudo-complementar"><?php echo $complemento['tituloComp'] ?></h2>
                    </header>

                    <div class="text-center m-auto">
                        <img src="src/assets/images/<?php echo $codename ?>/<?php echo $complemento['imgComp'] ?>.webp" alt="<?php echo $complemento['altTextImg'] ?>" class="p-2 rounded-4 img-fluid">
                    </div>

                    <div class="py-2 lh-base">
                        <p class="pt-4"><?php echo $complemento['textoComp'] ?></p>
                    </div>

                    <small class="fw-semibold">fonte: <a href="<?php echo $complemento['urlFonte'] ?>" target="_blank" class="link-primary link-underline-opacity-0" aria-label="clique neste link para ir à fonte destes dados"><?php echo $complemento['nomeFonte'] ?> <i class="bi bi-box-arrow-up-right"></i></a></small>
                </div>
            </aside>
        </div>
    </div>
    <!-- Fim da div que abrange a primeira parte: Article e aside -->

    <!-- Seção dinâmica: Animes/Séries imperdíveis -->
    <section id="animeAndSerieList" class="py-5 shadow <?php echo $backgroundColorSection ?>" aria-labelledby="titulo-secao-principal">
        <div class="container my-0 my-md-5 p-0">
            <?php if ($artigo['idArtigo'] == 1): ?>
                <!-- Seção 10 Animes imperdíveis -->
                <header class="text-center text-crunchyroll">
                    <h2 class="h1 fw-bold px-2 text-uppercase" id="titulo-secao-principal">10 Obras-Primas do Anime Que Você Não Pode Deixar de Ver</h2>
                    <p class="fw-light text-center pt-3 text-light">Toque/clique em um card para ver uma resenha do anime.</p>
                </header>

                <div role="group" class="carousel user-select-none" aria-label="Escolha um anime abaixo e veja uma resenha sobre.">
                    <button class="scroll-button left" type="button" id="scrollLeft" aria-label="Mova a lista para a esquerda">
                        <i class="bi bi-chevron-left"></i>
                    </button>

                    <button title="para a direita" class="scroll-button right" type="button" id="scrollRight" aria-label=" Mova a lista para a direita">
                        <i class="bi bi-chevron-right"></i>
                    </button>

                    <!-- Lista de Animes dinâmica-->
                    <ul role="menu" class="d-flex justify-content-between list-unstyled gap-2 gap-md-3 gap-lg-4 overflow-x-scroll m-0 p-2 text-uppercase" id="imageContainer">
                        <?php
                        $consultaListaAnimes = $conecta->query("SELECT * FROM listaAnimes"); // consulta a tabela da lista de animes
                        while ($listaAnimes = $consultaListaAnimes->fetch_assoc()) {
                            echo "
                            <li role='menuitem' id='anime{$listaAnimes['id']}' class='mt-1'>
                                <a role='button' href='src/includes/anime-content.php?content={$listaAnimes['id']}' class='link-dark link-underline-opacity-0 load-content' aria-label='Ver detalhes do anime {$listaAnimes['tituloAnime']}'>
                                    <img src='src/assets/images/animes/{$listaAnimes['nomeImagemCardAnime']}.webp' alt='Banner do anime {$listaAnimes['tituloAnime']}' loading='lazy' class='anime-card rounded-3'>
                                    <p class='h4 text-start pt-3 m-0 fw-semibold text-crunchyroll'>{$listaAnimes['tituloAnime']}</p>
                                </a>
                            </li>";
                        }
                        ?>
                    </ul>
                    <!-- Fim da lista de Animes dinâmica -->
                </div>
                <!-- conteudo do anime aqui -->
                <div class="mt-5" id="animeContent"></div>
                <!-- Fim da seção Dez Animes Imperdíveis -->

            <?php elseif ($artigo['idArtigo'] == 2): ?>
                <!-- Seção 5 Séries imperdíveis -->
                <header class="text-center text-black">
                    <h2 class="h1 fw-bold px-2 text-uppercase" id="titulo-secao-principal">Cinco séries que trouxeram as hqs para a TV</h2>
                    <p class="fw-light text-center pt-3 text-black">Escolha abaixo uma série para conhecê-la.</p>
                </header>

                <div class="accordion accordion-flush" id="acordeaoSeries">
                    <!-- começo do conteudo que será dinamizado-->
                    <?php
                    $consultaListaSeries = $conecta->query("SELECT * FROM listaSeries");
                    while ($listaSeries = $consultaListaSeries->fetch_assoc()) {
                        echo "
                        <div class='accordion-item border-bottom-black bg-black'>
                            <h2 class='accordion-header user-select-none'>
                                <button class='accordion-button fw-semibold collapsed fs-3 text-uppercase button-serie' type='button'
                                    data-bs-toggle='collapse' data-bs-target='#artigoSerie{$listaSeries['idSerie']}' aria-expanded='false'
                                    aria-controls='artigoSerie{$listaSeries['idSerie']}'>
                                    {$listaSeries['tituloSerie']}
                                </button>
                            </h2>

                            <article id='artigoSerie{$listaSeries['idSerie']}' class='accordion-collapse collapse text-light sombra-forte pb-5' data-bs-parent='#acordeaoSeries'>
                                <div class='accordion-body p-2 py-md-0 '>
                                    <div class='m-3 py-4 p-md-4 d-flex flex-column flex-sm-column flex-lg-row flex-md-row gap-3 gap-lg-5 justify-content-between'>
                                        <div class='order-md-1 order-lg-0 col-md-5 col-lg-auto mx-auto'>
                                            <img src='src/assets/images/series/{$listaSeries['imgBannerSerie']}.webp' alt='Banner da Série {$listaSeries['tituloSerie']}' class='img-fluid' loading='lazy'>
                                        </div>

                                        <div class='order-lg-1'>
                                            <h3 class='fs-1 fw-bold text-uppercase text-mustard'>{$listaSeries['tituloSerie']}</h3>

                                            <p class='my-4'>{$listaSeries['paragrafo1']}</p>
                                            <p>{$listaSeries['paragrafo2']}</p>
                                            <p>{$listaSeries['paragrafo3']}</p>

                                            <div class='pt-5 text-center text-md-end'>
                                                <a href='{$listaSeries['urlStream']}' target='_blank' class='btn btn-primary fw-semibold'>ASSISTA AGORA <i class='bi bi-box-arrow-up-right ms-1'></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </article>
                        </div>";
                    }
                    ?>
                    <!-- fim do conteúdo dinâmico -->
                </div>
                <!-- Fim da seção 5 Séries imperdíveis -->
            <?php endif ?>
        </div>
    </section>
    <!-- Fim da seção dinâmica Animes/Séries -->

    <!-- complementar: Conheça também -->
    <aside class="py-5">
        <div class="container my-0 my-md-5 p-md-0 text-center">
            <h3 class="h2 fw-bold">CONHEÇA TAMBÉM: OS MANGÁS QUE INSPIRARAM ANIMES</h3>
            <p class="lead">Conheça os mangás por trás dos sucessos dos Animes</p>
            <a class="btn btn-secondary btn-lg" href="hqs.php?page=Mangas">SAIBA MAIS</a>
        </div>
    </aside>
</main>

<?php
$conecta->close();
include 'src/includes/footer.php';
?>