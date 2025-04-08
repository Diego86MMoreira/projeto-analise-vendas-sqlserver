# 📊 Projeto de Análise de Vendas com SQL Server

Este projeto simula um cenário de vendas em um ambiente de banco de dados relacional utilizando SQL Server. A proposta é praticar modelagem de dados, criação de banco, inserção de dados e consultas analíticas utilizando SQL puro.

## 🧩 Modelagem de Dados

O modelo utilizado segue a arquitetura em estrela (Star Schema), com a tabela fato `fato_venda` conectando-se a quatro tabelas dimensão:

- `dim_cliente`
- `dim_produto`
- `dim_vendedor`
- `dim_tempo`

👉 [Clique aqui para visualizar o diagrama do modelo estrela](./modelo_estrela_vendas.png)

## 🛠️ Tecnologias Utilizadas

- SQL Server
- Linguagem SQL (DDL e DML)
- Diagrama de entidade-relacionamento (ER)
- Power BI (para visualizações)
- Git e GitHub

## 📁 Estrutura de Arquivos

- `script_modelagem.sql` → Script de criação das tabelas (DDL)
- `inserts_tabelas.sql` → Script com dados simulados para testes (DML)
- `consultas_analise.sql` → Conjunto de consultas SQL para análise dos dados
- `modelo_estrela_vendas.png` → Diagrama do modelo estrela utilizado

## ▶️ Como Executar

1. Abra o SQL Server Management Studio (SSMS).
2. Execute o script `script_modelagem.sql` para criar as tabelas.
3. Execute o script `inserts_tabelas.sql` para popular o banco com dados simulados.
4. Utilize o script `consultas_analise.sql` para realizar análises exploratórias.
5. (Opcional) Conecte o banco de dados ao Power BI para criar dashboards visuais.

## 📌 Requisitos

- SQL Server instalado e configurado.
- SQL Server Management Studio (SSMS) para execução dos scripts.
- Power BI Desktop (opcional para visualizações).
- Git instalado (para versionamento e colaboração).

## 🔍 Consultas de Análise Incluídas

- Total de vendas por mês
- Produto mais vendido
- Vendas por vendedor
- Vendas por estado
- Top clientes por valor gasto

## 👤 Autor

**Diego Mascarenhas Moreira** 
📱 (11) 9 8807-2303  
📧 diego86mmoreira@gmail.com  
🔗 [LinkedIn](https://www.linkedin.com/in/diegommoreira-analista-dados)
🧰 [Portfólio de Projetos](https://sway.cloud.microsoft/MBGeFrALZAMnPnaV)

---

Este projeto faz parte do meu portfólio como Analista de Dados em transição de carreira. Fique à vontade para explorar, sugerir melhorias ou entrar em contato!
