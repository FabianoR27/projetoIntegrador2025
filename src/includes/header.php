<?php
function active($pagina_ativa) {
    if (isset($_GET['page']) && $_GET['page'] === $pagina_ativa) {
        echo 'active';
    }
}

//comando para mudar o title de acordo com a página em que estiver
$paginaAtual = 'Home';
if (isset($_GET['page'])) {
    $paginaAtual = $_GET['page'];
}

if ($paginaAtual == 'Atracoes') {
    $paginaAtual = 'Atrações';
} elseif ($paginaAtual == 'Mangas') {
    $paginaAtual = 'Mangás';
} elseif ($paginaAtual == 'Series') {
    $paginaAtual = 'Séries';
} elseif ($paginaAtual == 'Inscricoes') {
    $paginaAtual = 'Inscrições';
} elseif ($paginaAtual == 'Sobre') {
    $paginaAtual = 'Quem somos?';
}
?>

<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Um portal feito para falar sobre o evento FateconHQs, além de trazer notícias sobre o mundo geek. Feito por alunos do curso de Sistemas para Internet da FATEC São Roque. Reestruturado e remodelado por Fabiano Ramos, um dos autores do projeto.">

    <!-- Open Graph Meta Tags -->
    <meta property="og:title" content="Portal Fatecon - Seu destino para o mundo Geek" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="https://portalfatecon.com" /><!-- url fictícia, pode ser alterada em uma futura hospedagem do site -->
    <meta property="og:image" content="https://portalfatecon.com/src/assets/images/mascoteFatecon.png" /><!-- url fictícia, pode ser alterada em uma futura hospedagem do site -->
    <meta property="og:description" content="Um portal feito para falar sobre o evento FateconHQs, além de trazer notícias sobre o mundo geek" />
    <meta property="og:site_name" content="Portal Fatecon">
    <meta property="og:locale" content="pt_BR">

    <!-- Twitter Cards Meta Tags -->
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:title" content="Portal Fatecon - Seu destino para o mundo Geek" />
    <meta name="twitter:description" content="Um portal feito para falar sobre o evento FateconHQs, além de trazer notícias sobre o mundo geek" />
    <meta name="twitter:image" content="https://portalfatecon.com/src/assets/images/mascoteFatecon.png" /><!-- url fictícia, pode ser alterada em uma futura hospedagem do site -->
    
    <!-- Título da página -->
    <title><?php echo $paginaAtual ?> - Portal Fatecon</title>

    <!-- script inline para garantir o modo escuro -->
    <script>
        // Detecta o tema antes de o CSS ser carregado
        if (localStorage.getItem('theme') === 'dark') {
            document.documentElement.classList.add('dark-mode');
        }
    </script>

    <!-- Ícones -->
    <!-- Favicon em .svg para navegadores modernos (prioritário) -->
    <link rel="icon" type="image/svg+xml" href="src/assets/images/icons/favicon.svg">

    <!-- Favicon padrão em formato .ico, antigo pra dedéu -->
    <link rel="icon" type="image/x-icon" href="src/assets/images/icons/favicon.ico" sizes="any">

    <!-- Favicon em .png para fallback -->
    <link rel="icon" type="image/png" href="src/assets/images/icons/favicon-32x32.png" sizes="32x32">
    <link rel="icon" type="image/png" href="src/assets/images/icons/favicon-16x16.png" sizes="16x16">

    <!-- Favicon para dispositivos apple -->
    <link rel="apple-touch-icon" href="src/assets/images/icons/apple-touch-icon.png">
    <!-- Fim dos ícones -->

    <!-- Manifesto para PWA (Progressive Web Apps) -->
    <link rel="manifest" href="site.webmanifest">

    <!-- Css BootStrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
    <!-- Css geral -->
    <link rel="stylesheet" href="src/assets/css/style.css">
    <!-- Fonte -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
</head>

