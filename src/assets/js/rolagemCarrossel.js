// FUNÇÃO QUE COMANDA OS BOTÕES DE ROLAGEM
// Captura os elementos pelo ID
const imageContainer = document.getElementById('imageContainer');
const scrollLeftBtn = document.getElementById('scrollLeft');
const scrollRightBtn = document.getElementById('scrollRight');

// Função para calcular o tamanho da rolagem baseado na largura visível do contêiner
function getScrollAmount() {
    const containerWidth = imageContainer.offsetWidth; // Largura visível do contêiner
    const imageWidth = imageContainer.querySelector('img').offsetWidth; // Largura de uma imagem
    const imagesInView = Math.floor(containerWidth / imageWidth); // Quantas imagens cabem na tela
    return imagesInView * imageWidth; // Retorna a quantidade de pixels a rolar
}

// Função para rolar suavemente para um determinado ponto
function smoothScrollTo(position) {
    imageContainer.scrollTo({
        left: position,
        behavior: 'smooth' // Rolagem suave
    });
}

// comandos para rolagem infinita
if (scrollLeftBtn && scrollRightBtn) {
    // Função para rolar para a esquerda com rolagem infinita
    scrollLeftBtn.addEventListener('click', function () {
        const scrollAmount = getScrollAmount(); // Calcula a quantidade de rolagem
        if (imageContainer.scrollLeft === 0) {
            // Se estiver no início, move suavemente para o final
            smoothScrollTo(imageContainer.scrollWidth - imageContainer.clientWidth);
        } else {
            // Caso contrário, rola normalmente para a esquerda
            imageContainer.scrollBy({
                left: -scrollAmount,
                behavior: 'smooth' // Rolagem suave
            });
        }
    });

    // Função para rolar para a direita com rolagem infinita
    scrollRightBtn.addEventListener('click', function () {
        const scrollAmount = getScrollAmount(); // Calcula a quantidade de rolagem
        if (imageContainer.scrollLeft + imageContainer.clientWidth >= imageContainer.scrollWidth) {
            // Se estiver no final, volta suavemente para o início
            smoothScrollTo(0);
        } else {
            // Caso contrário, rola normalmente para a direita
            imageContainer.scrollBy({
                left: scrollAmount,
                behavior: 'smooth' // Rolagem suave
            });
        }
    });
};
// fim dos comandos para rolagem infinita
// Fim da função que comanda os botões de rolagem