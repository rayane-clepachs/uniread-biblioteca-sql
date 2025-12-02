## 📂 Script 01 – INSERTs (01-inserts-uniread.sql)

```sql
-- 01-inserts-uniread.sql
-- Populando o mini-mundo UniRead (biblioteca universitária)

USE uniread_db;

-- Limpando dados anteriores
-- DELETE FROM Devolucao;
-- DELETE FROM Emprestimo;
-- DELETE FROM Exemplar;
-- DELETE FROM Livro;
-- DELETE FROM Autor;
-- DELETE FROM Categoria;
-- DELETE FROM Aluno;
-- DELETE FROM Bibliotecario;

------------------------------------------------------------
-- TABELA: Autor
------------------------------------------------------------
INSERT INTO Autor (ID_Autor, Nome)
VALUES
  (1, 'José da Silva'),
  (2, 'Maria Oliveira'),
  (3, 'Ana Costa');

------------------------------------------------------------
-- TABELA: Categoria
------------------------------------------------------------
INSERT INTO Categoria (ID_Categoria, Nome)
VALUES
  (1, 'Tecnologia'),
  (2, 'Administração'),
  (3, 'Literatura');

------------------------------------------------------------
-- TABELA: Livro
------------------------------------------------------------
INSERT INTO Livro (ID_Livro, Titulo, ID_Autor, ID_Categoria)
VALUES
  (1, 'Introdução à Programação', 1, 1),
  (2, 'Banco de Dados para Iniciantes', 2, 1),
  (3, 'Gestão de Projetos', 2, 2),
  (4, 'Clássicos da Literatura Brasileira', 3, 3);

------------------------------------------------------------
-- TABELA: Exemplar
------------------------------------------------------------
INSERT INTO Exemplar (ID_Exemplar, ID_Livro, Status)
VALUES
  (1, 1, 'disponivel'),
  (2, 1, 'disponivel'),
  (3, 2, 'disponivel'),
  (4, 2, 'emprestado'),
  (5, 3, 'disponivel'),
  (6, 4, 'disponivel');

------------------------------------------------------------
-- TABELA: Aluno
------------------------------------------------------------
INSERT INTO Aluno (ID_Aluno, Nome, Curso)
VALUES
  (1, 'Carlos Mendes', 'ADS'),
  (2, 'Julia Santos', 'Engenharia de Software'),
  (3, 'Fernanda Rocha', 'Administração');

------------------------------------------------------------
-- TABELA: Bibliotecario
------------------------------------------------------------
INSERT INTO Bibliotecario (ID_Bibliotecario, Nome)
VALUES
  (1, 'Rita Souza'),
  (2, 'Paulo Lima');

------------------------------------------------------------
-- TABELA: Emprestimo
------------------------------------------------------------
INSERT INTO Emprestimo (ID_Emprestimo, ID_Aluno, ID_Bibliotecario, DataEmprestimo, DataPrevista)
VALUES
  (1, 1, 1, '2025-10-01', '2025-10-10'),
  (2, 2, 1, '2025-10-02', '2025-10-12'),
  (3, 1, 2, '2025-10-05', '2025-10-15');

------------------------------------------------------------
-- TABELA: Devolucao
------------------------------------------------------------
INSERT INTO Devolucao (ID_Devolucao, ID_Emprestimo, DataDevolucao)
VALUES
  (1, 1, '2025-10-09'),  -- Devolvido antes do prazo
  (2, 2, '2025-10-15');  -- Devolvido com leve atraso
