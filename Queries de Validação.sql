-- Visualizando dados com Queries
show databases;
use ecommerce;

--- Queries com SELECT Statement
SELECT * FROM Cliente;
SELECT * FROM Produto;
SELECT * FROM Pagamento;
SELECT * FROM Entrega;
SELECT * FROM Fornecedor;
SELECT * FROM Terceiro_Vendedor;
SELECT * FROM Estoque;
SELECT * FROM Pedido;

--- Queries com WHERE Statement

--- Buscar Clientes do tipo "Pessoa Física"
SELECT * FROM Cliente
WHERE Tipo_Cliente = 'Pessoa Física';

--- Buscar produto na categoria "Eletrônicos" com valor > 500
SELECT * FROM Produto
WHERE Categoria = 'Eletrônicos' AND Valor > 500;

--- Queries com Atributos Derivados
--- Calcular o valor total de um pedido com base na quantidade e no valor unitário dos produtos
SELECT 
    rp.idPedido,
    p.Descricao,
    rp.Quantidade,
    (rp.Quantidade * p.Valor) AS Valor_Total
FROM Relacao_de_Produto_Pedido rp
JOIN Produto p ON rp.idProduto = p.idProduto;

--- Obter a idade de cada cliente com base na data de nascimento
SELECT 
    idCliente,
    Fname,
    LastName,
    YEAR(CURDATE()) - YEAR(DataNasc) - (DATE_FORMAT(CURDATE(), '%m-%d') < DATE_FORMAT(DataNasc, '%m-%d')) AS Idade
FROM Cliente;

--- Queries com ORDER BY
--- Listar clientes ordenados por sobrenome
SELECT idCliente, Fname, LastName
FROM Cliente
ORDER BY LastName ASC;

--- Ordenar produtos pelo valor em ordem decrescente
SELECT idProduto, Descricao, Valor
FROM Produto
ORDER BY Valor DESC;

--- Queries com HAVING Statement
--- Listar categorias de produtos com valor médio acima de R$1000
SELECT Categoria, round(AVG(Valor), 2) AS Media_Valor
FROM Produto
GROUP BY Categoria
HAVING AVG(Valor) > 1000;

--- Identificar vendedores com mais de 5 produtos cadastrados
SELECT 
    tv.Razao_Social,
    COUNT(pv.Produto_idProduto) AS Total_Produtos
FROM Terceiro_Vendedor tv
JOIN Produtos_por_Vendedor pv ON tv.idTerceiro_Vendedor = pv.Terceiro_Vendedor_idTerceiro_Vendedor
GROUP BY tv.idTerceiro_Vendedor, tv.Razao_Social
HAVING COUNT(pv.Produto_idProduto) > 5;

--- Queries com JUNÇÃO de Tabelas
--- Exibir informações completas de pedidos
SELECT 
    p.idPedido,
    c.Fname AS Cliente,
    p.Valor_pedido,
    e.Status_entrega,
    pa.tipo_pagamento
FROM Pedido p
JOIN Cliente c ON p.Cliente_idCliente = c.idCliente
JOIN Entrega e ON p.idEntrega = e.idEntrega
JOIN Pagamento pa ON p.idPagamento = pa.idPagamento;

--- Listar produtos com seus fornecedores
SELECT 
    f.Razao_social AS Fornecedor,
    p.Descricao AS Produto,
    p.Categoria
FROM Disponibilizando_um_Produto dp
JOIN Fornecedor f ON dp.fornecedor = f.idFornecedor
JOIN Produto p ON dp.produto = p.idProduto;

--- Obter detalhes dos produtos vendidos por terceiros
SELECT 
    tv.Razao_Social AS Vendedor,
    p.Descricao AS Produto,
    ppv.Quantidade
FROM Produtos_por_Vendedor ppv
JOIN Terceiro_Vendedor tv ON ppv.Terceiro_Vendedor_idTerceiro_Vendedor = tv.idTerceiro_Vendedor
JOIN Produto p ON ppv.Produto_idProduto = p.idProduto;