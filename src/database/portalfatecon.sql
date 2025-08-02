-- Algumas coisas a serem pontuadas:

-- Nome do servidor: localhost
-- nome do usuário: root
-- senha: '' (não tem senha)
-- nome do banco de dados: portalfatecon


-- Criando o Banco de dados somente se não existir ainda
CREATE DATABASE IF NOT EXISTS portalfatecon
    DEFAULT CHARACTER SET = 'utf8mb4';
USE portalfatecon;


-- Criando a tabela com lista de Animes
CREATE TABLE IF NOT EXISTS listaAnimes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    tituloAnime VARCHAR (60),
    nomeImagemCardAnime VARCHAR (40)
);


-- Criando a tabela com o conteúdo dos animes
CREATE TABLE IF NOT EXISTS conteudoAnimes (
    idAnime INT PRIMARY KEY AUTO_INCREMENT,
    tituloAnime VARCHAR (60) NOT NULL,
    paragrafo1 TEXT,
    paragrafo2 TEXT,
    paragrafo3 TEXT,
    paragrafo4 TEXT,
    paragrafo5 TEXT,
    nomeImagemContAnime VARCHAR (40),
    altTextImg varchar (255),
    urlVideo varchar (255),
    urlStream varchar (255)
);


-- inserindo os devidos dados na tabela com lista de Animes
INSERT INTO listaAnimes
    (tituloAnime, nomeImagemCardAnime)
VALUES
    ('One Piece', 'anime_one_piece_sm'),
    ('Naruto Shippuden', 'anime_naruto_shippuden_sm'),
    ('Dragon Ball Z', 'anime_dragon_ball_sm'),
    ('Attack On Titan', 'anime_attack_on_titan_sm'),
    ('Death Note', 'anime_death_note_sm'),
    ('Chainsaw Man', 'anime_chainsaw_man_sm'),
    ('Cowboy Bebop', 'anime_cowboy_bebop_sm'),
    ('Dan Da Dan', 'anime_dan_da_dan_sm'),
    ('Jujutsu Kaisen', 'anime_jujutsu_kaisen_sm'),
    ('Demon Slayer', 'anime_demon_slayer_sm');


-- inserindo os devidos dados na tabela com o conteúdo dos Animes
INSERT INTO conteudoanimes
    (tituloAnime, 
    paragrafo1, 
    paragrafo2, 
    paragrafo3, 
    paragrafo4, 
    paragrafo5, 
    nomeImagemContAnime, 
    altTextImg, 
    urlVideo, 
    urlStream)
