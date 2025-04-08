
-- Criação das tabelas dimensão
CREATE TABLE dim_cliente (
    cliente_id INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20),
    cidade VARCHAR(50),
    estado VARCHAR(50)
);

CREATE TABLE dim_produto (
    produto_id INT PRIMARY KEY,
    nome_produto VARCHAR(100),
    categoria VARCHAR(50),
    preco_unitario DECIMAL(10,2)
);

CREATE TABLE dim_vendedor (
    vendedor_id INT PRIMARY KEY,
    nome_vendedor VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20),
    estado VARCHAR(50)
);

CREATE TABLE dim_tempo (
    data_id INT PRIMARY KEY,
    data DATE,
    dia INT,
    mes INT,
    nome_mes VARCHAR(20),
    ano INT
);

-- Tabela fato
CREATE TABLE fato_venda (
    venda_id INT PRIMARY KEY,
    cliente_id INT,
    produto_id INT,
    vendedor_id INT,
    data_id INT,
    quantidade INT,
    valor_total DECIMAL(10,2),
    desconto DECIMAL(10,2),
    FOREIGN KEY (cliente_id) REFERENCES dim_cliente(cliente_id),
    FOREIGN KEY (produto_id) REFERENCES dim_produto(produto_id),
    FOREIGN KEY (vendedor_id) REFERENCES dim_vendedor(vendedor_id),
    FOREIGN KEY (data_id) REFERENCES dim_tempo(data_id)
);
