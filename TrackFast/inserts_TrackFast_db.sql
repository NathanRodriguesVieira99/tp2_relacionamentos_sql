INSERT INTO motorista (nome, regiao)
VALUES ('Alice Prado', 'Sudeste'),
       ('Bruno Teles', 'Sul'),
       ('Carla Mota', 'Sudeste'),
       ('Diego Hara', 'Nordeste'),
       ('Elisa Nunes', 'Centro-Oeste'),
       ('Fábio Rocha', 'Sul');

INSERT INTO cliente (nome, cidade)
VALUES ('Mercado Sol', 'São Paulo'),
       ('Loja Horizonte', 'Curitiba'),
       ('Bazar Gaia', 'Porto Alegre'),
       ('TechUp', 'Rio de Janeiro'),
       ('Café Aurora', 'Salvador'),
       ('AgroVale', 'Goiânia'),
       ('Arte Viva', 'São Paulo'),
       ('Eco Luz', 'Curitiba');

INSERT INTO entrega (motorista_id, cidade, data_envio, data_entrega, status, valor)
VALUES (1, 'São Paulo', '2025-03-01', '2025-03-03', 'ENTREGUE', 320.00),
       (1, 'Rio de Janeiro', '2025-03-02', '2025-03-05', 'ENTREGUE', 410.00),
       (3, 'São Paulo', '2025-03-04', '2025-03-05', 'ENTREGUE', 210.00),
       (2, 'Curitiba', '2025-03-01', '2025-03-02', 'ENTREGUE', 180.00),
       (2, 'Porto Alegre', '2025-03-03', '2025-03-06', 'ENTREGUE', 500.00),
       (6, 'Porto Alegre', '2025-03-04', '2025-03-07', 'ENTREGUE', 460.00),
       (4, 'Salvador', '2025-03-02', '2025-03-06', 'ENTREGUE', 390.00),
       (4, 'Salvador', '2025-03-05', NULL, 'EM_TRANSITO', 250.00),
       (5, 'Goiânia', '2025-03-01', '2025-03-03', 'ENTREGUE', 270.00),
       (5, 'Goiânia', '2025-03-04', '2025-03-04', 'ENTREGUE', 150.00),
       (3, 'São Paulo', '2025-03-06', NULL, 'EM_TRANSITO', 330.00),
       (1, 'São Paulo', '2025-03-07', '2025-03-09', 'ENTREGUE', 290.00),
       (2, 'Curitiba', '2025-03-06', '2025-03-08', 'ENTREGUE', 210.00),
       (6, 'Porto Alegre', '2025-03-08', '2025-03-10', 'ENTREGUE', 520.00),
       (4, 'Fortaleza', '2025-03-03', '2025-03-09', 'ENTREGUE', 430.00),
       (5, 'Brasília', '2025-03-02', '2025-03-05', 'ENTREGUE', 310.00),
       (5, 'Goiânia', '2025-03-06', '2025-03-07', 'ENTREGUE', 200.00),
       (1, 'Rio de Janeiro', '2025-03-08', NULL, 'EM_TRANSITO', 280.00),
       (2, 'Curitiba', '2025-03-09', '2025-03-11', 'ENTREGUE', 230.00),
       (3, 'Campinas', '2025-03-05', '2025-03-06', 'ENTREGUE', 190.00);