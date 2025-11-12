-- Exercicio 01

SELECT
    mtr.regiao,
    SUM(etr.valor) AS total_entregas,
    ROUND(AVG(etr.valor),2) AS media_valor
FROM motorista AS mtr
INNER JOIN entrega AS etr
    ON etr.motorista_id = mtr.id
GROUP BY mtr.regiao
ORDER BY total_entregas, media_valor DESC;

-- Exercicio 02

SELECT
    etr.cidade,
    SUM(etr.valor) AS valor_total
FROM entrega AS etr
GROUP BY etr.cidade
ORDER BY valor_total DESC
LIMIT 3;

-- Exercicio 03

SELECT
    etr.cidade,
   ROUND(AVG(etr.data_entrega - etr.data_envio),2) AS tempo_medio_em_dias
FROM entrega AS etr
GROUP BY etr.cidade;

-- Exercicio 04

SELECT
    mtr.nome,
    etr.cidade,
    etr.status,
    COUNT(*) AS total_concluidas
FROM motorista AS mtr
INNER JOIN entrega AS etr
    ON etr.motorista_id = mtr.id
WHERE etr.status = 'ENTREGUE'
GROUP BY mtr.nome, etr.cidade,etr.status
ORDER BY total_concluidas DESC;

-- Exercicio 05

-- SELECT
--     cl.nome AS cliente,
--     cl.cidade AS cidade_cliente
-- FROM cliente AS cl
-- LEFT JOIN entrega AS etr
--     ON


-- Exercicio 06

SELECT
    mtr.nome,
    ROUND(AVG(etr.valor),2) AS media_ticket,
    COUNT(etr.id) AS total_entregas
FROM motorista AS mtr
INNER JOIN entrega AS etr
    ON etr.motorista_id = mtr.id
GROUP BY mtr.nome
HAVING COUNT(etr.id) >=5
ORDER BY media_ticket DESC;

-- Exercicio 07

SELECT DISTINCT ON (mtr.regiao)
    mtr.regiao,
    etr.cidade,
    ROUND(AVG(etr.valor),2) AS media_ticket
FROM entrega AS etr
INNER JOIN motorista AS mtr
    ON etr.motorista_id = mtr.id
GROUP BY mtr.regiao, etr.cidade
ORDER BY  mtr.regiao, media_ticket DESC;

-- Exercicio 08

SELECT
    etr.id AS entrega_id,
    etr.cidade,
    etr.valor
FROM entrega AS etr
WHERE  etr.valor > (
    SELECT AVG(entrega.valor)
    FROM entrega
    WHERE  entrega.cidade = etr.cidade
)
ORDER BY etr.cidade, etr.valor DESC;
