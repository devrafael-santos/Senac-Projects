Create schema confeitaria;
use confeitaria;

Create table Cliente (
CPF VARCHAR (14) Not null,
nascimento date Not null,
nome VARCHAR (50) Not null,
sexo VARCHAR (10) Not null,
data_cadastro date Not null,
numero int not null,
cep VARCHAR (9) Not null,
rua VARCHAR (45) Not null,
bairro VARCHAR (45) Not null,
cidade VARCHAR (20) Not null,
estado VARCHAR (20) Not null,
Primary Key (CPF));

Create Table Telefone (
telefone VARCHAR (15) Not null,
CPF VARCHAR (14) Not null,
Primary Key (telefone,CPF),
Foreign Key (CPF) references Cliente (CPF));

Create Table Bolo (
idBolo int Not null auto_increment,
sabor VARCHAR (40) Not null,
tipo VARCHAR (30) Not null,
tamanho VARCHAR (20) Not null,
valor double not null,
Primary Key (idBolo));

Create Table Venda (
cod_venda int Not null auto_increment,
CPF VARCHAR (14) Not null,
idBolo int Not Null,
data_venda Date Not null,
Obs VARCHAR (60) Not null,
Primary Key (cod_venda, idBolo, CPF),
Foreign Key (idBolo) references Bolo (idBolo),
Foreign Key (CPF) references Cliente (CPF));

INSERT INTO Cliente 
(CPF, nascimento, nome, sexo, data_cadastro, numero, cep, rua, bairro, cidade, estado)
VALUES ("870.128.725-78","1972-07-20","Esther Patrícia Carvalho","Feminino","2021-08-21","646","40444-260","Rua Araújo Bulcão","Roma","Salvador","BA");

INSERT INTO Cliente 
(CPF, nascimento, nome, sexo, data_cadastro, numero, cep, rua, bairro, cidade, estado)
VALUES ("810.543.415-67","1991-07-22","Raul Carlos Eduardo Calebe Silveira","Masculino","2021-08-21","525","42806-330","Favela Santa Maria","Lama Preta","Camaçari","BA");

INSERT INTO Cliente 
(CPF, nascimento, nome, sexo, data_cadastro, numero, cep, rua, bairro, cidade, estado)
VALUES ("498.030.105-30","1992-04-16","Marli Aline Carolina Rezende","Feminino","2021-08-22","968","48994-970","Vila de Tanquinho do Poço","Centro","Tanquinho do Poço","BA");

INSERT INTO Telefone
(CPF, Telefone)
VALUES ("870.128.725-78","(71) 3887-7858");

INSERT INTO Telefone
(CPF, Telefone)
VALUES ("810.543.415-67","(71) 9925-7215");

INSERT INTO Telefone
(CPF, Telefone)
VALUES ("498.030.105-30","(71) 2630-5912");

INSERT INTO Bolo
(idBolo, sabor, tipo, tamanho, valor)
VALUES (1,"Chocolate","Gourmet","Grande","250.00");

INSERT INTO Bolo
(sabor, tipo, tamanho, valor)
VALUES ("Morango","Trufado","Medio","150.00");

INSERT INTO Bolo
(sabor, tipo, tamanho, valor)
VALUES ("Leite Condensado","Castelo","Pequeno","120.00");

INSERT Venda
(cod_venda, CPF, idBolo, data_venda,Obs )
VALUES (1,"870.128.725-78","1","2020-06-19","Dupla Camada");

INSERT Venda
(CPF, idBolo, data_venda,Obs )
VALUES ("810.543.415-67","2","2018-07-22","Caseiro");

INSERT Venda
(CPF, idBolo, data_venda,Obs )
VALUES ("498.030.105-30","3","2022-02-15","Artificial");