CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE  tb_categorias(
	
    id BIGINT auto_increment,
    tipo VARCHAR(255),
    
    PRIMARY KEY(id)
    
);
CREATE TABLE tb_pizzas(
	
    id BIGINT auto_increment,
    cliente VARCHAR(255),
    sabor VARCHAR(255),
    borda VARCHAR(255),
    bebida VARCHAR(255),
	preco DECIMAL(5,2),
    tipo_id BIGINT,
    
    PRIMARY KEY(id),
    FOREIGN KEY (tipo_id) REFERENCES tb_categorias(id)
    
);

INSERT INTO tb_categorias(tipo)VALUES("Queijos"); -- 1
INSERT INTO tb_categorias(tipo)VALUES("Defumadas"); -- 2
INSERT INTO tb_categorias(tipo)VALUES("Vegetarianas"); -- 3
INSERT INTO tb_categorias(tipo)VALUES("Frangos"); -- 4
INSERT INTO tb_categorias(tipo)VALUES("Doces"); -- 5
INSERT INTO tb_categorias(tipo)VALUES("Especiais"); -- 6

INSERT INTO tb_pizzas(cliente, sabor, borda, bebida, preco, tipo_id)VALUES("Vinicius Silvestre", "Marguerita", "Catupiry", "Vinho", 55.00, 1);
INSERT INTO tb_pizzas(cliente, sabor, borda, bebida, preco, tipo_id)VALUES("Lucas Jun", "Pepperoni", "Sem", "Coca-Cola", 53.00, 6);
INSERT INTO tb_pizzas(cliente, sabor, borda, bebida, preco, tipo_id)VALUES("Ygor Eduardo", "Quatro Queijos", "Catupiry", "Coca-Cola", 47.99, 1);
INSERT INTO tb_pizzas(cliente, sabor, borda, bebida, preco, tipo_id)VALUES("Matheus Aronque", "Carne Seca com Catupiry", "Catupiry", "Coca Zero", 63.00, 6);
INSERT INTO tb_pizzas(cliente, sabor, borda, bebida, preco, tipo_id)VALUES("Yago Garcia", "Toscana", "Catupiry", "Pepsi Twist", 44.00, 2);
INSERT INTO tb_pizzas(cliente, sabor, borda, bebida, preco, tipo_id)VALUES("Eduardo Serzedello", "Brocolis", "Catupiry", "Coca Cola", 47.00, 3);
INSERT INTO tb_pizzas(cliente, sabor, borda, bebida, preco, tipo_id)VALUES("João Damasceno","Marguerita", "Catupiry", "Coca Cola", 47.00, 1);
INSERT INTO tb_pizzas(cliente, sabor, borda, bebida, preco, tipo_id)VALUES("Gabriel Lucano", "Quatro Queijos", "Fina", "Fanta Uva", 42.00, 1);
INSERT INTO tb_pizzas(cliente, sabor, borda, bebida, preco, tipo_id)VALUES("Liniker Kenzo", "Portuguesa", "Catupiry", "Coca Cola", 65.00, 1);

SELECT * FROM tb_pizzas;
SELECT * FROM tb_pizzas WHERE preco >= 45.00;
SELECT * FROM tb_pizzas WHERE preco >= 50.00 && preco <= 100.00;
SELECT * FROM tb_pizzas WHERE bebida LIKE 'C%';
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.tipo_id;

DROP DATABASE db_pizzaria_legal;