--- Inserção de valores
show databases;
use ecommerce;

-- Inserindo dados fictícios na tabela Cliente
INSERT INTO Cliente (Fname, MName, LastName, CPF, Endereco, Tipo_Cliente, CNPJ, DataNasc) 
VALUES
('Gabriel', 'P.', 'Almeida', '01234567890', 'Rua K, 2324, São Paulo, SP', 'Pessoa Física', NULL, '1994-10-03'),
('Julia', 'B.', 'Santos', '12345678902', 'Avenida L, 2526, Rio de Janeiro, RJ', 'Pessoa Física', NULL, '1989-05-17'),
('Marcos', 'R.', 'Martins', '23456789013', 'Rua M, 2728, Belo Horizonte, MG', 'Pessoa Física', NULL, '1996-02-25'),
('Isabela', 'T.', 'Oliveira', '34567890134', 'Avenida N, 2930, Curitiba, PR', 'Pessoa Física', NULL, '1984-08-11'),
('Felipe', 'J.', 'Souza', '45678901245', 'Rua O, 3132, Porto Alegre, RS', 'Pessoa Física', NULL, '1987-04-18'),
('Vanessa', 'S.', 'Costa', '56789012356', 'Avenida P, 3334, Salvador, BA', 'Pessoa Física', NULL, '1991-12-07'),
('Fernando', 'A.', 'Silva', '67890123467', 'Rua Q, 3536, Recife, PE', 'Pessoa Física', NULL, '1986-09-12'),
('Carla', 'N.', 'Rodrigues', '78901234578', 'Rua R, 3738, Fortaleza, CE', 'Pessoa Física', NULL, '1994-01-23'),
('Leandro', 'E.', 'Gomes', '89012345689', 'Avenida S, 3939, Campinas, SP', 'Pessoa Física', NULL, '1983-06-02'),
('Ana', 'C.', 'Pereira', '90123456790', 'Rua T, 4040, São Paulo, SP', 'Pessoa Física', NULL, '1992-04-10'),
('TechPlus', NULL, 'Inovações Ltda', NULL, 'Rua U, 4141, Rio de Janeiro, RJ', 'Pessoa Jurídica', '23.456.789/0001-01', NULL),
('Joana', 'F.', 'Martins', '11223344556', 'Avenida V, 4242, Belo Horizonte, MG', 'Pessoa Física', NULL, '1996-11-19'),
('Eduardo', 'L.', 'Almeida', '22334455667', 'Rua W, 4343, Curitiba, PR', 'Pessoa Física', NULL, '1990-03-28'),
('Patrícia', 'M.', 'Costa', '33445566778', 'Avenida X, 4444, Porto Alegre, RS', 'Pessoa Física', NULL, '1988-07-15'),
('Vinícius', 'G.', 'Rodrigues', '44556677889', 'Rua Y, 4545, Salvador, BA', 'Pessoa Física', NULL, '1992-01-12'),
('André', 'P.', 'Silva', '55667788990', 'Avenida Z, 4646, Recife, PE', 'Pessoa Física', NULL, '1984-05-04'),
('Cláudia', 'B.', 'Oliveira', '66778899001', 'Rua A1, 4747, Fortaleza, CE', 'Pessoa Física', NULL, '1990-08-20'),
('Tânia', 'F.', 'Souza', '77889900112', 'Avenida B1, 4848, Campinas, SP', 'Pessoa Física', NULL, '1985-11-08'),
('Ricardo', 'C.', 'Gomes', '88990011223', 'Rua C1, 4949, São Paulo, SP', 'Pessoa Física', NULL, '1993-06-14'),
('Luciana', 'R.', 'Martins', '99001122334', 'Avenida D1, 5050, Rio de Janeiro, RJ', 'Pessoa Física', NULL, '1991-02-03'),
('Construtora ABC', NULL, 'Ltda', NULL, 'Rua E1, 5151, Belo Horizonte, MG', 'Pessoa Jurídica', '34.567.890/0001-23', NULL),
('Flávia', 'S.', 'Pereira', '10111213141', 'Rua F1, 5252, Curitiba, PR', 'Pessoa Física', NULL, '1989-07-30'),
('Marcio', 'J.', 'Costa', '12131415161', 'Avenida G1, 5353, Porto Alegre, RS', 'Pessoa Física', NULL, '1987-09-09');

