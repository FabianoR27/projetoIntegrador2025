<!-- o parâmetro da url determinará qual conteúdo do banco dedados será carregado -->
<?php
include 'conexao.php';
if (isset($_GET['content'])) {
    $idConteudo = $_GET['content']; // puxa o valor do parâmetro 'content'
    $consultaConteudoAnimes = $conecta->query("SELECT * FROM conteudoAnimes WHERE idAnime = {$idConteudo}"); // consulta a tabela de conteúdo dos animes
    $conteudoAnime = $consultaConteudoAnimes->fetch_assoc(); //se o parametro 'page' for igual ao idAnime, ele puxa o conteúdo do anime correspondente
}
?>

<!-- início do conteúdo do anime dinâmico -->
<article id="contentAnime<?php echo $conteudoAnime['idAnime'] ?>" class="px-0 p-md-5 d-flex text-light flex-column mt-5 border-white conteudo-anime<?php echo $conteudoAnime['idAnime'] ?>" aria-labelledby="titulo-anime-principal">
    <div class="mx-auto my-4 position-relative">
        <img class="img-fluid" src="src/assets/images/animes/<?php echo $conteudoAnime['nomeImagemContAnime'] ?>.webp" alt="<?php echo $conteudoAnime['altTextImg'] ?>">
        <div class="position-absolute top-0 ratio ratio-16x9 anime-video">
            <!-- Vídeo que será revelado ao posicionar o mouse sobre a imagem -->
            <iframe src="<?php echo $conteudoAnime['urlVideo'] ?>" title="Veja esta prévia de <?php echo $conteudoAnime['tituloAnime'] ?>" loading="lazy" allowfullscreen></iframe>
        </div>

        <div class="text-center">
            <small class="text-light fst-italic d-lg-none">Toque na imagem para ver uma prévia do anime.</small>
        </div>
    </div>

    <div class="p-2 p-md-0 mx-2 my-4">
        <h2 class="h1 fw-bold mb-4 text-uppercase" id="titulo-anime-principal"><?php echo $conteudoAnime['tituloAnime'] ?></h2>

        <p><?php echo $conteudoAnime['paragrafo1'] ?></p>
        <p><?php echo $conteudoAnime['paragrafo2'] ?></p>
        <p><?php echo $conteudoAnime['paragrafo3'] ?></p>
        <p><?php echo $conteudoAnime['paragrafo4'] ?></p>

        <div class="text-end">
            <div class="my-4 fw-semibold">
                <a href="<?php echo $conteudoAnime['urlStream'] ?>" target="_blank" rel="noopener noreferrer" class="btn bg-dark text-light fw-semibold shadow">Assista Agora <i class="bi bi-box-arrow-up-right ms-1"></i></a><br>
            </div>
            <a href="#animeAndSerieList" class="btn btn-sm btn-warning shadow">Voltar à lista</a>
        </div>
    </div>
</article>
<!-- fim do conteúdo do anime -->

<?php $consultaConteudoAnimes->close() //fecha a consulta ?>