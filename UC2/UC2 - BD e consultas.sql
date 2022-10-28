Create schema if not exists confeitaria;
Use confeitaria;

Create table if not exists Cliente (
cpf VARCHAR(14) not null,
nome VARCHAR (50) not null,
nascimento date not null,
sexo VARCHAR (10) not null,
data_cadastro date not null,
cidade VARCHAR (20) not null,
rua VARCHAR (45) not null,
estado VARCHAR (20) not null,
cep varchar (9) Not null,
numero int not null, /* Melhor utilizar VARCHAR */
bairro VARCHAR (45) not null,
Primary Key (cpf));

Create table  if not exists Telefone (
telefone VARCHAR (15) not null,
cpf VARCHAR(14) not null,
Foreign Key (CPF) references Cliente (CPF),
Primary Key (Telefone,CPF));


INSERT INTO Cliente(cpf, nome, nascimento, sexo, data_cadastro, cidade, rua, estado, cep, numero, bairro) VALUES ("984.038.685-96", "Bruno Luan Silveira", "1961-07-11", "M", "1961-07-11", "Macapá", "Avenida Rio Oiapoque", "AP", "68911-065", "257", "Fazendinha");
INSERT INTO Cliente(CPF, nome, nascimento, sexo, data_cadastro, cidade, rua, estado, cep, numero, bairro) VALUES ("930-173-849-00", "Bruno Luan Silveira", "1961-07-11", "M", "2022-08-16", "Macapá", "Avenida Rio Oiapoque", "AP", "68911-065", "257", "Fazendinha");
INSERT INTO Cliente(CPF, nome, nascimento, sexo, data_cadastro, cidade, rua, estado, cep, numero, bairro) VALUES ("671.470.475-59", "Iago Luís Victor Barbosa", "1951-08-08", "M", "2022-08-16", "Salvador", "Avenida Coelho", "BA", "40310-180", "922", "Pau Miúdo");
INSERT INTO Cliente(CPF, nome, nascimento, sexo, data_cadastro, cidade, rua, estado, cep, numero, bairro) VALUES ("114.358.365-53", "Gael Bruno Oliver da Cunha", "1978-04-25", "M", "2022-08-16", "Juazeiro", "Avenida Frei Roberto", "BA", "48906-180", "648", "Tabuleiro");

