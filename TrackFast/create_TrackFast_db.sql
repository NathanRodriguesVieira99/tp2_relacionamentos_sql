DROP TABLE IF EXISTS entrega;
DROP TABLE IF EXISTS cliente;
DROP TABLE IF EXISTS motorista;

CREATE TABLE motorista (
    id SERIAL PRIMARY KEY,
    nome TEXT NOT NULL,
    regiao TEXT NOT NULL
);

CREATE  TABLE cliente  (
    id SERIAL PRIMARY KEY,
    nome TEXT NOT NULL,
    cidade TEXT NOT NULL
);

CREATE TABLE entrega (
    id SERIAL PRIMARY KEY,
    motorista_id INT NOT NULL REFERENCES motorista(id),
    cidade TEXT NOT NULL,
    data_envio DATE NOT NULL,
    data_entrega DATE,
    status TEXT NOT NULL,
    valor NUMERIC(10,2) NOT NULL
);