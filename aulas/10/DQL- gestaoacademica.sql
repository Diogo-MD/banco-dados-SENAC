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