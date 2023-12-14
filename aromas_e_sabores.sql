[09:31] CAROLAINE DOS SANTOS 1
create database aromas_e_sabores;
 
use aromas_e_sabores;

create table aromas_e_sabores.usuario ( 

	IdUsuario int unsigned not null unique auto_increment,

    nome varchar(255) not null,

    email varchar(255) not null,

    dataNascimento date,

    senha blob,

    genero tinyint,

    salt varchar(590) not null,

    dataInscricao datetime not null,

    uuid char(45),

    ativo tinyint not null,

    primary key (IdUsuario)

);
 
insert into usuario (nome, email, dataNascimento, senha, genero, salt, dataInscricao, uuid, ativo) 

values 

("Ana Julia", "anaju8384@gmail.com", "2000-05-21", "123", 1, SUBSTRING(MD5(RAND()),-25), "2023-02-17 13:14:00", uuid(),1),

("Ana Parisii", "anao_parisii@gmail.com", "1993-04-18", "nh0009", 1, SUBSTRING(MD5(RAND()),-25), "2020-02-17 14:30:00", UUID(), 1),

("Pedro Souza", "pedrosouza@gmail.com", "1987-09-25", "56435", 0, SUBSTRING(MD5(RAND()),-25), "2023-02-18 11:45:00", UUID(), 1),

("Mariana Bernardi", "marianabnadi@gmail.com", "2001-06-12", "admmns3764", 1, SUBSTRING(MD5(RAND()),-25), "2023-02-19 16:20:00", UUID(), 1),

("Lucas Lima", "lucaslima@gmail.com", "1998-02-28", "54433", 0, SUBSTRING(MD5(RAND()),-25), "2023-02-20 13:00:00", UUID(), 1),

("Carolina Ávila", "carolinaavlla@gmail.com", "1994-11-07", "0098hhytg", 1, SUBSTRING(MD5(RAND()),-25), "2023-02-21 19:30:00", UUID(), 1),

("Gustavo Pereira", "gustavopereira@gmail.com", "2000-08-14", "343erd", 0, SUBSTRING(MD5(RAND()),-25), "2023-10-22 10:45:00", UUID(), 1),

("Amanda Fernandes", "amandafernandes@gmail.com", "1989-03-21", "xTuh778", 1, SUBSTRING(MD5(RAND()),-25), "2023-02-23 15:15:00", UUID(), 1),

("Henrique Rocha", "henriquerocha@gmail.com", "1996-10-05", "5gght67", 0, SUBSTRING(MD5(RAND()),-25), "2022-02-24 12:40:00", UUID(), 1),

("Larissa Almeida", "larissaalmeida@gmail.com", "2003-05-30", "77ghfdss8", 1, SUBSTRING(MD5(RAND()),-25), "2023-02-25 18:10:00", UUID(), 1),

("Bruno Guera", "bruno.guerra@gmail.com", "1991-12-17", "244322fy", 0, SUBSTRING(MD5(RAND()),-25), "2023-02-26 09:25:00", UUID(), 1),

("Fernando Silva", "fernandosilva@gmail.com", "1986-07-23", "7675vgg", 1, SUBSTRING(MD5(RAND()),-25), "2023-02-27 14:50:00", UUID(), 1),

("Camila Oliveira", "camilaoliveira@gmail.com", "1997-04-09", "9898776dcfd", 0, SUBSTRING(MD5(RAND()),-25), "2023-02-28 11:05:00", UUID(), 1),

("Douglas Rinaldi", "douglasrinaldi02@gmail.com", "2002-09-13", "cvxfrt5434hh", 1, SUBSTRING(MD5(RAND()),-25), "2023-03-01 16:35:00", UUID(), 1),

("Tatiane Marques", "tatianemss@gmail.com", "1988-06-26", "23r1453fcu5ygf", 0, SUBSTRING(MD5(RAND()),-25), "2023-03-02 13:20:00", UUID(), 1),

("Carlos Silva", "carlos.silva@gmail.com", "1985-09-10", "abc123", 0, SUBSTRING(MD5(RAND()),-25), "2021-08-25 09:45:00", UUID(), 1),

("Roberta Andrade", "robertaand@gmail.com", "1998-12-05", "pass123", 1, SUBSTRING(MD5(RAND()),-25), "2022-01-30 18:22:00", UUID(), 1),

("Lucas Oliveira", "lucas.oli32@gmail.com", "1989-07-15", "securepwd", 0, SUBSTRING(MD5(RAND()),-25), "2022-11-12 11:10:00", UUID(), 1),

("Fernanda Gonzag", "fernanda.gz@gmail.com", "1995-03-28", "pwd456", 1, SUBSTRING(MD5(RAND()),-25), "2020-05-03 16:38:00", UUID(), 1),

("Ricardo Ferri", "ricardo.fe@gmail.com", "1977-06-22", "qwerty", 0, SUBSTRING(MD5(RAND()),-25), "2021-04-14 08:55:00", UUID(), 1),

("Camila Agostinni", "camagostinni@gmail.com", "1982-11-07", "pass789", 1, SUBSTRING(MD5(RAND()),-25), "2023-01-18 22:40:00", UUID(), 1),

("Pedro Gutierrez", "pedrogutz@gmail.com", "1990-02-14", "pwd789", 0, SUBSTRING(MD5(RAND()),-25), "2022-07-09 07:17:00", UUID(), 1),

("Mariana Baumer", "mariana455bamr@gmail.com", "1984-08-03", "abc456", 1, SUBSTRING(MD5(RAND()),-25), "2021-12-02 14:05:00", UUID(), 1);
 
 
create table aromas_e_sabores.receita (

IdReceita int unsigned not null unique auto_increment,

IdDificuldade int unsigned not null,

IdUsuario int unsigned not null,

IdCozinha int unsigned not null,

IdPreparo int unsigned not null,

titulo varchar(255) not null,

descricao tinytext,

imagem longblob,

primary key (IdReceita),

foreign key(IdDificuldade) references aromas_e_sabores.dificuldade(IdDificuldade),

foreign key(IdUsuario) references aromas_e_sabores.usuario(IdUsuario),

foreign key(IdCozinha) references aromas_e_sabores.cozinha(IdCozinha),

foreign key(IdPreparo) references aromas_e_sabores.preparo(IdPreparo)

);
 
insert into receita (IdDificuldade, IdUsuario, IdCozinha, IdPreparo, titulo, descricao, imagem) 

values  

(1, 1, 9, 1, "Ovo de páscoa trufado com brigadeiro caseiro", "Ao desembrulhar este tesouro culinário, você é imediatamente cativado pela beleza reluzente da casca de chocolate, que esconde um recheio trufado repleto do sabor caseiro do brigadeiro", LOAD_FILE('C:/https://jpimg.com.br/uploads/2023/04/aprenda-a-fazer-ovo-de-pascoa-de-colher-e-aumente-a-sua-renda.jpg')),

(4, 2, 9, 2, "Tambaqui assado e recheado", "Esta receita exuberante de Tambaqui Assado e Recheado é uma celebração da culinária regional, trazendo à mesa o sabor único do peixe de água doce amazônico", LOAD_FILE('C:/https://www.sabornamesa.com.br/media/k2/items/cache/4b50d7fbcad536bb1e623e4eb6d7776e_XL.jpg')),

