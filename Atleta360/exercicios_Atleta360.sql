-- Exercicio 01

SELECT SUM(rst.pontuacao) AS pontuacao_total,
       RANK() OVER (
           PARTITION BY cpt.id
           ORDER BY SUM(rst.pontuacao) DESC
           )              AS ranking_pontuacao,
       cpt.id             AS id_competicao,
       atl.id             AS id_atleta
FROM resultado AS rst
         INNER JOIN atleta AS atl
                    ON atl.id = rst.atleta_id
         INNER JOIN competicao AS cpt
                    ON cpt.id = rst.competicao_id
GROUP BY cpt.id, atl.id
ORDER BY cpt.id, ranking_pontuacao;

-- Exercicio 02

SELECT rst.pontuacao,
       atl.id AS atleta_id,
       cpt.id AS competicao_id,
       ROUND(
                       AVG(rst.pontuacao) OVER (
                   PARTITION BY atl.id
                   ORDER BY cpt.id
                   ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
                   ), 2
       )      AS media_pontuacao
FROM resultado AS rst
         INNER JOIN atleta AS atl
                    ON atl.id = rst.atleta_id
         INNER JOIN competicao AS cpt
                    ON cpt.id = rst.competicao_id
ORDER BY atl.id, cpt.id;


-- Exercicio 03

SELECT LAG(rst.tempo_ms) OVER (
    PARTITION BY rst.atleta_id
    ORDER BY rst.competicao_id
    ) AS tempo_anterior,
       rst.atleta_id,
       rst.competicao_id,
       rst.tempo_ms
FROM resultado AS rst
ORDER BY rst.atleta_id, rst.competicao_id;

-- Exercicio 04

SELECT ROUND(
               (rst.pontuacao * 100) / MAX(rst.pontuacao) OVER (
                   PARTITION BY rst.competicao_id
                   ), 4) AS pontuacao_percentual,
       rst.competicao_id,
       rst.atleta_id,
       rst.pontuacao
FROM resultado AS rst
GROUP BY rst.competicao_id, rst.atleta_id, rst.pontuacao
ORDER BY pontuacao_percentual DESC;


-- Exercicio 05

SELECT RANK() OVER (
    PARTITION BY rst.competicao_id
    ORDER BY rst.tempo_ms
    ) AS rank,
       rst.competicao_id,
       rst.atleta_id,
       rst.tempo_ms
FROM resultado AS rst
ORDER BY rst.competicao_id, rank;

-- Exercicio 06

SELECT rst.atleta_id,
       rst.competicao_id,
       rst.pontuacao,
       SUM(rst.pontuacao) OVER (
           PARTITION BY rst.atleta_id
           ORDER BY rst.competicao_id
           ) AS pontuacao_acumulada
FROM resultado AS rst
ORDER BY rst.atleta_id, rst.competicao_id;

-- Exercicio 07

SELECT rst.competicao_id,
       rst.atleta_id,
       rst.pontuacao,
       NTILE(4) OVER (
           PARTITION BY rst.competicao_id
           ORDER BY rst.pontuacao DESC
           ) AS quartil
FROM resultado AS rst
ORDER BY rst.competicao_id, quartil;

-- Exercicio 08

WITH ranking AS (SELECT rst.competicao_id,
                        rst.atleta_id,
                        rst.pontuacao,
                        RANK() OVER (
                            PARTITION BY rst.competicao_id
                            ORDER BY rst.pontuacao DESC
                            ) AS posicao
                 FROM resultado AS rst)
SELECT *
FROM ranking
WHERE posicao <= 3
ORDER BY competicao_id, posicao;



