//comandos para adicionar a classe 'text-black' quando clicar em cada botão de série e remover qunado clicar em outro botao de serie
document.querySelectorAll('.button-serie').forEach(button => {
    button.addEventListener('click', function () {
        if (button.classList.contains('text-black')) {
            button.classList.remove('text-black'); // Remove a classe 'text-black' de todos os botões inicialmente
            return;
        }
        // Remove a classe 'text-black' de todos os botões
        document.querySelectorAll('.button-serie').forEach(btn => btn.classList.remove('text-black'));
        // Adiciona a classe 'text-black' ao botão clicado
        this.classList.add('text-black');
    });
});