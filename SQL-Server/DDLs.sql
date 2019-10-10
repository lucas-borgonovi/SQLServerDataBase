/*Criar banco */
CREATE DATABASE boletim;

/*Excluir banco */
DROP DATABASE boletim;

/*Criar banco */
USE boletim;

/*Criar tabela de aluno */
--Identity-serve para autoincrementar de 1 em 1
CREATE TABLE aluno(
	IdAluno INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100) NOT NULL,--NOT NULL serve para obrigar o dado a ser preenchido
	Ra VARCHAR(20),
	Idade INT 
);
USE boletim;
/*Criar tabela de matéria */
CREATE TABLE materia(
	IdMateria INT IDENTITY PRIMARY KEY NOT NULL,
	Materia VARCHAR(50) NOT NULL
);

/* Criar tabela de trabalho */
CREATE TABLE trabalho(
	IdTrabalho INT IDENTITY PRIMARY KEY NOT NULL,
	Nota DECIMAL,

	--Chamamos nossas chaves estrangeiras
	IdMateria INT FOREIGN KEY REFERENCES materia(IdMateria),
	IdAluno INT FOREIGN KEY REFERENCES aluno(IdAluno)

);

