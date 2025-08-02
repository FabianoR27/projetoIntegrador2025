// Função que impede o comportamento padrão e carrega o conteúdo via AJAX
document.addEventListener('DOMContentLoaded', function () {
    // Seleciona todos os links com a classe "load-content"
    let links = document.querySelectorAll('a.load-content');

    links.forEach(function (link) {
        link.addEventListener('click', function (e) {
            e.preventDefault(); // Impede o comportamento padrão (navegar e rolar para o topo)

            let linkConteudo = link.getAttribute('href'); // Obtém o valor do href (URL do arquivo)
            let divConteudo = document.getElementById('animeContent'); // Seleciona a div de conteúdo

            // Verifica se o conteúdo já está carregado e limpa a div se necessário
            if (divConteudo.getAttribute('data-loaded') === linkConteudo) {
                divConteudo.innerHTML = ''; // Limpa o conteúdo
                divConteudo.removeAttribute('data-loaded'); // Remove o atributo indicando que está carregado
                return; // Sai da função para evitar carregar o conteúdo novamente
            }

            // Cria a requisição AJAX para carregar o conteúdo dinamicamente
            let xhr = new XMLHttpRequest();
            xhr.open('GET', linkConteudo, true);
            xhr.onload = function () {
                if (xhr.status === 200) {
                    // Insere o conteúdo na div com o id "content"
                    divConteudo.innerHTML = xhr.responseText;
                    divConteudo.setAttribute('data-loaded', linkConteudo); // Marca qual conteúdo foi carregado
                } else {
                    console.error('Erro ao carregar o conteúdo: ' + xhr.status);
                }
            };
            xhr.onerror = function () {
                console.error('Erro de conexão ao tentar carregar o conteúdo.');
            };
            xhr.send();
        });
    });
});
// Fim da função que impede o comportamento padrão e carrega o conteúdo via AJAX