--- Inserção de produtos
INSERT INTO Produto (Categoria, Descricao, Valor) VALUES
('Eletrônicos', 'Smartphone de última geração com 128GB de armazenamento', 1999.99),
('Eletrodomésticos', 'Geladeira frost-free 300L inox', 2399.99),
('Acessórios', 'Capinha de celular em silicone', 49.99),
('Informática', 'Monitor Full HD 24 polegadas', 799.99),
('Roupas', 'Camiseta unisex algodão', 29.99),
('Eletrônicos', 'Fone de ouvido Bluetooth com cancelamento de ruído', 299.99),
('Eletrodomésticos', 'Micro-ondas 25L', 399.99),
('Acessórios', 'Carregador portátil 10000mAh', 129.99),
('Informática', 'Teclado mecânico RGB', 349.99),
('Roupas', 'Calça jeans slim fit', 89.99),
('Eletrônicos', 'Smartwatch com monitoramento de saúde', 599.99),
('Eletrodomésticos', 'Máquina de lavar 10kg', 1499.99),
('Acessórios', 'Bolsa feminina de couro', 199.99),
('Informática', 'Webcam 1080p', 249.99),
('Roupas', 'Vestido midi para festas', 129.99),
('Eletrônicos', 'Projetor portátil Full HD', 1599.99),
('Eletrodomésticos', 'Aspirador de pó sem fio', 899.99),
('Acessórios', 'Relógio esportivo com GPS', 249.99),
('Informática', 'Placa de vídeo 8GB para jogos', 2499.99),
('Roupas', 'Jaqueta de couro', 399.99);

--- Inserção de pagamentos
INSERT INTO Pagamento (tipo_pagamento, valor_pagamento) VALUES
('Débito', 1999.99),
('Cartão 1x', 2399.99),
('Cartão Parcelado', 799.99),
('Boleto', 49.99),
('Pix', 299.99),
('Débito', 129.99),
('Cartão 1x', 799.99),
('Cartão Parcelado', 89.99),
('Boleto', 599.99),
('Pix', 1499.99),
('Débito', 199.99),
('Cartão 1x', 249.99),
('Cartão Parcelado', 129.99),
('Boleto', 1599.99),
('Pix', 899.99),
('Débito', 249.99),
('Cartão 1x', 2499.99),
('Cartão Parcelado', 399.99),
('Boleto', 899.99),
('Pix', 399.99);

--- Inserção de entregas
INSERT INTO Entrega (Status_entrega, Codigo_rastreio) VALUES
('Aguardando Coleta', '123ABC456'),
('Pedido Coletado', '234BCD567'),
('Em Transporte', '345CDE678'),
('Saiu para Entrega', '456DEF789'),
('Entregue', '567EFG890'),
('Aguardando Coleta', '678FGH901'),
('Pedido Coletado', '789GHI012'),
('Em Transporte', '890HIJ123'),
('Saiu para Entrega', '901IJL234'),
('Entregue', '012JKL345'),
('Aguardando Coleta', '123KLM456'),
('Pedido Coletado', '234LMN567'),
('Em Transporte', '345MNO678'),
('Saiu para Entrega', '456NOP789'),
('Entregue', '567OPQ890'),
('Aguardando Coleta', '678PQR901'),
('Pedido Coletado', '789QRS012'),
('Em Transporte', '890RST123'),
('Saiu para Entrega', '901STU234'),
('Entregue', '012TUV345');

