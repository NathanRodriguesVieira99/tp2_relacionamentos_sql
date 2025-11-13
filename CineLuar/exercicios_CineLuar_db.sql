-- Exercício 05

SELECT fl.titulo,
       ROUND(AVG(avl.nota), 2) AS media_nota
FROM filme AS fl
         INNER JOIN avaliacao AS avl
                    ON avl.filme_id = fl.id
GROUP BY fl.titulo
ORDER BY media_nota DESC;

-- Exercício 06

SELECT jrd.nome              AS nome_jurado,
       COUNT(DISTINCT fl.id) AS qtd_filmes_avaliados
FROM jurado AS jrd
         INNER JOIN avaliacao AS avl
                    ON avl.jurado_id = jrd.id
         INNER JOIN filme AS fl
                    ON avl.filme_id = fl.id
GROUP BY jrd.nome
ORDER BY qtd_filmes_avaliados DESC;

-- Exercício 07

SELECT fl.titulo,
       fl.pais,
       MAX(avl.nota) AS maior_nota
FROM filme AS fl
         INNER JOIN avaliacao AS avl
                    ON avl.filme_id = fl.id
GROUP BY fl.titulo, fl.pais
ORDER BY maior_nota;

-- Exercício 08

SELECT fl.titulo,
       fl.diretor,
       ROUND(AVG(avl.nota), 2) AS media_nota
FROM filme AS fl
         INNER JOIN avaliacao AS avl
                    ON avl.filme_id = fl.id
GROUP BY fl.titulo, fl.diretor
HAVING AVG(avl.nota) > 8
ORDER BY media_nota DESC;