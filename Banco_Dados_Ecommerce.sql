--- Criação do Banco de Dados E-Commerce
create database ecommerce;

use ecommerce;

--- Criação tabela Cliente
CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    Fname VARCHAR(15) NOT NULL,
    MName VARCHAR(3),
    LastName VARCHAR(45) NOT NULL,
    CPF CHAR(11) NOT NULL UNIQUE,
    Endereco TEXT NOT NULL,
    Tipo_Cliente VARCHAR(30) DEFAULT 'Pessoa Física',
    CNPJ VARCHAR(18) UNIQUE,
    DataNasc DATE
);

--- Criação tabela Produto
CREATE TABLE Produto (
    idProduto INT PRIMARY KEY AUTO_INCREMENT,
    Categoria VARCHAR(50) NOT NULL,
    Descricao VARCHAR(200) NOT NULL,
    Valor DECIMAL(10,2) NOT NULL CHECK (Valor > 0)
);

--- Criação tabela Pedido
CREATE TABLE Pedido (
    idPedido INT PRIMARY KEY AUTO_INCREMENT,
    Valor_pedido DECIMAL(10,2) NOT NULL CHECK (Valor_pedido > 0),
    Data_pedido DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    idPagamento INT,
    idEntrega INT,
    status ENUM('Cancelado', 'Em Processamento', 'Finalizado') DEFAULT 'Em Processamento',
    Cliente_idCliente INT NOT NULL,
    FOREIGN KEY (idPagamento) REFERENCES Pagamento(idPagamento) ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY (idEntrega) REFERENCES Entrega(idEntrega) ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(idCliente) ON DELETE CASCADE ON UPDATE CASCADE
);

--- Criação tabela Pagamento
CREATE TABLE Pagamento (
    idPagamento INT PRIMARY KEY AUTO_INCREMENT,
    tipo_pagamento ENUM('Débito', 'Cartão 1x', 'Cartão Parcelado', 'Boleto', 'Pix') NOT NULL,
    valor_pagamento DECIMAL(10,2) NOT NULL CHECK (valor_pagamento > 0)
);

--- Criação tabela Dados_Cartao
CREATE TABLE Dados_Cartao (
    idCartao INT PRIMARY KEY AUTO_INCREMENT,
    idPagamento INT NOT NULL UNIQUE,
    Numero_Cartao VARCHAR(16) NOT NULL,
    Nome_Cartao VARCHAR(100) NOT NULL,
    Validade_Cartao CHAR(5) NOT NULL CHECK (Validade_Cartao REGEXP '^(0[1-9]|1[0-2])\\/[0-9]{2}$'),
    CVV CHAR(3) NOT NULL CHECK (CVV REGEXP '^[0-9]{3}$'),
    FOREIGN KEY (idPagamento) REFERENCES Pagamento(idPagamento) ON DELETE CASCADE ON UPDATE CASCADE
);

--- Criação tabela Estoque
CREATE TABLE Estoque (
    idEstoque INT PRIMARY KEY AUTO_INCREMENT,
    Local VARCHAR(255) NOT NULL
);

--- Criação tabela Fornecedor
CREATE TABLE Fornecedor (
    idFornecedor INT PRIMARY KEY AUTO_INCREMENT,
    Razao_social VARCHAR(45) NOT NULL,
    CNPJ VARCHAR(18) NOT NULL UNIQUE
);

--- Criação tabela Terceiro_Vendedor
CREATE TABLE Terceiro_Vendedor (
    idTerceiro_Vendedor INT PRIMARY KEY AUTO_INCREMENT not null,
    Razao_Social VARCHAR(45) NOT NULL,
    Local VARCHAR(45) DEFAULT 'Desconhecido',
    Nome_fantasia varchar(45),
    CNPJ char(15),
    CPF char(11),
    contato char(11) not null,
    constraint unique_CNPJ_vendedor unique (CNPJ),
    constraint unique_CPF_vendedor unique (CPF)    
);

--- Criação tabela Disponibilizando_um_Produto
CREATE TABLE Disponibilizando_um_Produto(
    fornecedor INT NOT NULL,
    produto INT NOT NULL,
    PRIMARY KEY (fornecedor, produto),
    FOREIGN KEY (fornecedor) REFERENCES Fornecedor(idFornecedor) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (produto) REFERENCES Produto(idProduto) ON DELETE CASCADE ON UPDATE CASCADE
);

--- Criação tabela Produtos_por_Vendedor
CREATE TABLE Produtos_por_Vendedor (
    Quantidade INT NOT NULL DEFAULT 0 CHECK (Quantidade >= 0),
    Terceiro_Vendedor_idTerceiro_Vendedor INT NOT NULL,
    Produto_idProduto INT NOT NULL,
    PRIMARY KEY (Terceiro_Vendedor_idTerceiro_Vendedor, Produto_idProduto),
    FOREIGN KEY (Terceiro_Vendedor_idTerceiro_Vendedor) REFERENCES Terceiro_Vendedor(idTerceiro_Vendedor) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Produto_idProduto) REFERENCES Produto(idProduto) ON DELETE CASCADE ON UPDATE CASCADE
);

--- Criação tabela Produto_has_Estoque
CREATE TABLE Produto_has_Estoque (
    estoque_idEstoque INT NOT NULL,
    produto_idProduto INT NOT NULL,
    PRIMARY KEY (estoque_idEstoque, produto_idProduto),
    FOREIGN KEY (estoque_idEstoque) REFERENCES Estoque(idEstoque) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (produto_idProduto) REFERENCES Produto(idProduto) ON DELETE CASCADE ON UPDATE CASCADE
);

--- Criação tabela Entrega
CREATE TABLE Entrega (
    idEntrega INT PRIMARY KEY AUTO_INCREMENT,
    Status_entrega enum('Aguardando Coleta', 'Pedido Coletado', 'Em Transporte', 'Saiu para Entrega', 'Entregue') NOT NULL DEFAULT 'Aguardando Coleta',
    Codigo_rastreio VARCHAR(50) UNIQUE
);

--- Criação tabela Relacao_de_Produto_Pedido
CREATE TABLE Relacao_de_Produto_Pedido (
    idProduto INT NOT NULL,
    idPedido INT NOT NULL,
    Quantidade INT NOT NULL DEFAULT 1 CHECK (Quantidade > 0),
    Status ENUM('Pendente', 'Enviado', 'Entregue') NOT NULL DEFAULT 'Pendente',
    PRIMARY KEY (idProduto, idPedido),
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (idPedido) REFERENCES Pedido(idPedido) ON DELETE CASCADE ON UPDATE CASCADE
);

desc cliente;