--- Inserção de fornecedores
INSERT INTO Fornecedor (Razao_social, CNPJ) VALUES
('Tech Innovations Ltda', '12.345.678/0001-00'),
('Home Appliances SA', '23.456.789/0001-11'),
('Fashion Trends Ltda', '34.567.890/0001-22'),
('Mobile Tech Inc', '45.678.901/0001-33'),
('Smart Devices Ltda', '56.789.012/0001-44'),
('Gadget World SA', '67.890.123/0001-55'),
('Power Tools Ltda', '78.901.234/0001-66'),
('Fashion Store Inc', '89.012.345/0001-77'),
('Tech Gadgets SA', '90.123.456/0001-88'),
('Electronic Solutions Ltda', '01.234.567/0001-99'),
('Speedy Delivery Ltda', '11.345.678/0001-00'),
('Luxury Watches SA', '22.456.789/0001-11'),
('Home Electronics Ltda', '33.567.890/0001-22'),
('Portable Devices Inc', '44.678.901/0001-33'),
('Game Tech Ltda', '55.789.012/0001-44'),
('Stylish Fashion Ltda', '66.890.123/0001-55'),
('Modern Living Ltda', '77.901.234/0001-66'),
('Outdoor Tech Ltda', '88.012.345/0001-77'),
('Luxury Furnishings SA', '99.123.456/0001-88'),
('Gourmet Electronics Ltda', '10.234.567/0001-99');

--- Inserção de Terceiro_vendedor
INSERT INTO Terceiro_Vendedor (Razao_Social, Local, Nome_fantasia, CNPJ, CPF, contato) 
VALUES 
('Tech World Ltda', 'São Paulo', 'TechStore', '12.345.678/0001-90', '12345678901', '11987654321'),
('Home Electronics Ltda', 'Rio de Janeiro', 'HomeShop', '23.456.789/0001-91', '23456789012', '21987654322'),
('Fashion Trends Ltda', 'Belo Horizonte', 'FashionShop', '34.567.890/0001-92', '34567890123', '31987654323'),
('Mobile Store Ltda', 'Curitiba', 'MobileMart', '45.678.901/0001-93', '45678901234', '41987654324'),
('Smart Accessories Ltda', 'Porto Alegre', 'SmartShop', '56.789.012/0001-94', '56789012345', '51987654325'),
('Gadget Mart Ltda', 'Salvador', 'GadgetStore', '67.890.123/0001-95', '67890123456', '61987654326'),
('Tech Gadgets Ltda', 'Recife', 'TechMart', '78.901.234/0001-96', '78901234567', '71987654327'),
('Fashions Ltda', 'Fortaleza', 'StyleStore', '89.012.345/0001-97', '89012345678', '81987654328'),
('Electronic Gadgets Ltda', 'Campinas', 'GadgetWorld', '90.123.456/0001-98', '90123456789', '91987654329'),
('Smart Devices Ltda', 'São Paulo', 'SmartTech', '01.234.567/0001-99', '01234567890', '10234567890'),
('Gadget Innovations Ltda', 'Rio de Janeiro', 'TechGiz', '11.345.678/0001-00', '12345678902', '11234567890'),
('Fashion Store Ltda', 'Belo Horizonte', 'FashionZone', '22.456.789/0001-11', '23456789013', '12234567890'),
('Home Solutions Ltda', 'Curitiba', 'HomeTech', '33.567.890/0001-22', '34567890124', '13234567890'),
('Outdoor Gear Ltda', 'Porto Alegre', 'OutdoorShop', '44.678.901/0001-33', '45678901235', '14234567890'),
('Luxury Brands Ltda', 'Salvador', 'LuxuryMart', '55.789.012/0001-44', '56789012346', '15234567890'),
('Game Tech Ltda', 'Recife', 'GameShop', '66.890.123/0001-55', '67890123457', '16234567890'),
('Modern Living Ltda', 'Fortaleza', 'ModernShop', '77.901.234/0001-66', '78901234568', '17234567890'),
('Trendy Tech Ltda', 'Campinas', 'TrendyTech', '88.012.345/0001-77', '89012345679', '18234567890'),
('Gourmet Electronics Ltda', 'São Paulo', 'GourmetTech', '99.123.456/0001-88', '90123456780', '19234567890'),
('Innovation Electronics Ltda', 'Rio de Janeiro', 'InnovTech', '10.234.567/0001-99', '01234567891', '10234567891');

