create database aromas_e_sabores;
use aromas_e_sabores;

#carol
create table aromas_e_sabores.usuario( 
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
    PRIMARY KEY (IdUsuario)
);

insert into usuario (nome, email, dataNascimento, senha, genero, salt, dataInscricao, uuid, ativo) 
values 
("Ana Julia", "anaju8384@gmail.com", "2000-05-21", "123", 1, SUBSTRING(MD5(RAND()),-10), "2023-02-17 13:14:00", uuid(),1),
("Ana Oliveira", "anaoliveira@gmail.com", "1993-04-18", "nh0009", 1, SUBSTRING(MD5(RAND()),-10), "2020-02-17 14:30:00", UUID(), 1),
("Pedro Souza", "pedrosouza@gmail.com", "1987-09-25", "56435", 0, SUBSTRING(MD5(RAND()),-10), "2023-02-18 11:45:00", UUID(), 1),
("Mariana Santos", "marianasantos@gmail.com", "2001-06-12", "admmns3764", 1, SUBSTRING(MD5(RAND()),-10), "2023-02-19 16:20:00", UUID(), 1),
("Lucas Lima", "lucaslima@gmail.com", "1998-02-28", "54433", 0, SUBSTRING(MD5(RAND()),-10), "2023-02-20 13:00:00", UUID(), 1),
("Carolina Costa", "carolinacosta@gmail.com", "1994-11-07", "0098hhytg", 1, SUBSTRING(MD5(RAND()),-10), "2023-02-21 19:30:00", UUID(), 1),
("Gustavo Pereira", "gustavopereira@gmail.com", "2000-08-14", "343erd", 0, SUBSTRING(MD5(RAND()),-10), "2023-10-22 10:45:00", UUID(), 1),
("Amanda Fernandes", "amandafernandes@gmail.com", "1989-03-21", "xTuh778", 1, SUBSTRING(MD5(RAND()),-10), "2023-02-23 15:15:00", UUID(), 1),
("Henrique Rocha", "henriquerocha@gmail.com", "1996-10-05", "5gght67", 0, SUBSTRING(MD5(RAND()),-10), "2022-02-24 12:40:00", UUID(), 1),
("Larissa Almeida", "larissaalmeida@gmail.com", "2003-05-30", "77ghfdss8", 1, SUBSTRING(MD5(RAND()),-10), "2023-02-25 18:10:00", UUID(), 1),
("Bruno Martins", "brunomartins@gmail.com", "1991-12-17", "244322fy", 0, SUBSTRING(MD5(RAND()),-10), "2023-02-26 09:25:00", UUID(), 1),
("Fernando Silva", "fernandosilva@gmail.com", "1986-07-23", "7675vgg", 1, SUBSTRING(MD5(RAND()),-10), "2023-02-27 14:50:00", UUID(), 0),
("Camila Oliveira", "camilaoliveira@gmail.com", "1997-04-09", "9898776dcfd", 0, SUBSTRING(MD5(RAND()),-10), "2023-02-28 11:05:00", UUID(), 1),
("Douglas Santos", "douglassantos@gmail.com", "2002-09-13", "cvxfrt5434hh", 1, SUBSTRING(MD5(RAND()),-10), "2023-03-01 16:35:00", UUID(), 1),
("Tatiane Costa", "tatianecosta@gmail.com", "1988-06-26", "23r1453fcu5ygf", 0, SUBSTRING(MD5(RAND()),-10), "2023-03-02 13:20:00", UUID(), 0);

#maria
create table aromas_e_sabores.cozinha(
IdCozinha int unsigned not null unique auto_increment,
cozinha varchar(100) not null,
ativo tinyint not null,
primary key (IdCozinha)
);

#inserindo dados na tabela cozinha
insert into cozinha (cozinha, ativo) values ("Italiana", 1);
insert into cozinha (cozinha, ativo) values ("Japonesa", 1);
insert into cozinha (cozinha, ativo) values ("Tailandesa", 1);
insert into cozinha (cozinha, ativo) values ("Mexicana", 1);
insert into cozinha (cozinha, ativo) values ("Coreana", 1);
insert into cozinha (cozinha, ativo) values ("Indiana", 1);
insert into cozinha (cozinha, ativo) values ("Típicos do Norte do Brasil", 1);
insert into cozinha (cozinha, ativo) values ("Típicos do Sul do Brasil", 1);
insert into cozinha (cozinha, ativo) values ("Típicos do Centro oeste do Brasil", 1);
insert into cozinha (cozinha, ativo) values ("Típicos do Nordeste do Brasil", 1);

#maria
create table aromas_e_sabores.dificuldade(
IdDificuldade int unsigned not null unique auto_increment,
dificuldade varchar (50) not null,
ativo tinyint not null,
primary key (IdDificuldade)
); -- ok

