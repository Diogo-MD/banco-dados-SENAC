# Consultas sem JOINS
use hotel;
-- Consulte todos os Clientes de São Paulo (SP)

	SELECT * 
    FROM CLIENTE
    WHERE estadoCliente LIKE '%SP%';

-- Selecionar hospedagens com mais de 3 pessoas e desconto igual a 0
	
    SELECT *
    FROM HOSPEDAGEM 
    WHERE qtdPessoas >= 3 
    AND desconto = 0;

-- Selecionar telefones de clientes com ID 1 ou 2, limitando a 2 resultados

	SELECT * 
    FROM telefone
    WHERE codCliente IN (1, 2)
    LIMIT 5;

-- Selecionar chalés com capacidades entre 4 e 6, ordenados por valor em alta estação

	SELECT *
    FROM chale
    WHERE capacidade >=4 AND capacidade <= 6
    ORDER BY valorAltaEstacao;

-- Selecione todos os itens que contenham "de" na descrição, pulando os 2 primeiros resultados	

	SELECT *
    FROM item
    WHERE descricaoItem LIKE '%de%'
    LIMIT 1000 OFFSET 2;