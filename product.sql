SELECT
    p.produto_id,
    p.nome         AS produto_nome,
    p.preco,
    p.empresa_id,
    e.nome         AS empresa_nome,
    p.dia  AS data_dia,
    p.mes  AS data_mes,
    p.ano  AS data_ano,
    AVG(r.opiniao) AS media_opiniao
FROM SurveyInc.produtos p
LEFT JOIN SurveyInc.resposta r
    ON p.produto_id = r.produto
LEFT JOIN SurveyInc.empresas e
    ON p.empresa_id = e.empresa_id
WHERE p.produto_id = :produto_id
GROUP BY
    p.produto_id,
    p.nome,
    p.preco,
    p.empresa_id,
    e.nome,
    p.dia,
    p.mes,
    p.ano;

