DROP TABLE IF EXISTS resultado;
DROP TABLE IF EXISTS competicao;
DROP TABLE IF EXISTS atleta;

CREATE TABLE atleta (
   id  SERIAL PRIMARY KEY,
   nome TEXT NOT NULL,
   pais TEXT NOT NULL
);

CREATE TABLE competicao (
  id SERIAL PRIMARY KEY,
  nome TEXT NOT NULL,
  ano INT NOT NULL
);

CREATE TABLE  resultado (
   id SERIAL PRIMARY KEY,
   atleta_id INT NOT NULL  REFERENCES atleta(id),
   competicao_id INT NOT NULL  REFERENCES competicao(id),
   pontuacao NUMERIC(6,2) NOT NULL,
   tempo_ms INT NOT NULL
);