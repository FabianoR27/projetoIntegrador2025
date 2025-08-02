//Comando para modo escuro
let btnDarkMode = document.getElementById('btnDarkMode');
carregarTema();

btnDarkMode.addEventListener('click', function () {
    let currentTheme = localStorage.getItem('theme'); // pega o item do localStorage
    localStorage.setItem('theme', currentTheme == 'light' ? 'dark' : 'light'); //versão simplificada de if e else, alem de definir o tema no localStorage
    carregarTema();
})

// Função para carregar o tema do localStorage
function carregarTema() {
    let currentTheme = localStorage.getItem('theme')
    // garantindo que o tema seja definido como 'light' caso o tema seja null
    if (!currentTheme) {
        currentTheme = 'light';
        localStorage.setItem('theme', currentTheme);
    }
    //lógica para definir o tema claro
    if (currentTheme == 'light') {
        document.documentElement.classList.remove('dark-mode');
        btnDarkMode.innerHTML = '<i class="bi bi-sun-fill"></i><span class="ms-2 d-lg-none">Modo Claro</span>';
        btnDarkMode.dataset.theme = "light"; // Agora o botão tem data-theme="light"
        btnDarkMode.setAttribute('aria-label', 'Clique aqui para alternar para modo Escuro'); // adiciona o atributo 'aria-label' e define o texto
        btnDarkMode.setAttribute('title', 'Clique para alternar para modo Escuro'); //adiciona o atributo 'title' e define o texto exibido
        return;
    }
    // lógica para o tema escuro
    if (currentTheme == 'dark') {
        document.documentElement.classList.add('dark-mode');
        btnDarkMode.innerHTML = '<i class="bi bi-moon-stars-fill"></i><span class="ms-2 d-lg-none">Modo Escuro</span>'
        btnDarkMode.dataset.theme = "dark"; // Agora o botão tem data-theme="dark"
        btnDarkMode.setAttribute('aria-label', 'Clique aqui para alternar para modo claro');
        btnDarkMode.setAttribute('title', 'Clique para alternar para modo claro');
        return;
    }
}
//Fim do comando para o modo escuro