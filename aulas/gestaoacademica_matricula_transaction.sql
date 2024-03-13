-- Adicione na tabela gestaoacademica.aluno a coluna "matriculado"
    SELECT * FROM gestaoacademica.aluno;
    ALTER TABLE gestaoacademica.aluno
		ADD COLUMN Matriculado BOOLEAN DEFAULT FALSE;
    
-- Crie uma transaction que, ao matricular um aluno em um curso
-- mude a coluna matriculado para 'true';
	START TRANSACTION;
    SET @alunoID = 7;
-- Matricular um aluno
INSERT INTO gestaoacademica.matricula VALUES
	(@AlunoID, 1, CURRENT_DATE());
    
-- Alterar o gestaoacademica.aluno.matriculado para TRUE
UPDATE gestaoacademica.aluno
SET matriculado = TRUE
WHERE matricula = @AlunoID;

-- Confirma
COMMIT;