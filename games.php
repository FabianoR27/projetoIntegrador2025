<?php
include 'src/includes/header.php';
include 'src/includes/conexao.php';
?>
<main id="main">
    <!-- Hero -->
    <section class="py-5 bg-games text-black" aria-label="Introdução ao Universo dos Games" role="region">
        <div class="container my-0 my-md-5 p-md-0">
            <div class="row justify-content-lg-end">
                <div class="col-lg-10 col-xl-9 text-lg-end">
                    <header class="d-flex flex-column align-items-lg-end">
                        <h1 class="display-4 text-uppercase fw-bold col-lg-9">Sejam Bem vindos ao Universo dos Games!</h1>
                        <small class="fs-4 fw-semibold"><em>Uma jornada de Imersão e Diversão.</em></small>

                        <p class="mt-4 lead">Os videogames transcendem o simples ato de jogar, oferecendo experiências imersivas que combinam tecnologia, arte e narrativa. Seja explorando mundos fantásticos, enfrentando desafios estratégicos ou conectando pessoas ao redor do mundo, eles se consolidaram como uma das formas de entretenimento mais influentes da atualidade. Descubra neste espaço tudo sobre esse universo fascinante, dos clássicos aos lançamentos inovadores.</p>
                    </header>
                </div>
            </div>

            <div class="my-auto text-center p-0 d-none">
                <img src="src/assets/images/games/video_games.webp" alt="Ilustração colorida de diversos controles de videogame clássicos e modernos dispostos sobre um fundo cinza. A imagem inclui modelos icônicos como os controles do Nintendo Entertainment System (NES), Super Nintendo (SNES), Nintendo 64, GameCube, Wii, PlayStation 1, 2, 3 e 4, Xbox, Dreamcast, Atari, além de joysticks arcade e controles de consoles da Sega." class="img-fluid" loading="lazy">
            </div>
        </div>
    </section>

    <!-- Seção Review da semana -->
    <?php
    $consultaTabelaReview = $conecta->query("SELECT * FROM artigogamereview");
    $gameReview = $consultaTabelaReview->fetch_assoc();
    ?>
    <div class="py-5 container" role="main">
        <div class="row my-0 my-md-5 p-md-0 justify-content-between">

            <!-- Artigo principal -->
            <article class="p-md-0 col-12 col-lg-8 col-xl-8" aria-labelledby="tituloArtigo">
                <div class="border-turquoise p-3 p-md-5 bg-dark text-light">
                    <h2 id="tituloArtigo" class="h1 text-center text-turquoise fw-bold mt-4 text-uppercase">Review da semana: <?php echo $gameReview['tituloGame'] ?></h2>
                    <div class="text-center fw-light">
                        <small class="fst-italic">Game lançado em: <?php echo $gameReview['dataLancamento'] ?></small>
                    </div>
                    <p class="mt-4"><?php echo $gameReview['paragrafo1'] ?></p>

                    <div class="ratio ratio-16x9" role="region" aria-label="Vídeo do trailer de Resident Evil 4">
                        <iframe src="<?php echo $gameReview['video'] ?>"
                            title="Trailer oficial de <?php echo $gameReview['tituloGame'] ?>"
                            class="rounded-3"
                            allowfullscreen></iframe>
                    </div>
                    <div class="text-center fw-light">
                        <small><em><?php echo $gameReview['legendaVideo'] ?></em></small>
                    </div>

                    <p class="mt-4"><?php echo $gameReview['paragrafo2'] ?></p>
                    <p class="mt-4"><strong class="text-warning">Conclusão: </strong><?php echo $gameReview['conclusaoReview'] ?></p>
                    <p><strong class="text-turquoise">Nota: </strong><?php echo $gameReview['notaGame'] ?>/10</p>
                </div>
            </article>

            <?php
            $consultaProtagonista = $conecta->query("SELECT * FROM personagensdasemana WHERE id = 1");
            $protagonista = $consultaProtagonista->fetch_assoc();
            ?>

            <!-- Conteúdo complementar -->
            <aside class="col-12 col-lg-4 col-xl-3 py-3 py-lg-5 px-md-0" aria-labelledby="conteudo-complementar">
                <div class="text-center">
                    <h2 id="conteudo-complementar" class="pt-4 fw-bold">Os Herois e Vilões da semana</h2>
                </div>
                <div class="pt-4">
                    <div class="text-center my-auto">
                        <img src="src/assets/images/games/<?php echo  $protagonista['protagonistaImg'] ?>.webp" alt="<?php echo $protagonista['nomeProtagonista'] ?>" class="img-fluid shadow-lg border-white" loading="lazy">
                        <p class="fw-semibold pt-2"><?php echo $protagonista['nomeProtagonista'] ?></p>
                    </div>

                    <div class="row row-cols-3 g-0">
                        <?php
                        $consultaheroisviloes = $conecta->query("SELECT * FROM personagensdasemana");
                        while ($personagens = $consultaheroisviloes->fetch_assoc()): ?>
                            <div class="fw-bold p-2 text-center">
                                <img src="src/assets/images/games/<?php echo  $personagens['personagemImg'] ?>.webp" alt="<?php echo  $personagens['nomePersonagem'] ?>" class="img-fluid shadow-lg border-white" loading="lazy">
                                <p class="pt-2"><small><?php echo  $personagens['nomePersonagem'] ?></small></p>
                            </div>
                        <?php endwhile ?>
                    </div>
                </div>
            </aside>
        </div>
    </div>

    <!-- Seção Jogos de Tabuleiro -->
    <section class="py-5" aria-label="Conteúdo sobre Jogos de Tabuleiro" role="region">
        <div class="container my-0 my-md-5 p-md-0">
            <h2 class="h1 text-center fw-bold text-uppercase">Jogos de Tabuleiro</h2>
            <p class="py-2 lead">Os jogos de tabuleiro são uma forma clássica de entretenimento que combina estratégia, interação social e diversão. Originados há milhares de anos, eles evoluíram desde versões simples, como o Senet no Egito Antigo, até os complexos jogos modernos que abrangem diversas temáticas, como aventura, economia e fantasia. Além de estimular o raciocínio lógico e a criatividade, os jogos de tabuleiro são uma excelente oportunidade para reunir amigos e familiares, promovendo momentos de descontração e conexão. Com opções que variam de partidas rápidas a desafios estratégicos que duram horas, esses jogos continuam a encantar pessoas de todas as idades ao redor do mundo.</p>

            <div class="d-flex flex-column flex-lg-row gap-3 justify-content-center text-center text-light">
                <?php $consultaJogosTabuleiro = $conecta->query("SELECT * FROM jogostabuleiro");
                while ($jogo = $consultaJogosTabuleiro->fetch_assoc()): ?>
                <div class="w-100 p-3 py-lg-4 border-white shadow-lg bg-dark">
                    <img src="src/assets/images/games/<?php echo $jogo['imagem'] ?>.webp" alt="Esta é uma foto do jogo <?php echo $jogo['nomeJogo'] ?>" class="p-2" loading="lazy">
                    <h2 class="h5 fw-bold text-turquoise"><?php echo $jogo['nomeJogo'] ?></h2>
                    <p class="pt-2 text-start"><?php echo $jogo['descricao'] ?></p>
                </div>
                <?php endwhile ?>
            </div>
        </div>
    </section>

    <section class="py-5" aria-label="Comparativo entre jogo original e remake" role="region">
        <div class="container my-0 my-md-5 p-md-0">
            <h2 class="h1 text-center fw-bold text-uppercase">Original X Remake</h2>
            <p class="h4 text-center fw-bold">Jogos Antigos Remasterizados: Clássicos Renovados</p>
            <p class="pt-4">Jogos antigos remasterizados trazem de volta títulos icônicos com melhorias gráficas, áudio aprimorado e ajustes na jogabilidade para atender aos padrões modernos. Essas versões renovadas mantêm a essência dos clássicos, proporcionando nostalgia para veteranos e uma experiência atualizada para novos jogadores. São uma celebração da história dos games, preservando e revitalizando obras marcantes para novas gerações.</p>
            <p class="pt-4">E iniciaremos esse quadro com nosso amado camundongo, que ganhou uma repaginada no classico Castle of Illusion de mega drive para as plataformas da 7° geração.</p>
            <div class="row row-cols-2 g-0 justify-content-center">
                <div class="p-2">
                    <img src="src/assets/images/games/mousevelho.webp" class="img-fluid" alt="Imagem do jogo Castle of Illusion original de 1990" loading="lazy">
                    <h2 class="mt-2">Castle of Illusion starring Mickey Mouse (1990)</h2>
                </div>
                <div class="p-2">
                    <img src="src/assets/images/games/mouseremake.webp" class="img-fluid" alt="Imagem do remake Castle of Illusion de 2013" loading="lazy">
                    <h2 class="mt-2">Castle of Illusion starring Mickey Mouse remastered (2013)</h2>
                </div>
            </div>
        </div>
    </section>
</main>

<?php
$conecta->close();
include 'src/includes/footer.php';
?>