--- Inserção de estoques
INSERT INTO Estoque (Local) VALUES
('São Paulo'),
('Rio de Janeiro'),
('Belo Horizonte'),
('Curitiba'),
('Porto Alegre'),
('Salvador'),
('Recife'),
('Fortaleza'),
('Campinas');
SELECT idTerceiro_Vendedor, Razao_Social FROM Terceiro_Vendedor;

--- Inserção de Disponibilidade produto
INSERT INTO Disponibilizando_um_Produto (fornecedor, produto) VALUES
(1, 1),  -- Tech Innovations Ltda, Smartphone de última geração
(2, 2),  -- Home Appliances SA, Geladeira frost-free 300L inox
(3, 3),  -- Fashion Trends Ltda, Capinha de celular em silicone
(4, 4),  -- Mobile Tech Inc, Monitor Full HD 24 polegadas
(5, 5),  -- Smart Devices Ltda, Camiseta unisex algodão
(6, 6),  -- Gadget World SA, Fone de ouvido Bluetooth com cancelamento de ruído
(7, 7),  -- Power Tools Ltda, Micro-ondas 25L
(8, 8),  -- Fashion Store Inc, Carregador portátil 10000mAh
(9, 9),  -- Tech Gadgets SA, Teclado mecânico RGB
(10, 10), -- Electronic Solutions Ltda, Calça jeans slim fit
(11, 11), -- Speedy Delivery Ltda, Smartwatch com monitoramento de saúde
(12, 12), -- Luxury Watches SA, Máquina de lavar 10kg
(13, 13), -- Home Electronics Ltda, Bolsa feminina de couro
(14, 14), -- Portable Devices Inc, Webcam 1080p
(15, 15), -- Game Tech Ltda, Vestido midi para festas
(16, 16), -- Stylish Fashion Ltda, Projetor portátil Full HD
(17, 17), -- Modern Living Ltda, Aspirador de pó sem fio
(18, 18), -- Outdoor Tech Ltda, Relógio esportivo com GPS
(19, 19), -- Luxury Furnishings SA, Placa de vídeo 8GB para jogos
(20, 20); -- Gourmet Electronics Ltda, Jaqueta de couro

--- Inserção de produtos por vendedor
INSERT INTO Produtos_por_Vendedor (Quantidade, Terceiro_Vendedor_idTerceiro_Vendedor, Produto_idProduto) 
VALUES 
(10, 61, 1),  -- Tech World Ltda, Smartphone de última geração
(15, 62, 2),  -- Home Electronics Ltda, Geladeira frost-free 300L inox
(20, 63, 3),  -- Fashion Trends Ltda, Capinha de celular em silicone
(5, 64, 4),   -- Mobile Store Ltda, Monitor Full HD 24 polegadas
(25, 65, 5),  -- Smart Accessories Ltda, Camiseta unisex algodão
(8, 66, 6),   -- Gadget Mart Ltda, Fone de ouvido Bluetooth com cancelamento de ruído
(12, 67, 7),  -- Tech Gadgets Ltda, Micro-ondas 25L
(10, 68, 8),  -- Fashion Store Ltda, Carregador portátil 10000mAh
(18, 69, 9),  -- Gadget Innovations Ltda, Teclado mecânico RGB
(20, 70, 10),-- Fashion Store Ltda, Calça jeans slim fit
(5, 71, 11), -- Gourmet Electronics Ltda, Smartwatch com monitoramento de saúde
(10, 72, 12),-- Home Solutions Ltda, Máquina de lavar 10kg
(30, 73, 13),-- Outdoor Gear Ltda, Bolsa feminina de couro
(22, 74, 14),-- Game Tech Ltda, Webcam 1080p
(15, 75, 15),-- Luxury Brands Ltda, Vestido midi para festas
(7, 76, 16), -- Game Tech Ltda, Projetor portátil Full HD
(9, 77, 17), -- Modern Living Ltda, Aspirador de pó sem fio
(14, 78, 18),-- Trendy Tech Ltda, Relógio esportivo com GPS
(18, 79, 19),-- Gourmet Electronics Ltda, Placa de vídeo 8GB para jogos
(6, 80, 20); -- Innovation Electronics Ltda, Smart Home Hub

