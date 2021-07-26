CREATE TABLE LANCAMENTO(
	CODIGO BIGINT PRIMARY KEY,
	DESCRICAO VARCHAR(50) NOT NULL,
	DATA_VENCIMENTO DATE NOT NULL,
	DATA_PAGAMENTO DATE,
	VALOR DECIMAL(10,2) NOT NULL,
	OBSERVACAO VARCHAR(100),
	TIPO VARCHAR(20) NOT NULL,
	CODIGO_CATEGORIA BIGINT NOT NULL,
	CODIGO_PESSOA BIGINT NOT NULL,
	FOREIGN KEY (CODIGO_CATEGORIA) REFERENCES CATEGORIA(CODIGO),
	FOREIGN KEY (CODIGO_PESSOA) REFERENCES PESSOA(CODIGO)
);

CREATE SEQUENCE LANCAMENTO_CODIGO
INCREMENT 1
MINVALUE 1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

ALTER TABLE LANCAMENTO ALTER COLUMN CODIGO SET DEFAULT NEXTVAL('LANCAMENTO_CODIGO' :: regclass);

INSERT INTO LANCAMENTO (DESCRICAO, DATA_VENCIMENTO, DATA_PAGAMENTO, VALOR, OBSERVACAO, TIPO, CODIGO_CATEGORIA, CODIGO_PESSOA) VALUES ('SALÁRIO MENSAL', '2017-06-10', NULL, 6500.00, 'DISTRIBUIÇÃO DE LUCROS', 'RECEITA', 1, 1);
INSERT INTO LANCAMENTO (DESCRICAO, DATA_VENCIMENTO, DATA_PAGAMENTO, VALOR, OBSERVACAO, TIPO, CODIGO_CATEGORIA, CODIGO_PESSOA) VALUES ('BAHAMAS', '2017-02-10', '2017-02-10', 100.32, NULL, 'DESPESA', 2, 2);
INSERT INTO LANCAMENTO (DESCRICAO, DATA_VENCIMENTO, DATA_PAGAMENTO, VALOR, OBSERVACAO, TIPO, CODIGO_CATEGORIA, CODIGO_PESSOA) VALUES ('TOP CLUB', '2017-06-10', NULL, 120, NULL, 'RECEITA', 3, 3);
INSERT INTO LANCAMENTO (DESCRICAO, DATA_VENCIMENTO, DATA_PAGAMENTO, VALOR, OBSERVACAO, TIPO, CODIGO_CATEGORIA, CODIGO_PESSOA) VALUES ('CEMIG', '2017-02-10', '2017-02-10', 110.44, 'GERAÇÃO', 'RECEITA', 3, 4);
INSERT INTO LANCAMENTO (DESCRICAO, DATA_VENCIMENTO, DATA_PAGAMENTO, VALOR, OBSERVACAO, TIPO, CODIGO_CATEGORIA, CODIGO_PESSOA) VALUES ('DMAE', '2017-06-10', NULL, 200.30, NULL, 'DESPESA', 3, 5);
INSERT INTO LANCAMENTO (DESCRICAO, DATA_VENCIMENTO, DATA_PAGAMENTO, VALOR, OBSERVACAO, TIPO, CODIGO_CATEGORIA, CODIGO_PESSOA) VALUES ('EXTRA', '2017-03-10', '2017-03-10', 1010.32, NULL, 'RECEITA', 4, 6);
INSERT INTO LANCAMENTO (DESCRICAO, DATA_VENCIMENTO, DATA_PAGAMENTO, VALOR, OBSERVACAO, TIPO, CODIGO_CATEGORIA, CODIGO_PESSOA) VALUES ('BAHAMAS', '2017-06-10', NULL, 500, NULL, 'RECEITA', 1, 7);
INSERT INTO LANCAMENTO (DESCRICAO, DATA_VENCIMENTO, DATA_PAGAMENTO, VALOR, OBSERVACAO, TIPO, CODIGO_CATEGORIA, CODIGO_PESSOA) VALUES ('TOP CLUB', '2017-03-10', '2017-03-10', 400.32, NULL, 'DESPESA', 4, 8);
INSERT INTO LANCAMENTO (DESCRICAO, DATA_VENCIMENTO, DATA_PAGAMENTO, VALOR, OBSERVACAO, TIPO, CODIGO_CATEGORIA, CODIGO_PESSOA) VALUES ('DESPACHANTE', '2017-06-10', NULL, 123.64, 'MULTAS', 'DESPESA', 3, 9);
INSERT INTO LANCAMENTO (DESCRICAO, DATA_VENCIMENTO, DATA_PAGAMENTO, VALOR, OBSERVACAO, TIPO, CODIGO_CATEGORIA, CODIGO_PESSOA) VALUES ('PNEUS', '2017-04-10', '2017-04-10', 665.33, NULL, 'RECEITA', 5, 10);
INSERT INTO LANCAMENTO (DESCRICAO, DATA_VENCIMENTO, DATA_PAGAMENTO, VALOR, OBSERVACAO, TIPO, CODIGO_CATEGORIA, CODIGO_PESSOA) VALUES ('CAFÉ', '2017-06-10', NULL, 8.32, NULL, 'DESPESA', 1, 5);
INSERT INTO LANCAMENTO (DESCRICAO, DATA_VENCIMENTO, DATA_PAGAMENTO, VALOR, OBSERVACAO, TIPO, CODIGO_CATEGORIA, CODIGO_PESSOA) VALUES ('ELETRÔNICOS', '2017-04-10', '2017-04-10', 2100.32, NULL, 'DESPESA', 5, 4);
INSERT INTO LANCAMENTO (DESCRICAO, DATA_VENCIMENTO, DATA_PAGAMENTO, VALOR, OBSERVACAO, TIPO, CODIGO_CATEGORIA, CODIGO_PESSOA) VALUES ('INSTRUMENTOS', '2017-06-10', NULL, 1040.32, NULL, 'DESPESA', 4, 3);
INSERT INTO LANCAMENTO (DESCRICAO, DATA_VENCIMENTO, DATA_PAGAMENTO, VALOR, OBSERVACAO, TIPO, CODIGO_CATEGORIA, CODIGO_PESSOA) VALUES ('CAFÉ', '2017-04-10', '2017-04-10', 4.32, NULL, 'DESPESA', 4, 2);
INSERT INTO LANCAMENTO (DESCRICAO, DATA_VENCIMENTO, DATA_PAGAMENTO, VALOR, OBSERVACAO, TIPO, CODIGO_CATEGORIA, CODIGO_PESSOA) VALUES ('LANCHE', '2017-06-10', NULL, 10.20, NULL, 'DESPESA', 4, 1);