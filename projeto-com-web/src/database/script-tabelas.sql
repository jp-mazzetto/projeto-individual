-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/*
comandos para mysql server
*/

CREATE DATABASE BlueHorizon;

USE BlueHorizon;


CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
	fkQuiz INT,
	FOREIGN KEY (fkQuiz) REFERENCES quiz(idQuiz)
);
SELECT * FROM usuario;

CREATE TABLE quiz(
	idQuiz INT PRIMARY KEY AUTO_INCREMENT,
    numeroPergunta INT,
    textoPergunta VARCHAR(200),
    resposta VARCHAR(200),
    pontuacao INT
    );
    




insert into empresa (razao_social, cnpj) values ('Empresa 1', '00000000000000');
insert into aquario (descricao, fk_empresa) values ('Aquário de Estrela-do-mar', 1);