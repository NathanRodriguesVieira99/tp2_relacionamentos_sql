INSERT INTO atleta (nome, pais)
VALUES
('L. Santos','BRA'),
('M. Duarte','POR'),
('C. Reyes','CHI'),
('A. Gómez','ARG'),
('T. Silva','BRA'),
('J. Costa','BRA');

INSERT INTO competicao (nome, ano)
VALUES
('Open Atlântico',2023),
('Copa Andina',2024),
('Gran Prix Sul',2025);

INSERT INTO resultado (atleta_id, competicao_id, pontuacao, tempo_ms)
VALUES
(1,1,88.50,61234),
(2,1,91.20,60021),
(3,1,85.00,63510),
(4,1,79.40,65220),
(5,1,90.10,60750),
(6,1,86.30,62990),
(1,2,92.00,59800),
(2,2,89.50,60410),
(3,2,87.20,62000),
(4,2,80.00,64800),
(5,2,93.40,59550),
(6,2,88.10,61520),
(1,3,94.30,59210),
(2,3,90.80,60010),
(3,3,86.90,62220),
(4,3,82.50,64110),
(5,3,95.20,58850),
(6,3,89.00,60990);