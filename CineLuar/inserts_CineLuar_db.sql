INSERT INTO filme (titulo, diretor, pais, ano)
VALUES ('O Senhor dos Anéis: O Retorno do Rei', 'Peter Jackson', 'Estados Unidos', 2003),
       ('Faroeste Cabloco', 'René Sampaio', 'Brasil', 2013),
       ('Cidade de Deus', 'Fernando Meirelles', 'Brasil', 2002),
       ('O Poderoso Chefão', 'Francis Ford Copolla', 'Estados Unidos', 1972),
       ('Central do Brasil', 'Walter Salles', 'Brasil', 1998);

INSERT INTO jurado (nome, pais)
VALUES ('Chico Science', 'Brasil'),
       ('Max Cavalera', 'Brasil'),
       ('Oddy Nuff da Snow Leopard', 'Estados Unidos');

INSERT INTO avaliacao (filme_id, jurado_id, nota, comentario)
VALUES (1, 1, 9.5, 'Obra épica, trilha sonora impecável.'),
       (1, 2, 9.0, 'Visual impressionante, mas longo demais.'),
       (1, 3, 9.8, 'Uma das melhores trilogias já feitas.'),
       (2, 1, 8.0, 'Boa adaptação da música, mas um pouco arrastado.'),
       (2, 2, 7.5, 'Interessante, porém o roteiro poderia ser mais ágil.'),
       (2, 3, 8.2, 'Boa fotografia e trilha.'),
       (3, 1, 9.7, 'Realismo brutal e atuação impecável.'),
       (3, 2, 9.3, 'Um clássico do cinema brasileiro.'),
       (4, 3, 9.9, 'O melhor filme de máfia já feito.'),
       (5, 1, 9.0, 'Emocionante e com excelente atuação da Fernanda Montenegro.');