VALUES
    ('One Piece', 
    '<strong>One Piece</strong> é um dos animes mais populares e longos da história, cativando milhões de fãs ao redor do mundo desde sua estreia em 1999. Baseado no mangá de mesmo nome criado por <strong>Eiichiro Oda</strong>, a série segue as aventuras de <strong>Monkey D. Luffy</strong>, um jovem pirata com um sonho ousado: encontrar o lendário tesouro One Piece e <strong>se tornar o Rei dos Piratas</strong>. Mas essa não é uma jornada qualquer. Luffy é um protagonista carismático e determinado, que ganhou poderes especiais ao comer uma "Akuma no Mi” (fruta do diabo), chamada <strong>Gomu Gomu no Mi</strong>, tornando seu corpo elástico como borracha.', 
    'Ao longo de sua viagem pelos mares, Luffy reúne uma tripulação única e diversa, composta por personagens com histórias profundas, habilidades impressionantes e motivações pessoais complexas. Cada um dos membros da tripulação - <strong>Zoro</strong>, <strong>Nami</strong>, <strong>Usopp</strong>, <strong>Sanji</strong>, <strong>Chopper</strong>, <strong>Nico Robin</strong>, <strong>Franky</strong>, <strong>Brook</strong> e <strong>Jinbe</strong> - traz uma contribuição valiosa para a narrativa, enriquecendo a história com momentos emocionantes, dramáticos e cômicos.', 
    'Mas o que realmente diferencia One Piece de outros animes é a sua narrativa épica e detalhada, onde cada arco é cuidadosamente construído para desenvolver o universo expansivo e as inúmeras culturas e sociedades que habitam o mundo da série. A história, que mistura ação, comédia, drama e mistério, nos apresenta temas profundos como amizade, liberdade, justiça e o sonho de viver uma vida plena e sem arrependimentos. Além disso, Eiichiro Oda é mestre em criar reviravoltas inesperadas e referências a eventos passados, fazendo com que cada episódio adicione algo ao todo maior da narrativa.</', 
    '<strong>Por que você deveria assistir One Piece?</strong> Se você está em busca de uma história rica e envolvente, com personagens cativantes e momentos que vão do hilário ao emocionante, One Piece é a escolha perfeita. Apesar de seu número impressionante de episódios, a série recompensa aqueles que mergulham de cabeça em sua história, oferecendo lições de vida e construindo uma conexão única entre o espectador e os personagens. Cada arco é uma nova aventura, cheia de perigos, vilões inesquecíveis e desafios que colocam à prova os sonhos e valores da tripulação dos <strong>Chapéu de Palha</strong>.', 
    'Então, embarque nesta jornada épica e acompanhe Luffy e seus companheiros em sua busca pelo maior tesouro do mundo. Quem sabe você também não se inspire a seguir seus próprios sonhos? One Piece é mais do que um anime; é uma experiência que merece ser vivida.', 
    'anime_one_piece_lg','Imagem promocional vibrante de One Piece com Luffy em Gear 5 ao centro, cercado por personagens como Garp, Zoro, Bonney, Saturn e outros, com o logo da série em destaque na frente.','https://www.youtube.com/embed/scPBmrzdD0g', 'https://www.crunchyroll.com/pt-br/series/GRMG8ZQZR/one-piece'),

    ('Naruto Shippuden', 
    '<strong>Naruto Shippuden</strong> é a continuação direta de Naruto, uma das séries mais influentes e queridas do mundo dos animes. Criado por <strong>Masashi Kishimoto</strong>, Naruto Shippuden acompanha a história de <strong>Naruto Uzumaki</strong>, um jovem ninja que, apesar de uma infância solitária e marcada pelo preconceito, possui um sonho inabalável: <strong>se tornar Hokage</strong>, o líder e protetor de sua vila, e assim ganhar o respeito de todos. Porém, sua jornada não é fácil. Naruto carrega dentro de si a <strong>Raposa de Nove Caudas</strong>, uma poderosa criatura que devastou a vila no passado, tornando-o alvo de medo e rejeição.', 
    'Nesta nova fase, Naruto está mais maduro e determinado a resgatar seu amigo <strong>Sasuke Uchiha</strong>, que deixou a vila em busca de poder. Naruto Shippuden explora temas profundos de amizade, redenção, superação e a luta para proteger aqueles que amamos, enquanto Naruto enfrenta desafios inimagináveis para alcançar seu objetivo. A série é marcada por lutas emocionantes, cada uma com coreografias intensas e habilidades únicas que refletem a rica cultura e tradição ninja.', 
    'Outro grande atrativo de Naruto Shippuden é o desenvolvimento dos personagens. Ao longo da série, não apenas Naruto, mas também seus amigos e até seus inimigos passam por transformações profundas, revelando suas motivações, medos e sonhos. O anime aborda questões complexas como o peso do ódio, as consequências da vingança e a busca por paz em um mundo marcado por guerras e conflitos. A relação de Naruto com seus mestres, especialmente <strong>Jiraiya</strong> e <strong>Kakashi</strong>, acrescenta um toque especial de aprendizado e crescimento, mostrando a importância dos laços familiares e das figuras mentoras.</', 
    '<strong>Por que você deveria assistir Naruto Shippuden?</strong> Naruto Shippuden não é apenas um anime de ação; é uma história sobre nunca desistir, mesmo quando tudo parece estar contra você. A trajetória de Naruto é inspiradora, e o espectador é levado a refletir sobre a importância da perseverança, da compaixão e do poder dos laços humanos. Se você gosta de animes que mesclam ação, emoção e lições de vida, Naruto Shippuden é uma escolha imperdível.', 
    'Prepare-se para se emocionar, torcer e se inspirar com Naruto em sua jornada épica para se tornar o ninja mais forte e conquistar seu lugar como um verdadeiro herói.', 
    'anime_naruto_shippuden_lg', 'Imagem de Naruto Shippuden com Naruto, Sakura e Sasuke em destaque ao centro, rodeados por cenas marcantes do mangá e personagens icônicos como Kakashi, Itachi, Obito, Kurama e Jiraiya ao fundo.', 'https://www.youtube.com/embed/iSjhmC9YMws', 'https://www.crunchyroll.com/pt-br/series/GYQ4MW246/naruto-shippuden'),

    ('Dragon Ball Z', 
    '<strong>Dragon Ball Z</strong>, criado por <strong>Akira Toriyama</strong>, é muito mais do que um anime; é uma experiência que marcou a infância e adolescência de milhões de fãs ao redor do mundo. A série continua a história de <strong>Goku</strong>, um Saiyajin criado na Terra, que descobre sua origem alienígena enquanto enfrenta desafios que vão além de sua imaginação. Com batalhas épicas, personagens carismáticos e transformações icônicas, Dragon Ball Z tornou-se um marco no universo dos animes.',
    'A trama acompanha Goku e seus amigos enquanto enfrentam inimigos formidáveis, como o cruel <strong>Freeza</strong>, o incansável <strong>Cell</strong> e o devastador <strong>Majin Buu</strong>, em uma luta constante para proteger a Terra e o universo. A série se destaca por suas cenas de ação de tirar o fôlego, repletas de energia, estratégia e momentos de superação, como a lendária transformação em <strong>Super Saiyajin</strong>, que se tornou um símbolo da força e determinação do protagonista. Além das lutas, Dragon Ball Z aborda temas de amizade, sacrifício e a busca incessante por autossuperação, inspirando fãs de todas as idades.', 
    'No universo de Dragon Ball, cada batalha é mais intensa que a anterior, com personagens que elevam suas habilidades a níveis inimagináveis. Além de Goku, personagens como Vegeta, Piccolo e Gohan adicionam profundidade à trama, cada um com sua própria jornada e motivações.', 
    '<strong>Por que você deveria assistir Dragon Ball Z?</strong> Este anime é uma obra que combina ação épica com lições de vida atemporais. É uma jornada que ensina sobre o poder da persistência, do trabalho em equipe e do desejo de sempre ultrapassar os próprios limites. Seja você um fã de longa data ou alguém novo no universo dos animes, Dragon Ball Z é uma aventura imperdível que continua a ressoar com sua mistura única de emoção, humor e adrenalina.', 
    'Prepare-se para mergulhar em um mundo onde os laços de amizade são tão poderosos quanto os Kamehamehas!',
    'anime_dragon_ball_lg', 'Goku lançando um Kamehameha com expressão determinada, fundo azul escuro e logo de Dragon Ball Z no canto superior esquerdo.', 'https://www.youtube.com/embed/bbCQ-XiXKbo', 'https://www.crunchyroll.com/pt-br/series/G9VHN9PPW/dragon-ball-z'),

    ('Attack On Titan (Shingeki no Kyojin)', 
    'Attack on Titan (Shingeki no Kyojin), criado por <strong>Hajime Isayama</strong>, é um dos animes mais impactantes e intensos dos últimos tempos, conquistando fãs ao redor do mundo com sua narrativa sombria e cheia de mistérios. A história é ambientada em um mundo pós-apocalíptico, onde a humanidade vive confinada dentro de enormes muralhas para se proteger de gigantescos e temíveis monstros conhecidos como <strong>Titãs</strong>. Esses seres aterrorizantes devoram humanos sem motivo aparente, e a população, cercada por esses muros, luta para sobreviver e entender as verdadeiras intenções por trás dos Titãs.', 
    'A trama segue <strong>Eren Yeager</strong>, um jovem determinado a acabar com os Titãs depois de testemunhar a morte brutal de sua mãe em um ataque a sua cidade natal. Com o apoio de seus amigos de infância, <strong>Mikasa Ackerman</strong> e <strong>Armin Arlert</strong>, Eren se junta ao exército e embarca em uma jornada para derrotar essas criaturas. Mas conforme a história avança, o anime revela camadas profundas e complexas de conspirações, segredos e questionamentos sobre a própria natureza da humanidade. Attack on Titan aborda <strong>temas densos</strong> como liberdade, moralidade, vingança e a luta pela sobrevivência em um mundo impiedoso.', 
    'O que torna Attack on Titan tão único é sua combinação de ação intensa, mistério e desenvolvimento de personagens. As batalhas contra os Titãs são carregadas de tensão e brutalidade, com animações impressionantes e coreografias de combate que deixam o espectador na ponta do sofá. A evolução dos personagens é outro ponto forte: Eren, Mikasa, Armin e outros membros da <strong>Equipe de Reconhecimento</strong> enfrentam seus próprios dilemas, traumas e perdas ao longo da jornada, e cada episódio traz novas revelações e reviravoltas que desafiam as expectativas.', 
    '<strong>Por que você deveria assistir Attack on Titan?</strong> Este anime não é apenas uma história de ação e sobrevivência; é uma experiência visceral que faz o espectador refletir sobre os limites da humanidade, a complexidade dos conflitos e os sacrifícios que cada um é capaz de fazer por liberdade. Attack on Titan é envolvente, provocador e, muitas vezes, doloroso, mas é justamente essa intensidade que o torna uma obra inesquecível e digna de maratona. Se você busca uma série que combina ação eletrizante com uma narrativa profunda e cheia de suspense, este é o anime perfeito para você.', 
    'Prepare-se para ser imerso em um mundo de desesperança e coragem, onde a linha entre heróis e vilões se torna cada vez mais tênue, e a verdade é mais assustadora do que os próprios Titãs.', 
    'anime_attack_on_titan_lg', 'Titã de Eren avançando furiosamente no céu noturno sobre uma cidade em ruínas, com luzes de holofotes e soldados nas muralhas; ao fundo, o texto Attack on Titan: The Final Season - The Final Chapters.', 'https://www.youtube.com/embed/tGyt8YEVNWA', 'https://www.crunchyroll.com/pt-br/series/GR751KNZY/attack-on-titan'),

    ('Death Note', 
    'Death Note, criado por <strong>Tsugumi Ohba</strong> e ilustrado por <strong>Takeshi Obata</strong>, é um thriller psicológico que explora temas de moralidade, justiça e poder de uma forma instigante e provocativa. A história começa quando <strong>Light Yagami</strong>, um brilhante estudante do ensino médio, encontra um misterioso caderno chamado <strong>Death Note</strong>. Esse caderno tem um poder terrível: <strong>qualquer pessoa que tenha seu nome escrito nele morre</strong>. Intrigado e tentado pela oportunidade de mudar o mundo, Light decide usar o Death Note para eliminar criminosos, assumindo a identidade de <strong>Kira</strong> e começando uma cruzada para criar um "novo mundo" sem crime.', 
    'No entanto, essa busca pela "justiça" atrai a atenção de <strong>"L"</strong>, um detetive igualmente brilhante e excêntrico, que vê Kira como uma ameaça e faz de tudo para capturá-lo. O anime então se transforma em um intenso jogo de gato e rato, onde cada movimento de Light é meticulosamente planejado para despistar L, enquanto este usa sua inteligência afiada para desmascarar o verdadeiro Kira. O embate entre Light e L é um dos aspectos mais fascinantes de Death Note, com reviravoltas, manipulações e estratégias que deixam o espectador completamente imerso.', 
    'Death Note se destaca não só por sua trama engenhosa, mas também por <strong>explorar as complexidades da moralidade humana</strong>. À medida que Light começa a justificar suas ações, o anime questiona até que ponto o poder corrompe e onde fica a linha entre justiça e assassinato. A presença de <strong>Ryuk, o shinigami</strong> (deus da morte) que deixou o Death Note cair na Terra, adiciona um toque sobrenatural e sombrio, enquanto observa de forma neutra e irônica as escolhas de Light, reforçando o quão frágil e volátil é o sentido humano de moralidade.', 
    '<strong>Por que você deveria assistir Death Note?</strong> Este anime é um prato cheio para aqueles que adoram tramas psicológicas e dilemas éticos. Death Note não é apenas uma história sobre um caderno mortal; é uma reflexão profunda sobre o poder, as consequências e os limites da justiça. Com uma narrativa afiada, personagens carismáticos e uma atmosfera de suspense e tensão que cresce a cada episódio, Death Note é uma experiência que prende do começo ao fim.', 
    'Se você está em busca de um anime que desafie sua percepção de certo e errado e mantenha sua mente afiada, Death Note é uma escolha imperdível. Prepare-se para entrar em um jogo mortal onde apenas o mais inteligente sobreviverá.', 
    'anime_death_note_lg', 'Light Yagami segurando uma maçã à esquerda e L de cabeça para baixo à direita, com um vidro estilhaçado ao centro revelando o rosto do shinigami Ryuk ao fundo; abaixo, o logo de Death Note com o título em japonês.', 'https://www.youtube.com/embed/Xoj2Qu8t558', 'https://www.crunchyroll.com/pt-br/series/G6QWD3EE6/death-note'),

    ('Chainsaw Man', 
    'Chainsaw Man, criado por <strong>Tatsuki Fujimoto</strong>, é uma das séries de anime e mangá mais comentadas e aclamadas dos últimos tempos. Conhecido por sua mistura de violência, humor e reflexões profundas, Chainsaw Man conta a história de <strong>Denji</strong>, um jovem pobre que vive endividado e desesperado após a morte de seu pai. Para sobreviver, ele trabalha como caçador de demônios, acompanhado por seu fiel companheiro e mascote, <strong>Pochita</strong>, um demônio com a forma de uma pequena motosserra.', 
    'A vida de Denji é marcada por um ciclo de sofrimento e exploração, até que um encontro fatal muda tudo. Traído e morto por uma organização de mafiosos com quem trabalhava, Denji faz um pacto com Pochita e é ressuscitado como o <strong>Chainsaw Man</strong>, um híbrido humano-demônio capaz de transformar partes de seu corpo em motosserras. Agora, ele passa a trabalhar para a <strong>Divisão de Segurança Pública</strong>, caçando outros demônios e enfrentando perigos muito além de sua imaginação.', 
    'Mas, o que realmente diferencia Chainsaw Man de outras histórias de ação e horror é a maneira como explora as ambições e sonhos de seus personagens. Denji, por exemplo, não sonha com fama ou poder. Seus desejos são simples e, às vezes, infantis — como poder comer bem, ter uma casa e encontrar alguém para amar. Essa humanidade crua de Denji torna-o um <strong>personagem profundamente relacionável</strong>, e é impossível não torcer por ele, mesmo enquanto ele lida com inimigos grotescos e situações extremas.', 
    '<strong>Por que você deveria assistir Chainsaw Man?</strong> Este anime é perfeito para quem busca uma experiência intensa e original, com uma narrativa que combina ação desenfreada e um retrato honesto das aspirações humanas. Chainsaw Man é ao mesmo tempo brutal e comovente, com personagens complexos e momentos que oscilam entre o trágico e o cômico. É uma história sobre sonhos simples em um mundo caótico, onde o protagonista luta para encontrar seu lugar e, ao mesmo tempo, se vê constantemente desafiado por forças além de seu controle.',
    'Se você quer um anime que mistura adrenalina, emoções profundas e uma boa dose de humor sombrio, Chainsaw Man é uma série que merece sua atenção. Prepare-se para ser surpreendido e envolvido em um mundo onde sobrevivência e sonhos andam lado a lado.', 
    'anime_chainsaw_man_lg', 'Denji, de Chainsaw Man, com cabeça e braços de motosserra ensanguentados, posa sobre escombros em meio a prédios altos, com sangue espirrando ao redor. O título "Chainsaw Man" aparece na parte inferior.', 'https://www.youtube.com/embed/UwovbbKUpwk', 'https://www.crunchyroll.com/pt-br/series/GVDHX8QNW/chainsaw-man'),

    ('Cowboy Bebop', 
    'Cowboy Bebop, criado por <strong>Shinichiro Watanabe</strong>, é uma obra-prima que transcende o gênero de animes, combinando ficção científica, ação, jazz e filosofia em uma <strong>história atemporal</strong>. Lançado em 1998, Cowboy Bebop continua a cativar audiências ao redor do mundo com sua narrativa envolvente e seus personagens complexos. A série acompanha a tripulação do <strong>Bebop</strong>, uma nave de <strong>caçadores de recompensas</strong> que viajam pelo espaço em busca de fugitivos, enquanto enfrentam seus próprios passados sombrios e uma constante sensação de solidão.', 
    'O protagonista, <strong>Spike Spiegel</strong>, é um ex-membro da máfia com uma personalidade enigmática e um passado marcado por traições. Ao lado de <strong>Jet Black</strong>, um ex-policial rígido mas justo, <strong>Faye Valentine</strong>, uma mulher fatal com amnésia e uma dívida insuportável, e <strong>Edward</strong>, uma hacker excêntrica e genial, Spike embarca em missões que, muitas vezes, os colocam em situações perigosas e os levam a confrontar velhos demônios. Em cada episódio, a série explora temas profundos, como a redenção, a liberdade e o peso das memórias, com uma <strong>estética visual e sonora impecável</strong>.', 
    'O que faz de Cowboy Bebop um anime tão especial é a sua <strong>abordagem estilística</strong> e a habilidade em misturar gêneros. Com uma trilha sonora icônica composta por <strong>Yoko Kanno</strong> e sua banda <strong>The Seatbelts</strong>, o anime apresenta cada episódio como uma peça musical, onde o <strong>jazz</strong> e o <strong>blues</strong> não apenas complementam, mas elevam as cenas, dando ritmo e emoção à narrativa. Os personagens de Cowboy Bebop são marcantes por sua profundidade e falhas, e cada um lida com seus traumas e aspirações de maneira única, o que torna a série uma exploração rica das facetas da condição humana.', 
    '<strong>Por que você deveria assistir Cowboy Bebop?</strong> Este anime não é apenas uma série de caçadas espaciais; é uma viagem emocional e filosófica, que nos lembra da beleza e da dor de viver com o passado e buscar um futuro incerto. Cowboy Bebop combina ação, drama e uma estética noir com temas universais de <strong>solidão e nostalgia</strong>, criando uma experiência única e envolvente. Sua narrativa episódica permite explorar uma variedade de aventuras e conflitos, enquanto seus personagens nos ensinam a lidar com perdas, lembranças e os próprios erros.', 
    'Se você está em busca de um anime que é ao mesmo tempo divertido, melancólico e sofisticado, Cowboy Bebop é uma escolha indispensável. Prepare-se para embarcar em uma odisseia espacial inesquecível ao som de jazz, onde cada episódio é uma nova jornada para a alma.', 
    'anime_cowboy_bebop_lg', 'Spike Spiegel, de Cowboy Bebop, aparece com cigarro na boca e fundo espacial. Naves da tripulação voam à frente da Terra, com rostos dos personagens em vermelho ao fundo. Logo do anime está no canto superior direito.', 'https://www.youtube.com/embed/elQVa5wzAa4', 'https://www.crunchyroll.com/pt-br/series/GYVNXMVP6/cowboy-bebop'),

    ('Dan Da Dan', 
    '<strong>Dandadan</strong>, criado por <strong>Yukinobu Tatsu</strong>, é um anime que vem conquistando atenção por sua proposta ousada, personagens carismáticos e uma narrativa que mistura elementos sobrenaturais, ficção científica e comédia de forma única. A história gira em torno de dois estudantes, <strong>Momo Ayase</strong> e <strong>Okarun</strong>, que têm crenças opostas: ela acredita em fantasmas, mas não em alienígenas; ele, o contrário. Após uma aposta, os dois acabam descobrindo que ambos os fenômenos existem, e a partir daí mergulham em uma sequência de eventos bizarros, hilários e cheios de ação.', 
    'À medida que a história se desenrola, <strong>Momo</strong> e <strong>Okarun</strong> enfrentam entidades sobrenaturais, seres alienígenas e todo tipo de situação insana. A dinâmica entre os protagonistas é divertida e cheia de química, misturando momentos cômicos com situações de risco real. <strong>Okarun</strong>, apesar de tímido, revela grande coragem, enquanto <strong>Momo</strong> mostra força e sensibilidade ao mesmo tempo. Além deles, outros personagens excêntricos vão surgindo, enriquecendo o enredo com seus próprios mistérios e habilidades.', 
    'A animação é produzida pelo estúdio <strong>Science SARU</strong>, conhecido por seu estilo visual criativo e fluido. A estética de <strong>Dandadan</strong> é marcada por cores vibrantes, movimentos exagerados e expressões intensas, que combinam perfeitamente com o tom caótico da história. Cada episódio é uma explosão de energia visual e narrativa, mantendo o espectador intrigado com o que pode acontecer a seguir — porque, honestamente, tudo pode acontecer em <strong>Dandadan</strong>.', 
    '<strong>Por que você deveria assistir Dandadan?</strong> Porque é uma experiência diferente de tudo que você já viu. Se você gosta de histórias com reviravoltas imprevisíveis, personagens fora do comum e um equilíbrio entre ação, humor e momentos tocantes, esse anime é para você. Ele desafia os clichês dos gêneros que mistura e entrega algo verdadeiramente original, ao mesmo tempo que consegue emocionar com os laços que os personagens criam entre si.', 
    'Se você está procurando um anime que fuja do óbvio e te mantenha entretido com uma narrativa imprevisível e cheia de personalidade, <strong>Dandadan</strong> é uma escolha excelente. Prepare-se para rir, se surpreender e se apegar a personagens excêntricos enquanto mergulha em um universo onde alienígenas e fantasmas não apenas existem — eles brigam entre si, e você vai adorar assistir tudo isso acontecer.', 
    'anime_dan_da_dan_lg', 'Personagens principais de Dandadan em poses dinâmicas, com criaturas sombrias ao fundo. Destaque para o garoto de óculos e a garota de suéter rosa ao centro. Logo vermelho "Dan Da Dan" aparece no canto inferior esquerdo.', 'https://www.youtube.com/embed/x3qpX5PERv4', 'https://www.crunchyroll.com/pt-br/series/GG5H5XQ0D/dan-da-dan'),

    ('Jujutsu Kaisen', 
    'Jujutsu Kaisen foi criado por <strong>Gege Akutami</strong> e rapidamente conquistou o coração dos fãs de ação e sobrenatural. A história acompanha <strong>Yuji Itadori</strong>, um adolescente com força física incomum, que, ao tentar salvar seus amigos de uma poderosa maldição, acaba comendo o dedo de <strong>Ryomen Sukuna</strong>, o “Rei das Maldições”. Com isso, Yuji se torna o hospedeiro de Sukuna, um demônio extremamente perigoso, e é introduzido ao mundo do <strong>Jujutsu</strong> — uma arte que envolve técnicas místicas para exorcizar maldições que ameaçam a humanidade.',
    'Após esse encontro fatídico, Yuji se junta à <strong>Escola Técnica de Jujutsu de Tóquio</strong>, onde passa a treinar para controlar o poder de Sukuna e aprender as habilidades necessárias para enfrentar maldições. Ele conhece outros estudantes e feiticeiros, como o determinado <strong>Megumi Fushiguro</strong> e a destemida <strong>Nobara Kugisaki</strong>, além de seu mentor excêntrico, o poderoso feiticeiro <strong>Satoru Gojo</strong>. Juntos, eles enfrentam criaturas assustadoras e entram em confrontos intensos com forças malignas, tudo em meio a um mundo que mescla o sobrenatural com o drama humano.',
    'Este anime se destaca pela sua animação de alta qualidade e suas cenas de ação visualmente deslumbrantes, onde cada luta é coreografada com precisão e energia. Mas o que realmente conquista o público é o equilíbrio perfeito entre o <strong>terror sobrenatural</strong> e o <strong>desenvolvimento dos personagens</strong>. A série aborda temas como coragem, sacrifício e o peso das escolhas, explorando os dilemas de jovens que enfrentam um mundo violento e imprevisível. Cada personagem possui uma história única e uma personalidade complexa, tornando a trama ainda mais envolvente.',
    '<strong>Por que você deveria assistir Jujutsu Kaisen?</strong> Este anime é uma ótima escolha para quem gosta de histórias intensas e sombrias, com toques de horror e ação de tirar o fôlego. Jujutsu Kaisen combina elementos de exorcismo e fantasia sombria com um enredo cheio de reviravoltas e personagens cativantes. A série oferece uma experiência emocionante e única, que vai além das batalhas e explora o que significa lutar pelo que é certo, mesmo quando o inimaginável está à espreita.</',
    'Se você busca um anime que une ação sobrenatural, profundidade emocional e uma animação espetacular, Jujutsu Kaisen é uma escolha imperdível. Prepare-se para mergulhar em um mundo de maldições e poderosas técnicas místicas, onde cada batalha é um teste de resistência e coragem.', 
    'anime_jujutsu_kaisen_lg', 'Personagens de Jujutsu Kaisen dentro de um vagão de metrô, divididos em dois grupos, com expressões descontraídas e roupas escolares escuras. A iluminação destaca o contraste entre os lados. No centro, o título do anime em japonês com estilo sombrio.', 'https://www.youtube.com/embed/V1_PdZzqIt8', 'https://www.crunchyroll.com/pt-br/series/GRDV0019R/jujutsu-kaisen'),

    ('Demon Slayer (Kimetsu No Yaiba)',
    'Demon Slayer (Kimetsu no Yaiba), criado por <strong>Koyoharu Gotouge</strong>, é um anime que rapidamente conquistou fãs ao redor do mundo, tornando-se um fenômeno global por sua animação deslumbrante e narrativa emocionante. A história acompanha <strong>Tanjiro Kamado</strong>, um jovem gentil e trabalhador que vê sua vida virar de cabeça para baixo quando sua família é brutalmente assassinada por demônios, e sua irmã mais nova, <strong>Nezuko</strong>, é transformada em um deles. Determinado a encontrar uma cura para Nezuko e vingar sua família, Tanjiro embarca em uma jornada intensa e perigosa para se tornar um caçador de demônios.',
    'Ao longo de sua jornada, Tanjiro encontra outros personagens igualmente cativantes e com motivações próprias, como o medroso <strong>Zenitsu Agatsuma</strong> e o feroz <strong>Inosuke Hashibira</strong>. Juntos, eles enfrentam criaturas aterrorizantes e poderosos demônios, cada um com habilidades únicas e personalidades complexas, o que torna cada batalha intensa e cheia de emoção. A série também explora a organização dos caçadores de demônios, incluindo os <strong>Hashira</strong>, os guerreiros mais fortes, que protegem a humanidade com suas técnicas de respiração e habilidades excepcionais.',
    'Demon Slayer é amplamente elogiado por sua animação de alta qualidade e suas cenas de luta espetaculares, produzidas pelo estúdio <strong>Ufotable</strong>. A combinação de cores vibrantes, coreografias dinâmicas e trilha sonora envolvente torna cada episódio uma experiência visual impressionante. Mas o anime vai além da ação: é uma história sobre empatia, família e determinação. Mesmo em um mundo cruel e cheio de sofrimento, Tanjiro mantém uma bondade inabalável e uma determinação inspiradora, tornando-o um protagonista fácil de se admirar.',
    '<strong>Por que você deveria assistir Demon Slayer?</strong> Este anime é imperdível para quem busca uma mistura de ação emocionante, personagens carismáticos e uma animação de tirar o fôlego. Demon Slayer combina elementos de aventura, terror e drama em uma narrativa envolvente e cheia de intensidade emocional. Além das lutas épicas, o anime oferece uma história de superação e esperança, onde o protagonista e seus amigos enfrentam seus próprios medos e limitações para proteger aqueles que amam.',
    'Se você deseja mergulhar em uma história repleta de adrenalina, emoção e visuais impressionantes, Demon Slayer é a escolha perfeita. Prepare-se para acompanhar Tanjiro e seus aliados em uma batalha contra o mal, onde cada episódio é um convite para explorar um mundo fascinante e sombrio.', 
    'anime_demon_slayer_lg', 'Personagens de Demon Slayer alinhados lado a lado em pose de destaque, com Tanjiro à frente e os Hashiras logo atrás. O fundo tem tons roxos brilhantes e pétalas flutuando, enquanto o logo do anime aparece centralizado com pinceladas em vermelho e preto.', 'https://www.youtube.com/embed/tPEicYJWyQQ', 'https://www.crunchyroll.com/pt-br/series/GY5P48XEY/demon-slayer-kimetsu-no-yaiba');


-- criando a tabela de Artigos de animes e séries
CREATE TABLE IF NOT EXISTS artigoAnimesESeries (
    idArtigo INT PRIMARY KEY AUTO_INCREMENT,
    tituloArtigo VARCHAR (100) NOT NULL,
    autorArtigo VARCHAR (50),
    paragrafo1 TEXT,
    paragrafo2 TEXT,
    paragrafo3 TEXT,
    paragrafo4 TEXT,
    imagemArtigo VARCHAR(40),
    altTextImagem TEXT,
    figCaption VARCHAR (100)
);


-- inserindo dados na tabela de Artigos
INSERT into artigoanimeseseries
    (tituloArtigo, autorArtigo, paragrafo1, paragrafo2, paragrafo3, paragrafo4, imagemArtigo, altTextImagem, figCaption)
