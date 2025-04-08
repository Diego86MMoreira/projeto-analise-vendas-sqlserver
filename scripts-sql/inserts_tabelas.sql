
-- Inserindo dados em dim_cliente
INSERT INTO dim_cliente VALUES
(1, 'Ana Silva', 'ana@email.com', '11999999999', 'São Paulo', 'SP'),
(2, 'Carlos Lima', 'carlos@email.com', '21988888888', 'Rio de Janeiro', 'RJ');

-- Inserindo dados em dim_produto
INSERT INTO dim_produto VALUES
(1, 'Notebook', 'Eletrônicos', 3500.00),
(2, 'Mouse', 'Acessórios', 50.00);

-- Inserindo dados em dim_vendedor
INSERT INTO dim_vendedor VALUES
(1, 'Marcos Souza', 'marcos@email.com', '11900000000', 'SP'),
(2, 'Fernanda Dias', 'fernanda@email.com', '21911111111', 'RJ');

-- Inserindo dados em dim_tempo
INSERT INTO dim_tempo VALUES
(1, '2025-01-15', 15, 1, 'Janeiro', 2025),
(2, '2025-02-10', 10, 2, 'Fevereiro', 2025);

-- Inserindo dados em fato_venda
INSERT INTO fato_venda VALUES
(1, 1, 1, 1, 1, 1, 3500.00, 0.00),
(2, 2, 2, 2, 2, 2, 100.00, 10.00);
