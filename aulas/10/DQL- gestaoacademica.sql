-- Exemplo: Selecionar todos os alunos

SELECT * FROM Aluno;

-- SELECT
-- FROM
-- WHERE
-- ORDER BY

SELECT 
    nome, cpf
FROM
    aluno
WHERE
    matricula > 5
ORDER BY nome;

-- Operadores Matemáticos e Lógicos:

SELECT * FROM disciplina;

SELECT nome, horas
FROM disciplina
WHERE horas >= 40 AND horas <= 50;

-- Aliases para Melhor Legibilidade

SELECT nome, horas AS carga_horaria
FROM disciplina;

-- Exiba da tabela professor, todos os professores por ordem alfabetica
-- Onde o professor tenha ID maior do que 2 e menor do que 6
-- Não exibindo a especialização e mudando a coluna "Nome" para "Nome_Professor"

SELECT id, nome AS Nome_Professor
FROM professor
WHERE ID > 2 AND ID <6
ORDER BY nome;

-- Exemplo; Contar quantas disciplinas existem

SELECT COUNT(*) AS QuantidadeDeDisciplinas
FROM disciplina
WHERE horas > 40;

-- Me informe quantas matriculas foram feitas no curso de ID 2

SELECT COUNT(*) AS QuantidadeDeMatriculas
FROM matricula
WHERE curso_ID = 2;

-- Exemplo: Selecionar professor com especialização que envolva tecnologia

SELECT *
FROM professor
WHERE especializacao LIKE '%Tecnologia%';

-- Exercício: Selecione todos os cursos que terminem com "medicina" ou começem com a letra "D"
SELECT * 
FROM curso
WHERE nome LIKE '%medicina' OR nome LIKE'D%';

-- Utilizando o DISTINCT para Obter Valores Distintos

SELECT DISTINCT especializacao FROM professor;

-- -------------------------
-- Constultas Intermediárias
-- -------------------------

-- Exemplo 1: Combinar dados de aluno e matricula usando o INNER JOIN
SELECT aluno.nome, aluno.cpf, matricula.DataMatricula FROM aluno
INNER JOIN matricula ON aluno.matricula = matricula.aluno_id;

-- Exemplo 2: Combinar dados de professor e disciplina usando INNER JOIN

SELECT * FROM professor;
SELECT * FROM disciplina;