<body>
    <div class="text-center">
        <!-- Link para pular para o conteúdo principal -->
        <a class="visually-hidden-focusable btn" href="#main" aria-label="Pular para o conteúdo principal">
            <i class="bi bi-arrow-down-square me-2"></i>
            <span class="text-decoration-none">Pular para o conteúdo principal</span>
        </a>
    </div>

    <!-- Header -->
    <header class="border-bottom fw-semibold bg-dark shadow sticky-top" aria-label="Navegação Principal">
        <div class="container px-lg-0">
            <div class="navbar navbar-expand-lg">
                <a href="index.php"><img class="me-3 rounded-circle" src="src/assets/images/logoicon.png" alt="Logo do Portal Fatecon" style="width: 45px;"></a>
                <button class="navbar-toggler bg-warning" type="button" data-bs-toggle="collapse" data-bs-target="#navbarExpansivel" aria-controls="navbarExpansivel" aria-expanded="false" aria-label="Botão de menu expansível">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <nav class="collapse navbar-collapse" id="navbarExpansivel">
                    <ul role="menu" class="navbar-nav me-auto">
                        <li role="menuitem" class="nav-item"><a href="index.php?page=Home" class="nav-link link-light <?php active('Home'); ?>">Home</a></li>
                        <li role="menuitem" class="nav-item"><a href="atracoes.php?page=Atracoes" class="nav-link link-light <?php active('Atracoes'); ?>">Atrações</a></li>
                        <!--Dropdown-->
                        <li role="menuitem" class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle link-light <?php active('HQs'); active('Mangas'); ?>" href="javascript:void(0)" role="button" data-bs-toggle="dropdown" aria-expanded="false">HQs & Mangás</a>
                            <ul class="dropdown-menu bg-danger">
                                <li role="menuitem"><a class="fw-semibold dropdown-item <?php active('HQs'); ?>" href="hqs.php?page=HQs">História Das HQ's</a></li>
                                <li role="menuitem"><a class="fw-semibold dropdown-item <?php active('Mangas'); ?>" href="hqs.php?page=Mangas">História Dos Mangás</a></li>
                            </ul>
                        </li>
                        <!--Dropdown 2-->
                        <li role="menuitem" class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle link-light <?php active('Animes'); active('Series') ?>" href="javascript:void(0)" role="button" data-bs-toggle="dropdown" aria-expanded="false">Tv & Cinema</a>
                            <ul class="dropdown-menu bg-primary">
                                <li role="menuitem"><a class="fw-semibold dropdown-item <?php active('Animes'); ?>" href="entretenimento.php?page=Animes">Animes</a></li>
                                <li role="menuitem"><a class="fw-semibold dropdown-item <?php active('Series'); ?>" href="entretenimento.php?page=Series">Séries Baseadas em HQ</a></li>
                            </ul>
                        <li role="menuitem" class="nav-item"><a href="games.php?page=Games" class="nav-link link-light <?php active('Games'); ?>">Games</a></li>
                        <li role="menuitem" class="nav-item"><a href="expositores.php?page=Expositores" class="nav-link link-light <?php active('Expositores'); ?>">Expositores</a></li>
                        <li role="menuitem" class="nav-item"><a href="contatos.php?page=Contatos" class="nav-link link-light <?php active('Contatos'); ?>">Contatos</a></li>
                    </ul>

                    <div class="d-flex m-0" role="search">
                        <input class="form-control me-2" type="search" placeholder="Pesquisar" aria-label="Caixa de pesquisa">
                        <button class="btn btn-warning" type="submit" aria-label="Botão Pesquisar" title="Pesquisar (Em breve ¯\_(ツ)_/¯)"><i class="bi bi-search"></i></button>
                    </div>
                    <!-- Botão para modo escuro -->
                    <button id="btnDarkMode" class="btn text-light ms-lg-2 float-end"></button>
                </nav>

            </div>
        </div>
    </header>