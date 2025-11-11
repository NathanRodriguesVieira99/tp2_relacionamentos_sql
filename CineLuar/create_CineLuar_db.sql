DROP TABLE IF EXISTS filme;
DROP TABLE IF EXISTS jurado;
DROP TABLE IF EXISTS avaliacao;

CREATE TABLE filme (
    id SERIAL PRIMARY KEY,
    titulo TEXT NOT NULL,
    diretor TEXT  NOT NULL,
    pais TEXT NOT NULL,
    ano TEXT NOT NULL
);

CREATE TABLE jurado (
    id SERIAL PRIMARY KEY,
    nome TEXT NOT NULL,
    pais TEXT NOT NULL
);

CREATE TABLE avaliacao (
  id SERIAL PRIMARY KEY,
  filme_id INT NOT NULL REFERENCES filme(id),
  jurado_id INT NOT NULL REFERENCES jurado(id),
  nota NUMERIC(3,1) NOT NULL,
  comentario TEXT NOT NULL
);