VALUES
    ('O que são animes? Uma introdução ao Universo das Animações Japonesas',
    'Fabiano Ramos',
    'No evento da FATECon HQs de 2024, os fãs de cultura pop tiveram a oportunidade de participar de um concurso de melhor cosplay, onde dezenas de pessoas exibiram sua criatividade e paixão ao se vestirem como seus personagens favoritos de animes. Mas, afinal, o que são animes? Essa pergunta pode parecer simples para muitos, mas esconde uma rica história e tradição por trás dessas produções tão queridas por milhões de pessoas ao redor do mundo.',
    'Animes são animações de origem japonesa, geralmente derivada dos <strong>mangás</strong>, que conquistaram uma audiência global. Diferentes dos desenhos animados ocidentais, os animes se destacam por suas histórias complexas, traços artísticos únicos e a capacidade de abordar temas profundos e variados, desde aventuras épicas até dramas existenciais. Embora muitos animes sejam voltados para o público jovem, há obras para todas as idades e gostos, tornando o gênero acessível e diversificado.',
    'A palavra "anime" vem da abreviação da palavra inglesa <span lang="en-us">"animation"</span>, mas no Japão, refere-se a qualquer tipo de animação. Fora do Japão, no entanto, o termo é usado exclusivamente para as produções japonesas. Essas obras vão além da estética vibrante e envolvem narrativas intensas, cheias de nuances emocionais, culturais e, muitas vezes, filosóficas, o que torna o gênero tão apreciado em diversas partes do mundo.',
    'E agora, que tal conhecer alguns dos animes mais marcantes? Se você é novo nesse universo ou já é um fã, selecionei dez animes que certamente vão te prender e te fazer mergulhar de cabeça nesse fascinante mundo das animações japonesas. Prepare a pipoca e venha conferir!',
    'anime_character_zoro',
    'Roronoa Zoro, personagem do anime One Piece, aparece em uma pose poderosa e vitoriosa após derrotar King, o braço direito de Kaido. Ele está no ar, empunhando suas três espadas — com uma energia verde intensa irradiando das lâminas — e seu olho direito brilha em vermelho, transmitindo intensidade e determinação. Detritos flutuam ao fundo, reforçando a força do combate.',
    'NA IMAGEM: Roronoa Zoro.'),
    ('Das Páginas de HQ ao Streaming: Como os Quadrinhos Conquistaram as Telas',
    'Fabiano Ramos',
    'Nos últimos anos, o mundo das séries de TV foi transformado pela chegada de produções inspiradas em histórias em quadrinhos. Antes confinadas ao papel e voltadas para um público específico, as HQs deram um salto para as telas e encontraram um novo público ao explorar temas complexos, personagens cativantes e mundos vibrantes. Com adaptações que vão do sombrio e violento ao leve e humorístico, essas séries têm conquistado audiências ao redor do mundo e mostram o quanto o universo dos quadrinhos pode ser vasto e diversificado.',
    'Curiosamente, essa “era de ouro” das adaptações de HQs para TV foi impulsionada pelo sucesso do cinema, onde heróis como o Homem de Ferro, a Mulher-Maravilha e o Batman já tinham capturado a imaginação popular. O sucesso dessas franquias nos cinemas encorajou os estúdios de TV a explorar o formato seriado, o que permite um desenvolvimento mais profundo dos personagens e das tramas. Séries como The Walking Dead e Demolidor provaram que adaptações de HQs não precisam ser limitadas a super-heróis em trajes coloridos. Elas podem explorar histórias de sobrevivência, moralidade e até mesmo sátiras do próprio gênero.',
    'Essas adaptações nem sempre são fieis ao material original, e isso é parte do que as torna tão interessantes. Muitas vezes, elas reimaginam ou expandem o universo das HQs, oferecendo novas camadas e pontos de vista que enriquecem a experiência, tanto para fãs de longa data quanto para novos espectadores. As séries baseadas em quadrinhos têm o poder de emocionar, fazer rir, e até questionar questões profundas da sociedade e da natureza humana.',
    'Que tal mergulhar nesse universo fascinante? A seguir, confira 5 séries de TV que trazem o melhor das HQs para as telas e explore como essas adaptações conseguem cativar tanto os fãs de quadrinhos quanto os amantes de séries.',
    'serie_character_theboys',
    'Imagem promocional da série The Boys com os personagens principais mostrando o dedo médio, em frente a um pôster dos super-heróis. O gesto expressa rebeldia e crítica ao grupo dos superpoderosos.',
    'NA IMAGEM: The Boys.');


-- criando a tabela de conteúdo complementar sobre animes e séries:
CREATE TABLE IF NOT EXISTS complementoAnimesESeries (
    idComp INT PRIMARY KEY AUTO_INCREMENT,
    tituloComp VARCHAR (100) NOT NULL,
    textoComp TEXT,
    urlFonte VARCHAR (255),
    nomeFonte VARCHAR(20),
    imgComp VARCHAR (40),
    altTextImg VARCHAR (255)
);


INSERT INTO complementoanimeseseries
    (`tituloComp`, `textoComp`, `urlFonte`,`nomeFonte`, `imgComp`, `altTextImg`)
VALUES
    ('Curiosidade: Você sabe qual é o anime mais longo da história?', 'Sei que você já achou que One Piece era o anime mais longo de todos, ou até mesmo Pokémon e Doraemon, por já terem ultrapassado a marca de mil episódios transmitidos, mas aqui o buraco é bem mais fundo. Provavelmente você não conhece, mas <strong>Sazae-san</strong> é transmitido na televisão japonesa há 54 anos e é o detentor do topo desta lista com mais 7.330 episódios.', 'https://br.ign.com/anime/113303/news/mais-de-7500-episodios-em-54-anos-esse-anime-desbanca-one-piece-em-tamanho','IGN', 'anime_character_luffy', 'Retrato do cartaz de procurado de Monkey D. Luffy, protagonista do anime One Piece, sorrindo amplamente com seu chapéu de palha característico. Abaixo da imagem, está escrito: WANTED – Dead or Alive – Monkey D. Luffy.'),
    ('Curiosidade: você sabe o que signica "Live Action"?', '<strong>Live action</strong>, em tradução livre, significa “ato real”. É uma forma de produção cinematográfica que utiliza atores e atrizes reais para dar vida aos personagens. Ao contrário das animações, que são criadas a partir de desenhos ou imagens geradas por computador, o live action traz a autenticidade da interpretação humana. Filmes, séries e até mesmo jogos eletrônicos podem ser produzidos nesse formato.', 'https://rockset.com.br/26/07/2024/live-action-rockset/', 'Rockset', 'serie_character_rick', 'Rick Grimes, personagem de The Walking Dead, está em frente a uma cerca com vários zumbis tentando alcançá-lo. Ele parece alerta e pronto para agir, transmitindo tensão e sobrevivência no apocalipse.');



-- Criando a tabela de Séries:
CREATE TABLE IF NOT EXISTS listaSeries (
    idSerie INT PRIMARY KEY AUTO_INCREMENT,
    tituloSerie VARCHAR (50) NOT NULL,
    paragrafo1 TEXT,
    paragrafo2 TEXT,
    paragrafo3 TEXT,
    urlStream VARCHAR (255),
    imgBannerSerie VARCHAR (50)
);

-- inserindo dados na tabela de Séries:
INSERT INTO listaseries
    (tituloSerie, 
    paragrafo1, 
    paragrafo2, 
    paragrafo3, 
    urlStream, 
    imgBannerSerie)
VALUES
    ('Sandman',
    '<strong>Sandman</strong>, aclamada série da Netflix, é uma adaptação fiel da icônica HQ criada por <strong>Neil Gaiman</strong> e publicada pela DC Comics. Lançada em 1989, a obra original é conhecida por seu estilo único e mistura de fantasia sombria, mitologia e temas existenciais. A série preserva a essência da HQ, com Gaiman como produtor executivo, e leva o espectador a um universo visualmente deslumbrante e cheio de profundidade narrativa.',
    'A série acompahna <strong>Morpheus</strong>, um dos sete Perpétuos, personificações de conceitos como Morte, Desejo e Desespero. Após ser aprisionado por mais de um século, ele escapa para encontrar seu reino dos sonhos em ruínas. Em sua busca para restaurar o poder e equilíbrio de seu domínio, Morpheus enfrenta ameaças do mundo dos sonhos e da realidade, enquanto lida com seus próprios arrependimentos e dilemas.',
    'Sandman é uma experiência fascinante, onde cada episódio mistura suspense e fantasia, mantendo o espectador imerso em um universo onde o sonho e a realidade se cruzam de formas poéticas e assustadoras. Com uma atmosfera envolvente e personagens marcantes, a série é uma jornada que atrai tanto fãs da HQ quanto novos espectadores, que logo se veem cativados pelos mistérios e profundidade dessa obra única.',
    'https://www.netflix.com/title/81150303',
    'serie_sandman'),
    ('The Boys',
    '<strong>The Boys</strong>, série da Amazon Prime Video, é uma adaptação da controversa HQ de <strong>Garth Ennis</strong> e <strong>Darick Robertson</strong>. Ao contrário das histórias tradicionais de super-heróis, The Boys apresenta um mundo onde os “supers” são controlados por uma poderosa corporação e são frequentemente corruptos, egocêntricos e perigosos. A série traz uma abordagem brutal e satírica do gênero, desconstruindo a imagem do herói ideal e mostrando as consequências de poderes em mãos erradas.',
    'A trama segue <strong>Hughie Campbell</strong>, um jovem comum que perde a namorada em um “acidente” causado pelo velocista <strong>A-Train</strong> (Trem-Bala), membro do grupo de super-heróis conhecido como <strong>Os Sete</strong>. Traumatizado e buscando justiça, Hughie se junta a <strong>Billy Butcher</strong>, líder de um grupo clandestino que monitora e combate os super-heróis com métodos nada convencionais. Em sua luta contra os supers, eles enfrentam o poderoso e psicótico <strong>Homelander</strong> (Capitão Pátria), líder dos Sete, cujas ações revelam o lado sombrio dos superpoderes.',
    'The Boys é uma experiência ousada e intensa, misturando ação, humor negro e crítica social. Com personagens complexos e reviravoltas chocantes, a série oferece uma visão sombria e satírica do mundo dos super-heróis, atraindo tanto os fãs da HQ quanto novos espectadores que buscam uma história imprevisível e cheia de adrenalina. É uma escolha perfeita para quem quer ver um lado totalmente novo — e assustador — do que significa ser um “herói”.',
    'https://www.primevideo.com/detail/0KRGHGZCHKS920ZQGY5LBRF7MA',
    'serie_the_boys'),
    ('Invencível',
    '<strong>Invencível</strong>, série animada da Amazon Prime Video, é uma adaptação da aclamada HQ de <strong>Robert Kirkman</strong>, criador de <em>The Walking Dead</em>. A série começa com um tom aparentemente leve e familiar, acompanhando <strong>Mark Grayson</strong>, um adolescente que descobre seus poderes e tenta seguir os passos de seu pai, <strong>Omni-Man</strong>, o herói mais poderoso da Terra. Mas à medida que Mark assume a identidade de Invencível, ele descobre que o mundo dos super-heróis é muito mais sombrio e brutal do que ele imaginava.',
    'Ao longo da série, Mark enfrenta dilemas e desafios tanto pessoais quanto heroicos, descobrindo a complexidade moral de salvar o mundo. O relacionamento com seu pai se torna um dos aspectos mais intrigantes e perturbadores da trama, revelando segredos chocantes e consequências devastadoras. A série não hesita em mostrar cenas de violência intensa e realista, subvertendo a expectativa de uma animação comum de super-heróis e apresentando uma história emocionalmente densa e cheia de reviravoltas.',
    'Invencível é uma série que cativa tanto pela sua ação visceral quanto pelo desenvolvimento profundo de seus personagens. Com uma narrativa que mistura heroísmo e tragédia, a série explora o custo dos superpoderes e o peso das escolhas. É uma experiência imperdível para fãs de histórias de super-heróis que buscam algo inovador, brutal e cheio de surpresas, mostrando um lado dos super-heróis raramente visto nas telas.',
    'https://www.primevideo.com/detail/0K677J96WQ96K6UY6BL15O70CO',
    'serie_invencivel'),
    ('The Umbrella Academy',
    '<strong>The Umbrella Academy</strong>, série da Netflix baseada na HQ de <strong>Gerard Way</strong> e <strong>Gabriel Bá</strong>, mistura super-heróis e drama familiar em uma trama cheia de mistério e humor sombrio. A história começa quando <strong>Sir Reginald Hargreeves</strong>, um excêntrico bilionário, adota sete crianças com habilidades especiais que nasceram no mesmo dia, de forma inexplicável, ao redor do mundo. Ele treina essas crianças para serem uma equipe de heróis, conhecida como <strong>The Umbrella Academy</strong>. No entanto, a infância rígida e conturbada que viveram sob o comando de Hargreeves deixa marcas profundas, separando o grupo e criando ressentimentos.',
    'Após a morte de Hargreeves, os irmãos se reúnem novamente e precisam lidar com seus traumas do passado, ao mesmo tempo que enfrentam uma ameaça apocalíptica. Cada um dos irmãos possui uma habilidade única e uma personalidade complexa, o que torna suas interações imprevisíveis e intensas. Entre eles estão o manipulador de espaço-tempo <strong>Número Cinco</strong>, a poderosa <strong>Vanya</strong>, e o sarcástico <strong>Klaus</strong>, cujos poderes e conflitos pessoais trazem um toque de drama e comédia à série. À medida que tentam resolver o mistério em torno da morte de seu pai e impedir o fim do mundo, os irmãos descobrem segredos sobre si mesmos e sobre a verdadeira intenção de Hargreeves.',
    'The Umbrella Academy é uma série que se destaca por seu tom irreverente e visualmente estilizado, oferecendo uma combinação única de ação, fantasia e comédia. A trama explora temas como família, aceitação e redenção, fazendo com que os espectadores se envolvam com os personagens imperfeitos e suas histórias cativantes. Com reviravoltas imprevisíveis e um toque de humor sombrio, The Umbrella Academy é uma série ideal para quem busca uma história de super-heróis diferente, onde as conexões familiares são tão importantes quanto os poderes.',
    'https://www.netflix.com/title/80186863',
    'serie_the_umbrella_academy'),
    ('Demolidor',
    '<strong>Demolidor</strong>, série aclamada da Marvel, agora disponível da Disney+, é uma adaptação sombria e intensa das histórias em quadrinhos de <strong>Daredevil</strong>, criada por <strong>Stan Lee</strong> e <strong>Bill Everett</strong>. A série acompanha <strong>Matt Murdock</strong>, um advogado cego que, após um acidente na infância, desenvolve sentidos extraordinários. À noite, ele usa suas habilidades aprimoradas para proteger <strong>Hell\'s Kitchen</strong>, um bairro de Nova York tomado pela violência e corrupção. Com um senso de justiça inabalável e uma vida dupla, Matt enfrenta o desafio de equilibrar sua carreira como advogado com sua missão como o vigilante conhecido como Demolidor.',
    'Ao longo da série, Demolidor lida com inimigos perigosos, sendo o mais icônico deles <strong>Wilson Fisk</strong> (ou Rei do Crime), um vilão calculista e implacável que deseja controlar Hell\'s Kitchen a qualquer custo. A narrativa é marcada por conflitos intensos, tanto físicos quanto morais, enquanto Matt confronta não apenas os criminosos que assolam a cidade, mas também seus próprios dilemas éticos e religiosos. O realismo das cenas de luta e a profundidade psicológica dos personagens são grandes diferenciais da série, que oferece uma abordagem crua e brutal ao universo dos super-heróis.',
    'Demolidor se destaca por sua narrativa complexa e visual sombrio, trazendo uma profundidade rara ao gênero de super-heróis. A série é uma exploração emocionante sobre justiça, redenção e os sacrifícios de quem escolhe proteger o inocente, mesmo que isso signifique se perder no caminho. Com personagens memoráveis e uma história envolvente, Demolidor é imperdível para os fãs de histórias de heróis que buscam uma trama realista, intensa e cheia de nuances.',
    'https://www.disneyplus.com/pt-br/series/daredevil/5jKSWL7ZMg50',
    'serie_demolidor');

-- Tabela de carrossel (slides principais)
CREATE TABLE IF NOT EXISTS carrossel (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    imagem VARCHAR(255) NOT NULL,
    texto_botao VARCHAR(50) NOT NULL,
    link_botao VARCHAR(255) NOT NULL,
    ordem INT DEFAULT 0,
    ativo BOOLEAN DEFAULT TRUE,
    altImg VARCHAR(255) NOT NULL
);

-- Inserindo dados para o carrossel
INSERT INTO carrossel (titulo, descricao, imagem, texto_botao, link_botao, ordem, altImg) VALUES
('Expositores', 'Fique por dentro de todos os Expositores que participarão da Fatecon HQs', 'carrossel-wp-expositores', 'Conheça-os', 'expositores.php?page=Expositores', 1, 'Pessoas exploram uma mesa repleta de livros e quadrinhos dispostos em expositores durante uma feira ou exposição literária, com destaque para mãos manuseando os exemplares.'),
('Animes que vão te prender', 'Entre agora e conheça os animes que não vão sair da sua cabeça!', 'carrossel-wp-animes', 'Entre Agora', 'entretenimento.php?page=Animes', 2, 'O Titã de Ataque e o Titã Blindado, do anime Attack on Titan, se encaram furiosamente em meio a chamas e destroços ao pôr do sol, transmitindo tensão e intensidade no campo de batalha.'),
('Mergulhe no Universo das HQs', 'Descubra mundos repletos de heróis corajosos, vilões icônicos e narrativas envolventes que capturam a imaginação de todas as idades.', 'carrossel-wp-hqs', 'Veja Aqui', 'hqs.php?page=HQs', 3, 'Capitão América e Batman se enfrentam em uma ilustração de quadrinhos, ambos em posição de ataque, destacando o confronto entre heróis icônicos da Marvel e da DC em estilo clássico de HQ.');


-- Tabela de seções da home
CREATE TABLE IF NOT EXISTS secoes_expositores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    conteudo TEXT NOT NULL,
    imagem VARCHAR(255) NOT NULL,
    texto_botao VARCHAR(50) NOT NULL,
    link_botao VARCHAR(255) NOT NULL,
    posicao ENUM('esquerda', 'direita') DEFAULT 'direita',
    ativo BOOLEAN DEFAULT TRUE
);

-- Inserindo seção de expositores
INSERT INTO secoes_expositores (titulo, conteudo, imagem, texto_botao, link_botao, posicao) VALUES
('Tenha a chance de expor seus trabalhos para um público apaixonado por quadrinhos, cultura geek e muito mais!', 
'Seja você um quadrinista, ilustrador, escritor ou criador de conteúdo geek, a Fatecon é o espaço ideal para apresentar sua arte e conectar-se com fãs e outros profissionais do setor. Inscreva-se agora para garantir sua vaga e aproveite essa oportunidade de destaque no universo geek.', 
'expositores_home', 
'Inscreva-se', 
'inscricoes.php?page=Inscricoes', 
'esquerda');


