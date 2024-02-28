CREATE DATABASE Localidades;

USE Localidades;

CREATE TABLE IF NOT EXISTS Estado(
ID INT AUTO_INCREMENT,
NOME VARCHAR(50) NOT NULL,
UF VARCHAR(2) NOT NULL, 
PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS Cidade (
ID INT AUTO_INCREMENT,
NOME VARCHAR(50) NOT NULL,
ESTADO_ID INT,
PRIMARY KEY (ID),
FOREIGN KEY (ESTADO_ID) REFERENCES ESTADO (ID)
);

INSERT INTO ESTADO (ID, NOME, UF) VALUES
	(1, 'São Paulo','SP'),
    (2, 'Rio de Janeiro','RJ'),
    (3, 'Bahia','BA');
    
INSERT INTO CIDADE (ID, NOME, ESTADO_ID) VALUES
	(1,'São Paulo',1),
    (2, 'Campinas',1),
    (3,'Rio de Janeiro',2),
    (4,'Arraial do Cabo',2),
    (5,'Salvador',3),
    (6,'Ilhéus',3),
    (7,'Night City', null),
    (8,'Gothan City', null);
    
SELECT * FROM CIDADE;
    
SELECT * FROM ESTADO;
    