(4, 3, 8, 3, "Quiche de Espinafre e Queijo de Cabra", "Uma opção vegetariana deliciosa para o almoço de Páscoa, com uma crosta de massa quebrada, espinafre e queijo de cabra", LOAD_FILE('C:/https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtLK5I_6t7xF4YwGzafNgZo6f4Q002uC43YA')),

(3, 4, 9, 4, "Cenouras Glaceadas", "Cenouras cozidas em um molho agridoce, adicionando um toque especial à mesa de Páscoa", LOAD_FILE('C:/https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQS_fcGSi8eZsla6cv68i7ul6zywpJzWR4AxKmux_3x-6gTfZYW3J0I5tfE2RYXyZz1cio')),

(2, 5, 1, 5, "Pavlova de Frutas", "Uma sobremesa leve e elegante com base de merengue, coberta com chantilly e uma variedade de frutas frescas", LOAD_FILE('C:/https://www.montaencanta.com.br/wp-content/uploads/2014/09/Pavlova-bolodesuspiro-montaencanta59-1.jpg')),

(4, 6, 9, 6, "Espetinho de Camarão com Abacaxi", "É um casamento perfeito de doce e salgado. Cada mordida é uma viagem sensorial, onde a suculência do camarão se entrelaça com a doçura do abacaxi, criando uma experiência única à beira da grelha", LOAD_FILE('C:/https://claudia.abril.com.br/wp-content/uploads/2020/02/receita-espetinho-de-camarao-e-abacaxi.jpg')),

(4, 7, 9, 7, "Costelas Bovinas com Tempero de Café", "A combinação rica de café, sal e especiarias envolve a carne em uma carícia de sabores robustos, transformando o churrasco em uma experiência sofisticada e envolvente", LOAD_FILE('C:/https://www.sabornamesa.com.br/media/k2/items/cache/f3107c7911141734e4eeaad24ed6c748_XL.jpg')),

(4, 8, 9, 8, "Alcatra com Chimichurri", "A carne macia da alcatra, perfeitamente grelhada, se une ao chimichurri fresco, criando uma sinfonia que transporta diretamente para as pampas sul-americanas", LOAD_FILE('C:/https://receitasmondial.com.br/wp-content/uploads/2022/07/Files-de-Alcatra-ao-Molho-Chimichurri.jpg')),

(2, 9, 9, 9, "Queijo Coalho na Grelha", "Cada pedaço grelhado revela uma textura irresistível por fora e uma suavidade derretida por dentro, proporcionando uma explosão de sabor e prazer", LOAD_FILE('C:/https://img.freepik.com/fotos-premium/o-queijo-grelhado-cola-no-fogao-do-griller-do-gas-alimento-da-rua-em-ximending-em-taiwan-taipei_43263-1798.jpg')),

(3, 10, 9, 10, "Risoto de Camarão e Aspargos", "Risoto cremoso, enriquecido com camarões suculentos e aspargos frescos, para um jantar reconfortante", LOAD_FILE('C:/https://www.receitasnestle.com.br/sites/default/files/srh_recipes/0ab09801d5c8a74763a423af7e93905b.jpg')),

(2, 11, 9, 11, "Lasanha de Berinjela e Ricota", "Uma versão mais leve da lasanha clássica, com camadas de berinjela grelhada e ricota, regadas com molho de tomate caseiro", LOAD_FILE('C:/https://www.estadao.com.br/resizer/SoYWWE3M6CTKx0y1RboDdNwVFlQ=/720x503/filters:format(jpg):quality(80):focal(-5x-5:5x5)/cloudfront-us-east-1.images.arcpublishing.com/estadao/BSMU437BCRLBVMM3Z2PJ7NSWUE.jpg')),

(1, 12, 9, 12, "Coxinhas de Frango", "Clássicas coxinhas de frango, um petisco brasileiro irresistível para acompanhar a folia", LOAD_FILE('C:/https://ribeirao.emporiotartufo.com.br/image/cache/catalog/Irani-Maggiore/125523-COXINHA-FRANGO-SEM-GLUTEN-200G-IRANI-MAGGIORE-a-1000x667.jpg')),

(1, 13, 9, 13, "Caipirinha de Frutas Tropicais", "Uma versão tropical da clássica caipirinha, com frutas como abacaxi, maracujá e kiwi", LOAD_FILE('C:/')),

(1, 14, 9, 14, "Tapioca Colorida", "Tapiocas recheadas com ingredientes vibrantes e coloridos, como queijo coalho, coco, e frutas tropicais", LOAD_FILE('C:/https://cdn6.campograndenews.com.br/uploads/noticias/2021/10/10/e504517542170096730ca6397a17e17bb9b366a1.jpeg')),

(2, 15, 9, 15, "Brigadeiro de Caipirinha", "Uma versão festiva do tradicional brigadeiro, feito com cachaça e limão, para um toque carnavalesco", LOAD_FILE('C:/https://i.ytimg.com/vi/KFNAmgLPST4/maxresdefault.jpg')),

(4, 16, 9, 16, "Cocada Cremosa", "Uma sobremesa clássica de cocada, porém em uma versão cremosa e indulgente para adoçar ainda mais a festa", LOAD_FILE('C:/https://static1.minhavida.com.br/recipes/9b/44/29/1c/cocada-cremosa-sem-acucar-orig-1.jpg')),

(4, 17, 9, 17, "Bolo de Milho Verde", "Um bolo úmido e saboroso feito com milho verde, ótima opção para a mesa junina", LOAD_FILE('C:/https://www.homeit.com.br/wp-content/uploads/2023/06/Bolo-de-Milho-verde.jpg')),

(3, 18, 9, 18, "Quentão", "Uma bebida quente e reconfortante preparada com cachaça, gengibre, cravo, canela e cascas de frutas cítricas", LOAD_FILE('C:/https://static.itdg.com.br/images/auto-auto/6b5ab4eff34a90af648d9be96414c5f6/receita-de-quentao.jpg')),

(3, 19, 9, 19, "Arroz Doce", "Uma sobremesa clássica com arroz, leite, açúcar e canela, perfeita para aconchegar o coração nos meses mais frios", LOAD_FILE('C:/https://planetaarroz.com.br/wp-content/uploads/receita-de-arroz-doce-com-leite-condensado-12.jpg')),

(4, 20, 9, 20, "Maçã do Amor", "Maçãs caramelizadas, cobertas com uma camada de caramelo colorido, um clássico em festas juninas", LOAD_FILE('C:/https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJvPKFXSS4red_1_vowPiMQ2ygP0Ibj0t8Rw'));
 
 
create table aromas_e_sabores.cozinha (

IdCozinha int unsigned not null unique auto_increment,

cozinha varchar(100) not null,

ativo tinyint not null,

primary key (IdCozinha)

);
 
insert into cozinha (cozinha, ativo) 

values 

("Italiana", 1),

("Japonesa", 1),

("Alemã", 1),

("Mexicana", 1),

("Coreana", 1),

("Indiana", 1),

("Tailandesa", 1),

("Francesa", 1),

("Brasileira", 1),