INSERT INTO Cliente(CPF, nome, nascimento, sexo, data_cadastro, cidade, rua, estado, cep, numero, bairro) VALUES ("148.692.455-74", "Maitê Rita da Rocha", "1954-08-06", "F", "2022-08-16", "Salvador", "Caminho 27-Quadra D", "BA", "41341-490", "863", "Cajazeiras");
INSERT INTO Cliente(CPF, nome, nascimento, sexo, data_cadastro, cidade, rua, estado, cep, numero, bairro) VALUES ("856.737.095-79", "Alana Sarah Campos", "1961-10-04", "F", "2022-10-04", "Salvador", "Avenida Cecília Meireles", "BA", "41341-490", "863", "Cajazeiras");
INSERT INTO Cliente(CPF, nome, nascimento, sexo, data_cadastro, cidade, rua, estado, cep, numero, bairro) VALUES ("611.987.645-62", "Márcio Cauê Samuel Ribeiro", "1957-06-08", "M", "2023-06-08", "Barreiras", "Rua Grécia", "BA", "47807-165", "710", "Boa Sorte");
INSERT INTO Cliente(CPF, nome, nascimento, sexo, data_cadastro, cidade, rua, estado, cep, numero, bairro) VALUES ("617.638.395-16", "Maria Renata Assis", "1990-06-26", "F", "1990-06-26", "1990-06-26", "Rua Elísio", "BA", "40340-790", "152", "IAPI");
INSERT INTO Cliente(CPF, nome, nascimento, sexo, data_cadastro, cidade, rua, estado, cep, numero, bairro) VALUES ("134.739.525-32", "Mariana Aurora Fabiana Brito", "1994-06-13", "F", "1994-06-13", "Salvador", "Avenida Armando", "BA", "40275-210", "270", "Campinas de Brotas");
INSERT INTO Cliente(CPF, nome, nascimento, sexo, data_cadastro, cidade, rua, estado, cep, numero, bairro) VALUES ("194.097.845-90", "Emily Gabriela Giovanna Aragão", "1964-03-07", "F", "1964-03-07", "Ilhéus", "Rua Bahia", "BA", "45654-555", "925", "Pontal");
INSERT INTO Cliente(CPF, nome, nascimento, sexo, data_cadastro, cidade, rua, estado, cep, numero, bairro) VALUES ("117.961.875-00", "Benjamin Nelson Juan Santos", "1957-07-24", "M", "1957-07-24", "Teixeira de Freitas", "Rua Presidente Artur Bernardes", "BA", "45987-348", "222", "Colina Verde");
INSERT INTO Cliente(CPF, nome, nascimento, sexo, data_cadastro, cidade, rua, estado, cep, numero, bairro) VALUES ("522.795.985-40", "Isaac Lucca Aparício", "1978-07-25", "M", "2020-07-25", "Salvador", "3ª Travessa Nova do Camurujipe", "BA", "40390-450", "292", "São Caetano");
INSERT INTO Cliente(CPF, nome, nascimento, sexo, data_cadastro, cidade, rua, estado, cep, numero, bairro) VALUES ("061.147.065-95", "Emanuel Igor Filipe Sales", "2001-02-22", "M", "2001-02-22", "Salvador", "Travessa do Sossego", "BA", "41615-460", "959", "Alto do Coqueirinho");
INSERT INTO Cliente(CPF, nome, nascimento, sexo, data_cadastro, cidade, rua, estado, cep, numero, bairro) VALUES ("866.357.505-09", "Isis Luciana Emilly Pires", "1977-02-15", "F", "1977-02-15", "Feira de Santana", "Rua Andaraí", "BA", "44022-036", "665", "Cruzeiro");

INSERT INTO Cliente 
(CPF, nome, nascimento, sexo, data_cadastro, cidade, rua, estado, cep, numero, bairro)
VALUES ("018.023.305-00","Marcos Vinicius Paulo Juan Lima","1984-06-15","M","2020-08-16","Feira de Santana","Rua E","BA","44053-792","679","Cidade Nova");

INSERT INTO Cliente 
(CPF, nome, nascimento, sexo, data_cadastro, cidade, rua, estado, cep, numero, bairro)
VALUES ("214.109.365-11","Simone Mirella Maya Aparício","1955-05-06","F","2021-08-16","Salvador","1 Travessa União","BA","40470-271","146","Lobato");

INSERT INTO Cliente 
(CPF, nome, nascimento, sexo, data_cadastro, cidade, rua, estado, cep, numero, bairro)
VALUES ("614.355.945-76","Kaique Vicente Erick Pires","1992-02-08","M","2020-08-16","Salvador","1 Avenida Mello Moraes Filho","BA","44053-792","679","Cidade Nova");

INSERT INTO Cliente 
(CPF, nome, nascimento, sexo, data_cadastro, cidade, rua, estado, cep, numero, bairro)
VALUES ("369.139.645-36","Isadora Melissa Lopes","1946-08-07","F","2023-08-16","Teixeira de Freitas","Rua Doutor Rafael de Castro","BA","45985-607","605","Residencial dos Pioneiros");

INSERT INTO Cliente 
(CPF, nome, nascimento, sexo, data_cadastro, cidade, rua, estado, cep, numero, bairro)
VALUES ("731.882.605-04","Marcos Bento Gomes","1956-03-11","M","2022-08-16","Salvador","Rua José Avena","BA","40295-510","672","Horto Florestal");

