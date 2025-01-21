--- Inserção de Dados
show databases;
use ecommerce;

-- Inserindo produtos para o vendedor Tech World Ltda
INSERT INTO Produto (Categoria, Descricao, Valor) VALUES
('Eletrônicos', 'Smartphone de última geração com 128GB de armazenamento', 1999.99),
('Informática', 'Monitor Full HD 24 polegadas', 799.99),
('Acessórios', 'Capinha de celular em silicone', 49.99),
('Eletrônicos', 'Projetor portátil Full HD', 1599.99),
('Roupas', 'Camiseta unisex algodão', 29.99);

-- Inserindo produtos para o vendedor Home Electronics Ltda
INSERT INTO Produto (Categoria, Descricao, Valor) VALUES
('Eletrodomésticos', 'Geladeira frost-free 300L inox', 2399.99),
('Eletrônicos', 'Fone de ouvido Bluetooth com cancelamento de ruído', 299.99),
('Eletrodomésticos', 'Micro-ondas 25L', 399.99),
('Informática', 'Teclado mecânico RGB', 349.99),
('Acessórios', 'Carregador portátil 10000mAh', 129.99);

-- Inserindo produtos para o vendedor Fashion Trends Ltda
INSERT INTO Produto (Categoria, Descricao, Valor) VALUES
('Roupas', 'Calça jeans slim fit', 89.99),
('Informática', 'Webcam 1080p', 249.99),
('Eletrônicos', 'Smartwatch com monitoramento de saúde', 599.99),
('Eletrodomésticos', 'Máquina de lavar 10kg', 1499.99),
('Acessórios', 'Bolsa feminina de couro', 199.99);

-- Associando produtos ao vendedor Tech World Ltda (idTerceiro_Vendedor = 1)
INSERT INTO Produtos_por_Vendedor (Quantidade, Terceiro_Vendedor_idTerceiro_Vendedor, Produto_idProduto) VALUES
(10, 61, 6),  -- Smartphone
(15, 61, 2),  -- Monitor
(50, 61, 3),  -- Capinha
(20, 61, 4),  -- Projetor
(30, 61, 5);  -- Camiseta

-- Associando produtos ao vendedor Home Electronics Ltda (idTerceiro_Vendedor = 2)
INSERT INTO Produtos_por_Vendedor (Quantidade, Terceiro_Vendedor_idTerceiro_Vendedor, Produto_idProduto) VALUES
(12, 62, 6),  -- Geladeira
(35, 62, 7),  -- Fone de ouvido
(25, 62, 8),  -- Micro-ondas
(10, 62, 9),  -- Teclado mecânico
(50, 62, 10); -- Carregador

-- Associando produtos ao vendedor Fashion Trends Ltda (idTerceiro_Vendedor = 3)
INSERT INTO Produtos_por_Vendedor (Quantidade, Terceiro_Vendedor_idTerceiro_Vendedor, Produto_idProduto) VALUES
(10, 63, 11),  -- Calça jeans
(20, 63, 12),  -- Webcam
(15, 63, 13),  -- Smartwatch
(10, 63, 14),  -- Máquina de lavar
(25, 63, 15);  -- Bolsa feminina
