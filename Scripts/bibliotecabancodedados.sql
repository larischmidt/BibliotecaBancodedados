
# criação do banco de bados biblioteca
# https://dbdiagram.io/d/64c2c13f02bd1c4a5ed1a653
------------------------------------------------------Usando o comando para criação do banco de dados -----
CREATE DATABASE IF NOT EXISTS biblioteca; 
USE biblioteca;

------------------------Criação da tabela endereço nela ira contar todos os dados de endereço que sera ultilizado---
CREATE TABLE IF NOT EXISTS `endereco` (
  `id_endereco` int UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `rua` varchar(264),
  `numero` varchar (5),
  `complemento` varchar(10),
  `bairro` varchar(50),
  `cidade` varchar (50),
  `estado` varchar(2),
  `pais` varchar(50),
  `cep` varchar(8)
);

-----------------------Criação da tabela pessoa nela ira conter todos os dados de todas as pessoas da biblioteca-----
CREATE TABLE IF NOT EXISTS `pessoa` (
  `id_pessoa` int UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` varchar(264),
  `cpf` varchar(14),
  `data_de_nascimento` date,
  `email` varchar(264),
  `nacionalidade` varchar(50),
  `id_endereco` int,
  FOREIGN KEY (id_endereco) REFERENCES endereco (id_endereco) ON UPDATE CASCADE ON DELETE CASCADE
);
---------------------- Criação da tabela funcionario nela se encontra os dados cadastrais dos funcionarios dentro da empresa---
CREATE TABLE IF NOT EXISTS `funcionario` (
  `id_funcionario` int UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `cargo` varchar(50),
  `numero_de_registro` varchar(20),
  `ano_de_admissao` datetime,
  `senha_de_acesso` varchar(8),
  `id_pessoa` int,
  FOREIGN KEY (id_pessoa) REFERENCES pessoa (id_pessoa) ON UPDATE CASCADE ON DELETE CASCADE
);
-----------------------Criação da tabela autor nela consta informações sobre o autor e suas obras---
CREATE TABLE IF NOT EXISTS `autor` (
  `id_autor` int UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `quantidade_de_publicados` varchar(10),
  `especializacao` varchar(255),
  `id_pessoa` int,
 FOREIGN KEY (id_pessoa) REFERENCES pessoa (id_pessoa) ON UPDATE CASCADE ON DELETE CASCADE
);
---------------------Criação da tabela editora nela consta as infromações das editoras que forcem as edições para biblioteca ----
CREATE TABLE IF NOT EXISTS `editora` (
  `id_editora` int UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` varchar(264),
  `telefone` varchar(11),
  `cnpj` varchar(14)
 );
--------------------------Criação da tabela livro nela se encontra todas as informações das obras disponivéis na biblioteca-----
CREATE TABLE IF NOT EXISTS `livro` (
  `id_livro` int UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255),
  `genero` varchar(255),
  `quantidade_de_paginas` varchar(10),
  `idioma` varchar(50),
  `ano_de_publicacao` varchar(4),
  `id_autor` int,
  `id_editora` int,
  FOREIGN KEY (id_autor) REFERENCES autor (id_autor) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (id_editora) REFERENCES editora (id_editora) ON UPDATE CASCADE ON DELETE CASCADE
);


