/*Mostrar dados*/
SELECT * FROM aluno;
/*Mostrar dados*/
SELECT * FROM materia;

/*Mostrar dados específicos de um aluno*/
SELECT * FROM aluno WHERE Idade=21;
/*Mostrar dados em uma "busca" com LIKE */
SELECT * FROM aluno WHERE Nome LIKE '%Bruna%';
/*Ordenar por nome do aluno de forma ascendente*/
SELECT * FROM aluno ORDER BY Nome ASC;
/*Ordenar por nome do aluno de forma decrescente*/
SELECT * FROM aluno ORDER BY Nome DESC;
/*Juntamos as 3 tabelas usando INNER JOIN*/
SELECT * FROM Trabalho
    INNER JOIN materia on materia.IdMateria=trabalho.IdMateria