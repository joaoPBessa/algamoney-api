CREATE TABLE CATEGORIA(
	CODIGO BIGINT NOT NULL PRIMARY KEY,
	NOME VARCHAR(50) NOT NULL
);

CREATE SEQUENCE CATEGORIA_CODIGO
INCREMENT 1
MINVALUE 1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

ALTER TABLE CATEGORIA ALTER COLUMN CODIGO SET DEFAULT NEXTVAL('CATEGORIA_CODIGO' :: regclass);

INSERT INTO CATEGORIA(NOME) VALUES('Lazer');
INSERT INTO CATEGORIA(NOME) VALUES('Alimentação');
INSERT INTO CATEGORIA(NOME) VALUES('Supermercado');
INSERT INTO CATEGORIA(NOME) VALUES('Farmácia');
INSERT INTO CATEGORIA(NOME) VALUES('Outros');