-- Tabela de artigos/destaques
CREATE TABLE IF NOT EXISTS artigos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    subtitulo VARCHAR(200) NOT NULL,
    conteudo TEXT NOT NULL,
    autor VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    imagem VARCHAR(255),
    data_publicacao DATETIME DEFAULT CURRENT_TIMESTAMP,
    destaque BOOLEAN DEFAULT FALSE,
    link_botao VARCHAR(255) NOT NULL
);

-- Inserindo artigos/destaques
INSERT INTO artigos (titulo, subtitulo, conteudo, autor, categoria, imagem, destaque, link_botao) VALUES
('10 Obras-Primas do Anime Que Você Não Pode Deixar de Ver', 'Por: Fabiano Ramos', 'Nesta seleção especial, destacamos dez animes que transcendem o entretenimento, marcando gerações com narrativas profundas e inesquecíveis.', 'Fabiano Ramos', 'Animes', NULL, TRUE, 'entretenimento.php?page=Animes'),
('Oficinas, Cosplay, Palestras e muito mais', 'Por: Rafael Moraes', 'Confira as atrações da FATECon 2024: Uma programação incrível com oficinas práticas, palestras inspiradoras, mesas-redondas, concursos de cosplay e o aguardado Concurso "Desenhe São Roque 2024".', 'Rafael Moraes', 'Atrações', NULL, TRUE, 'atracoes.php?page=Atracoes'),
('5 séries que trouxeram as HQs para a TV', 'Por: Fabiano Ramos', 'Destacamos séries que não só adaptaram quadrinhos para a televisão, mas também reinventaram seus universos para conquistar novos públicos e consolidar o sucesso delas em novos formatos', 'Fabiano Ramos', 'Séries animadas', NULL, TRUE, 'entretenimento.php?page=Series'),
('Conheça alguns dos expositores que passarão por aqui', 'Por: Cristiano Alves', 'Entre os destaques estão grandes nomes do cenário nacional que trouxeram suas obras, compartilharam experiências e inspiraram o público com suas trajetórias.', 'Cristiano Alves', 'Expositores', NULL, TRUE, 'expositores.php?page=Expositores'),
('Descubra a fascinante história por trás dos Mangás', 'Por: Ana Lívia', 'Explore como essa forma única de arte transformou a cultura pop mundial! Desde as primeiras ilustrações do Japão feudal até as adaptações de sucesso que conquistaram as telas, os mangás contam histórias que emocionam, inspiram e conectam gerações.', 'Ana Lívia', 'Mangás', NULL, TRUE, 'hqs.php?page=Mangas'),
('Review de jogos: Resident Evil', 'Por: João Pedro Reveroni', 'Prepare-se para revisitar o icônico universo do terror com "Resident Evil", uma das franquias mais marcantes da história dos videogames. A série que revolucionou o gênero survival horror com sua atmosfera envolvente...', 'João Pedro Reveroni', 'Games', NULL, TRUE, 'games.php?page=Games');

-- Tabela de cards de navegação
CREATE TABLE IF NOT EXISTS cards_navegacao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    imagem VARCHAR(255) NOT NULL,
    link VARCHAR(255) NOT NULL,
    ordem INT DEFAULT 0,
    ativo BOOLEAN DEFAULT TRUE
);

-- Inserindo cards de navegação
INSERT INTO cards_navegacao (titulo, imagem, link, ordem) VALUES
('Atrações', 'atracoes_carrossel', 'atracoes.php?page=Atracoes', 1),
('Animes', 'animes_carrossel', 'entretenimento.php?page=Animes', 2),
('HQs', 'hqs_carrossel', 'hqs.php?page=HQs', 3),
('Mangás', 'mangas_carrossel', 'hqs.php?page=Mangas', 4),
('Séries', 'series_carrossel', 'entretenimento.php?page=Series', 5),
('Games', 'games_carrossel', 'games.php?page=Games', 6),
('Expositores', 'expositores_carrossel', 'expositores.php?page=Expositores', 7),
('Inscrições', 'inscricoes_carrossel', 'inscricoes.php?page=Inscricoes', 8),
('Quem Somos', 'quemsomos_carrossel', 'quemsomos.php?page=Sobre', 9),
('Contatos', 'contatos_carrossel', 'contatos.php?page=Contatos', 10);


-- Tabela de informações do evento
CREATE TABLE IF NOT EXISTS informacoes_evento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    texto_botao VARCHAR(50) NOT NULL,
    link_botao VARCHAR(255) NOT NULL
);

-- Inserindo informações do evento
INSERT INTO informacoes_evento (titulo, descricao, texto_botao, link_botao) VALUES
('Informações Fatecon', 'Seja sobre expositores, programação ou qualquer outro detalhe, estamos aqui para tornar sua experiência na FATECon ainda mais incrível. Não perca tempo, entre em contato agora mesmo!', 'Fale conosco', 'contatos.php?page=Contatos');

-- Tabela de conteúdo especial (como a seção de cosplay)
CREATE TABLE IF NOT EXISTS conteudo_especial (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    conteudo TEXT NOT NULL,
    imagem VARCHAR(255) NOT NULL,
    ativo BOOLEAN DEFAULT TRUE
);

-- Inserindo seção de cosplay
INSERT INTO conteudo_especial (titulo, conteudo, imagem) VALUES
('Cosplay na Fatecon: Dê vida aos seus personagens favoritos!', 
'Nosso evento contará com um concurso de cosplay, onde você poderá exibir sua criatividade e talento. Seja qual for o seu personagem — de animes, quadrinhos, filmes ou jogos — todos são bem-vindos para mostrar suas habilidades e celebrar essa cultura vibrante. O concurso será uma oportunidade de interação com outros fãs e de competir por prêmios. Para participar, é necessário se inscrever antecipadamente.', 
'home_cosplay');


-- SCRIPT PÁGINA INSCRIÇÕES 

CREATE TABLE IF NOT EXISTS pagina_inscricao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    descricao TEXT NOT NULL
);

INSERT INTO pagina_inscricao (titulo, descricao)
VALUES (
    'Formulário de Inscrição',
    'Participe do evento FATECon escolhendo sua categoria: inscreva-se no concurso de cosplay, seja um expositor ou colabore como voluntário. Venha fazer parte dessa experiência única e contribuir para o sucesso do maior evento geek da região!'
);

-- Tipos de inscrição (select dinâmico)
CREATE TABLE IF NOT EXISTS tipos_inscricao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    valor VARCHAR(50) NOT NULL
);

INSERT INTO tipos_inscricao (nome, valor) VALUES
('Cosplay', 'cosplay'),
('Expositores', 'expositores'),
('Voluntários', 'voluntario');

-- Tabela para armazenar inscrições
CREATE TABLE IF NOT EXISTS inscricoes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    tipo_inscricao VARCHAR(50) NOT NULL,
    comentarios TEXT,
    data_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- script pagina contatos
CREATE TABLE IF NOT EXISTS contatos_site (
    id INT AUTO_INCREMENT PRIMARY KEY,
    whatsapp VARCHAR(20),
    instagram_nome VARCHAR(100),
    instagram_link VARCHAR(255),
    facebook_nome VARCHAR(100),
    facebook_link VARCHAR(255),
    endereco TEXT,
    mapa_embed TEXT
);

INSERT INTO contatos_site (
    whatsapp,
    instagram_nome,
    instagram_link,
    facebook_nome,
    facebook_link,
    endereco,
    mapa_embed
) VALUES (
    '(11) 99999-9999',
    '@fateconhqs',
    'https://www.instagram.com/fateconhqs',
    '@fateconhqs',
    'https://www.facebook.com/fateconhqs',
    'Av. João Pessoa, 556 - Centro, São Roque',
    '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3657.9897441904304!2d-47.14307392489197!3d-23.5328712788195!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94cf72abcc76c563%3A0x8e35693ef6d11193!2sState%20School%20Horace%20Manley%20Lane!5e0!3m2!1sen!2sbr!4v1747276726020!5m2!1sen!2sbr" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" ></iframe>'
);

