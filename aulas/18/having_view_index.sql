# Having

-- Selecionar Chalés com média de capacidade superior a 3
SELECT codChale, AVG(capacidade) as capacidade_media
FROM chale
GROUP BY codChale
Having capacidade_media > 3;

-- Selecione os clientes com ao menos uma hospedagem registrada

SELECT codCliente, COUNT(*) AS qtd_hospedagens
FROM hospedagem
GROUP BY codCliente
HAVING qtd_hospedagens > 1;

-- Selecionar Serviços com valor total superior a 40

SELECT hospedagem_servico.codServico, SUM(servico.valorServico) AS total_valor
FROM hospedagem_servico
JOIN servico ON hospedagem_servico.codServico = servico.codServico
GROUP BY hospedagem_servico.codHospedagem
HAVING total_valor > 40;


-- Criar uma VIEW
CREATE VIEW ViewMediaCapacidade AS 
SELECT codChale, AVG(capacidade) AS media_capacidade
FROM chale
GROUP BY codChale;

-- Selecionar dados da VIEW
	SELECT * FROM ViewMediaCapacidade;
    
-- Crie uma VIEW que informe aos dados da hospedagem, com os dados do cliente, incluindo o telefone
	
    SELECT * FROM hospedagem;
    
    DROP VIEW ViewHospedagemDadosClientes;
    
    CREATE VIEW ViewHospedagemDadosClientes AS
	SELECT Hospedagem.*, cliente.nomeCliente, telefone.telefone
	FROM hospedagem
    LEFT JOIN cliente ON hospedagem.codCliente = cliente.codCliente
	INNER JOIN telefone ON cliente.codCliente = telefone.codCliente;

    
    SELECT * FROM ViewHospedagemDadosClientes;
    
    