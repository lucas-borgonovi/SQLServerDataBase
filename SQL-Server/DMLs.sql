/* Incluir nova coluna */
ALTER TABLE materia ADD teste VARCHAR(2);
/*Excluir coluna*/
ALTER TABLE materia DROP COLUMN teste;
/*Inserir dado de um aluno*/
INSERT INTO aluno (Nome,Ra,Idade) VALUES ('Bruna','R123',23);
/*Inserir dado na tabela materia*/
INSERT INTO materia(Materia) VALUES ('Português');

/*Alterar dado(s)*/
UPDATE aluno SET 
	Nome='Bruna Ribeiro',
	Idade=21
WHERE IdAluno=2;

/*Excluir dado*/
DELETE FROM materia WHERE IdMateria=2;