("Grega", 1);
 
 
create table aromas_e_sabores.dificuldade (

IdDificuldade int unsigned not null unique auto_increment,

dificuldade varchar (50) not null,

ativo tinyint not null,

primary key (IdDificuldade)

);
 
insert into dificuldade (dificuldade, ativo) 

values 

("Fácil", 1),

("Moderado", 1),

("Difícil", 1),

("Extremamente Difícil", 1);
 
 
create table aromas_e_sabores.menu (

IdMenu int unsigned not null unique auto_increment,

menu varchar(100) not null,

descricao mediumtext,

ativo tinyint not null,

primary key (IdMenu)

); 

insert into menu (menu, descricao, ativo) 

values 

("Páscoa", "Páscoa com pratos que refletem a generosidade da temporada e inspirem um banquete repleto de amor, gratidão e renovação. De pratos principais que brilham como o renascimento da primavera a sobremesas que simbolizam doçura e renovação, cada receita é uma expressão culinária de alegria e partilha.", 1),

("Churrasco", " Explore o sabor defumado que permeia cada porção, criando uma sinfonia de prazeres para o paladar. Convide amigos e familiares para compartilhar risadas e delícias em torno da churrasqueira, onde as refeições se tornam celebrações e cada chama é uma promessa de momentos memoráveis.", 1),

("Dia das Mães ", "Embrace o amor incondicional com receitas cuidadosamente elaboradas para o Dia das Mães. Cada prato é uma expressão de carinho, celebrando a mulher extraordinária que nos inspira diariamente", 1),

("Carnaval", "Desperte os sabores vibrantes e a alegria contagiante do Carnaval com receitas que são verdadeiros foliões da culinária. De petiscos que animam o paladar a pratos principais que dançam com uma fusão de temperos, cada receita é uma celebração gastronômica em homenagem à festa mais colorida do ano", 1),

("Festa Junina", "Adentre o encanto e tradição das festas juninas com receitas que celebram o calor humano, as danças animadas e as noites estreladas. Celebre o sabor genuíno da cultura brasileira com pratos que acendem a fogueira da gastronomia e deixam sua festa ainda mais memorável.", 1),

("Dia dos Namorados", " No romantismo culinário, crie momentos inesquecíveis neste Dia dos Namorados com receitas que são uma declaração de amor à mesa. Cada prato é uma sinfonia de sabores, cuidadosamente harmonizados para transformar o jantar em uma experiência única.", 1),

("Ação de Graças", "A tradição e o espírito de gratidão com receitas feitas sob medida para o Dia de Ação de Graças. Celebre com pratos que enchem o coração e alimentam a alma, para celebrar a abundância da colheita e compartilhar momentos significativos ao redor da mesa.", 1),

("Halloween", "Deixe-se envolver pela atmosfera mágica e misteriosa do Halloween com receitas que capturam a essência desta festividade única. Cada prato é uma experiência culinária que convida você a explorar o lado sombrio e delicioso da temporada.", 1),

("Natal", "Explore receitas que aquecem o corpo e a alma, criando memórias inesquecíveis à mesa. Feliz Natal com sabores que inspiram alegria e gratidão!", 1),

("Ano Novo", "Despeça-se do ano que passou e dê as boas-vindas ao novo ano com receitas que celebram o frescor, renovação e a promessa de momentos brilhantes. Cada prato é uma homenagem ao recomeço, uma combinação harmoniosa de sabores que simboliza esperança e otimismo.", 1);
 
 
create table preparo (

IdPreparo int unsigned not null unique auto_increment,

preparo longtext not null,

primary key (IdPreparo)

);
 
INSERT INTO aromas_e_sabores.preparo (preparo) VALUES

('Coloque todos os ingredientes do brigadeiro em um recipiente fundo, sem o creme de leite. Leve ao micro-ondas por 3 minutos na potência alta. Abra o micro-ondas, mexa e coloque mais uns 2 minutos na potência alta. Verificar se o brigadeiro já endureceu. Assim, coloque mais 1 minuto até dar o ponto de brigadeiro. Tirar o recipiente do micro-ondas e coloque o creme de leite. Misturar bem com uma colher. Levar à geladeira para esfriar. Não recheie o ovo com o brigadeiro quente, sempre gelado, Em um recipiente de vidro, fatie o chocolate e coloque no micro-ondas por 1 minuto na potência média. Retire e mexa bem com uma colher de plástico. Pode ser que mexendo ele derreta totalmente, se isso acontecer, coloque mais um pouco no micro-ondas por alguns segundos. Não há necessidade de dar choque térmico nesse chocolate, nem chegar na temperatura de 28°, porque ele é cobertura e fica bem mais firme. Com um pincel, passe uma camada de chocolate na forma sem ficar muito grossa. Leve ao congelador por uns minutinhos. Retire do congelador, passe mais uma camada de chocolate e leve para gelar novamente. Recheie com o brigadeiro (este deve estar bem firme para não pode escorrer). Novamente passe mais uma camada de chocolate cobertura por cima, um pouco mais grossa. Leve para gelar novamente. Depois é só desenformar, colocar uns bombons dentro, embrulhar e presentear.'),

('Em uma panela, aqueça um pouco de azeite e refogue a cebola até que fique transparente. Adicione o tomate, o pimentão e a cenoura. Cozinhe até que os vegetais estejam macios. Acrescente a farinha de mandioca, mexendo bem para incorporar. Tempere com sal, pimenta, salsinha e cebolinha a gosto. Reserve o recheio. Pré-aqueça o forno a 180°C. Lave bem o tambaqui por dentro e por fora. Faça cortes diagonais na pele para ajudar a absorver o tempero. Tempere o peixe com sal, pimenta-do-reino, suco de limão, alho picado e azeite de oliva. Certifique-se de espalhar os temperos por toda a superfície do peixe. Abra o tambaqui e recheie com a mistura preparada anteriormente. Costure ou prenda a abertura com palitos para manter o recheio dentro do peixe. Coloque o tambaqui em uma assadeira ou refratário. Asse no forno preaquecido por aproximadamente 40-50 minutos ou até que o peixe esteja cozido e a pele esteja dourada. Retire os palitos de costura antes de servir. Sirva o tambaqui assado e recheado em uma travessa, acompanhado de arroz branco, batatas ou salada, conforme preferir.'),

('Em uma tigela, misture a farinha e o sal. Adicione a manteiga gelada e misture até obter uma textura de migalhas. Adicione a água gelada aos poucos, mexendo até formar uma massa. Embrulhe a massa em filme plástico e leve à geladeira por pelo menos 30 minutos. Pré-aqueça o forno a 180°C. Em uma panela, refogue a cebola até ficar dourada. Adicione o espinafre e cozinhe até murchar. Tempere com sal, pimenta e noz-moscada a gosto. Em uma tigela, bata os ovos e adicione o leite. Misture bem. Adicione o queijo de cabra desfeito ao recheio de espinafre e misture. Abra a massa e forre uma forma de quiche. Despeje o recheio de espinafre e queijo de cabra sobre a massa. Despeje a mistura de ovos e leite sobre o recheio. Leve ao forno pré-aquecido por cerca de 30 a 40 minutos, ou até que a quiche esteja firme e dourada.'),