--- Inserção produto/estoque
INSERT INTO Produto_has_Estoque (estoque_idEstoque, produto_idProduto) VALUES
(1, 1),  -- São Paulo, Smartphone de última geração
(2, 2),  -- Rio de Janeiro, Geladeira frost-free 300L inox
(3, 3),  -- Belo Horizonte, Capinha de celular em silicone
(4, 4),  -- Curitiba, Monitor Full HD 24 polegadas
(5, 5),  -- Porto Alegre, Camiseta unisex algodão
(6, 6),  -- Salvador, Fone de ouvido Bluetooth com cancelamento de ruído
(7, 7),  -- Recife, Micro-ondas 25L
(8, 8),  -- Fortaleza, Carregador portátil 10000mAh
(9, 9),  -- Campinas, Teclado mecânico RGB
(1, 10), -- São Paulo, Calça jeans slim fit
(2, 11), -- Rio de Janeiro, Smartwatch com monitoramento de saúde
(3, 12), -- Belo Horizonte, Máquina de lavar 10kg
(4, 13), -- Curitiba, Bolsa feminina de couro
(5, 14), -- Porto Alegre, Webcam 1080p
(6, 15), -- Salvador, Vestido midi para festas
(7, 16), -- Recife, Projetor portátil Full HD
(8, 17), -- Fortaleza, Aspirador de pó sem fio
(9, 18), -- Campinas, Relógio esportivo com GPS
(1, 19), -- São Paulo, Placa de vídeo 8GB para jogos
(2, 20); -- Rio de Janeiro, Jaqueta de couro

--- Inserção de pedidos
INSERT INTO Pedido (Valor_pedido, Data_pedido, idPagamento, idEntrega, status, Cliente_idCliente, Canal_compra) VALUES
(1999.99, '2025-01-15', 1, 1, 'Em Processamento', 1, 'Internet'),
(2399.99, '2025-01-16', 2, 2, 'Finalizado', 2, 'Aplicativo'),
(799.99, '2025-01-17', 3, 3, 'Finalizado', 3, 'Loja Física'),
(49.99, '2025-01-18', 4, 4, 'Cancelado', 4, 'Internet'),
(299.99, '2025-01-19', 5, 5, 'Em Processamento', 5, 'Aplicativo');

--- Inserção dados cartão
INSERT INTO Dados_Cartao (idPagamento, Numero_Cartao, Nome_Cartao, Validade_Cartao, CVV) VALUES
(1, '1234567890123456', 'Gabriel Almeida', '12/25', '123'),
(2, '2345678901234567', 'Julia Santos', '11/24', '234'),
(3, '3456789012345678', 'Marcos Martins', '10/26', '345'),
(4, '4567890123456789', 'Isabela Oliveira', '09/25', '456'),
(5, '5678901234567890', 'Felipe Souza', '08/27', '567');

INSERT INTO Relacao_de_Produto_Pedido (idProduto, idPedido, Quantidade)
VALUES
    (1, 11, 1),
    (2, 12, 1),
    (7, 12, 1),
    (4, 13, 1),
    (3, 13, 1),
    (3, 14, 1),
    (6, 15, 1),
    (5, 15, 2);
SELECT idPedido FROM Pedido;


show tables;


