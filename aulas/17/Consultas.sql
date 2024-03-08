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
SELECT Hospedagem.*, Cliente.nomeCliente
FROM Hospedagem
JOIN Cliente ON Hospedagem.codCliente = Cliente.codCliente;

-- Selecionar chalés com os itens associados
SELECT Chale.*, Item.nomeItem AS Itens
FROM Chale
LEFT JOIN chale_item ON Chale.codChale = chale_item.codChale
LEFT JOIN item ON chale_item.nomeItem = item.nomeItem;

-- Selecionar serviços utilizados em uma hospedagem
SELECT Servico.*, hospedagem_servico.dataServico
FROM hospedagem_servico
INNER JOIN servico ON  hospedagem_servico.codServico = servico.codServico
WHERE hospedagem_servico.codHospedagem = 1;

-- Consultar os clientes com seus telefones
SELECT Cliente.*, GROUP_CONCAT(telefone.telefone) AS Telefone
FROM Cliente
LEFT JOIN Telefone ON Cliente.codCliente = Telefone.codCliente
GROUP BY Cliente.codCliente;

-- Selecionar chalés ocupados em uma data específica
SELECT Chale.*, hospedagem.dataInicio, hospedagem.dataFim
FROM chale
JOIN Hospedagem ON chale.codChale = hospedagem.codChale
WHERE '2024-03-25' BETWEEN hospedagem.dataInicio AND hospedagem.dataFim;