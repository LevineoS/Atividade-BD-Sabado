CREATE DATABASE PASCOTTOCLEITON;

USE PASCOTTOCLEITON;

CREATE TABLE Funcionarios(

id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
data_nascimento DATE NOT NULL,
id_cargo INT,
email_funcionario VARCHAR(255) NOT NULL,
FOREIGN KEY (id_cargo) REFERENCES Cargos(id_cargo)

);

CREATE TABLE Cargos (

id_cargo INT AUTO_INCREMENT PRIMARY KEY,
nome_cargo VARCHAR (255) NOT NULL

);

CREATE TABLE Clientes(

id_clientes INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
data_nascimento DATE NOT NULL,
email VARCHAR(255) UNIQUE NOT NULL,
id_pedidos INT

);

CREATE TABLE Pedidos(

id_pedidos INT AUTO_INCREMENT PRIMARY KEY,
data_pedido DATE NOT NULL,
condição VARCHAR(255) NOT NULL,
id_clientes INT,
FOREIGN KEY (id_clientes) REFERENCES Clientes(id_clientes)

);

CREATE TABLE Itens_Pedidos(

id_item INT AUTO_INCREMENT PRIMARY KEY,
id_produto INT,
id_pedidos INT,
FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto),
FOREIGN KEY (id_pedidos) REFERENCES Pedidos(id_pedidos),
quantidade INT NOT NULL,
preco_unitario DOUBLE NOT NULL

);

CREATE TABLE Produtos(

id_produto INT AUTO_INCREMENT PRIMARY KEY,
nome_produto VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL, 
preco DOUBLE NOT NULL,
qtnd_estoque INT NOT NULL

);

INSERT INTO Funcionarios (data_nascimento, email_funcionario) VALUES 
('1999-08-06', 'func1@cleitonDias.com'), 
('1988-09-16', 'func2@gmail.com'),
('2007-07-29', 'func3@gmail.com'),
('2001-01-05', 'func4@hotmail.com'),
('2004-05-09', 'LeviSantos@cleitonDias.com'),
('1995-04-01', 'func6@outlook.com'),
('1991-03-04', 'func7@outlook.com');


INSERT INTO Cargos (nome_cargo) VALUES 

('Vendedor'),
('Suporte T.I'),
('Supervisor'),
('Zelador'),
('Dono'),
('Entregador'),
('Faixineiro');

INSERT INTO Clientes (nome, data_nascimento, email) VALUES

('Jogiscraudo', '1997-07-07', 'Jogiscraudo@cleitonDias.com'), 
('Marivila', '1987-08-09', 'Marivila@gmail.com'),
('Cleiton Dias',  '2001-04-23', 'Cleitin@gmail.com'),
('Joviane', '2003-01-02', 'Joviane@hotmail.com'),
('Levi Santos', '2004-05-09', 'LeviSantos@cleitonDias.com'),
('Welligton', '1995-04-01', 'Welligton@outlook.com'),
('Xaviscraunialdo', '1991-02-09', 'Xavis@outlook.com');

INSERT INTO Produtos (nome_produto, descricao, preco, qtnd_estoque) VALUES
('Pente', 'Pente para cabelo', '7.99', '9'),
('Pasta de Dente', 'Para escovar os dentes', '9.99', '19'),
('Pratos', 'Objeto de porcelana mundialmente usado', '59.99', '67'),
('Caderno', 'Pra você anotar a materia de PW2 do Cleiton', '19.99', '85'),
('Capa de Almofada', 'Deixar sua almofada bonita!', '27.99', '89'),
('Carregador', 'Turbo para os melhores celulares', '72.99', '75'),
('Cadeados', 'Deixar sua casa em segurança', '17.89', '45');

INSERT INTO Itens_Pedidos (quantidade, preco_unitario) VALUES
('3', '7.99'),
('4', '9.99'),
('11', '19.99'),
('12', '27.99'),
('19', '59.99'),
('9', '72.99'),
('6', '17.89');

INSERT INTO Pedidos (data_pedido, condição) VALUES
('2025-05-09', 'Enviado'),
('2025-04-07', 'Pendente'),
('2025-05-02', 'Cancelada'),
('2025-02-05', 'Entregue'),
('2025-01-23', 'Entregue'),
('2025-05-07', 'Pendente'),
('2025-01-09', 'Cancelada');