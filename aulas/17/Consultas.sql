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
    LIMIT 999 OFFSET 2;
    
    
    # Consultas com JOINS

-- Selecioar detalhes da hospedagem, incluindo informações do cliente
	SELECT *
    FROM hospedagem
    JOIN cliente ON hospedagem.codcliente = cliente.codcliente;
    
-- Selecionar chalés com os itens associados

	SELECT *
    FROM chale 
    JOIN chale_item ON chale.codChale = chale_item.codchale;

-- Selecionar serviços utilizados em uma hospedagem

	SELECT *
    FROM servico
	JOIN hospedagem_servico on servico.codServico = hospedagem_servico.codservico;
	
-- Consultar os clientes com seus telefones

	SELECT * 
    FROM telefone
    JOIN cliente on telefone.codcliente = cliente.codcliente;
    
-- Selecionar chalés ocupados em uma data específica

	SELECT *
    FROM chale, hospedagem
    JOIN hospedagem ON chale.