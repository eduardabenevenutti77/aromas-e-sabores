create database aromas_e_sabores;
use aromas_e_sabores;

create table aromas_e_sabores.usuario( 
	IdUsuario int unsigned not null unique auto_increment,
    nome varchar(45) not null,
    email varchar(45) not null,
    dataNascimento date,
    senha varchar(100) not null,
    genero tinyint,
    salt varchar(590) not null,
    dataInscricao datetime not null,
    uuid varchar(45),
    ativo tinyint not null,
    primary key (IdUsuario)
);

create table aromas_e_sabores.cozinha(
IdCozinha int unsigned not null unique auto_increment,
cozinha varchar(45) not null,
ativo tinyint not null,
primary key (IdCozinha)
);

create table aromas_e_sabores.dificuldades(
IdDificuldade int unsigned not null unique auto_increment,
dificuldade varchar (45) not null,
ativo tinyint not null,
primary key (IdDificuldade)
);

create table aromas_e_sabores.menu (
IdMenu int unsigned not null unique auto_increment,
menu varchar(45) not null,
descricao mediumtext,
ativo tinyint not null,
primary key (IdMenu)
);

create table aromas_e_sabores.receita (
IdReceita int unsigned not null unique auto_increment,
dificuldade_Id_Dificuldade INT unsigned NOT NULL,
titulo varchar(45) not null,
descricao tinytext,
imagem longblob,
primary key (IdReceita),
foreign key(dificuldade_Id_Dificuldade) references aromas_e_sabores.dificuldades(IdDificuldade)
);

create table refeicao_receita(
-- erro arrumar
IdRefeicao_Id_Refeicao INT unsigned NOT NULL,
IdReceita_Id_Receita INT unsigned NOT NULL,
foreign key(IdRefeicao_Id_Refeicao) references aromas_e_sabores.dificuldades(IdRefeicao),
foreign key(IdReceita_Id_Receita) references aromas_e_sabores.dificuldades(IdReceita)
);

create table dosagem (
IdDosagem int unsigned not null unique auto_increment,
dosagem varchar(45) not null,
abreviacao varchar(45),
primary key (IdDosagem)
);

create table ingredientes (
IdIngredientes int unsigned not null unique auto_increment,
ingredientes varchar(45) not null,
primary key (IdIngredientes)
);

create table preparo (
IdPreparo int unsigned not null unique auto_increment,
preparo longtext not null,
primary key (IdPreparo)
);

create table refeicao (
IdRefeicao int unsigned not null unique auto_increment,
refeicao varchar(45) not null,
ativo tinyint not null,
primary key (IdRefeicao)
);

create table categoria (
IdCategoria int unsigned not null unique auto_increment,
categoria varchar(45) not null,
ativo tinyint not null,
primary key (IdCategoria)
);