INSERT INTO Cliente 
(CPF, nome, nascimento, sexo, data_cadastro, cidade, rua, estado, cep, numero, bairro)
VALUES ("639.651.815-56","Emilly Luana Moura","1967-06-06","F","2020-08-16","Salvador","Travessa Ana Lúcia Torres","BA","41194-065","807","Doron");

INSERT INTO Cliente 
(CPF, nome, nascimento, sexo, data_cadastro, cidade, rua, estado, cep, numero, bairro)
VALUES ("548.562.715-39","Severino Henrique Leonardo Santos","1970-03-05","M","2020-08-16","Eunápolis","Rua dos Fundadores","BA","45820-120","449","Centro");


INSERT INTO Telefone(cpf, telefone) VALUE ("984.038.685-96", "(75) 2652-1519");
INSERT INTO Telefone(cpf, telefone) VALUE ("930-173-849-00", "(75) 99270-4575");
INSERT INTO Telefone(cpf, telefone) VALUE ("671.470.475-59", "(77) 2683-0194");
INSERT INTO Telefone(cpf, telefone) VALUE ("114.358.365-53", "(77) 98549-7544");
INSERT INTO Telefone(cpf, telefone) VALUE ("148.692.455-74", "(71) 3601-9766");
INSERT INTO Telefone(cpf, telefone) VALUE ("856.737.095-79", "(71) 99380-7650");
INSERT INTO Telefone(cpf, telefone) VALUE ("611.987.645-62", "(77) 3533-8766");
INSERT INTO Telefone(cpf, telefone) VALUE ("617.638.395-16", "(77) 98715-8358");
INSERT INTO Telefone(cpf, telefone) VALUE ("134.739.525-32", "(71) 3833-6619");
INSERT INTO Telefone(cpf, telefone) VALUE ("194.097.845-90", "(71) 99383-4304");
INSERT INTO Telefone(cpf, telefone) VALUE ("117.961.875-00", "(71) 3955-6079");
INSERT INTO Telefone(cpf, telefone) VALUE ("522.795.985-40", "(71) 98151-3929");
INSERT INTO Telefone(cpf, telefone) VALUE ("061.147.065-95", "(71) 3792-2476");
INSERT INTO Telefone(cpf, telefone) VALUE ("866.357.505-09", "(71) 99686-6517");
INSERT INTO Telefone(cpf, telefone) VALUE ("018.023.305-00", "(73) 2932-8296");
INSERT INTO Telefone(cpf, telefone) VALUE ("214.109.365-11", "(73) 98920-1769");
INSERT INTO Telefone(cpf, telefone) VALUE ("614.355.945-76", "(71) 2597-9007");
INSERT INTO Telefone(cpf, telefone) VALUE ("369.139.645-36", "(71) 99831-0537");
INSERT INTO Telefone(cpf, telefone) VALUE ("731.882.605-04", "(71) 2946-6950");
INSERT INTO Telefone(cpf, telefone) VALUE ("639.651.815-56", "(71) 99682-4481");
INSERT INTO Telefone(cpf, telefone) VALUE ("548.562.715-39", "(77) 3664-4779");
INSERT INTO Telefone(cpf, telefone) VALUE ("548.562.715-39", "(77) 99315-0537");


/* Consultas */

SELECT cpf, nome, nascimento, sexo, data_cadastro, rua, numero, bairro, cidade, estado, cep FROM Cliente;

SELECT COUNT(sexo) FROM Cliente WHERE sexo = "F";
SELECT COUNT(sexo) FROM Cliente WHERE sexo = "M";

SELECT cpf, nome, nascimento FROM Cliente WHERE nascimento < "2005-00-00";
SELECT cpf, nome, data_cadastro FROM Cliente WHERE data_cadastro < "2022-00-00";

SELECT cpf, nome, estado, cidade FROM Cliente WHERE estado = "BA" AND cidade = "Salvador";