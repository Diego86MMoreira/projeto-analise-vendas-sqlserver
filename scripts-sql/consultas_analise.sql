
-- Total de vendas por mês
SELECT 
  dt.nome_mes,
  dt.ano,
  SUM(fv.valor_total - fv.desconto) AS total_vendas
FROM fato_venda fv
JOIN dim_tempo dt ON fv.data_id = dt.data_id
GROUP BY dt.ano, dt.nome_mes
ORDER BY dt.ano, dt.mes;

-- Produto mais vendido (quantidade)
SELECT 
  dp.nome_produto,
  SUM(fv.quantidade) AS total_vendido
FROM fato_venda fv
JOIN dim_produto dp ON fv.produto_id = dp.produto_id
GROUP BY dp.nome_produto
ORDER BY total_vendido DESC;

-- Vendas por vendedor
SELECT 
  dv.nome_vendedor,
  SUM(fv.valor_total - fv.desconto) AS total_vendas
FROM fato_venda fv
JOIN dim_vendedor dv ON fv.vendedor_id = dv.vendedor_id
GROUP BY dv.nome_vendedor
ORDER BY total_vendas DESC;

-- Vendas por estado
SELECT 
  dv.estado,
  SUM(fv.valor_total - fv.desconto) AS total_vendas
FROM fato_venda fv
JOIN dim_vendedor dv ON fv.vendedor_id = dv.vendedor_id
GROUP BY dv.estado
ORDER BY total_vendas DESC;

-- Top clientes por valor gasto
SELECT 
  dc.nome,
  SUM(fv.valor_total - fv.desconto) AS total_gasto
FROM fato_venda fv
JOIN dim_cliente dc ON fv.cliente_id = dc.cliente_id
GROUP BY dc.nome
ORDER BY total_gasto DESC;
