CREATE DATABASE db_lojagen;

USE db_lojagen; -- SkateShop

CREATE TABLE tb_lojagen(
	
    id BIGINT auto_increment,
    produto VARCHAR(255),
    preco DECIMAL(9,2),
    modelo VARCHAR(255),
    cor VARCHAR(255),

	PRIMARY KEY (id)
    
);

SELECT * FROM tb_lojagen;

SELECT * FROM tb_lojagen WHERE preco >= 500.00;

SELECT * FROM tb_lojagen WHERE preco < 500.00;

INSERT INTO tb_lojagen(produto, preco, modelo, cor)VALUES("Calça", 230.00, "Cargo Cotele", "Preto");

UPDATE tb_lojagen
SET produto = "Rodinha", modelo = "Bones", cor = "Branca"
WHERE id = 2;