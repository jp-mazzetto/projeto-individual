CREATE DATABASE BlueHorizon;

USE BlueHorizon;

CREATE TABLE usuario(
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
    CPF CHAR(11),
	email VARCHAR(50) UNIQUE,
	senha VARCHAR(50),
    fkQuiz INT NULL,
    FOREIGN KEY (fkQuiz) REFERENCES quiz (idQuiz),
    DT_CRIACAO TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM usuario;
-- truncate table usuario;
CREATE TABLE quiz(
	idQuiz INT PRIMARY KEY AUTO_INCREMENT,
    numeroPergunta INT,
    textoPergunta VARCHAR(200),
    resposta VARCHAR(200),
    pontuacao INT
    );
    
CREATE TABLE pontuacao(
  idPontuacao INT AUTO_INCREMENT PRIMARY KEY,
  qtdPontos INT NOT NULL
);

select * from pontuacao;

-- drop table pontuacao;
    