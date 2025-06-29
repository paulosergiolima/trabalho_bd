-- Pegar informações de um produto, principalmente sua média de opinião
SELECT nome,precoprodutos.dia,produtos.mes,produtos.ano,AVG(opiniao) FROM produtos INNER JOIN resposta ON resposta.produto = produtos.produto_id WHERE nome = "Smartphone"  GROUP BY produto_id;
-- Eu não pego as informações da empresa pq ai precisaria de mais um inner join(chato)

-- Pegar o preço médio de uma empresa
SELECT empresas.nome,AVG(preco) from empresas INNER JOIN produtos ON empresas.empresa_id = produtos.empresa_id WHERE empresas.nome = "SnackCo" GROUP BY empresas.empresa_id; 
-- Bem fácil
--
--Pegar a opinião média de uma empresa
SELECT empresas.nome, AVG(opiniao) from empresas INNER JOIN produtos ON empresas.empresa_id = produtos.empresa_id INNER JOIN resposta ON resposta.produto = produtos.produto_id WHERE empresas.nome = "BookBarn" GROUP BY empresas.empresa_id;

--Pegar produtos maiores que x preco
SELECT * FROM produtos WHERE produtos.preco > x;

--Pegar produtos menores que x preco
SELECT * FROM produtos WHERE produtos.preco < x;

--Pegar produtos de empresa x
SELECT * FROM produtos INNER JOIN empresas ON produtos.empresa_id = empresas.empresa_id WHERE empresas.nome = "x";

--Pegar respostas de produto x
SELECT * FROM resposta INNER JOIN produtos on resposta.produto = produtos.produto_id WHERE produtos.nome = "x";

--Pegar melhor opinião de produto x