('Cozinhe as cenouras em água com sal até ficarem al dente. Escorra e reserve. Em uma frigideira, derreta a manteiga e adicione as cenouras. Regue com mel e cozinhe até as cenouras ficarem caramelizadas. Tempere com sal e pimenta a gosto. Transfira para uma travessa, polvilhe com salsa e sirva.'),

('Preaqueça o forno a 150°C e forre uma assadeira com papel manteiga. Bata as claras em neve até formar picos firmes. Adicione o açúcar gradualmente, batendo até obter um merengue brilhante. Incorpore delicadamente o vinagre, a baunilha e o amido de milho. Modele o merengue em um círculo na assadeira e asse por 1 hora ou até que a pavlova esteja firme por fora e macia por dentro. Deixe esfriar completamente. Prepare o Creme: Bata o creme de leite fresco até formar picos firmes. Adicione o açúcar de confeiteiro e misture delicadamente. Monte a Pavlova: Coloque a pavlova em um prato de servir. Espalhe o creme batido sobre a pavlova. Cubra com as frutas frescas variadas. Decore e Sirva: Decore com folhas de hortelã e, se desejar, pincele um pouco de geleia de frutas vermelhas por cima. Sirva imediatamente e aproveite!'),

('Em uma tigela, misture o azeite de oliva, o suco de limão, o alho picado, sal e pimenta.

Adicione os camarões à marinada e deixe descansar por pelo menos 30 minutos na geladeira.

Monte os espetinhos alternando camarões e cubos de abacaxi nos palitos de churrasco.

Aqueça a grelha ou churrasqueira em fogo médio-alto.

Grelhe os espetinhos por 2-3 minutos de cada lado, ou até que os camarões fiquem opacos.

Sirva imediatamente, regando com um pouco mais de marinada se desejar.'),

('Pré-aqueça o forno a 150°C. Em uma tigela, misture o café moído, açúcar mascavo, páprica, alho em pó, cebola em pó, pimenta caiena, sal e pimenta. Esfregue essa mistura generosamente por toda a superfície das costelas. Embrulhe as costelas firmemente em papel alumínio, formando um pacote fechado. Coloque as costelas embrulhadas em uma assadeira e leve ao forno por 3 a 4 horas, ou até que a carne esteja macia e comece a se soltar dos ossos. Retire as costelas do papel alumínio e pré-aqueça a grelha ou churrasqueira. Pincele as costelas com óleo vegetal e grelhe por alguns minutos de cada lado para criar uma crosta caramelizada. Sirva as costelas fatiadas e aproveite o sabor único do tempero de café.'),

('Tempere a alcatra com sal e pimenta a gosto. Prepare o Chimichurri: Em uma tigela, misture a salsa, o orégano, o alho, a pimenta vermelha (opcional), o azeite de oliva e o vinagre de vinho tinto. Tempere com sal e pimenta a gosto. Reserve. Prepare a Alcatra: Se estiver usando peça inteira, aqueça uma grelha ou churrasqueira em fogo médio-alto. Grelhe a alcatra até atingir o ponto desejado (cerca de 4-5 minutos de cada lado para bifes, ou conforme necessário para a peça inteira). Sirva: Fatie a alcatra e disponha em um prato de servir. Regue com o chimichurri preparado. Acompanhamentos (opcional): Sirva com batatas assadas, legumes grelhados ou uma salada fresca.'),

('Queijo coalho em pedaços (quantidade desejada). Palitos de churrasco (para espetar o queijo). Mel (opcional, para regar). Orégano (opcional, para polvilhar). Pimenta calabresa (opcional, para um toque picante). Corte o queijo coalho em pedaços, geralmente em formato de cubos ou tiras. Espete os pedaços de queijo em palitos de churrasco, facilitando o manuseio na grelha. Pré-aqueça a grelha em fogo médio-alto. Coloque os espetinhos de queijo coalho na grelha e deixe grelhar por 2-3 minutos de cada lado, ou até que fiquem dourados e com marcas de grelha. Se desejar, regue os queijos coalhos grelhados com mel para um toque adocicado. Polvilhe com orégano para aromatizar, e se gostar de um toque picante, adicione pimenta calabresa. Retire os espetinhos da grelha e sirva imediatamente. Pode ser servido como petisco, entrada ou acompanhamento.'),

('Em uma panela, aqueça o caldo de legumes ou de camarão e mantenha-o aquecido em fogo baixo. Em outra panela, refogue a cebola e o alho em um pouco de azeite de oliva até ficarem transparentes. Adicione o arroz à panela e mexa por alguns minutos até que fique levemente dourado. Despeje o vinho branco na panela e mexa até que ele evapore. Comece a adicionar o caldo quente, uma concha de cada vez, mexendo frequentemente e adicionando mais caldo à medida que é absorvido pelo arroz. Enquanto o arroz cozinha, em uma frigideira separada, salteie os camarões e os aspargos em um pouco de azeite até que fiquem cozidos. Tempere com sal e pimenta. Quando o arroz estiver quase pronto (após cerca de 18-20 minutos), adicione os camarões e aspargos cozidos à panela. Continue adicionando caldo e mexendo até que o arroz esteja al dente e tenha uma textura cremosa. Retire a panela do fogo, adicione a manteiga e o queijo parmesão, mexendo bem. Ajuste o sal e a pimenta conforme necessário. Sirva imediatamente, regado com um fio de azeite e mais queijo parmesão por cima.'),

('Preparação das Berinjelas: Lave as berinjelas e corte-as em fatias finas. Em uma assadeira, coloque as fatias de berinjela, tempere com sal e deixe descansar por cerca de 15 minutos para eliminar o excesso de água. Pré-aqueça o forno a 200°C. Assando as Berinjelas: Após os 15 minutos, enxágue as fatias de berinjela para remover o sal. Disponha as fatias em uma assadeira untada com azeite e leve ao forno por aproximadamente 20 minutos ou até que fiquem macias. Reserve. Preparo do Recheio: Em uma tigela, amasse a ricota e misture com o ovo. Tempere a mistura com sal, pimenta e reserve. Preparo do Molho: Em uma panela, aqueça o azeite e refogue a cebola e o alho até ficarem dourados. Adicione o molho de tomate, tempere com sal, pimenta e deixe cozinhar por cerca de 10 minutos. Montagem da Lasanha: Em um refratário, comece com uma camada fina de molho de tomate. Adicione uma camada de berinjela assada. Espalhe metade da mistura de ricota por cima da berinjela. Repita as camadas, terminando com uma camada de molho de tomate por cima. Polvilhe o queijo muçarela e o queijo parmesão por cima. Assando a Lasanha: Cubra o refratário com papel alumínio e leve ao forno preaquecido a 180°C por 30 minutos. Remova o papel alumínio e deixe assar por mais 10 a 15 minutos, ou até que o queijo esteja dourado e borbulhante. Finalização: Retire do forno e deixe descansar por alguns minutos antes de servir. Decore com folhas de manjericão fresco, se desejar. Agora você tem uma deliciosa lasanha de berinjela e ricota pronta para ser apreciada! Aproveite!'),

('Massa: 2 xícaras de peito de frango cozido e desfiado. 1 colher de sopa de azeite de oliva. 1 cebola pequena, picada. 2 dentes de alho, picados. 1 xícara de caldo de frango. 1 xícara de leite. 2 xícaras de farinha de trigo. Sal e pimenta a gosto. Recheio: O frango desfiado (reservado da massa). 1/2 xícara de requeijão cremoso. Salsinha picada a gosto. Sal e pimenta a gosto. Para empanar: Farinha de trigo. Ovos batidos. Farinha de rosca. Preparação do Frango: Cozinhe o peito de frango em água com sal até que esteja completamente cozido. Desfie o frango e reserve. Preparação do Recheio: Em uma tigela, misture o frango desfiado reservado, o requeijão cremoso, a salsinha picada e tempere com sal e pimenta a gosto. Reserve. Preparação da Massa: Em uma panela, aqueça o azeite e refogue a cebola e o alho até ficarem dourados. Adicione o caldo de frango e o leite à panela, mexendo constantemente, Adicione o caldo de frango e o leite à panela, mexendo constantemente. Gradualmente, adicione a farinha de trigo, mexendo para evitar a formação de grumos. Cozinhe até obter uma massa que desgrude do fundo da panela. Desligue o fogo e adicione o frango desfiado à massa, misturando bem. Deixe esfriar um pouco. Pegue porções da massa, abra na palma da mão, coloque uma porção do recheio no centro e modele em formato de coxinha. Passe cada coxinha na farinha de trigo, depois nos ovos batidos e, por fim, na farinha de rosca. Aqueça o óleo em uma panela funda a uma temperatura de aproximadamente 180°C. Frite as coxinhas até que fiquem douradas e crocantes. Retire e coloque sobre papel toalha para absorver o excesso de óleo. Sirva as coxinhas quentes como aperitivo ou acompanhamento..'),

('Lave bem os limões. Corte os limões em fatias finas ou em cubos, removendo as sementes.

Em um copo, adicione as fatias de limão e o açúcar. Com um socador, amasse levemente para extrair o suco dos limões e dissolver o açúcar.

Adicione os cubos de abacaxi, a manga e a polpa de maracujá ao copo. Despeje a cachaça sobre as frutas e o limão.

Mexa bem para combinar todos os ingredientes. Adicione gelo ao copo para resfriar a bebida.

Decore com folhas de hortelã, se desejar. Sirva imediatamente e aproveite esta deliciosa Caipirinha de Frutas Tropicais!'),

('Hidrate a goma de tapioca com água de acordo com as instruções do pacote. Deixe descansar por alguns minutos até que a goma absorva a água.

Divida a goma de tapioca em porções iguais, dependendo do número de cores desejadas. Adicione cores naturais a cada porção.

Aqueça uma frigideira antiaderente em fogo médio. Espalhe uma porção de uma das cores da goma de tapioca na frigideira, formando uma camada fina.

Cozinhe até que a tapioca fique unida e firme. Repita o processo para as outras cores. Coloque as tapiocas em um prato, intercalando as cores para criar um efeito colorido.

Recheie cada camada com frutas frescas cortadas, como morangos, banana, kiwi, etc. Se desejar, polvilhe coco ralado por cima das tapiocas.

Dobre as tapiocas ao meio e sirva imediatamente.'),

('Em uma panela, coloque o leite condensado, a manteiga e as raspas dos limões.

Cozinhe em fogo médio, mexendo constantemente, até que a mistura comece a desgrudar do fundo da panela.

Adicione a cachaça à mistura e continue mexendo até que a massa atinja o ponto de brigadeiro, onde é possível ver o fundo da panela ao mexer.

Transfira a massa para um prato untado com manteiga e deixe esfriar completamente.

Com as mãos untadas com manteiga, pegue pequenas porções da massa e modele bolinhas.

Passe as bolinhas pelo açúcar cristal para uma cobertura extra. Decore cada brigadeiro com raspas de limão, se desejar. Disponha os brigadeiros em forminhas e sirva em temperatura ambiente.'),

('Em uma panela, misture o leite condensado, o coco ralado, a manteiga e o leite de coco. Leve a mistura ao fogo médio, mexendo constantemente para evitar que grude no fundo da panela. Continue cozinhando e mexendo até a mistura engrossar e atingir uma consistência cremosa. Quando atingir a consistência desejada, retire do fogo e deixe esfriar um pouco. Transfira a cocada cremosa para um recipiente ou porções individuais. Deixe esfriar completamente antes de servir.'),

('Escorra a água de uma lata de milho e reserve a água da outra.

No liquidificador, coloque o milho escorrido, o milho com a água reservada, os ovos, o açúcar e o óleo. Bata até obter uma mistura homogênea.

Em uma tigela, misture o fubá, a farinha de trigo, o fermento em pó e uma pitada de sal.

Despeje a mistura do liquidificador na tigela dos ingredientes secos e mexa até obter uma massa homogênea.

Pré-aqueça o forno a 180°C. Unte uma forma com margarina e polvilhe com farinha de trigo.

Despeje a massa na forma untada e leve ao forno preaquecido por aproximadamente 40-45 minutos, ou até que um palito inserido no centro saia limpo.

Deixe o bolo esfriar antes de desenformar. Sirva o bolo de milho verde em fatias e aproveite!'), 

('Lave os morangos, seque-os cuidadosamente e reserve.

Em uma tigela resistente ao calor, derreta o chocolate e a manteiga em banho-maria ou no micro-ondas, mexendo a cada 30 segundos para garantir uma textura suave.

Segure cada morango pelo cabinho e mergulhe no chocolate derretido, garantindo que o morango esteja bem coberto. Deixe o excesso de chocolate escorrer.

Coloque os morangos cobertos com chocolate em uma assadeira forrada com papel manteiga.

Se desejar, decore os morangos imediatamente após o banho de chocolate, polvilhando-os com amêndoas picadas, coco ralado, granulado, ou outros ingredientes de sua escolha.

Deixe os morangos com chocolate esfriarem à temperatura ambiente ou, para acelerar o processo, coloque-os na geladeira por cerca de 20-30 minutos, até que o chocolate esteja completamente endurecido.

Disponha os morangos com chocolate em uma travessa bonita e sirva como sobremesa ou petisco delicioso.'),

('Pré-aqueça o forno a 180°C.

Remova o pescoço e miúdos do peru. Lave o peru por dentro e por fora, e seque bem com papel toalha.

Tempere o peru por dentro e por fora com sal e pimenta a gosto.

Se preferir, prepare um recheio à parte com pão, ervas e outros ingredientes de sua escolha.

Em uma tigela, misture a manteiga derretida, alho em pó, cebola em pó, páprica e ervas frescas picadas.

Pincele a mistura de manteiga e temperos por todo o peru, incluindo por baixo da pele, se possível.

Coloque a cebola, cenouras, aipo e a laranja no interior do peru.

Coloque o peru em uma assadeira grande com a grade e despeje o caldo de galinha ou peru no fundo da assadeira.

Asse o peru no forno pré-aquecido, regando-o ocasionalmente com os sucos da assadeira, por cerca de 20 minutos por quilo, ou até que a temperatura interna atinja 74°C.

Deixe o peru descansar por cerca de 20-30 minutos antes de fatiar. Isso permite que os sucos se redistribuam e mantenham a carne suculenta.

Se desejar, use os sucos na assadeira para preparar um molho delicioso.'),

('Pré-aqueça o forno a 200°C.

Descasque a abóbora e corte-a em cubos uniformes.

Em uma tigela grande, misture os cubos de abóbora com o mel, azeite de oliva, canela, noz-moscada (se estiver usando) e uma pitada de sal. Certifique-se de que todos os cubos de abóbora estejam bem revestidos.

Espalhe os cubos de abóbora em uma assadeira forrada com papel manteiga em uma única camada.

Asse no forno pré-aquecido por cerca de 25-30 minutos, ou até que a abóbora esteja macia e caramelizada nas bordas.

Cerca de 15 minutos após o início do assamento, mexa os cubos de abóbora para garantir uma cocção uniforme.

Retire a abóbora assada do forno e deixe esfriar por alguns minutos.

Transfira para um prato de servir e decore com folhas de hortelã, se desejar.'),

('Lave e seque as folhas de espinafre. Corte os tomates cereja ao meio, fatie a cebola vermelha finamente e toste as nozes ou amêndoas em uma frigideira por alguns minutos.

Em uma tigela grande, combine as folhas de espinafre, o queijo de cabra despedaçado, os tomates cereja cortados, as nozes ou amêndoas tostadas e a cebola vermelha fatiada.

Em uma tigela pequena, misture o azeite de oliva, o vinagre balsâmico, sal e pimenta a gosto. Mexa bem para emulsionar o molho.

Regue a salada com o molho preparado e, delicadamente, misture para garantir que todos os ingredientes fiquem bem revestidos.

Sirva a salada imediatamente como acompanhamento leve ou como prato principal.'),

('Pré-aqueça o forno a 200°C. Descasque as batatas doces e corte-as em cubos uniformes.

Em uma tigela grande, misture as batatas doces com o azeite de oliva, páprica, alho em pó, alecrim (se estiver usando), sal e pimenta. Certifique-se de que as batatas estejam bem revestidas com os temperos.

Espalhe as batatas doces temperadas em uma assadeira forrada com papel manteiga em uma única camada.

Asse no forno pré-aquecido por cerca de 25-30 minutos, ou até que as batatas fiquem douradas e macias por dentro.

Cerca de 15 minutos após o início do assamento, mexa as batatas para garantir uma cocção uniforme.

Retire as batatas doces assadas do forno e deixe-as descansar por alguns minutos antes de servir.

Sirva as batatas doces assadas como acompanhamento ou como um lanche saudável.'),

('Em uma tigela, misture a farinha de trigo e o sal. Adicione a manteiga gelada e misture até formar uma textura de migalhas grossas. Adicione a água gelada, uma colher de sopa de cada vez, até que a massa comece a se unir. Forme uma bola, cubra com filme plástico e leve à geladeira por pelo menos 30 minutos.

Em uma superfície enfarinhada, abra a massa até que tenha aproximadamente o tamanho da forma de torta. Transfira cuidadosamente a massa para a forma.

Pré-aqueça o forno a 200°C.

Em uma tigela grande, misture o purê de abóbora, ovos, açúcar, canela, gengibre, noz-moscada, cravo-da-índia e sal até obter uma mistura homogênea. Adicione o leite evaporado ou creme de leite e misture bem.

Despeje a mistura de abóbora na massa preparada na forma.

Asse no forno pré-aquecido por 15 minutos. Em seguida, reduza a temperatura para 175°C e asse por mais 40-50 minutos, ou até que o centro esteja firme.

Deixe a torta de abóbora esfriar antes de cortar. Sirva com chantilly ou sorvete, se desejar.'),

('Pré-aqueça o forno a 180°C. Corte as fatias de queijo em tiras longas e finas para representar os dedos. No final de cada tira de queijo, coloque uma amêndoa para simular a unha. Pressione ligeiramente para que a amêndoa grude na fatia de queijo. Use uma faca para fazer pequenos cortes na base de cada dedo para simular as articulações. Coloque os dedos de queijo em uma assadeira forrada com papel manteiga e asse no forno pré-aquecido por 5-7 minutos, ou até que o queijo comece a derreter e as amêndoas fiquem douradas. Se quiser adicionar um toque picante, aqueça a geleia de pimenta no micro-ondas por alguns segundos e pincele sobre as amêndoas.

Disponha os dedos de bruxa em um prato e, se desejar, sirva com ketchup ou molho barbecue para mergulhar.'),

('Pré-aqueça o forno a 180°C. Forre uma forma de muffins com forminhas de papel. Em uma tigela grande, misture o purê de abóbora, açúcar, óleo, ovos e extrato de baunilha. Em outra tigela, misture a farinha de trigo, fermento em pó, bicarbonato de sódio, sal, canela, noz-moscada e cravo. Adicione os ingredientes secos à mistura de abóbora e mexa até que tudo esteja bem incorporado. Encha cada forminha de muffin cerca de 2/3 com a massa. Asse no forno pré-aquecido por 20-25 minutos, ou até que um palito inserido no centro saia limpo. Deixe os cupcakes esfriarem completamente antes de decorar. Em uma tigela, bata o cream cheese e a manteiga até ficar cremoso. Adicione o açúcar de confeiteiro aos poucos e continue batendo até obter uma consistência suave. Misture o extrato de baunilha. Use um saco de confeitar para decorar os cupcakes com a cobertura de cream cheese. Se desejar, polvilhe um pouco de canela ou noz-moscada por cima da cobertura. Esses cupcakes de abóbora com cobertura de cream cheese são uma delícia outonal que certamente agradará a todos. Sirva-os em festas, eventos ou simplesmente como uma guloseima caseira. Aproveite!'),
('Em uma panela, misture o leite condensado, o coco ralado, a manteiga e o leite de coco.
Leve a mistura ao fogo médio, mexendo constantemente para evitar que grude no fundo da panela. Continue cozinhando e mexendo até a mistura engrossar e atingir uma consistência cremosa. Quando atingir a consistência desejada, retire do fogo e deixe esfriar um pouco. Transfira a cocada cremosa para um recipiente ou porções individuais. Deixe esfriar completamente antes de servir. Você também pode adicionar outros ingredientes, como cravo ou canela, para dar um toque especial ao sabor da cocada cremosa. Lembre-se de ajustar as quantidades de acordo com seu gosto pessoal. Bom apetite!');
 
create table menu_receita(
IdMenu int unsigned not null,
IdReceita int unsigned not null,
primary key(IdMenu, IdReceita),
foreign key(IdMenu) references aromas_e_sabores.menu(IdMenu),
foreign key(IdReceita) references aromas_e_sabores.receita(IdReceita)
);
 
insert into menu_receita(IdMenu, IdReceita) 
values 
(9, 1),
(9, 2),
(8, 3),
(8, 4),
(1, 5),
(10, 6),
(1, 7),
(9, 8),
(9, 9),
(9, 10),
(1, 11),
(9, 12),
(9, 13),
(9, 14),
(9, 15);
 
 
create table dosagem (
IdDosagem int unsigned not null unique auto_increment,
dosagem varchar(45) not null,
abreviacao varchar(45),
primary key (IdDosagem)
);
 
insert into dosagem (dosagem, abreviacao) 
values 
("Colher de Chá", "cc"), 
("Colher de Sopa", "cs"), 
("Xícara", "xíc"),
("Gramas", "g"),
("Litros", "l"),
("Mililitros", "ml"), 
("Pitada", "pit"),
("Toque", "toque"), 
("Fio", "fio"),
("Caixa", "cx"), 
("Kilo", "kg"), 
("Raspas", "rasp"), 
("Rack", "rack"), 
("Maço", "maço"), 
("Dente", "dente"), 
("Lata", "lata"), 
("Pau", "p"),
("Casca", "casca");
 
 
create table ingrediente (
IdIngrediente int unsigned not null unique auto_increment,
ingrediente text not null,
primary key (IdIngrediente)
);
 
insert into ingrediente (ingrediente) 
values    
("Leite condensado"),     
("Creme de leite"), 
("Margarina"),                                                                                                                           
("Nescau"), 
("Ovo"),
("Tambaqui"), 
("Tomate"), 
("Pimentão"), 
("Salsinha desidratada"), 
("Alho"), 
("Cebola média"), 
("Farofa pronta"), 
("Azeite"), 
("Farinha de trigo"), 
("Água gelada"), 
("Manteiga gelada, cortada em cubos"), 
("Sal"), 
("Leite"), 
("Cenoura"), 
("Manteiga"),
("Mel"),
("Sal e pimenta a gosto"),
("Salsa fresca"),
("Claras de ovos"),
("Açúcar"), 
("Vinagre de vinho branco"), 
("Extrato de baunilha"), 
("Frutas frescas"), 
("Camarões"), 
("Abacaxi"), 
("Azeite de oliva"), 
("Suco de limão"), 
("Costelas bovinas"), 
("Café moído"), 
("Açúcar mascavo"), 
("Páprica defumada"), 
("Alho em pó"), 
("Cebola em pó"), 
("Óleo vegetal"),  
("Alcatra"), 
("Orégano"), 
("Pimenta vermelha"), 
("Vinagre de vinho tinto"), 
("Queijo coalho"), 
("Pimenta calabresa"), 
("Arroz"), 
("Aspargos"), 
("Vinho branco seco"), 
("Caldo de legumes"), 
("Queijo parmesão ralado"), 
("Berinjela"), 
("Ricota"), 
("Molho de tomate"), 
("Queijo muçarela ralado"), 
("Manjericão"), 
("Peito de frango cozido e desfiado"), 
("Caldo de frango"), 
("Requeijão"), 
("Limão Tahiti"), 
("Limão siciliano"), 
("Manga"), 
("Maracujá"), 
("Cachaça"), 
("Goma de Tapioca"), 
("Água"), 
("Pitaya"),  
("Espirulina em pó"), 
("Açaí em pó"),  
("Cúrcuma"),  
("Coco ralado"), 
("Frutas"),  
("Açúcar cristal"), 
("Leite de coco"),
("Milho verde"),
("Fubá"),
("Fermento em pó"), 
("Cravos-da-índia"),
("Canela"), 
("Gengibre"), 
("Laranja"),
("Maçã"), 
("Leite"), 
("Canela em pó"),
("Glucose de milho"), 
("Corante alimentício vermelho"), 
("Queijo gruyère"),  
("Queijo emmental"), 
("Vinho branco seco"), 
("Maisena"), 
("Noz-moscada"), 
("Pimenta preta"), 
("Baguete"), 
("Vegetais crus"), 
("Filés mignon"), 
("Vinho tinto seco"), 
("Ervas frescas"), 
("Morango"), 
("Chocolate meio amargo ou ao leite"), 
("Amêndoas, coco ralado, granulado"), 
("Peru inteiro"), 
("Páprica"), 
("Aipo"),
("Abóbora"), 
("Espinafre"),
("Queijo de cabra"),  
("Batatas Doces"), 
("Amêndoas"), 
("Purê de abóbora"),
("Extrato de baunilha");
 
 
create table refeicao (
IdRefeicao int unsigned not null unique auto_increment,
refeicao varchar(50) not null,
ativo tinyint not null,
primary key (IdRefeicao)
);
 
insert into refeicao (refeicao, ativo) 
values 
("Café da Manhã", 1),
("Almoço", 1),
("Sobremesa", 1),
("Café da Tarde", 1),
("Jantar", 1),
("Ceia", 1);
 
 
create table categoria (
IdCategoria int unsigned not null unique auto_increment,
categoria varchar(50) not null,
ativo tinyint not null,
primary key (IdCategoria)
);
 
insert into categoria (categoria, ativo) 
values 
("Sopas", 1),
("Vegetariano", 1),
("Bolos", 1),
("Massas", 1),
("Carnes", 1),
("Saladas", 1),
("Molhos", 1),
("Entradas", 1),
("Frutos do Mar", 1),
("Drinks", 1),
("Saudáveis", 1),
("Lanches da tarde", 1),
("Doces", 1),
("Gelatos", 1),
("Tortas Salgadas", 1);
 
create table refeicao_receita(
IdRefeicao int unsigned not null,
IdReceita int unsigned not null,
primary key(IdRefeicao, IdReceita),
foreign key(IdRefeicao) references aromas_e_sabores.refeicao(IdRefeicao),
foreign key(IdReceita) references aromas_e_sabores.receita(IdReceita)
);
 
insert into refeicao_receita (IdRefeicao, IdReceita) 
values  
(3, 1),
(5,2),
(2, 3),
(6, 4),
(3, 5),
(2, 6),
(5, 7),
(2, 8),
(2, 9),
(5, 10),
(2, 11),
(1, 12),
(5, 13),
(6, 14),
(3, 15),
(3, 16),
(5, 17),
(3, 18),
(4, 19),
(5, 20);
 
create table categoria_receita(
IdCategoria int unsigned not null,
IdReceita int unsigned not null,
primary key(IdCategoria, IdReceita),
foreign key(IdCategoria) references aromas_e_sabores.categoria(IdCategoria),
foreign key(IdReceita) references aromas_e_sabores.receita(IdReceita)
);
 
insert into categoria_receita (IdReceita, IdCategoria) 
values 
(1, 13),
(2, 8),
(3, 2),
(4, 6),
(5, 13),
(6, 9),
(7, 5),
(8, 5),
(9, 8),
(10, 9),
(11, 11), 
(12, 8),
(13, 10),
(14, 8),
(15, 13),
(16, 3),
(17, 10),
(18, 13),
(19, 13),
(20, 8);
 
create table receita_usuario(
IdComentario int unsigned not null unique auto_increment,
IdReceita int unsigned not null, 
IdUsuario int unsigned not null,
comentario longtext, 
nota tinyint, 
primary key(IdComentario),
foreign key(IdReceita) references receita(IdReceita),
foreign key(IdUsuario) references usuario(IdUsuario)
);
 
insert into receita_usuario (IdReceita, IdUsuario, comentario, nota) 
values 
(1, 1, "A melhor receita de ovo trufado que já vi!!", 5),
(2, 2, "O meu peixe ficou muito salgado :(", 2),
(3, 3, "Está é a melhor receita vegana que já vi na minha vida", 5),
(4, 4, "Que delícia de receita, irei fazer mais vezes", 5),
(5, 5, "Amei!!!", 5),
(6, 6, "Que loucura de receita", 4),
(7, 7, "Que costela deliciosas", 5),
(8, 8, "Opção perfeita para o fim de ano", 5),
(9, 9, "Odiei essa receita", 2),
(10, 10, "Essa receita tem um ar de riqueza", 5),
(11, 1, "A melhor receita de ovo trufado que já vi!!", 5),
(12, 2, "O meu peixe ficou muito salgado :(", 2),
(13, 3, "Está é a melhor receita vegana que já vi na minha vida", 5),
(14, 4, "Que delícia de receita, irei fazer mais vezes", 5),
(15, 5, "Amei!!!", 5),
(16, 6, "Que loucura de receita", 4),
(17, 7, "Que costela deliciosas", 5),
(18, 8, "Opção perfeita para o fim de ano", 5),
(19, 9, "Odiei essa receita", 2),
(20, 10, "Essa receita tem um ar de riqueza", 5);
 
create table ingrediente_receita(
IdIngrediente int unsigned not null,
IdReceita int unsigned not null,
IdDosagem int unsigned not null,
quantidade float,
primary key(IdIngrediente, IdReceita),
foreign key(IdIngrediente) references aromas_e_sabores.ingrediente(IdIngrediente),
foreign key(IdReceita) references aromas_e_sabores.receita(IdReceita),
foreign key(IdDosagem) references aromas_e_sabores.dosagem(IdDosagem)
);
 
insert into ingrediente_receita (IdIngrediente, IdReceita, IdDosagem, quantidade) 
values 
(1, 1, 10, 1),
(2, 1, 10, 1),
(3, 1, 2, '1/2'),
(4, 1, 2, 2),
(5, 1, 4, 3), 
(6, 2, 11, 1),                              
(7, 2, 4, 1),                               
(8, 2, 4, 1),                                  
(9, 2, 4, 100),                             
(10, 2, 15, 8),                                
(11, 2, 4, 150),                                  
(12, 2, 3, 2),                                   
(13, 2, 6, 5),                 												
(14, 3, 3, '1/4'),
(15, 3, 3, '1/4'),
(16, 3, 3, '1/2 '),
(17, 3, 3, '1/2'),
(18, 3, 7, 1),  
(11, 3, 4, 200),  
(5, 3, 4, 3),  
(2, 3, 3, 1), 
(19, 3, 3, '1/2'), 
(20, 4, 4, 500), 
(21, 4, 2, 2),
(22, 4, 2, 3),
(23, 4, 7, 1), 
(24, 4, 7, 1), 
(25, 5, 6, 4),  
(26, 5, 3, 1),  
(27, 5, 1, 1), 
(28, 5, 1, 1), 
(2, 5, 10, 1), 
(29, 5, 4, 1), 
(30, 6, 4, 500), 
(31, 6, 11, 1), 
(32, 6, 3, '1/4'), 
(33, 6, 6, 1), 
(10, 6, 15, 2), 
(23, 6, 7, 1),  
(34, 7, 13, 1), 
(35, 7, 2, 3), 
(36, 7, 2, 3), 
(37, 7, 2, 2), 
(38, 7, 2, 1), 
(39, 7, 2, 1), 
(23, 7, 7, 1), 
(40, 7, 2, 1), 
(41, 8, 11, 1),
(23, 8, 7, 1),  
(42, 8, 7, '1/4'), 
(24, 8, 3, 1), 
(10, 8, 15, 4), 
(43, 8, 1, 1), 
(32, 8, 3, '1/2'), 
(44, 8, 2, 2), 
(45, 9, 4, 500),
(22, 9, 6, 100),  
(42, 9, 4, 50), 
(46, 9, 4, 20),     
(47, 10, 4, 300),
(30, 10, 4, 300), 
(48, 10, 14, 1), 
(11, 10, 4, 150), 
(10, 10, 15, 2), 
(49, 10, 3, '1/2'), 
(50, 10, 5, '1,5'), 
(51, 10, 3, '1/2'), 
(21, 10, 2, 2),
(32, 10, 9, 1),
(23, 10, 7, 2),
(52, 11, 4, 2),
(53, 11, 4, 500), 
(5, 11, 4, 1), 
(54, 12, 3, 2), 
(11, 11, 4, 150), 
(10, 11, 15, 2), 
(32, 11, 2, 1), 
(23, 11, 7, 2), 
(51, 11, 3, '1/2'),
(54, 11, 3, 2),
(56, 11, 3, '1/2 '),
(57, 12, 3, 2),
(32, 12, 2, 1), 
(5, 12, 4, 3), 
(23, 12, 7, 2), 
(11, 12, 4, 150), 
(10, 12, 15, 2), 
(19, 12, 3, 1), 
(14, 12, 3, 2), 
(58, 12, 3, 1),
(59, 12, 3, '1/2'),
(60, 13, 6, 100),
(61, 13, 6, 100), 
(36, 13, 2, 2), 
(31, 13, 3, '1/2'), 
(62, 13, 3, '1/2'), 
(63, 13, 3, '1/2'), 
(64, 13, 6, 60), 
(65, 14, 3, 1),
(66, 14, 6, 10), 
(67, 14, 3, 50), 
(68, 14, 3, 50), 
(69, 14, 4, 50), 
(70, 14, 4, 50), 
(71, 14, 4, 100), 
(72, 14, 3, 2), 
(73, 15, 2, 2),
(1, 15, 10, 1), 
(3, 15, 2, 2), 
(61, 14, 12, 2), 
(61, 15, 4, 250),
(64, 15, 2, 2), 
(1, 16, 10, 1),
(71, 16, 12, 1), 
(21, 16, 2, 1), 
(74, 16, 6, 200), 
(75, 17, 16, 2),
(76, 17, 3, 1), 
(77, 17, 2, 1), 
(5, 17, 3, 3), 
(3, 17, 2, 1), 
(13, 17, 3, '1/2'), 
(18, 17, 7, 1), 
(64, 18, 5, 1),
(66, 18, 5, 1), 
(73, 18, 3, 1), 
(78, 18, 4, 10), 
(79, 18, 17, 3), 
(80, 18, 14, 1), 
(61, 18, 18, 1), 
(81, 18, 18, 1), 
(47, 19, 3, 1), 
(66, 19, 3, 1),
(18, 19, 7, 1), 
(83, 19, 3, 4), 
(1, 19, 10, 1), 
(16, 19, 2, 1), 
(61, 19, 18, 1), 
(84, 19, 3, 1), 
(36, 19, 3, 1), 
(82, 20, 14, 6), 
(73, 20, 3, 2),
(15, 20, 3, '1/2'), 
(85, 20, 3, '1/2'), 
(86, 20, 2, 1);
 
create table receita_usuario(
IdComentario int unsigned not null unique auto_increment,
IdReceita int unsigned not null, 
IdUsuario int unsigned not null,
comentario longtext, 
nota tinyint, 
primary key(IdComentario),
foreign key(IdReceita) references receita(IdReceita),
foreign key(IdUsuario) references usuario(IdUsuario)
);
