CREATE DATABASE gameofselects;

USE gameofselects;

CREATE TABLE velho(
	idVelho INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    cpf CHAR(11),
    dtNasc DATE,
    timeFutebol VARCHAR(45),
    descricaoSkin VARCHAR(200),
    habilidade VARCHAR(30),
    fkFidelizado INT,
		CONSTRAINT velhoHasFidelizado FOREIGN KEY (fkFidelizado) REFERENCES velho(idVelho)
);

CREATE TABLE bar(
	idBar INT PRIMARY KEY AUTO_INCREMENT,
    nomeBar VARCHAR(50),
    cnpj CHAR(14),
    cep char(8),
    complemento VARCHAR(45),
    numComplemento VARCHAR(45),
    fkDono INT,
		CONSTRAINT barHasDono FOREIGN KEY (fkDono) REFERENCES velho(idVelho)
);

CREATE TABLE pinga(
	idPinga INT PRIMARY KEY AUTO_INCREMENT,
    nomePinga VARCHAR(45),
    teorAlcolico DECIMAL(5,2)
);

CREATE TABLE frequencia(
	idFrequencia INT PRIMARY KEY AUTO_INCREMENT,
    dataHora DATETIME,
	fkBar INT,
    fkVelho INT,
		CONSTRAINT frequenciaHasBar FOREIGN KEY(fkBar) REFERENCES bar(idBar),
        CONSTRAINT frequenciaHasVelho FOREIGN KEY (fkVelho) REFERENCES velho(idVelho)
);

CREATE TABLE detalheFrequencia(
	idDetalheFrequencia INT PRIMARY KEY AUTO_INCREMENT,
    qtdDose INT,
	fkPinga INT,
    fkFrequencia INT,
		CONSTRAINT detalheFrequenciaHasPinga FOREIGN KEY (fkPinga) REFERENCES pinga(idPinga),
        CONSTRAINT detalheFrequenciaHasFrequencia FOREIGN KEY (fkFrequencia) REFERENCES frequencia(idFrequencia)
);

CREATE TABLE disputa(
    idDisputa INT PRIMARY KEY AUTO_INCREMENT,
    dataHoraInicio DATETIME,
    dataHoraFim DATETIME,
    vencedor INT,
    perdedor INT,
    CONSTRAINT disputaFKDonoVencedor FOREIGN KEY (vencedor) REFERENCES velho(idVelho),
    CONSTRAINT disputaFKDonoPerdedor FOREIGN KEY (perdedor) REFERENCES velho(idVelho)
);

CREATE TABLE consumoPinga(
    idConsumo INT PRIMARY KEY AUTO_INCREMENT,
    qtdDose INT,
    fkDisputa INT,
    fkDono INT,
    fkPinga INT,
    CONSTRAINT consumoPingaFKDisputa FOREIGN KEY (fkDisputa) REFERENCES disputa(idDisputa),
    CONSTRAINT consumoPingaFKDono FOREIGN KEY (fkDono) REFERENCES velho(idVelho),
    CONSTRAINT consumoPingaFKPinga FOREIGN KEY (fkPinga) REFERENCES pinga(idPinga)
);