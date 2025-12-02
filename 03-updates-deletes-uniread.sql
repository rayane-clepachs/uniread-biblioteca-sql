-- 03-updates-deletes-uniread.sql
-- Comandos UPDATE e DELETE com condições

USE uniread_db;

------------------------------------------------------------
-- UPDATES
------------------------------------------------------------

-- 1) Atualizar o curso de um aluno específico
UPDATE Aluno
SET Curso = 'Sistemas de Informação'
WHERE ID_Aluno = 3;

-- 2) Corrigir o nome de um autor
UPDATE Autor
SET Nome = 'José da Silva Filho'
WHERE ID_Autor = 1;

-- 3) Marcar um exemplar como 'emprestado'
UPDATE Exemplar
SET Status = 'emprestado'
WHERE ID_Exemplar = 3;

------------------------------------------------------------
-- DELETES
------------------------------------------------------------

-- 1) Remover um empréstimo de teste
DELETE FROM Devolucao
WHERE ID_Emprestimo = 3;

DELETE FROM Emprestimo
WHERE ID_Emprestimo = 3;

-- 2) Remover um aluno que nunca fez empréstimo
DELETE FROM Aluno
WHERE ID_Aluno = 3;

-- 3) Remover um exemplar que foi cadastrado errado
DELETE FROM Exemplar
WHERE ID_Exemplar = 6;
