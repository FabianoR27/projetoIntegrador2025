<?php
include 'src/includes/header.php';
include 'src/includes/conexao.php';

// Consulta com mysqli
$resultado = mysqli_query($conecta, "SELECT * FROM contatos_site LIMIT 1");
$contato = mysqli_fetch_assoc($resultado);
?>

<!-- Início da seção de contato -->
<main id="main">
    <section class="py-5" aria-labelledby="titulo-pagina">

        <div class="container my-0 my-md-5 p-md-0">
            <header>
                <h1 class="fw-bold px-2 text-uppercase" id="titulo-pagina">Fale conosco agora mesmo!</h1>
                <p class="lead">Tire suas dúvidas, seja sobre exposições, programação ou qualquer outro detalhe, não se preocupe. Estamos aqui para tornar sua experiência na FATECon HQs ainda mais incrível. Não perca tempo!</p>
            </header>
            <div class="row row-cols-md-2 mb-2 justify-content-center g-0">

                <!-- Parte Esquerda: Contatos -->
                <div class="p-2 p-md-4" role="region">
                    <aside class="p-5 border-red rounded-3 h-100 lead" aria-labelledby="titulo-contato">
                        <h2 id="titulo-contato" class="fw-bold">Contatos</h2>
                        <p class=mb-4">Dúvidas e informações</p>

                        <ul class="list-unstyled" aria-label="Lista de formas de contato">
                            <li class="mb-3 d-flex align-items-center">
                                <i class="bi bi-whatsapp text-success fs-5" aria-hidden="true"></i>
                                <span class="ms-2" aria-label="Número de WhatsApp"><?= htmlspecialchars($contato['whatsapp']) ?></span>
                            </li>
                            <li class="mb-3 d-flex align-items-center">
                                <i class="bi bi-instagram text-danger fs-5" aria-hidden="true"></i>
                                <a href="<?= htmlspecialchars($contato['instagram_link']) ?>" target="_blank" rel="noopener noreferrer" class="ms-2 text-decoration-none" aria-label="Perfil no Instagram"><?= htmlspecialchars($contato['instagram_nome']) ?></a>
                            </li>
                            <li class="mb-3 d-flex align-items-center">
                                <i class="bi bi-facebook text-primary fs-5" aria-hidden="true"></i>
                                <a href="<?= htmlspecialchars($contato['facebook_link']) ?>" target="_blank" rel="noopener noreferrer" class="ms-2 text-decoration-none" aria-label="Perfil no Facebook"><?= htmlspecialchars($contato['facebook_nome']) ?></a>
                            </li>
                            <li class="mb-3 d-flex align-items-center">
                                <i class="bi bi-geo-alt text-warning fs-5" aria-hidden="true"></i>
                                <span class="ms-2" aria-label="Endereço"><?= htmlspecialchars($contato['endereco']) ?></span>
                            </li>
                        </ul>
                    </aside>
                </div>

                <!-- Parte Direita: Mapa -->
                <div class="p-2 p-md-4" role="region" aria-labelledby="titulo-mapa">
                    <aside class="p-4 border-blue rounded-3 bg-white h-100 ratio ratio-4x3">
                        <h2 id="titulo-mapa" class="visually-hidden">Localização no mapa</h2>
                        <div class="p-2 rounded-3">
                            <?= $contato['mapa_embed'] ?>
                        </div>
                    </aside>
                </div>
            </div>
        </div>
    </section>
</main>

<!-- Footer -->
<?php
$conecta->close();
include 'src/includes/footer.php';
?>