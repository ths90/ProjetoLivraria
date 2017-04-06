CREATE DATABASE DB_LIVRARIA
GO

USE DB_LIVRARIA
GO

CREATE TABLE TB_USUARIOS(
	ID_USUARIO INT IDENTITY PRIMARY KEY,
	NOME VARCHAR(50) NOT NULL,
	SOBRENOME VARCHAR(50) NOT NULL,
	EMAIL VARCHAR (100) NOT NULL,
	NOME_USUARIO VARCHAR (10) NOT NULL,
	SENHA VARCHAR(10) NOT NULL,
	DATA_CADASTRO DATETIME DEFAULT GETDATE()
	
)	
GO

CREATE TABLE TB_LOGINS(
	ID_LOGIN INT IDENTITY PRIMARY KEY,
	ID_USUARIO INT,
	DATA_LOGIN DATETIME
)
GO

INSERT INTO TB_USUARIOS (NOME, SOBRENOME, EMAIL, NOME_USUARIO, SENHA)
VALUES('JUCA', 'CHAVES', 'jucachaves@gmail.com', 'JUCACHAVES', '123456789')






CREATE TABLE TB_PRODUTOS(
	ID_PRODUTO INT IDENTITY PRIMARY KEY,
	NOME VARCHAR(100) NOT NULL,
	TIPO VARCHAR(30) NOT NULL,
	QUANTIDADE INT NOT NULL,
	PRECO_COMPRA DECIMAL(9,2) NOT NULL,
	PRECO_VENDA DECIMAL(9,2) NOT NULL,
	DATA_CADASTRO DATETIME DEFAULT GETDATE()
	
)
GO




SELECT * FROM TB_PRODUTOS
GO


INSERT INTO TB_PRODUTOS (NOME, TIPO, QUANTIDADE, PRECO_COMPRA, PRECO_VENDA)
VALUES('IT: OBRA PRIMA DO MEDO', 'LIVRO', 3, 39.90, 49.90)	
GO