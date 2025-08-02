// Comandos para o formulário de inscrição
let botaoInscrever = document.getElementById('btnInscrever');
if (botaoInscrever) {
    let inputNome = document.getElementById('inputNome');
    let inputEmail = document.getElementById('inputEmail');
    let tipoInscricao = document.getElementById('tipoInscricao');
    let mensagemAlerta = document.getElementById('mensagemAlerta');

    botaoInscrever.addEventListener('click', () => {
        // Array para armazenar as mensagens de erro
        let mensagens = [];
        let nome = inputNome.value.trim(); // trim() remove espaços em branco


        // Validação do campo nome
        if (!inputNome.value || nome.length < 3 || !nome.includes(' ')) {
            inputNome.style.border = "solid 2px tomato";
            // Adiciona uma mensagem de erro ao array
            mensagens.push(`<div class="alert alert-dismissible fade show alert-danger text-center" role="alert">
                        <i class="bi bi-exclamation-triangle me-1"></i>
                        Preencha o campo nome corretamente.
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Fechar aviso"></button>
                        </div>`);
        } else {
            inputNome.style.border = "solid 2px green";
        }

        if (!inputEmail.value || inputEmail.value.length < 3 || !inputEmail.value.includes('@')) {
            inputEmail.style.border = "solid 2px tomato";
            mensagens.push(`<div class="alert alert-dismissible fade show alert-danger text-center" role="alert">
                        <i class="bi bi-exclamation-triangle me-1"></i>
                        Preencha o campo e-mail corretamente.
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Fechar aviso"></button>
                        </div>`);
        } else {
            inputEmail.style.border = "solid 2px green";
        }

        if (!tipoInscricao.value) {
            tipoInscricao.style.border = "solid 2px tomato";
            mensagens.push(`<div class="alert alert-dismissible fade show alert-danger text-center" role="alert">
                        <i class="bi bi-exclamation-triangle me-1"></i>
                        Selecione um tipo de inscrição.
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Fechar aviso"></button>
                        </div>`);
        } else {
            tipoInscricao.style.border = "solid 2px green";
        }

        // Exibição das mensagens de erro
        if (mensagens.length > 0) {
            // innerHTML permite inserir tags html
            mensagemAlerta.innerHTML = mensagens.join("\n"); //join transforma o array em string e separa os elementos por um separador.

        } else {
            inputNome.value= '';
            inputEmail.value= '';
            tipoInscricao.value= '';
            mensagemAlerta.innerHTML = `<div class="alert alert-dismissible fade show alert-success text-center" role="alert">
                        <i class="bi bi-check-circle me-1"></i>
                        Sucesso! Isto é só um teste, não há envio de e-mail configurado no momento.  <span class="font-monospace">¯\\_(ツ)_/¯</span>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Fechar aviso"></button>
                        </div>`;
        }
    });
}