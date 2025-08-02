<?php
include 'src/includes/header.php';
include 'src/includes/conexao.php';

function fetchAllAssoc($result)
{
    $data = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $data[] = $row;
    }
    return $data;
}

$carrossel = fetchAllAssoc(mysqli_query($conecta, "SELECT * FROM carrossel WHERE ativo = TRUE ORDER BY ordem"));

$secaoExpositores = mysqli_fetch_assoc(mysqli_query($conecta, "SELECT * FROM secoes_expositores WHERE id = 1"));

$artigos = fetchAllAssoc(mysqli_query($conecta, "SELECT * FROM artigos WHERE destaque = TRUE ORDER BY data_publicacao DESC LIMIT 6"));

$cardsNavegacao = fetchAllAssoc(mysqli_query($conecta, "SELECT * FROM cards_navegacao WHERE ativo = TRUE ORDER BY ordem"));

$infoEvento = mysqli_fetch_assoc(mysqli_query($conecta, "SELECT * FROM informacoes_evento WHERE id = 1"));

$cosplay = mysqli_fetch_assoc(mysqli_query($conecta, "SELECT * FROM conteudo_especial WHERE id = 1"));
?>


<main id="main">
    <!-- Primeiro carrossel da HOME -->
    <div id="carrossel-home" class="carousel slide mb-6 mt-0" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <?php foreach ($carrossel as $index => $slide): ?>
                <button type="button" data-bs-target="#carrossel-home" data-bs-slide-to="<?= $index ?>"
                    class="<?= $index === 0 ? 'active' : '' ?>"
                    aria-current="<?= $index === 0 ? 'true' : 'false' ?>"
                    aria-label="Slide <?= $index + 1 ?>"></button>
            <?php endforeach; ?>
        </div>
        <div class="carousel-inner" role="group" aria-label="Carrossel de destaques" aria-live="polite">
            <?php foreach ($carrossel as $index => $slide): ?>
                <article class="carousel-item <?= $index === 0 ? 'active' : '' ?>">
                    <img class="d-block w-100 carrosel-home" src="src/assets/images/home/<?= $slide['imagem'] ?>.webp"
                        alt="<?= htmlspecialchars($slide['altImg']) ?>"
                        width="800" height="500" style="object-fit: cover;">
                    <div class="container">
                        <div class="mb-4 carousel-caption <?= $index === 0 ? 'text-start' : ($index === 1 ? '' : 'text-end') ?>">
                            <h1 class="display-4 text-capitalize fw-semibold"><?= htmlspecialchars($slide['titulo']) ?></h1>
                            <p class="lead"><?= htmlspecialchars($slide['descricao']) ?></p>
                            <a class="btn btn-lg btn-warning fw-semibold shadow" href="<?= $slide['link_botao'] ?>"
                                    aria-label="<?= htmlspecialchars($slide['texto_botao']) ?>">
                                    <?= htmlspecialchars($slide['texto_botao']) ?></a>
                        </div>
                    </div>
                </article>
            <?php endforeach; ?>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carrossel-home" data-bs-slide="prev" aria-label="Slide anterior">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Anterior</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carrossel-home" data-bs-slide="next" aria-label="Próximo slide">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Próximo</span>
        </button>
    </div>

    <!-- Sessão 1 -->
    <section class="py-5" aria-labelledby="expositores-title">
        <div class="container my-0 my-md-5 p-md-0">
            <div class="d-flex flex-column flex-lg-row-reverse align-items-center gap-5 py-5 justify-content-center">
                <aside class="p-5 p-lg-0">
                    <img src="src/assets/images/home/<?= $secaoExpositores['imagem'] ?>.webp" class="mx-auto img-fluid rounded-3 border-red"
                        alt="Banner de expositores com ilustrações de obras populares em estilo de arte pop e mangá."
                        width="500" height="500" loading="lazy">
                </aside>
                <article class="col-lg-6">
                    <h2 id="expositores-title" class="h1 fw-bold text-primary text-uppercase"><?= htmlspecialchars($secaoExpositores['titulo']) ?></h2>
                    <p class="lead pt-4"><?= htmlspecialchars($secaoExpositores['conteudo']) ?></p>
                    <div class="text-center text-md-start pt-4">
                        <a class="btn btn-warning text-black shadow btn-lg px-4 fw-semibold"
                            href="<?= $secaoExpositores['link_botao'] ?>"
                            aria-label="<?= htmlspecialchars($secaoExpositores['texto_botao']) ?>">
                            <?= htmlspecialchars($secaoExpositores['texto_botao']) ?></a>
                    </div>
                </article>
            </div>
        </div>
    </section>

    <!-- Sessão 2 -->
    <section class="py-5" aria-labelledby="cosplay-title">
        <div class="container my-0 my-md-5 p-md-0">
            <div class="text-lg-center bg-dark text-light rounded p-5 border-blue">
                <h2 id="cosplay-title" class="h1 py-3 text-warning fw-semibold"><?= htmlspecialchars($cosplay['titulo']) ?></h2>
                <div>
                    <p class="lead"><?= nl2br(htmlspecialchars($cosplay['conteudo'])) ?></p>
                    <img class="img-fluid my-5 rounded-3" src="src/assets/images/home/<?= $cosplay['imagem'] ?>.webp"
                        alt="Participantes do evento vestidos com trajes de cosplay representando personagens de animes e quadrinhos" loading="lazy" style="max-width: 700px;">
                </div>
            </div>
        </div>
    </section>

    <!-- Sessão 3 - Destaques -->
    <section class="py-5" aria-labelledby="destaques-fatecon">
        <div class="container my-0 my-md-5 p-md-0 ">
            <h2 id="destaques-fatecon" class="h1 py-4 text-center fw-bold">DESTAQUES DO PORTAL FATECON</h2>
            <div class="row row-cols-md-2 row-cols-lg-3 mb-2 justify-content-center g-0">
                <?php foreach ($artigos as $artigo): ?>
                    <article class="p-2" role="article">
                        <div class="h-100 text-black rounded shadow border-black artigo<?= htmlspecialchars($artigo['id']) ?>">
                            <div class="p-4 h-100 d-flex flex-column">
                                <span class="mb-4 text-light badge bg-dark rounded-pill"><?= htmlspecialchars($artigo['categoria']) ?></span>
                                <h3 class="mb-0 fw-semibold"><?= htmlspecialchars($artigo['titulo']) ?></h3>
                                <p class="mb-1 fw-semibold"><?= htmlspecialchars($artigo['subtitulo']) ?></p>
                                <p class="mb-auto pb-2 pt-2"><?= htmlspecialchars($artigo['conteudo']) ?></p>
                                <a href="<?= htmlspecialchars($artigo['link_botao']) ?>"
                                    class="icon-link gap-1 icon-link-hover text-decoration-none"
                                    aria-label="Leia mais sobre <?= htmlspecialchars($artigo['titulo']) ?>">
                                    <span class="btn btn-sm btn-dark fw-semibold shadow">Saiba mais...</span></a>
                            </div>
                        </div>
                    </article>
                <?php endforeach; ?>
            </div>
        </div>
    </section>

    <!-- Seção 4 - Informações Fatecon -->
    <section class="py-5 bg-fatecon" aria-labelledby="titulo-informacoes-fatecon">
        <div class="container my-0 my-md-5 p-md-0 " >
            <div class="p-5 text-center bg-mustard rounded-3 border-black col-lg-8 mx-auto ">
                <h2 id="titulo-informacoes-fatecon" class="h1 text-black text-uppercase fw-bold"><?= htmlspecialchars($infoEvento['titulo']) ?></h2>
                <p class="lead text-black"><?= htmlspecialchars($infoEvento['descricao']) ?></p>
                <div class="mt-4">
                    <a class="btn btn-primary shadow btn-lg px-4"
                        href="<?= $infoEvento['link_botao'] ?>"
                        role="button"
                        aria-label="<?= htmlspecialchars($infoEvento['texto_botao']) ?>">
                        <?= htmlspecialchars($infoEvento['texto_botao']) ?></a>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Seção Cards de Navegação -->
    <section class="py-5" aria-labelledby="explore-sessions">
        <div class="container my-0 my-md-5 p-0">
            <header class="text-center text-primary">
                <h2 class="h1 fw-bold px-2 text-uppercase" id="explore-sessions">Explore nossas sessões e conheça um pouco mais da FATECon HQs</h2>
            </header>

            <div role="group" class="carousel user-select-none" aria-label="Escolha um anime abaixo e veja uma resenha sobre.">
                <button class="scroll-button left pt-5" type="button" id="scrollLeft" aria-label="Mova a lista para a esquerda">
                    <i class="bi bi-chevron-left"></i>
                </button>

                <button class="scroll-button right pt-5" type="button" id="scrollRight" aria-label=" Mova a lista para a direita">
                    <i class="bi bi-chevron-right"></i>
                </button>

                <!-- Lista de Animes dinâmica-->
                <ul role="menu" class="d-flex justify-content-between list-unstyled gap-2 gap-md-3 gap-lg-4 overflow-x-scroll m-0 p-2 text-uppercase" id="imageContainer">
                    <?php foreach ($cardsNavegacao as $card): ?>

                        <li role="menuitem" class="mt-1">
                            <a role="button" href="<?= $card['link'] ?>" aria-label="Ir para <?= htmlspecialchars($card['titulo']) ?>">
                                <img src="src/assets/images/home/<?= $card['imagem'] ?>.png" class="anime-card rounded shadow-sm border-black" alt="Imagem representativa de <?= htmlspecialchars($card['titulo']) ?>" loading="lazy">
                            </a>
                        </li>
                        <?php endforeach; ?>
                    </ul>
                </div>
            </div>
        </section>
    </main>

<?php
$conecta->close();
include 'src/includes/footer.php';
?>