-- SELECT TUDO DA TABELA X
SELECT COUNT(*) AS Total_Pedidos
FROM pedido;

-- SELECT COM CONTAGEM TOTAL DE REGISTROS
SELECT COUNT(*) AS Total_Pedidos
FROM pedido;

-- SELECT QUANTOS PEDIDOS CADA CLIENTE FEZ
SELECT DISTINCT ClienteID, COUNT(*)
FROM pedido
GROUP BY ClienteID;

-- SELECIONAR O TOTAL DE PRODUTOS POR PEDIDO
SELECT pedidoId, COUNT(*) AS Quantidade_Pedidos
FROM itenspedido
GROUP BY pedidoId;

-- SELECIONAR PRODUTOS MAIS VENDIDOS
SELECT ProdutoId, SUM(quantidade) AS MaisVendidos
FROM itensPedido
GROUP BY ProdutoId
ORDER BY MaisVendidos DESC;

-- LISTE OS CLIENTES INFORMANDO
-- TOTAL GASTO, MEDIA DE PRODUTOS, DATA DO PRIMEIRO E ULTIMO PEDIDO

SELECT 
pedido.clienteId,
COUNT(*) AS NumPedidos,
SUM(produto.preco * itenspedido.quantidade) AS TotalGasto,
AVG (itenspedido.quantidade) AS MediaProdutosPorPedido,
MIN(pedido.dataPedido) AS Primeiro_Pedido,
MAX(pedido.dataPedido) AS Ultimo_Pedido
FROM pedido
JOIN itenspedido ON pedido.id = itenspedido.pedidoId
JOIN produto ON itenspedido.produtoId = produto.id
GROUP BY pedido.clienteId