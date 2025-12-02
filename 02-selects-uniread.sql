-- 02-selects-uniread.sql
-- Consultas no mini-mundo UniRead

USE uniread_db;

------------------------------------------------------------
-- 1) Listar todos os livros ordenados pelo título
------------------------------------------------------------
SELECT
  ID_Livro,
  Titulo
FROM Livro
ORDER BY Titulo ASC;

------------------------------------------------------------
-- 2) Listar apenas os livros da categoria 'Tecnologia'
-- usando JOIN entre Livro e Categoria
------------------------------------------------------------
SELECT
  l.ID_Livro,
  l.Titulo,
  c.Nome AS Categoria
FROM Livro AS l
JOIN Categoria AS c ON l.ID_Categoria = c.ID_Categoria
WHERE c.Nome = 'Tecnologia';

------------------------------------------------------------
-- 3) Listar os empréstimos com nome do aluno e do bibliotecário
------------------------------------------------------------
SELECT
  e.ID_Emprestimo,
  a.Nome AS NomeAluno,
  b.Nome AS NomeBibliotecario,
  e.DataEmprestimo,
  e.DataPrevista
FROM Emprestimo AS e
JOIN Aluno AS a ON e.ID_Aluno = a.ID_Aluno
JOIN Bibliotecario AS b ON e.ID_Bibliotecario = b.ID_Bibliotecario
ORDER BY e.DataEmprestimo;

------------------------------------------------------------
-- 4) Buscar os empréstimos que ainda NÃO têm devolução registrada
------------------------------------------------------------
SELECT
  e.ID_Emprestimo,
  a.Nome AS NomeAluno,
  e.DataEmprestimo,
  e.DataPrevista
FROM Emprestimo AS e
LEFT JOIN Devolucao AS d ON e.ID_Emprestimo = d.ID_Emprestimo
JOIN Aluno AS a ON e.ID_Aluno = a.ID_Aluno
WHERE d.ID_Devolucao IS NULL;

------------------------------------------------------------
-- 5) Listar os 2 alunos com menor ID
------------------------------------------------------------
SELECT
  ID_Aluno,
  Nome,
  Curso
FROM Aluno
ORDER BY ID_Aluno
LIMIT 2;