#inserindo dados na tabela dificuldade
insert into dificuldade (dificuldade, ativo) values ("Extremamente Fácil", 1);
insert into dificuldade (dificuldade, ativo) values ("Fácil", 1);
insert into dificuldade (dificuldade, ativo) values ("Moderado", 1);
insert into dificuldade (dificuldade, ativo) values ("Difícil", 1);
insert into dificuldade (dificuldade, ativo) values ("Extremamente Difícil", 1);
insert into dificuldade (dificuldade, ativo) values ("Impossível", 1);
insert into dificuldade (dificuldade, ativo) values ("Só nascendo novamente", 1);

#carol
create table aromas_e_sabores.menu (
IdMenu int unsigned not null unique auto_increment,
menu varchar(100) not null,
descricao mediumtext,
ativo tinyint not null,
primary key (IdMenu)
); # ok

#emanuele
create table preparo (
IdPreparo int unsigned not null unique auto_increment,
preparo longtext not null,
primary key (IdPreparo)
); # ok

#emanuele
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

#emanuele
create table menu_receita(
IdMenu int unsigned not null,
IdReceita int unsigned not null,
primary key(IdMenu, IdReceita),
foreign key(IdMenu) references aromas_e_sabores.menu(IdMenu),
foreign key(IdReceita) references aromas_e_sabores.receita(IdReceita)
);

#carol
create table dosagem (
IdDosagem int unsigned not null unique auto_increment,
dosagem varchar(45) not null,
abreviacao varchar(45),
primary key (IdDosagem)
); 

#emanuele
create table ingrediente (
IdIngrediente int unsigned not null unique auto_increment,
ingrediente varchar(255) not null,
primary key (IdIngrediente)
); 

#maria
create table refeicao (
IdRefeicao int unsigned not null unique auto_increment,
refeicao varchar(50) not null,
ativo tinyint not null,
primary key (IdRefeicao)
); 

#inserindo dados na tabela refeição
insert into refeicao (refeicao, ativo) values ("Café da Manhã", 1);
insert into refeicao (refeicao, ativo) values ("Almoço", 1);
insert into refeicao (refeicao, ativo) values ("Sobremesa", 1);
insert into refeicao (refeicao, ativo) values ("Café da Tarde", 1);
insert into refeicao (refeicao, ativo) values ("Jantar", 1);
insert into refeicao (refeicao, ativo) values ("Ceia", 1);

#maria
create table categoria (
IdCategoria int unsigned not null unique auto_increment,
categoria varchar(50) not null,
ativo tinyint not null,
primary key (IdCategoria)
);

#inserindo dados na tabela categoria
insert into categoria (categoria, ativo) values ("Sopas", 1);
insert into categoria (categoria, ativo) values ("Vegetariano", 1);
insert into categoria (categoria, ativo) values ("Bolos", 1);
insert into categoria (categoria, ativo) values ("Massas", 1);
insert into categoria (categoria, ativo) values ("Carnes", 1);
insert into categoria (categoria, ativo) values ("Saladas", 1);
insert into categoria (categoria, ativo) values ("Molhos", 1);
insert into categoria (categoria, ativo) values ("Entradas", 1);
insert into categoria (categoria, ativo) values ("Frutos do Mar", 1);
insert into categoria (categoria, ativo) values ("Drinks", 1);
insert into categoria (categoria, ativo) values ("Saudáveis", 1);
insert into categoria (categoria, ativo) values ("Lanches da tarde", 1);
insert into categoria (categoria, ativo) values ("Doces", 1);
insert into categoria (categoria, ativo) values ("Gelatos", 1);
insert into categoria (categoria, ativo) values ("Tortas Salgadas", 1);

#emanuele
create table refeicao_receita(
IdRefeicao int unsigned not null,
IdReceita int unsigned not null,
primary key(IdRefeicao, IdReceita),
foreign key(IdRefeicao) references aromas_e_sabores.refeicao(IdRefeicao),
foreign key(IdReceita) references aromas_e_sabores.receita(IdReceita)
);

#maria
create table categoria_receita(
IdCategoria int unsigned not null,
IdReceita int unsigned not null,
primary key(IdCategoria, IdReceita),
foreign key(IdCategoria) references aromas_e_sabores.categoria(IdCategoria),
foreign key(IdReceita) references aromas_e_sabores.receita(IdReceita)
);

#carol
create table receita_usuario(
IdComentario int unsigned not null unique auto_increment,
IdReceita int unsigned not null, 
IdUsuario int unsigned not null,
primary key(IdComentario),
foreign key(IdReceita) references receita(IdReceita),
foreign key(IdUsuario) references usuario(IdUsuario)
); #ok

#carol
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