-- Página Expositores
CREATE TABLE IF NOT EXISTS `expositores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `descricao` text NOT NULL,
  `imagem` varchar(50) NOT NULL,
  `altImagem` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);


INSERT INTO `expositores` (`id`, `nome`, `descricao`, `imagem`, `altImagem`) VALUES
	(1, 'Leon Silva Zoccaratto', 'Leon Silva Zoccaratto, licenciado em Educação Artística com ênfase em Artes Plásticas, iniciou sua produção de quadrinhos no final dos anos 1990 com o HQzine "O Clube da Criança Junkie". Após uma pausa, retornou com novas edições de suas melhores histórias, e o Clube da Criança Junkie já está no terceiro volume.', 'leon-silva-zoccaratto.webp', 'Artista com expressão divertida, usando óculos e jaqueta de couro, segura e simula morder uma revista colorida com ilustrações cômicas.'),
	(2, 'Helena Cunha', 'Helena Cunha é roteirista, ilustradora e quadrinista, formada em Cinema e Audiovisual. Autora das HQs Boa Sorte, Beibi e Normal, cresceu no interior do Rio de Janeiro. Lésbica, passou a juventude buscando histórias de amor entre mulheres e hoje escreve o que gostaria de ter lido.', 'helena-cunha.webp', 'Mulher sorridente em uma sala com quadros ao fundo e uma bandeira do brasil avermelhada invés do azul tradicional'),
	(3, 'Aikau Leão Morato Meloni', 'Aikau Leão Morato Meloni é ilustrador, quadrinista e professor. Ele estreou nos quadrinhos em 2020 com Craveiro, obra que explora autoaceitação, isolamento e sexualidade. Desde então, produz zines, HQs e webtoons, muitas vezes em parceria com a editora de poesia Selin Trovoar, trazendo uma visão poética e fantástica da vida urbana e do cotidiano.', 'aikau.webp', 'Homem de barba e bigode usando um bone cinza e um óculos arredondado'),
	(4, 'Diogo Mendes', 'Diogo Mendes é co-criador do Estúdio Molotov HQ, coletivo que faz quadrinhos com críticas ao capitalismo, focando na realidade da classe trabalhadora do ABC Paulista e de São Paulo. Desde 2020, o Molotov HQ lança quadrinhos sobre temas sociais e políticos por meio de financiamento coletivo, retratando personagens reais, lutas contra injustiças e a sociedade brasileira.', 'diogo-mendes.webp', 'Homem de barba um pouco grisalha com cabelo até a altura do pescoço e com a mão direita levantada'),
	(5, 'Bira Dantas', 'Bira Dantas, nascido em São Paulo, é um nome consagrado nos quadrinhos, ilustrações e charges no Brasil, com carreira iniciada em 1979. Foi desenhista da revista Os Trapalhões e colaborou com veículos como Pasquim21, Folha da Tarde e Megazine. É conhecido também por adaptar clássicos literários, como Memórias de um Sargento de Milícias e Dom Quixote, para os quadrinhos.', 'bira-dantas.webp', 'Homem de óculos de cabelos cacheados e barba grisalhos segurando um livro com o titulo "o silêncio sobre Gaza e o grito dos chargistas"'),
	(6, 'Gilmar', 'Gilmar, o Cartunista das Cavernas, é um renomado cartunista com 12 livros de tiras, quadrinhos e charges publicados, sendo seis distribuídos em bibliotecas públicas. Premiado com o HQ MIX, o Prêmio Vladimir Herzog e o Grand Prix Internacional De La Presse Étrangère, suas charges, muitas críticas ao governo Bolsonaro, foram expostas no Festival Internacional de Desenho de Imprensa em 2021.', 'gilmar.webp', 'Homem de óculos de cabelos e barba grisalhos com a mão direita levantada em um gesto como se fosse ajustar os óculos'),
	(8, 'Yuri Andrey', 'Yuri Andrey é jornalista, escritor e quadrinista. Roteirista da graphic novel Fujie e Mikito, que retrata uma família de imigrantes japoneses, obra finalista do Prêmio Jabuti e medalhista de bronze no Prêmio Internacional de Mangá, oferecido pelo governo japonês. Organizou a coletânea Crônicas da Augusta, contos eróticos. É também um dos sócios fundadores da Poc Con, maior evento de quadrinhos e cultura pop de artistas LGBTQIAPN+ da América Latina.', 'yuri-andrey.webp', 'Homem careca e barbado usando camiseta com palmeiras desenhadas'),
	(9, 'Dalila (Fiapo)', 'Dalila, conhecida como Fiapo, é uma talentosa ilustradora digital que encontra inspiração no cotidiano e no universo geek. Seus trabalhos capturam a beleza dos momentos simples da vida, misturando nostalgia com criatividade. Com seu estilo único, Dalila traz à vida personagens e paisagens que transitam entre o comum e o extraordinário, tornando cada arte uma celebração visual.', 'dalila.webp', 'Mulher de cabelos cacheados usando óculos arredondados acenando com a mão e ao seu lado vários broches'),
	(10, 'Al Stefano', 'Al Stefano é ilustrador e quadrinista com mais de 30 anos de carreira, atuando para as principais editoras e agências de publicidade do Brasil. Seu portfólio inclui ilustrações para livros didáticos, literatura, animação e storyboards. Além disso, ministra aulas de desenho e quadrinhos, tendo lecionado na Quanta Academia de Artes e atualmente na HQ em FOCO.', 'stefano.webp', 'Homem de de barba e cabelos grisalhos usando óculos de formato retangular com diversos livros em uma mesa atrás dele'),
	(11, 'Clemira', 'Clemira, conhecida como Guaxinim Voador, é uma talentosa ilustradora e pixel artista cujas criações são inspiradas por referências de games e séries. Suas obras, marcadas por cores vibrantes e detalhes minuciosos, evocam um mundo de aventura e fantasia. A paixão de Clemira pela cultura pop e pela estética pixelada se reflete em cada trabalho, combina nostalgia e imaginação em peças que encantam.', 'clemira.webp', 'Mulher com cabelo preto longo e franja, usando maquiagem e suéter claro, olhando para a câmera com expressão séria'),
	(12, 'Daniel Esteves', 'Daniel Esteves é roteirista, professor e editor do selo Zapata Edições. Com mais de 20 anos de carreira, escreveu mais de 2 mil páginas de HQs, abrangendo gêneros como aventura, ficção científica, policial e terror. Suas obras mais conhecidas incluem Último Assalto, Sobre o Tempo em que Estive Morta, Fronteiras, KM Blues, São Paulo dos Mortos e Nanquim Descartável.', 'daniel-esteves.webp', 'Homem com cabelo cacheado escuro e barba cheia, sorrindo, usando camiseta escura'),
	(13, 'Paulo Batista', 'Paulo Batista, 56 anos, é cartunista e editor com uma longa trajetória. Desde os anos 1980, ele produziu quadrinhos para revistas como Animal e Chiclete com Banana e venceu o concurso de novos cartunistas da Folha de São Paulo em 1989. Atualmente, ilustra livros e colabora com o portal Brasil de Fato.', 'paulo-batista.webp', 'Homem com barba curta e bigode, usando boné e camiseta azul, posando em frente a uma parede com ilustração'),
	(14, 'Rebeca Armus', 'Rebeca Armus é uma talentosa quadrinista e ilustradora que cria arte para livros infantis, jogos de tabuleiro e cartas. Com mais de 300 tirinhas e o prêmio literário do Bunkyo na categoria mangá, ela lançou o mangá BTS 112 em 2018 e co-escreveu Maria Usagi - Um Cordel em Mangá, também premiado. Durante a pandemia, Rebeca publicou mais de 100 tirinhas no Instagram para seu novo projeto, Damian Wayne.', 'rebeca-armus.webp', 'Mulher sorridente com cabelo curto cacheado, óculos redondos e brincos, posando ao ar livre'),
	(15, 'Vivi Munhoz', 'Vivi Melancia, formada em Artes Plásticas com especialização em História da Arte e Quadrinhos, aborda temas como educação, relações humanas e cotidiano familiar em suas obras. Seu primeiro trabalho, a webcomic Filha, Mãe e Avó, foi publicado fisicamente, e sua graphic novel Afeto venceu o 39º prêmio Angelo Agostini. Hoje, Vivi cria histórias para formatos físicos e digitais em várias línguas.', 'vivi-munhoz.webp', 'Mulher sorridente com lenço rosa na cabeça e blusa vermelha, em ambiente interno'),
	(16, 'Ede Galileu', 'Ede Galileu é ilustrador, arte-educador e quadrinista, com mais de 15 anos de experiência editorial e publicitária. Produz HQs desde os 14 anos, tendo lançado sua primeira HQ independente em 2009 e, desde então, publicou sete quadrinhos autorais. Atualmente, dedica-se ao personagem Homem-Chiclete, que já possui duas edições publicadas e mais duas previstas para este ano.', 'ede-galileu.webp', 'Homem sorridente com barba, óculos e boina colorida, posando diante de uma arte ilustrada colorida'),
	(17, 'Guilherme Feliciano', 'Gui Feliciano, quadrinista de Taboão da Serra, atua na cena de quadrinhos independentes desde 2018, quando integrou o coletivo Seca de Nanquim. Hoje, dedica-se integralmente à arte e recentemente financiou sua primeira campanha no Catarse para lançar O Panda e o Porta-Retrato, um quadrinho de colorir infantojuvenil com previsão de lançamento para 2024. Gui explora temas variados em suas histórias, de romances escolares a aventuras fantasiosas.', 'gui-feliciano.webp', 'Homem com expressão neutra, cabelo escuro curto, posando diante de uma parede com desenhos'),
	(19, 'Marcos Venceslau', 'Marcos Venceslau é artista plástico, educador e quadrinista, criador do grupo Mafagafos e integrante dos coletivos premiados Subterrâneo e Quarto Mundo. Atualmente, lidera o grupo Quadrinhos Inquietos, voltado para HQs mudas e experimentais. Em suas obras, Venceslau explora temas variados e o formato abstrato, convidando o leitor a se tornar coautor das histórias. Ele é membro da AQC-ESP e já foi jurado do Proac três vezes.', 'marcos-venceslau.webp', 'Homem com cabelo escuro e expressão amigável, olhando para a câmera com leve sorriso'),
	(20, 'Douglas Docelino', 'Douglas Docelino, ilustrador e quadrinista de Carapicuíba, participou de coletâneas independentes e trabalhou com animação e quadrinhos, incluindo o clipe da cantora Iza e sua HQ Simone, lançada na PerifaCon e CCXP. Em 2024, ilustrou Herói, da editora Afrodynamic, e contribuiu para a animação Os Mistérios da Strong S.A.. Suas obras exploram temas de aventura, super-heróis e terror.', 'douglas-docelino.webp', 'Homem sorridente com óculos e barba, cabelo grisalho curto, em ambiente interno bem iluminado'),
	(21, 'Safira Lopes Machado', 'Safira Lopes Machado, publicitária, escritora e ilustradora, estreia nos quadrinhos com a HQ Penso, Logo Nada Sei, onde explora o hábito de pensar demais de maneira leve e divertida. Em suas tirinhas, ela utiliza terror, humor e sensualidade para abordar temas complexos, criando uma conexão com o leitor. A obra conecta mini histórias, trazendo conversas profundas e reflexões acessíveis, sempre com uma narrativa provocativa e bem-humorada.', 'safira-lopes.webp', 'Pessoa com cabelo liso e escuro, óculos de armação redonda e batom vermelho, olhando diretamente para a câmera'),
	(22, 'Digo Freitas', 'Digo Freitas iniciou sua carreira em 2010, produzindo tirinhas e HQs, e já foi indicado cinco vezes ao Troféu HQMIX e uma vez ao Troféu Angelo Agostini. Com mais de 1.200 tirinhas publicadas, incluindo algumas em livros didáticos, ele se destacou no cenário independente. Sua série Minha Vida de Cão, com histórias autobiográficas de humor, conta com mais de 10 mil seguidores no Instagram.', 'digo-freitas.webp', 'Homem sorridente com barba e cabelo escuro penteado para cima, posando em frente a um banner colorido'),
	(23, 'Jack Azulita', 'Jack Azulita, de Santa Isabel/SP, desenha desde pequeno e deixou o Design Gráfico para seguir sua paixão artística. Em 2020, lançou o livro infantil de terror Os Sonhos Roubados de Lucinda, onde uma garota enfrenta um monstro para recuperar seus sonhos. Também publicou O Menino que Desenha Monstros, história sobre um garoto que desenha monstros para escapar dos problemas, mas precisa enfrentar um para salvar sua professora.', 'jack-azulita.webp', 'Pessoa com cabelo curto escuro, óculos redondos e colar chamativo, posando em ambiente interno com janela ao fundo'),
	(24, 'Laura Han Jin', 'Laura Han Jin, muralista e estudante de Publicidade na Belas Artes, avançou sua carreira em 2023 ao criar seu primeiro quadrinho, Infinitos Dias Restantes, em parceria com uma amiga e colega de faculdade. Esse projeto não só destacou a dupla como promissoras criadoras no cenário artístico, como também rendeu o segundo lugar no concurso de quadrinhos da editora NVersos, com a publicação prevista para agosto de 2024.', 'laura-han.webp', 'Pessoa sorridente com cabelo curto e franja, usando óculos redondos, ao ar livre com vegetação ao fundo'),
	(25, 'Fernando DeP', 'Fernando DeP é quadrinista, ilustrador e colorista, conhecido por suas parcerias com a roteirista Nádia Freire em HQs como Brado Retumbante e Eu Sabia O Que Ia Acontecer, que estarão na FATECon HQs 2024. Também atua como capista e colaborador em projetos editoriais e fanzines, incluindo Itapezine: Estranhos Contos Brasileiros e títulos autorais como O Contrato do Diabo e Contos de Fernando Dep.', 'fernando-dep.webp', 'Homem com cabelo grisalho preso e barba, sorrindo em ambiente com luz vermelha e cartazes ao fundo'),
	(26, 'Marco A. Cortez', 'Marco A. Cortez é um renomado quadrinista e ilustrador brasileiro, com vasta experiência em animação. Foi ilustrador e coordenador de arte do Instituto Ayrton Senna – Senninha e sua Turma (1993-1998) e colaborou em produções como Gummi Bears e Aladdin da Disney, além de O Grilo Feliz. Também ilustrou para a Editora Globo, com destaque para Sítio do Picapau Amarelo.', 'marco-cortez.webp', 'Homem careca com barba e óculos, sorrindo amplamente em ambiente interno'),
	(27, 'Vavis', 'Vavis é uma artista freelancer, quadrinista e pintora, conhecida por suas ilustrações autorais, capas de livros e HQs. Em obras como Florescer, ela aborda temas como culpa, resiliência e aceitação, criando histórias que promovem acolhimento e identificação. Suas narrativas oferecem uma visão sensível sobre o autoconhecimento e a empatia, direcionadas a quem busca ser ouvido e compreendido.', 'vavis.webp', 'Pessoa de cabelos ruivos ondulados tirando uma selfie com celular espelhado, expressão neutra'),
	(28, 'Aya Andrade', 'Aya Andrade é uma artista visual, quadrinista e ilustradora de Campinas/SP, formada em Artes Visuais pela Belas Artes de São Paulo. Desde 2020, acumula mais de 20 participações em Artists Alley em eventos de cultura pop. Sua estreia nos quadrinhos foi com a coletânea Aventuras da Aya nº0, tirinhas que iniciou em 2009, aos 13 anos, para registrar seu cotidiano.', 'aya-andrade.webp', 'Pessoa sorridente com cabelo preto e mechas verdes, segurando um crachá e fazendo sinal de paz com a mão'),
	(29, 'Larissa Palmieri', 'Larissa Palmieri é roteirista, escritora, letrista e diagramadora, com uma paixão por ficção de gênero. Desde 2017, escreve histórias de terror, suspense, ação, ficção científica e aventura, publicando por editoras como Draco, Zapata Edições, Skript, Belzebooks, Estrela Cultural, além de projetos independentes.', 'larissa-palmieri.webp', 'Mulher sorridente com óculos e cabelo liso escuro, usando blusa vermelha, sentada em frente a janela com cortina branca'),
	(30, 'Alexandre Esquitini', 'Alexandre Esquitini é o fundador da Mistifório, uma editora independente dedicada a obras brasileiras que reúnem diversos artistas talentosos. A Mistifório usa a linguagem dos quadrinhos para inspirar e desafiar a imaginação dos leitores, criando obras divertidas, críticas e impactantes. A editora busca expandir os limites da narrativa gráfica, levando histórias cativantes e informativas para além do convencional.', 'alexandre-esquitini.webp', 'Homem com cabelo cacheado e barba cheia, sorrindo em frente a parede com revestimento bege'),
	(31, 'Régis Rocha', 'Régis Rocha, conhecido como Afrodinamic, é roteirista, ilustrador e editor que usa a arte digital para dar vida a histórias de aventura, fantasia e ficção científica, com foco em representatividade negra, diversidade e inclusão. Suas obras são marcadas pela criação de mundos positivos e heróis que inspiram, oferecendo ao público personagens com os quais possam se identificar e valorizando a identidade e diversidade cultural.', 'regis-rocha.webp', 'Homem com cabelo trançado e expressão séria, posando contra fundo branco com camiseta estampada'),
	(33, 'Federico de Aquino', 'Federico de Aquino, é um artista gráfico com 36 anos de experiência em ilustração, quadrinhos e design. Sua trajetória inclui fanzines, revistas seriadas e publicações independentes e digitais. Seu trabalho mais recente, Marino da Sonhadora, uma série de quadrinhos de aventura histórica, foi finalista do 35° Troféu HQMix, destacando-o como um dos grandes nomes dos quadrinhos independentes no Brasil.', 'federico-aquino.webp', 'Homem sorridente com barba e óculos, usando camiseta azul clara, posando ao ar livre com plantas ao fundo'),
	(34, 'Bruno Weber', 'Bruno Weber é desenhista e ilustrador, formado em Rádio e TV, que traz sua paixão pelo cinema para ilustrações e tirinhas nas redes sociais. Entre seus trabalhos estão a série Cenas Deslembradas de Filmes Esquecidos, tirinhas autobiográficas e quadrinhos com uma visão bem-humorada e crítica do cotidiano. Seu estilo combina humor e reflexão, conquistando um público fiel que aprecia suas interpretações criativas do dia a dia.', 'bruno-weber.webp', 'Homem sorridente com cabelo escuro e óculos, posando em frente a prateleiras de livros'),
	(36, 'Erik Blaz', 'Erik Blaz é um artista dedicado à cultura nerd e aos quadrinhos, com um estilo influenciado pelos comics americanos. Suas obras abrangem mashups criativos de personagens, filmes e games, e releituras de capas clássicas que prestam homenagem a grandes ícones. Fascinado pelo terror Lovecraftiano, Erik adiciona um toque sombrio e minucioso em suas criações, proporcionando uma experiência visual ótima.', 'erik-braz.webp', 'Homem de cabelos longos e loiros presos, barba clara, sorrindo em ambiente externo'),
	(37, 'Deivs Mello', 'Deivs Mello é um ilustrador talentoso e versátil, formado em Design Gráfico pela ETEC, com um portfólio de cursos na Quanta Academia de Artes. Sua arte se destaca em gêneros como aventura, fantasia, terror e histórias independentes. Deivs colaborou com o cineasta Chris Tex na WebComic Serrote, do universo Nerd of the Dead, e adaptou a música Bring me to Life, da banda Evanescence, em quadrinhos para o mercado internacional.', 'deivs-mello.webp', 'Homem com boné preto, óculos escuros e bigode, posando com expressão séria sobre fundo rosado'),
	(38, 'Lexy Soares', 'Lexy Soares é um quadrinista versátil, formado em cinema, conhecido por suas tiras humorísticas e histórias que combinam drama, suspense e humor. Sua web-tira Vida de Inspetor de Alunos, lançada em edição impressa em 2015, satiriza o cotidiano escolar e explora temas como bullying e as relações entre alunos e professores. No mesmo ano, lançou Leitmotiv, que mistura drama e comédia ao narrar as histórias entrelaçadas de três personagens.', 'lexy-soares.webp', 'Homem com barba e óculos, expressão neutra, posando em ambiente interno com pôster ao fundo'),
	(39, 'Felipe Manhães', 'Felipe Manhães é arquiteto e quadrinista carioca, conhecido por histórias que misturam aventura, fantasia, ficção científica e humor. Em 2018, começou nos quadrinhos com a série As histórias não contadas de Ed & A Frase Secreta e a webtira A Menina, o Gato e o ex-Gato, que combina humor e culinária. Desde 2019, participa de eventos, onde vende sua produção, com mais de 500 páginas em 8 revistas e 700 tiras.', 'felipe-manhaes.webp', 'Homem com cabelo curto cacheado e barba, sorrindo e apontando com o dedo, fundo branco'),
	(40, 'Magô Pool', 'Magô Pool é uma cartunista, roteirista e designer latino-americana que incorpora suas raízes caipiras e suburbanas em criações únicas. Atuando desde 2008, trabalhou com grandes marcas como Grupo Abril, MTV Brasil, Decatlhon, Leroy Merlin e Ambev. Com humor crítico e ácido, suas obras abordam temas políticos, reflexões sobre o corpo e a sociedade, trazendo um olhar questionador que desafia convenções e estimula o debate.', 'mago-pool.webp', 'Pessoa com cabelo cacheado e adorno de flores na cabeça, usando óculos escuros, posando em frente a uma parede azul'),
	(41, 'Maju Montero', 'Maju Montero é roteirista, ilustradora e escritora, formada em Letras pela USP, que se dedica aos quadrinhos desde 2019, após estudar na Quanta Academia de Artes. Em 2022, estreou na revista Café Espacial com "Resposta a um Idiota", uma adaptação da resposta de Dilma Rousseff a José Agripino Maia. Em 2023, lançou a HQ Pra onde vou e o zine Férias. Este ano, prepara-se para lançar sua nova HQ, Eu e as baratas.', 'maju-montero.webp', 'Pessoa com cabelo escuro curto e óculos, sorrindo, usando camiseta rosa e crachá, em ambiente com janelas ao fundo'),
	(42, 'Heavy & Salsa', 'Heavy & Salsa é um estúdio independente que cria conteúdos acessíveis e saudáveis, como livros, zines, quadrinhos, RPGs, documentários e audiocontos. Mesclando fantasia e realidade, suas obras refletem esperança, amor e sabedoria, unindo as experiências de Heavy em comunicação, games e audiovisual com a expertise de Salsa em ilustração, biologia e jornalismo científico para enriquecer suas narrativas criativas.', 'heavy-salsa.webp', 'Pessoa com cabelo preso e expressão animada, tirando selfie em ambiente externo com pessoas ao fundo'),
	(43, 'Israel Neto', 'Israel Neto é escritor, dramaturgo e roteirista, focado em ficção científica, romance e literatura juvenil com ênfase na cultura negra e afrofuturista. Autor de Amor Banto em Terras Brasileiras, Os Planos Secretos do Regime, Ancestral, e Não Podemos Esperar, também escreveu a peça Otelo, o Outro e roteirizou a série 3 ESÚS E O TEMPO e a graphic novel O Segredo do Sr. X, além das tirinhas da revista PBL.', 'israel-neto.webp', 'Homem calvo com barba, óculos e sorriso, com a mão no queixo, posando em frente a parede clara'),
	(44, 'Ronald Souz', 'Ronald Souz é ilustrador, cartunista e desenhista, reconhecido por seu estilo nostálgico que revive a essência dos anos 90. Criador do fanzine RETROZINE, ele traz à tona memórias e referências dessa década, homenageando a cultura pop, os games e as animações clássicas, conectando o público aos "bons tempos" dessa era icônica. Captura a nostalgia de uma geração, transformando lembranças em arte autêntica.', 'ronald-souz.webp', 'Homem sorridente com óculos, posando em frente a painel com ilustrações e letras coloridas'),
	(45, 'André Freitas', 'André Freitas, de São José dos Campos, SP, é roteirista, escritor e desenhista, formado em Desenho Industrial pela Faculdade de Belas Artes de São Paulo e em Quadrinhos e Ilustração pela Fábrica de Quadrinhos. Com vasta experiência no mercado editorial, ilustrou livros para editoras renomadas e co-editou a premiada revista Front da Editora Via Lettera, vencedora do Troféu HQMIX de Melhor Publicação Mix em 2007.', 'andre-freitas.webp', 'Homem com barba longa e cabelo preso, expressão séria, em ambiente interno com outras pessoas ao fundo'),
	(46, 'Grazi Diffonso', 'Grazi Diffonso, ilustradora e quadrinista de São Roque, SP, destaca-se por obras fofas e divertidas que abordam sentimentos profundos com humor e reflexões. Seu trabalho incentiva o autoconhecimento e ressoa com o público pelo equilíbrio entre leveza e profundidade. Criadora da série de tirinhas SinceriGrazi, Grazi utiliza sua própria experiência em narrativas autobiográficas, conquistando um público fiel nas redes sociais.', 'grazi-diffonso.webp', 'Mulher com cabelo cacheado castanho, sorridente, usando óculos e batom escuro, posando em frente a cortina clara');

-- Integrantes do grupo para página quem somos
CREATE TABLE IF NOT EXISTS `integrantes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `apelido` varchar(50) NOT NULL,
  `descricao` text NOT NULL,
  `ra` varchar(13) NOT NULL,
  `imagem` varchar(50) NOT NULL,
  `altImagem` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `integrantes` (`id`, `nome`, `apelido`, `descricao`, `ra`, `imagem`, `altImagem`) VALUES
	(1, 'Fabiano Ramos', 'Coder Otaku', '"Opa, Fabiano aqui! Tenho 29 anos, sou formado em Contabilidade, Administração e estudo atualmente Sistemas para Internet, na FATEC-SR. Amo música boa e sou muito fã de animes e séries. “One Piece” é meu anime favorito e “Supernatural” a minha série favorita. Também faço páginas HTML, algumas são legais. Quem sabe eu me torno um dev Front-End um dia... "', '2650832413012', 'fabiano.webp', 'Homem jovem de barba e cabelo curto e ondulado, vestindo camisa xadrez aberta sobre camiseta preta. Ele está ao ar livre à noite'),
	(2, 'João Pedro', 'Gamer Reviewer', '"João Pedro ou como é conhecido nacionalmente "JP" tem 30 anos, casado, clt e estudante de Sistemas para Internet, tem como hobby jogar e colecionar vídeo games e jogos de tabuleiro, fazer churrasco e drinks e contar piadas ruins"', '2650832413005', 'joao.webp', '"Homem de perfil, com cabelo curto e barba bem feita, usando óculos escuros e jaqueta jeans, olhando para o horizonte em uma varanda de prédio urbano."'),
	(3, 'Ana Lívia', 'Ex-Colunista da CHOQUEI', '"Sou a Ana Lívia, tenho 22 anos, moro em Ibiúna - SP com meus pais e meu gatinho Pollo. Atualmente estou no 2 semestre de sistemas na FATEC-SR, e trabalho como secretária em um consultório odontológico. Gosto muito de comer, de assistir séries e filmes, de sair me divertir, e de passar tempo fazendo tudo isso com minha namorada Laís, que tem um doguinho chamado Nico."', '2650832413030', 'ana.webp', 'Mulher jovem de cabelos lisos e escuros, usando óculos de grau, sorrindo ao lado de um cachorro pequeno e peludo, provavelmente da raça Shih-tzu.'),
	(4, 'Rafael Moraes', 'Pai de Família', '"Tenho 31 anos, sou casado e pai de uma princesinha (Manuella), trabalho na área de logística em uma empresa de São Roque e estudo na FATEC-SR. Tenho como hobbies praticar exercícios físicos, assistir séries e filmes."', '2650832413019', 'rafael.webp', 'Homem jovem de barba e cabelo escuro com corte degradê, vestindo camiseta preta, posando em frente a uma parede clara.'),
	(5, 'Cristiano Alves', 'Ditador das PRs', '"Tenho 18 anos, atualmente estudo Sistemas para Internet na FATEC-SR e tenho diversos hobbies, dentre eles: Skate, Twisty Puzzles, Sinuca, Violão, Xadrez e Games. Sou eclético, amo diversos estilos de músicas, adoro filmes e séries também. Se fosse escolher um filme seria “Jogador número 1” e série eu escolheria “La Casa de Papel”."', '2650832413008', 'cristiano.webp', 'Homem de cabeça levemente inclinada para cima, vestindo chapéu de palha com a palavra "MUCHOCHACHO" escrita.'),
	(6, 'Barbara Brito', 'Muito Criativa', '"Tenho 27 anos e sou estudante de Sistemas para Internet. Sou dedicada à área de programação e estou sempre em busca de ampliar meus conhecimentos técnicos e habilidades práticas. Meu foco é aprender e aplicar linguagens e frameworks modernos para desenvolver soluções digitais eficientes e bem projetadas. Gosto de unir funcionalidade e design para criar sistemas que atendam às necessidades de forma clara e objetiva."', '2650832413022', 'barbara.webp', 'Mulher jovem de cabelos lisos e loiros, com expressão serena, dentro de um carro');

