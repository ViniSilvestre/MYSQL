CREATE DATABASE db_escolagen;

USE db_escolagen; 

CREATE TABLE tb_escolagen(
	
    id BIGINT auto_increment,
    nome VARCHAR(255),
    notaFinal DECIMAL(9,2),
    RA INT,
    idade INT,

	PRIMARY KEY (id)
    
);

SELECT * FROM tb_escolagen;

SELECT * FROM tb_escolagen WHERE notaFinal >= 7.00;

SELECT * FROM tb_escolagen WHERE notaFinal < 7.00;

INSERT INTO tb_escolagen(nome, notaFinal, RA, idade)VALUES("Liniker Kenzo", 8.7, 938214, 22);

UPDATE tb_escolagen
SET nome = "Yago Garcia", notaFinal= 5.5
WHERE id = 9;