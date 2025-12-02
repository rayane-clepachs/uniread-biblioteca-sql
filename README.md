# UniRead - Biblioteca Universitária 🧾

Este projeto faz parte da Experiência Prática IV da disciplina de Modelagem de Banco de Dados.

O objetivo é praticar comandos SQL (DML) em um mini-mundo de uma biblioteca universitária, chamado **UniRead**, usando um banco de dados relacional.

## 🗂 Mini-mundo (Resumo)

O sistema UniRead controla:

- Alunos da universidade;
- Livros, autores e categorias;
- Empréstimos de livros;
- Devoluções realizadas pelos alunos.

As tabelas principais são:

- `Autor`
- `Categoria`
- `Livro`
- `Exemplar`
- `Aluno`
- `Bibliotecario`
- `Emprestimo`
- `Devolucao`

> Observação: a criação das tabelas (DDL) foi feita em uma etapa anterior do projeto.  
> Aqui focamos apenas na **manipulação de dados (DML)**.

---

## ⚙️ Ambiente utilizado

- Banco de dados: **MySQL**
- Ferramenta: **MySQL Workbench**

Você pode usar qualquer outro cliente SQL compatível, desde que adapte a conexão.

---

## 📄 Arquivos principais deste repositório

- `01-inserts-uniread.sql`  
  Contém os comandos `INSERT` para popular as tabelas principais do projeto.

- `02-selects-uniread.sql`  
  Contém consultas `SELECT` com `WHERE`, `ORDER BY`, `LIMIT` e `JOIN`.

- `03-updates-deletes-uniread.sql`  
  Contém pelo menos **3 comandos `UPDATE`** e **3 comandos `DELETE`**, sempre usando condições no `WHERE`.

---

## ▶️ Como executar os scripts

1. Certifique-se de que o banco de dados e as tabelas já foram criados (modelo lógico da etapa anterior).
2. Abra o MySQL Workbench (ou outro cliente).
3. Selecione o banco de dados do projeto, por exemplo:

   ```sql
   USE uniread_db;