-- Página Normas
CREATE TABLE IF NOT EXISTS `normas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `descricao` text NOT NULL,
  `imagem` varchar(50) NOT NULL,
  `altImagem` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `normas` (`id`, `titulo`, `descricao`, `imagem`, `altImagem`) VALUES
	(1, 'FUNÇÃO DO SITE', 'O portal FateconHQs foi desenvolvido para fornecer informações completas sobre o evento, incluindo programação, convidados, notícias e atividades. Nosso objetivo é oferecer uma experiência digital interativa e informativa, promovendo a cultura dos quadrinhos e da tecnologia.', 'funcao-site.webp', 'Um boneco miniatura do homem-aranha encima de uma mesa'),
	(2, 'ACESSO AO SITE', 'O acesso ao portal é gratuito e aberto ao público. Embora o site funcione 24 horas por dia, podem ocorrer falhas técnicas ou manutenções. O usuário deve garantir a proteção de seus dados pessoais. O uso indevido pode resultar em suspensão de acesso, conforme a Lei Geral de Proteção de Dados (LGPD).', 'acesso-site.webp', 'Uma pessoa com camiseta branca usando um celular'),
	(3, 'LICENÇA DE USO E CÓPIA', 'O conteúdo do portal FateconHQs é protegido por direitos autorais. A reprodução ou cópia do material, total ou parcial, só é permitida com autorização prévia da organização do evento, em conformidade com a Lei n° 9.610/18 e o Código Civil Brasileiro.', 'uso-e-copia.webp', 'uma ilustação de lâmpada com a letra C no meio, indicando o simbolo de copyright'),
	(4, 'OBRIGAÇÕES', 'Os usuários devem utilizar o portal de forma ética e responsável. É proibido o uso do site para fins ilícitos, ofensivos ou que possam comprometer a integridade da plataforma.', 'obrigacoes.webp', 'duas mãos se cumprimentando'),
	(5, 'TERMOS GERAIS', 'Estes termos podem ser alterados sem aviso prévio. É responsabilidade do usuário revisá-los regularmente. O uso contínuo do site após alterações significa aceitação dos novos termos. Durante a navegação, poderão ser apresentados hiperlinks para páginas internas ou sites externos relacionados ao evento.', 'termos-gerais.webp', 'uma mão com uma caneta assinando um papel');

-- Páginas e sua relação com os integrantes para página "quem somos"
CREATE TABLE IF NOT EXISTS `paginas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_integrante` int NOT NULL,
  `pagina` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `paginas` (`id`, `id_integrante`, `pagina`, `link`) VALUES
	(1, 1, 'Animes', 'entretenimento.php?page=Animes'),
	(2, 1, 'Séries', 'entretenimento.php?page=Series'),
	(3, 2, 'Games', 'games.php?page=Games'),
	(4, 3, 'Hqs', 'hqs.php?page=HQs'),
	(5, 3, 'Mangás', 'hqs.php?page=Mangas'),
	(6, 4, 'Atrações', 'atracoes.php?page=Atracoes'),
	(7, 5, 'Quem Somos?', 'quemsomos.php?page=Sobre'),
	(8, 5, 'Expositores', 'expositores.php?page=Expositores'),
	(9, 5, 'Normas de uso', 'normas.php?page=Normas'),
	(10, 6, 'Home', 'index.php?page=Home'),
	(11, 6, 'Inscrições', 'inscricoes.php?page=Inscricoes'),
	(12, 6, 'Contatos', 'contatos.php?page=Contatos');

-- Paginas HQs e mangás--
CREATE TABLE IF NOT EXISTS ArtigosHqsEMangas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    Categoria VARCHAR(10) NOT NULL,
    Titulo VARCHAR(30) NOT NULL,
    Paragrafo1 TEXT NOT NULL,
    Paragrafo2 TEXT NOT NULL,   
    Paragrafo3 TEXT NOT NULL

);

INSERT INTO ArtigosHqsEMangas (
    Categoria,
    Titulo,
    Paragrafo1,
    Paragrafo2,
    Paragrafo3
) VALUES (
    'HQS',
    'História Das HQs',
    'As histórias em quadrinhos (HQs) têm suas raízes no final do século XIX, quando surgiram nos jornais dos Estados Unidos. Inicialmente, eram tiras humorísticas publicadas para entreter leitores e, com o tempo, ganharam popularidade, especialmente entre o público jovem. Um marco importante desse período foi a criação do personagem Yellow Kid, em 1895, por Richard Outcault. A popularidade das tiras fez com que editores começassem a publicá-las em forma de revistas e livros, marcando o início da indústria das HQs.',
    'Nos anos 1930, a indústria de quadrinhos passou por uma transformação significativa com o lançamento de Superman pela DC Comics, em 1938. Este momento é amplamente reconhecido como o início da Era de Ouro das HQs, um período que viu o surgimento de super-heróis icônicos, como Batman e Mulher-Maravilha. Essas histórias capturaram a imaginação do público e se tornaram símbolo de escapismo e entretenimento durante tempos difíceis, como a Grande Depressão e a Segunda Guerra Mundial.',
    'Após a Era de Ouro, as HQs continuaram a evoluir, explorando novos temas e gêneros. Nos anos 1960, a Marvel Comics, com o trabalho de criadores como Stan Lee e Jack Kirby, introduziu super-heróis mais humanos e complexos, como Homem-Aranha e X-Men, ampliando ainda mais o público leitor. Desde então, as HQs se tornaram uma forma de arte amplamente respeitada, influenciando outras mídias, como cinema, televisão e videogames, e cultivando uma base de fãs global que segue crescendo até os dias de hoje.'
),
(
    'MANGÁS',
    'História Dos Mangás',
    'Os mangás, histórias em quadrinhos japonesas, têm uma longa tradição que remonta ao período Edo (1603-1868) com as ukiyo-e (gravuras do "mundo flutuante") e os primeiros livros ilustrados, que combinavam narrativa e arte. No entanto, o estilo de mangá moderno começou a se desenvolver após a Segunda Guerra Mundial, quando artistas japoneses foram influenciados por quadrinhos ocidentais, especialmente pela Disney. Entre os pioneiros do mangá moderno está Osamu Tezuka, considerado o "pai do mangá", que criou obras populares como Astro Boy.',
    'Durante os anos 1960 e 1970, o mangá expandiu-se para vários gêneros e públicos, desde mangás de ação e aventura para meninos (shonen) até romances para meninas (shojo), além de gêneros mais adultos. Essa diversidade ajudou a tornar o mangá uma parte integral da cultura popular japonesa, com histórias que abordam temas complexos e emocionais, atraindo leitores de todas as idades. O período também marcou a profissionalização do mercado de mangás, com o surgimento de revistas especializadas, como a Weekly Shonen Jump.',
    'Nos anos 1990, o mangá ganhou popularidade internacional, impulsionado por traduções e adaptações de animes, que são séries de animação baseadas em mangás. Hoje, o mangá é um fenômeno global, com fãs em todo o mundo e uma ampla variedade de estilos e temas. Seu impacto é evidente não só na literatura e no entretenimento, mas também na moda e na arte, consolidando o mangá como uma forma única e influente de expressão cultural japonesa.'
);

CREATE TABLE IF NOT EXISTS ImagensArtigosHqsEMangas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    Categoria VARCHAR(10) NOT NULL,
    IdArtigo INT NOT NULL,
    Imagem1 VARCHAR(50) NOT NULL,
    Imagem2 VARCHAR(50) NOT NULL,
    Imagem3 VARCHAR(50) NOT NULL,
    Imagem4 VARCHAR(50) NOT NULL,
    Imagem5 VARCHAR(50) NOT NULL,
    AltImagem1 VARCHAR(255) NOT NULL,
    AltImagem2 VARCHAR(255) NOT NULL,
    AltImagem3 VARCHAR(255) NOT NULL,   
    AltImagem4 VARCHAR(255) NOT NULL,
    AltImagem5 VARCHAR(255) NOT NULL,
    FOREIGN KEY (idArtigo) REFERENCES ArtigosHqsEMangas(id)
);

INSERT INTO ImagensArtigosHqsEMangas (
    Categoria,
    IdArtigo,
    Imagem1,
    Imagem2,
    Imagem3,
    Imagem4,
    Imagem5,
    AltImagem1,
    AltImagem2,
    AltImagem3,
    AltImagem4,
    AltImagem5
) VALUES (
    'HQS',
    1,
    'pagina_hq_1.jpg',
    'pagina_hq_2.jpg',
    'batman_200x200.jpg',
    'superman_200x200.jpg',
    'homem_aranha_200x200.jpg',
    'Capa do álbum \'Operation: Doomsday\' do rapper MF DOOM, sobre quadrinhos da Marvel com personagens como Capitão América, Homem de Ferro e outros heróis em cenas de ação clássicas.',
    'Expositor de uma loja de quadrinhos com diversas HQs clássicas da Marvel, incluindo títulos como Fantastic Four, Silver Surfer, The Avengers, Captain Marvel, Thor e Strange Tales, vistos através de uma vitrine de vidro.',
    'BATMAN',
    'SUPERMAN',
    'HOMEM-ARANHA'
),
(
    'MANGÁS',
    2,
    'pagina_manga_1.jpg',
    'pagina_manga_2.jpg',
    'naruto.jpg',
    'goku_redondo.png',
    'luffy.jpg',
    'Página de mangá em preto e branco de Naruto, mostrando Itachi Uchiha emergindo da água e encarando adversários, enquanto vários membros da Akatsuki aparecem ao fundo, surpreendidos, em meio a efeitos visuais de explosão e respingos.',
    'Página de mangá em preto e branco de Naruto, mostrando Naruto preparando um Rasengan enquanto corre em direção ao inimigo. Ao lado, Sasuke aparece ativando seu Chidori, ambos focados no combate em um cenário de destruição.',
    'NARUTO',
    'GOKU',
    'LUFFY'
);

CREATE TABLE IF NOT EXISTS Hqsseries (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(30) NOT NULL,
    NomeAutor VARCHAR(30) NOT NULL,
    Paragrafo1 TEXT NOT NULL,
    Imagem VARCHAR(50) NOT NULL,
    AltImagem VARCHAR(255) NOT NULL,
    LegendaImagem VARCHAR(50) NOT NULL,
    linkWeb VARCHAR(255) NOT NULL
);

INSERT INTO hqsseries (
    titulo,
    NomeAutor,
    Paragrafo1,
    Imagem,
    AltImagem,
    LegendaImagem,
    linkWeb
) VALUES (
    'Sandman',
    'Neil Gaiman',
    'Sandman é uma série de histórias em quadrinhos criada por Neil Gaiman para a Vertigo, selo da DC Comics. A série segue Morpheus, o Senhor dos Sonhos, enquanto ele explora temas profundos como sonhos, morte, destino e desejo. Sandman é aclamada por sua narrativa complexa e foi uma das primeiras HQs a ser reconhecida pela crítica literária, tornando-se um clássico cult e influenciando diversos trabalhos na cultura pop.',
    'sandman.jpg',
    'Capa de Sandman: Prelúdios e Noturnos - Edição 30 anos. Fundo com fumaça verde e tecido vermelho esvoaçante, com um medalhão místico ao lado. Nome de Neil Gaiman e dos autores em destaque na parte superior',
    'Capa Sandman 30 anos',
    'https://sandman.fandom.com/pt-br/wiki/Quadrinhos_do_Universo_Sandman'
),
(
    'The Boys',
    'Garth Ennis e Darick Robertson',
    'The Boys é uma série de quadrinhos criada por Garth Ennis e Darick Robertson. A trama subverte o conceito tradicional de super-heróis, retratando um grupo, conhecido como "The Boys", que monitora e combate super-heróis corruptos. A HQ é conhecida por seu humor ácido, violência e crítica à idolatria de figuras públicas, oferecendo uma visão sombria e satírica do universo dos super-heróis.',
    'the_boys.jpg',
    'Capa do quadrinho "The Boys: Herogasm" com uma multidão de super-heróis e personagens. O título aparece em vermelho no topo, com o subtítulo "Herogasm" abaixo. O fundo tem palmeiras e céu azul.',
    'The Boys Volume 05',
    'https://www.galaxiadosquadrinhos.com.br/2020/10/the-boys.html'
),
(
    'The Umbrella Academy',
    'Gerard Way',
    'The Umbrella Academy é uma série de quadrinhos criada por Gerard Way e ilustrada por Gabriel Bá. A história segue uma família disfuncional de irmãos adotivos com superpoderes, reunidos após a morte de seu pai adotivo para investigar mistérios e impedir um apocalipse iminente. A HQ mistura humor, drama e ação, oferecendo uma abordagem única e sombria do universo dos super-heróis',
    'the_umbrella_academy.jpg',
    'Capa da HQ “The Umbrella Academy: Hotel Oblivion”, mostrando um personagem de casaco preto segurando um hotel estilizado no peito; fundo claro com moldura roxa.',
    'The Umbrella Academy Vol. 08',
    'https://www.ultimatodobacon.com/the-umbrella-academy-hqs'
),
(
    'The Walking Dead',
    'Robert Kirkman',
    'The Walking Dead é uma série de quadrinhos criada por Robert Kirkman, com arte de Tony Moore e posteriormente Charlie Adlard. A trama acompanha um grupo de sobreviventes em um mundo pós-apocalíptico tomado por zumbis, explorando tanto o horror dos mortos quanto os desafios da humanidade em condições extremas. Focada em temas de sobrevivência, moralidade e relações humanas, a HQ se tornou um marco no gênero e inspirou uma popular adaptação televisiva.',
    'the_walking_dead.jpg',
    'Capa da HQ “The Walking Dead Volume 31”, com fundo vermelho, título em destaque no topo e cenas de confronto entre personagens e zumbis ao centro e base da imagem.',
    'The Walking Dead Volume 31',
    'https://walkingdeadbr.com/hqs/'
);


CREATE TABLE IF NOT EXISTS MangasSeries (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    NomeAutor VARCHAR(30) NOT NULL,
    Paragrafo1 TEXT NOT NULL,
    Imagem VARCHAR(50) NOT NULL,
    AltImagem VARCHAR(255) NOT NULL,
    LegendaImagem VARCHAR(50) NOT NULL,
    linkWeb VARCHAR(255) NOT NULL
);


INSERT INTO MangasSeries (
    titulo,
    NomeAutor,
    Paragrafo1,
    Imagem,
    AltImagem,
    LegendaImagem ,
    linkWeb
)VALUES (
    'One Piece',
    'Eiichiro Oda',
    'One Piece é um mangá criado por Eiichiro Oda, que acompanha as aventuras de Monkey D. Luffy e sua tripulação de piratas em busca do lendário tesouro, o "One Piece". Publicado desde 1997, é conhecido por sua narrativa envolvente, personagens únicos e temas de amizade, liberdade e sonhos. Com uma enorme popularidade mundial, One Piece é um dos mangás mais vendidos de todos os tempos e inspirou uma série de anime e diversos produtos derivados.',
    'one_piece.jpg',
    'Capa colorida do mangá One Piece Vol. 106, com o logo da série no topo e personagens em ação em um cenário vibrante e dinâmico, incluindo Luffy, Chopper e outros tripulantes do navio.',
    'One Piece vol.108',
    'https://onepiece.fandom.com/pt/wiki/One_Piece_(Mang%C3%A1)'
),
(
    'Naruto Shippuden',
    'Masashi Kishimoto',
    'Naruto Shippuden é a continuação do mangá Naruto, criado por Masashi Kishimoto. A história segue Naruto Uzumaki, agora mais velho e determinado a proteger seus amigos e se tornar Hokage, enfrentando novos desafios e ameaças perigosas, como a organização Akatsuki. Com uma trama que explora temas de perseverança, amizade e redenção, Naruto Shippuden conquistou fãs ao redor do mundo e se tornou um dos mangás e animes mais populares da história.',
    'naruto_shipuden.jpg',
    'Capa do mangá Naruto Shippuden vol. 41, com Naruto em destaque fazendo selo de mão e, abaixo, os membros da Akatsuki em segundo plano. Fundo em tons escuros e laranja com o nome do autor Masashi Kishimoto.',
    'Naruto Shippuden vol.41',
    'https://naruto.fandom.com/pt-br/wiki/Naruto:_Shipp%C5%ABden'
),
(
    'Dragon Ball Z – A Lenda de Son Goku',
    'Akira Toriyama',
    'Dragon Ball Z é a segunda fase do mangá Dragon Ball, criado por Akira Toriyama. A história acompanha Goku e seus amigos enfrentando inimigos poderosos para proteger a Terra e o universo, enquanto Goku se torna um guerreiro cada vez mais forte. Com batalhas épicas e personagens icônicos como Vegeta, Freeza e Cell, Dragon Ball Z revolucionou o gênero de ação e se tornou um marco na cultura pop mundial, influenciando gerações de fãs e outras obras de anime e mangá.',
    'dragon_ball.jpg',
    'Capa do mangá “Dragon Ball Z vol. 01”, com Goku usando jaqueta laranja e segurando um bastão, sentado em uma moto vermelha. O logo está no topo e o nome do autor, Akira Toriyama, aparece na parte inferior.',
    'Dragon Ball Z vol.01',
    'https://blogbbm.com/databook/dbz/'
),
(
    'Death Note',
    'Tsugumi Ohba',
    'Death Note é um mangá criado por Tsugumi Ohba e ilustrado por Takeshi Obata. A trama gira em torno de Light Yagami, um estudante que encontra um caderno com o poder de matar qualquer pessoa cujo nome seja escrito nele. Com temas de justiça, moralidade e poder, Death Note explora a batalha psicológica entre Light e o detetive L, criando uma história de suspense que se tornou extremamente popular e influente no mundo dos mangás e animes.',
    'death_note.jpg',
    'Capa do mangá “Death Note vol. 06”, com Light Yagami em destaque ao centro, de braços abertos, e o shinigami Ryuk ao fundo. O fundo tem tons roxos e detalhes gráficos estilizados.',
    'Death Note vol.06',
    'https://deathnote.fandom.com/pt/wiki/Death_Note_(s%C3%A9rie)'
);

CREATE TABLE IF NOT EXISTS HqsFilmes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(30) NOT NULL,
    Paragrafo1 TEXT NOT NULL,
    Imagem VARCHAR(50) NOT NULL,
    AltImagem VARCHAR(255) NOT NULL,
    LegendaImagem VARCHAR(50) NOT NULL
);

INSERT INTO HqsFilmes (
    titulo,
    Paragrafo1,
    Imagem,
    AltImagem,
    LegendaImagem
) VALUES (
    'Deadpool',
    'Deadpool é uma série de quadrinhos da Marvel que acompanha o anti-herói irreverente e mercenário Wade Wilson. Conhecido por seu humor sarcástico, habilidade de quebra da quarta parede e seu fator de cura, Deadpool se tornou um personagem único no universo Marvel. Criado por Fabian Nicieza e Rob Liefeld, Deadpool mistura ação com comédia, frequentemente zombando dos clichês dos próprios quadrinhos. ',
    'deadpool.png',
    'Capa da HQ “Deadpool Vol.01”, com o personagem Deadpool em destaque no centro, em pose dinâmica com espadas nas costas, sobre fundo laranja e roxo com detalhes de ação e o título em letras grandes e coloridas.',
    'Deadpool Vol.01'
),
(
    'Venom',
    'Venom é uma série de quadrinhos da Marvel que segue o anti-herói simbiótico que foi, originalmente, um dos maiores vilões do Homem-Aranha. O personagem Venom, um simbionte alienígena que se liga ao jornalista Eddie Brock, possui habilidades incríveis, como força sobre-humana e regeneração. Criado por David Michelinie e Todd McFarlane, Venom é conhecido por seu visual sombrio e moralidade ambígua, tornando-se um dos personagens mais populares e complexos da Marvel.',
    'venom.png',
    'Capa da HQ “Venom Vol.01”, com o personagem Venom em primeiro plano exibindo os punhos cerrados e vários outros simbiontes ao fundo, sobre fundo escuro com o título em letras brancas e estilo agressivo.',
    'Venom vol.01'
),
(
    'V de Vingança',
    'V de Vingança é uma HQ escrita por Alan Moore e ilustrada por David Lloyd, que retrata uma Inglaterra distópica sob regime totalitário. A trama segue V, um vigilante mascarado que luta contra a opressão e busca inspirar a população à revolta. Com temas de liberdade, justiça e resistência, a obra é considerada uma crítica poderosa aos abusos de poder e à perda de direitos civis.',
    'v_vingança.png',
    'Capa da HQ “V de Vingança”, com o rosto sorridente do personagem V usando a icônica máscara de Guy Fawkes em destaque, e o título em vermelho no topo junto aos nomes dos autores Alan Moore e David Lloyd.',
    'HQ V De Vingança'
),
(
    'Hellboy',
    'Hellboy é uma HQ criada por Mike Mignola, centrada em um demônio invocado na Terra durante a Segunda Guerra Mundial. Trabalhando como investigador do paranormal, Hellboy luta contra ameaças sobrenaturais, lidando com seu destino sombrio e buscando a redenção. Com traços sombrios e inspirados no horror, a série é conhecida por sua atmosfera única e mitologia rica.',
    'hellboy.png',
    'Capa da HQ “Hellboy: A Tempestade Vol.01”, com Hellboy em destaque empunhando uma espada, cercado por crânios e sombras, sob um fundo escuro com o título em vermelho no topo.',
    'Hellboy The Storm Vol.01'
);


CREATE TABLE IF NOT EXISTS MangasFilmes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(30) NOT NULL,
    Paragrafo1 TEXT NOT NULL,
    Imagem VARCHAR(50) NOT NULL,
    AltImagem VARCHAR(255) NOT NULL,
    LegendaImagem VARCHAR(50) NOT NULL
);

INSERT INTO MangasFilmes (
    titulo,
    Paragrafo1,
    Imagem,
    AltImagem,
    LegendaImagem
)VALUES (
    'Akira',
    'Akira é um mangá de ficção científica criado por Katsuhiro Otomo. A história se passa em uma Tóquio futurista e segue Kaneda e Tetsuo, amigos envolvidos em um projeto governamental secreto que desencadeia poderes psíquicos em Tetsuo. Com temas de poder, controle e apocalipse, Akira é um marco dos quadrinhos japoneses, conhecido por sua arte detalhada e impacto cultural, especialmente após sua adaptação em filme animado, que ajudou a popularizar o mangá no Ocidente.',
    'akira_vol_01.jpg',
    'Capa do mangá “Akira Vol.01”, com o título em letras grandes e pretas no topo, e ilustração de personagens em cena de ação sobre fundo vermelho, incluindo Kaneda próximo a uma moto caída. Nome do autor Katsuhiro Otomo em destaque.',
    'Akira vol.01'
),
(
    'Ichi the Killer',
    'Ichi the Killer é um mangá criado por Hideo Yamamoto que explora temas de violência e psicologia sombria. A história segue Kakihara, um sádico membro da Yakuza, em sua busca pelo misterioso Ichi, um assassino extremamente violento. Conhecido por sua brutalidade e abordagem controversa, Ichi the Killer é um thriller psicológico que se aprofunda em temas de trauma e perversidade, sendo tanto aclamado quanto criticado por seu conteúdo intenso.',
    'ichi_the_killer_vol04.jpg',
    'Capa do mangá “Ichi The Killer vol.04”, com ilustração de um homem de terno com cicatrizes no rosto, fundo escuro com tons vermelhos e o título em destaque na parte inferior em letras brancas sobre fundo vermelho e preto.',
    'Ichi The Killer vol.04'
),
(
    'Rupan Sansei',
    'Lupin III (Rupan Sansei) é um mangá criado por Monkey Punch que acompanha as aventuras de Arsène Lupin III, um ladrão genial e neto do famoso ladrão francês Arsène Lupin. Com um toque de humor e ação, Lupin e seus parceiros realizam roubos ousados ao redor do mundo, sempre escapando da polícia e do incansável Inspetor Zenigata. Lupin III é um dos mangás mais icônicos do Japão, inspirando diversas adaptações em anime e filmes.',
    'rupan_sansei.jpg',
    'Capa da coleção “Lupin Sansei Best Collection”, com o personagem principal em destaque usando paletó vermelho e segurando uma arma, sobre fundo com cartazes de procurado e rostos de outros personagens da série.',
    'Rupan Sansei'
),
(
    'Gunnm',
    'Gunnm, também conhecido como Battle Angel Alita, é um mangá criado por Yukito Kishiro. A história se passa em um mundo cyberpunk e segue Alita, uma ciborgue encontrada em um ferro-velho por um cientista. Sem memória, mas com habilidades de combate impressionantes, Alita embarca em uma jornada para descobrir seu passado e seu propósito. Gunnm é conhecido por sua narrativa profunda e temas sobre identidade e sobrevivência, tornando-se uma obra cult no gênero de ficção científica.',
    'gunm_09.jpg',
    'Capa do mangá “Gunnm vol.09”, com a personagem Alita em destaque, de armadura azul e acorrentada pelos pulsos, sobre fundo verde. Título em letras grandes no topo e nome do autor Yukito Kishiro na parte inferior.',
    'Gunnm vol.09'
);

CREATE TABLE IF NOT EXISTS AutoresHQs (
    id INT PRIMARY KEY AUTO_INCREMENT,
    NomeAutor VARCHAR(30) NOT NULL,
    Paragrafo TEXT NOT NULL,
    Imagem VARCHAR(50) NOT NULL,
    AltImagem VARCHAR(255) NOT NULL
);

INSERT INTO AutoresHQs (
    NomeAutor,
    Paragrafo,
    Imagem,
    AltImagem
) VALUES (
    'Stan Lee',
    'Stan Lee foi um icônico escritor, editor e produtor da indústria dos quadrinhos, conhecido por revolucionar a Marvel Comics. Ele co-criou personagens lendários como Homem-Aranha, X-Men, Homem de Ferro e Quarteto Fantástico, tornando-os figuras centrais da cultura pop. Lee introduziu heróis mais humanos e com falhas, aproximando-os do público. Sua visão criativa e carisma transformaram a Marvel em um fenômeno global, e seu legado vive nos quadrinhos, filmes e séries que continuam a inspirar gerações.',
    'staan_lee',
    'Stan Lee sorrindo, usando óculos escuros e blazer bege sobre camisa escura. A imagem mostra o lendário criador de heróis da Marvel em um ambiente iluminado, com expressão simpática e acolhedora.'
),
(
    'Alan Moore',
    'Alan Moore é um roteirista britânico conhecido por transformar os quadrinhos em obras densas e reflexivas. Nascido em 1953, é autor de clássicos como Watchmen, V de Vingança e Do Inferno. Suas histórias abordam temas como poder, identidade e crítica social, com narrativas sombrias e complexas. Moore influenciou gerações de autores e consolidou os quadrinhos como forma de expressão literária e política. Mesmo afastado da indústria, seu legado permanece marcante na cultura pop e nas HQs modernas.',
    'alan_moore',
    'Alan Moore com expressão séria, usando blazer roxo e exibindo sua longa barba grisalha. Ele está sentado à mesa com as mãos apoiadas sobre um bastão, em frente a um painel da livraria Waterstones.'
),
(
    'Carl Barks',
    'Carl Barks foi um lendário quadrinista e roteirista americano, famoso por seu trabalho com personagens da Disney, especialmente Tio Patinhas e Pato Donald. Ele criou diversas histórias inesquecíveis e desenvolveu o universo dos patos, incluindo a cidade fictícia de Patópolis. Suas histórias combinavam humor, aventura e crítica social, estabelecendo-o como um dos maiores talentos dos quadrinhos e influenciando gerações de leitores e artistas.',
    'carl_barks',
    'Carl Barks sorrindo enquanto autografa algo, vestindo camisa bege com listras nos ombros e óculos. Ao fundo, quadros e pinturas sugerem um ambiente artístico e descontraído.'
),
(
    'Jerry Siegel',
    'Jerry Siegel foi um roteirista americano e, junto com o desenhista Joe Shuster, criou o Superman em 1938, personagem que revolucionou o mundo dos quadrinhos. A criação de Superman deu origem ao gênero dos super-heróis, influenciando a cultura pop e inspirando inúmeros heróis que vieram depois. Siegel é lembrado como um dos pioneiros das histórias em quadrinhos e um dos maiores nomes da era de ouro dos quadrinhos.',
    'jerry_siegel',
    'Jerry Siegel sorrindo, vestindo terno escuro com camisa clara e gravata listrada. A imagem mostra o co-criador do Superman em um ambiente interno, com expressão amigável e acolhedora.'
);


CREATE TABLE IF NOT EXISTS AutoresMangas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    NomeAutor VARCHAR(30) NOT NULL,
    Paragrafo TEXT NOT NULL,
    Imagem VARCHAR(50) NOT NULL,
    AltImagem VARCHAR(255) NOT NULL
);

INSERT INTO AutoresMangas (
    NomeAutor,
    Paragrafo,
    Imagem,
    AltImagem
) VALUES(
    'Akira Toriyama',
    'Akira Toriyama é um renomado mangaká japonês, famoso por criar Dragon Ball, uma das séries mais influentes do mundo dos mangás e animes. Nascido em 1955, Toriyama começou sua carreira com a série Dr. Slump, mas foi com Dragon Ball que ele alcançou fama mundial, redefinindo o gênero de ação e aventura. Seu estilo artístico único e narrativa cativante inspiraram várias gerações de fãs e artistas, tornando-o um ícone da cultura pop.',
    'akira_toriyama',
    'Akira Toriyama sorrindo, usando óculos de armação clara e camisa escura. Ao fundo, ilustrações coloridas de seus personagens, incluindo elementos de Dragon Ball, destacam seu estilo icônico.'
),
(
    'Masashi Kishimoto',
    'Masashi Kishimoto é o criador de Naruto, um dos mangás mais populares do mundo. Nascido no Japão em 1974, ele se inspirou em obras como Dragon Ball e Akira para desenvolver seu estilo. Lançado em 1999, Naruto conquistou milhões de fãs com suas lutas intensas, temas de superação e personagens marcantes. Kishimoto também atua como supervisor em Boruto, continuação da série. Seu trabalho ajudou a moldar o gênero shonen e deixou um impacto duradouro na cultura pop mundial.',
    'masashi_kishimoto',
    'Masashi Kishimoto em seu estúdio de trabalho, usando camisa xadrez e sorrindo levemente para a câmera. Ao fundo, há uma mesa com materiais de desenho, livros e objetos variados, sugerindo um ambiente criativo e artístico.'
),
(
    'Eiichiro Oda',
    'Eiichiro Oda é o criador de One Piece, um dos mangás mais vendidos e influentes de todos os tempos. Nascido no Japão em 1975, Oda começou sua carreira como assistente de outros mangakás antes de lançar One Piece em 1997. Conhecido por sua narrativa criativa, personagens carismáticos e um universo vasto e detalhado, Oda revolucionou o mundo dos mangás e conquistou uma base de fãs global. Sua dedicação à série, que dura mais de duas décadas, consolidou seu legado na cultura pop japonesa e mundial.',
    'eiichiro_oda',
    'Eiichiro Oda usando terno escuro com gravata prateada e uma rosa vermelha na lapela, sorrindo levemente em um ambiente interno iluminado, possivelmente durante um evento formal ou cerimônia.'
),
(
    'Kentaro Miura',
    'Kentaro Miura foi um renomado mangaká japonês, famoso por criar o épico de fantasia sombria Berserk. Publicado pela primeira vez em 1989, Berserk é celebrado por sua arte detalhada, personagens complexos e temas profundos de sofrimento, amizade e redenção. A obra de Miura influenciou fortemente o mundo dos mangás e outras mídias, incluindo videogames e filmes. Seu legado continua a impactar fãs ao redor do mundo, mesmo após seu falecimento em 2021.',
    'kentaro_miura',
    'Kentaro Miura, criador do mangá Berserk, sorrindo levemente, usando óculos e casaco bege. Ele segura um copo de cerveja em um ambiente com iluminação suave e fundo colorido.'
);


-- Tabela do artigo de Atrações
CREATE TABLE IF NOT EXISTS artigoatracoes(
    id INT PRIMARY KEY AUTO_INCREMENT,
    tituloartigo VARCHAR(200) NOT NULL,
    subtituloartigo VARCHAR(200) NOT NULL,
    paragrafo1 TEXT NOT NULL,
    paragrafo2 TEXT NOT NULL,
    paragrafo3 TEXT NOT NULL,
    imagem VARCHAR(50),
    alttext TEXT
);

-- Inserindo dados na tabela de atrações
INSERT INTO artigoatracoes(
    tituloartigo, subtituloartigo, paragrafo1, paragrafo2, paragrafo3, imagem, alttext
)VALUES('FATECon HQs 2024: A Maior Celebração da Cultura Geek e Quadrinhos de São Roque Está de Volta!', 'Presença de Grandes Nomes dos Quadrinhos Nacionais', 'A FATECon HQs 2024 retorna com tudo, prometendo ser a maior edição do evento até agora. Nos dias 20 e 21 de setembro, a cidade será palco de uma grande celebração da cultura geek e dos quadrinhos, com uma programação repleta de oficinas, palestras, mesas-redondas, cosplay, e o aguardado Concurso "Desenhe São Roque 2024", que promete revelar novos talentos.', 'A FATECon HQs 2024 também contará com a presença de grandes nomes do cenário nacional dos quadrinhos. Entre eles está Cecília Marins, quadrinista e jornalista, vencedora do 39º Prêmio Angelo Agostini. Cecília comandará uma oficina prática que vai mostrar como transformar histórias reais em quadrinhos, incentivando os participantes a explorar suas próprias narrativas, mesmo sem habilidades de desenho. Cecília é autora de reportagens em quadrinhos e uma das ilustradoras do documentário "AmarElo" de Emicida, indicado ao Emmy Internacional.', 'Outro grande destaque é a participação de Gilmar, o “Cartunista das Cavernas”, um dos mais influentes chargistas do Brasil. Autor de dez livros de tiras e quadrinhos, e vencedor de importantes prêmios, como o HQ MIX de melhor cartunista brasileiro e o Grande Prêmio no Salão de Humor de Piracicaba em 2024, Gilmar traz sua vasta experiência ao evento. Ao lado dele, estará o renomado chargista Bira Dantas, vencedor do Prêmio do Salão de Humor do Chipre e do Troféu HQ Mix, além de ser reconhecido como mestre dos quadrinhos nacionais pelo Prêmio Angelo Agostini. Juntos, eles participarão de uma mesa-redonda sobre os desafios e alegrias de ser um chargista no Brasil.
', 'fatecon_convite', 'Cartaz colorido em estilo de história em quadrinhos. Um personagem de quadrinhos com capa vermelha, óculos amarelos e mochila-foguete aparece voando à esquerda, com expressão animada. Dois balões de fala do personagem dizem: “Estamos voltando!” e “E vai ser lá no Manley Lane!”. O fundo tem rajadas em roxo escuro.');


-- Tabela da Seção de Atrações
CREATE TABLE IF NOT EXISTS secaoatracoes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    tituloatracao VARCHAR(100) NOT NULL,
    textoatracao TEXT NOT NULL,
    imagematracao VARCHAR(50) NOT NULL,
    alttextimagem VARCHAR(255) NOT NULL
);

-- dados da seção de atrações
INSERT INTO secaoatracoes (
    tituloatracao,
    textoatracao,
    imagematracao,
    alttextimagem
)
VALUES (
    'Concurso "Desenhe São Roque 2024"',
    'O Concurso "Desenhe São Roque 2024", convida alunos das escolas públicas e privadas da região a explorarem sua criatividade através do tema “São Roque, Cidade do Vinho”',
    'desenhesr',
    'Cartaz com os dizeres \'Desenhe São Roque!\' e ilustração do Cine São José ao fundo. Três desenhos coloridos estão sobrepostos, com estilos variados: urbano vibrante, céu estrelado à la Van Gogh e paisagem noturna em roxo e verde.'
),
(
    'Desfile Cosplay',
    'Preparados para a terceira edição do "Desfile Cosplay" da FATECon HQs, prepare sua melhor fantasia e venha fazer parte da nossa feira de Hqs do interior de São Paulo.',
    'desfilecosplay',
    'Cartaz do \'Desfile Cosplay\' com fundo vermelho escuro e três participantes fantasiados: Pyramid Head, uma personagem de cabelo branco e roupa futurista, e Sub-Zero, em pose de ação com espada.'
),
(
    'Oficina de Criação de Personagens',
    'Marco A. Cortez, conhecido por seus trabalhos para a Disney e a Turma do Senninha, conduzirá uma oficina prática que ensinará técnicas de design e narrativa visual.',
    'oficinapalestrante',
    'Artista sentado em mesa expositora com pôsteres e ilustrações de super-heróis, incluindo Batman. Em destaque, placa com o nome \'Marco A. Cortez\'. Ao fundo, painéis com artes coloridas e quadrinhos.'
),
(
    'Palestras e Mesa-Redonda',
    'No dia 21 teremos uma palestra sobre artes mecânicas de jogos de tabuleiro com o Paulo Santoro,alem de demonstraçao dos jogos para toda galera se divertir.',
    'palestrante',
    'Homem sorridente com crachá do evento \'FateconHQs\' posa em frente ao painel da Fatec São Roque. Ele veste camiseta preta e está diante de um fundo quadriculado branco e vinho com os logos da Fatec e do CPS.'
);


-- Tabela da seção de Autores da Fatecon
CREATE TABLE IF NOT EXISTS autoresparticipantes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nomeAutor VARCHAR(50) NOT NULL,
    fotoAutor VARCHAR(50) NOT NULL,
    altTextImagem VARCHAR(255) NOT NULL
);

-- Dados da seção de autores participantes
INSERT INTO autoresparticipantes (
    nomeAutor,
    fotoAutor,
    altTextImagem
) VALUES (
    'Rafael Marçal',
    'atracoes_rafaelmarcal',
    'Homem de pele clara, cabelo curto e barba escura. Usa camiseta preta e crachá no pescoço. Está sentado atrás de uma mesa com livros ilustrados e um banner amarelo com seu nome: Rafael Marçal.'
),
(
    'Cecília Martins',
    'atracoes_cecilia',
    'Mulher de pele clara, cabelos castanhos cacheados na altura dos ombros, franja e óculos redondos. Usa batom vermelho, camiseta estampada com a frase \'É muito bom ser sensível!\' e sorri para a câmera.'
),
(
    'Gilmar',
    'atracoes_gilmar',
    'Homem de pele clara, cabelo curto grisalho e barba por fazer. Usa óculos redondos e camiseta preta. Segura dois livros ilustrados da coletânea \'Gibi de Menininha – Clássicos do Brasil 2021\', em frente a uma parede de tijolos cinza.'
),
(
    'Regis Rocha',
    'atracoes_regis',
    'Homem de pele parda, cabelos longos em tranças finas e barba rala. Usa camiseta branca com estampa colorida em tons de vermelho, amarelo e marrom. Olhar calmo, posando diante de fundo neutro.'
),
(
    'Lillo',
    'atracoes_lillo',
    'Homem de pele clara, cabeça raspada e barba cheia com tons escuros. Usa óculos de armação preta e camiseta azul. Sorri levemente em frente a um banner colorido com o nome \'Lillo Parra\' ao fundo.'
),
(
    'Dalila Diniz',
    'atracoes_dalila',
    'Mulher de pele clara, cabelo curto e cacheado, usa óculos redondos e brincos. Veste camiseta preta e sorri ao lado de uma mesa com itens de papelaria e arte, como bottons, adesivos e cadernos ilustrados.'
),
(
    'Larissa',
    'atracoes_larissa',
    'Mulher de pele clara, cabelos longos e castanhos, usa óculos de armação preta e batom escuro. Veste blusa preta e colar, sorrindo atrás de uma bancada com livros e quadrinhos, incluindo \'Delirium Tremens\'.'
),
(
    'Magô Pool',
    'atracoes_mago',
    'Mulher de pele morena clara, com cabelo castanho escuro em tranças grossas. Sorri enquanto segura o livro \'Bicho Solto\'. Usa blusa preta e saia estampada com rostos de gatos.'
),
(
    'Bira Dantas',
    'atracoes_bira',
    'Homem de pele clara, cabelos cacheados grisalhos e barba branca. Usa óculos de armação escura e camiseta preta. Sorri enquanto segura dois livros, um deles da Revista Húmus com Ziraldo na capa.'
),
(
    'Maju Monteiro',
    'atracoes_maju',
    'Mulher de pele clara, cabelos castanhos presos, usa óculos escuros e brincos pequenos. Veste blusa vermelha estampada e jeans. Sorri em frente a uma mesa com zines e livros autorais, com crachá escrito \'Maju Monteiro\'.'
);


-- Tabela da Galeria de imagens
CREATE TABLE IF NOT EXISTS galeriaevento (
    id INT PRIMARY KEY AUTO_INCREMENT,
    imagem VARCHAR(50) NOT NULL,
    altText VARCHAR(255) NOT NULL
);

-- dados da galeria de imagens
INSERT into galeriaevento (
    imagem,
    altText
)
VALUES (
    'fatecon1',
    'Pessoas visitam estandes de artistas em um evento coberto, com mesas exibindo livros, quadrinhos e ilustrações. Ambiente movimentado e descontraído, com estrutura de galpão e iluminação natural.'
),
(
    'fatecon2',
    'Grande grupo de pessoas circula por estandes em um evento coberto com paredes brancas e teto metálico. Visitantes observam produtos em mesas enquanto o ambiente permanece cheio e animado.'
),
(
    'fatecon3',
    'Visitantes percorrem corredores lotados de um evento cultural em galpão coberto, observando mesas com artes, quadrinhos e pôsteres. Ambiente agitado com clima de feira criativa e interativa.'
),
(
    'fatecon4',
    'Pessoas participam de uma atividade com espadas de espuma em um evento coberto. Crianças e adultos interagem em área demarcada, enquanto outros visitantes observam ao fundo. Ambiente descontraído e familiar.'
),
(
    'fatecon5',
    'Autor conversa com visitante em mesa repleta de HQs e livros coloridos durante evento cultural. Pelúcia amarela decora a mesa. Ambiente informal, com outros expositores ao fundo.'
),
(
    'fatecon6',
    'Evento em galpão amplo reúne grande público em torno de estandes com livros, quadrinhos e produtos criativos. Pessoas circulam e interagem em ambiente coberto, iluminado e vibrante.'
),
(
    'fatecon7',
    'Visitantes observam e compram quadrinhos e livros em estandes lotados de um evento indoor. Ambiente movimentado com troca ativa entre expositores e público em clima de feira geek.'
),
(
    'fatecon8',
    'Dois expositores posam atrás de mesa com quadrinhos autorais e banner vermelho da Molotov HQ. Ambiente de feira cultural com outros artistas e visitantes ao fundo em clima descontraído.'
),
(
    'fatecon9',
    'Expositor sorridente segura HQ com capa de gato super-herói em mesa repleta de livros, adesivos e cardápio de preços. Ao fundo, visitantes circulam em ambiente de evento artístico e criativo.'
),
(
    'fatecon10',
    'Homem de terno cinza desenha em uma folha de papel em uma mesa. Ao lado, há uma ilustração colorida do personagem Space Ghost. A cena ocorre em um ambiente interno, com cadeiras e mesas ao fundo.'
);


-- Tabela do artigo de games
CREATE TABLE IF NOT EXISTS artigogamereview (
    id INT PRIMARY KEY AUTO_INCREMENT,
    tituloGame VARCHAR(200) NOT NULL,
    dataLancamento VARCHAR (50) NOT NULL,
    paragrafo1 TEXT NOT NULL,
    paragrafo2 TEXT NOT NULL,
    conclusaoReview TEXT NOT NULL,
    notaGame TINYINT NOT NULL,
    video VARCHAR(255) NOT NULL,
    legendaVideo VARCHAR(100) NOT NULL
);

-- Inserindo dados no artigo de games
INSERT INTO artigogamereview (
    tituloGame,
    dataLancamento,
    paragrafo1,
    paragrafo2,
    conclusaoReview,
    notaGame,
    video,
    legendaVideo
) VALUES (
    'Resident Evil 4 Remake',
    '24 de março de 2023',
    'Resident Evil 4 Remake é uma reimaginação moderna do clássico jogo de ação e sobrevivência da Capcom, lançado originalmente em 2005. Mantendo a essência que o consagrou como um marco na indústria dos games, o remake apresenta gráficos impressionantes em alta definição, com iluminação realista e texturas detalhadas que intensificam a atmosfera do jogo. A jogabilidade foi refinada com controles mais fluidos e mecânicas atualizadas, tornando a experiência mais dinâmica e acessível. A narrativa foi expandida, aprofundando personagens como Luis Sera, que ganha um papel mais significativo na trama. Leon S. Kennedy retorna como o protagonista, encarregado de resgatar a filha do presidente dos EUA em uma aldeia europeia dominada por um culto sinistro. Os personagens foram remodelados com maior realismo e maturidade, e Ashley, por exemplo, agora adota um visual mais prático e uma postura menos dependente, contribuindo ativamente com a exploração e descobertas. Uma ausência sentida é a campanha adicional de Ada Wong, Separate Ways, que não está presente no jogo base, indicando uma possível adição futura via DLC.',
    'O jogo combina elementos de horror, ação e exploração, entregando uma experiência intensa e envolvente. A dificuldade continua desafiadora, com o sistema adaptativo que se ajusta à habilidade do jogador, enquanto os inimigos estão mais agressivos e estrategistas, buscando cercar o jogador e atacar em grupo. Os chefes agora possuem até três formas mutantes, aumentando a tensão dos combates, embora um dos chefes do jogo original tenha sido removido da campanha principal — possivelmente reservado para o conteúdo adicional da Ada Wong. As mecânicas de combate foram aprimoradas, com novos inimigos e ambientes mais detalhados. O minijogo bônus Os Mercenários retorna com quatro mapas, onde o objetivo é eliminar 150 inimigos dentro de um limite de tempo. Luis Sera, agora jogável nesse modo, substitui Albert Wesker, presente na versão original.',
    'Resident Evil 4 Remake é um excelente exemplo de como remakes podem revitalizar clássicos amados, mantendo seu charme original enquanto atualizam aspectos técnicos e narrativos para atender às expectativas da nova geração. Com jogabilidade envolvente, atmosfera sombria e melhorias significativas em todos os aspectos, o jogo se destaca como uma reimaginação de alto nível. Embora a ausência de conteúdos adicionais no lançamento tenha sido notada por alguns fãs, é provável que a Capcom preencha essas lacunas com atualizações futuras ou DLCs pagos.',
    8,
    'https://www.youtube.com/embed/Id2EaldBaWw',
    'Trailer oficial de Resident Evil 4 Remake'
);


-- Tabela de personagens da semana
CREATE TABLE IF NOT EXISTS personagensdasemana (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    protagonistaImg VARCHAR(50),
    nomeProtagonista VARCHAR(50),
    personagemImg VARCHAR(50),
    nomePersonagem VARCHAR(50)
);

-- Inserindo dados na tabela de personagens da semana
INSERT INTO personagensdasemana (
    protagonistaImg,
    nomeProtagonista,
    personagemImg,
    nomePersonagem
) VALUES (
    'leon',
    'Leon S. Kennedy',
    'ashley',
    'Ashley Graham'
),
(
    NULL,
    NULL,
    'krauser',
    'Jack Krauser'
),
(
    NULL,
    NULL,
    'luis',
    'Luis Serra'
),
(
    NULL,
    NULL,
    'mendez',
    'Bitores Mendez'
),
(
    NULL,
    NULL,
    'ada',
    'Ada Wong'
),
(
    NULL,
    NULL,
    'saddler',
    'Osmund Saddler'
);


-- Tabela de jogos de Tabuleiro
CREATE TABLE IF NOT EXISTS jogostabuleiro (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nomeJogo VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    imagem VARCHAR(50) NOT NULL
);

-- Dados dos jogos de tabuleiro
INSERT INTO jogostabuleiro (
    nomeJogo,
    descricao,
    imagem
) VALUES (
    'Monopoly: O Clássico Jogo de Compra e Venda de Propriedades',
    'Monopoly é um jogo de tabuleiro icônico que simula a compra, venda e administração de propriedades. Criado em 1935, o objetivo é dominar o mercado, levando os oponentes à falência enquanto constrói um império imobiliário. Com cartas de sorte e reveses, negociação entre jogadores e estratégias financeiras, Monopoly é uma mistura de diversão e competição, tornando-se um dos jogos mais populares do mundo.',
    'monopoly'
),
(
    'Ticket to Ride: Uma Aventura Sobre Trilhos',
    'Ticket to Ride é um jogo de tabuleiro estratégico onde os jogadores competem para construir rotas ferroviárias conectando cidades em um mapa. Lançado em 2004, o jogo combina planejamento e tática, desafiando os participantes a completar objetivos secretos enquanto bloqueiam os planos dos oponentes. Simples de aprender, mas cheio de possibilidades, é um sucesso entre fãs de jogos de todas as idades.',
    'ticket'
),
(
    'Clue: O Jogo de Mistério e Dedução',
    'Clue é um clássico jogo de tabuleiro onde os jogadores investigam um assassinato para descobrir quem é o culpado, qual arma foi usada e onde o crime ocorreu. Por meio de pistas e dedução lógica, cada participante elimina possibilidades até resolver o mistério. Lançado em 1949, é um sucesso atemporal que combina estratégia, suspense e diversão.',
    'detetive'
);