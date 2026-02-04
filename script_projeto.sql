-- --- PERGUNTAS E QUERIES PARA O DESAFIO ---

-- 1. Quantos pedidos foram feitos por cada cliente?
-- (Usa SELECT, JOIN e GROUP BY)
SELECT c.Nome, COUNT(p.idOrder) AS Total_Pedidos
FROM Clientes c
LEFT JOIN Pedidos p ON c.idClient = p.idOrderClient
GROUP BY c.idClient;

-- 2. Algum vendedor também é fornecedor? 
-- (Supondo que tivéssemos tabelas de Vendedor e Fornecedor)
-- SELECT v.Nome FROM Vendedor v INNER JOIN Fornecedor f ON v.CNPJ = f.CNPJ;

-- 3. Relação de produtos e seus valores ordenados do mais caro para o mais barato
-- (Usa ORDER BY)
SELECT Pname, Valor 
FROM Produtos 
ORDER BY Valor DESC;

-- 4. Quais clientes gastaram mais de 500 euros em compras?
-- (Usa HAVING - Filtro em grupos)
SELECT idOrderClient, SUM(Frete) as Total_Frete -- Exemplo simples usando frete
FROM Pedidos
GROUP BY idOrderClient
HAVING Total_Frete > 50;

