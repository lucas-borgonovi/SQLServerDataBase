CREATE DATABASE CeA;

CREATE TABLE Departamento(
	IdDepartamento INT IDENTITY PRIMARY KEY,
	Tipo VARCHAR(100)
);
CREATE TABLE Localizacao(
	IdLocalizacao INT IDENTITY PRIMARY KEY,
	Endereco VARCHAR(100),
	IdDepartamento INT FOREIGN KEY REFERENCES Departamento(IdDepartamento)
);
CREATE TABLE Projetos(
	IdProjetos INT IDENTITY PRIMARY KEY,
	Nome VARCHAR(100),
	Descricao VARCHAR(200),
	Orcamento FLOAT
);
CREATE TABLE Empregados(
	IdEmpregados INT IDENTITY PRIMARY KEY,
	Nome VARCHAR(100),
	Rg CHAR(9),
	Endereco VARCHAR(100),
	IdLocalizacao INT FOREIGN KEY REFERENCES Localizacao(IdLocalizacao)
);
CREATE TABLE Dependentes(
	IdDependentes INT IDENTITY PRIMARY KEY,
	Nome VARCHAR(100),
	IdEmpregados INT FOREIGN KEY REFERENCES Empregados(IdEmpregados)
);
CREATE TABLE RegistroProjeto(
	IdRegistroProjeto INT IDENTITY PRIMARY KEY,
	IdProjetos INT FOREIGN KEY REFERENCES Projetos(IdProjetos),
	IdEmpregados INT FOREIGN KEY REFERENCES Empregados(IdEmpregados)
);
SELECT * FROM Departamento;
SELECT * FROM Localizacao;
SELECT * FROM Projetos;
SELECT * FROM Empregados;
SELECT * FROM Dependentes;
SELECT * FROM RegistroProjeto;


INSERT INTO Departamento(Tipo) VALUES('Projetos');
INSERT INTO Localizacao(Endereco,IdDepartamento) VALUES('Av 4',1);
INSERT INTO Projetos(Nome,Descricao,Orcamento) VALUES('Proj3','Terceiro projeto desenvolvido',2500);
INSERT INTO Empregados(Nome,Rg,Endereco,IdLocalizacao) VALUES('Marcos','536426009','av fdsyufj',3);
INSERT INTO Dependentes(Nome,IdEmpregados) VALUES('John',1);
INSERT INTO RegistroProjeto(IdEmpregados,IdProjetos) VALUES(3,1);