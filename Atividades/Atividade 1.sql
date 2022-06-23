/*
* exemplo de comentarios 
*/
-- Sempre bom deixar a variavel em CAPS LOCK

-- criar banco de dados
CREATE DATABASE	db_rhgeneration; 

-- indica o bando de dados a ser utilizado/manipulado
USE db_rhgeneration;


CREATE TABLE tb_funcionarios(
					
	id BIGINT auto_increment, -- para que o id sempre "atualize" com a inserção de dados --
	-- outra maneira de referencia ao PK é usando ele direto no id
    nome VARCHAR(255), -- VARCHAR serve para letras = String, maximo de caracteres 255
	salario DECIMAL(9,2), -- DECIMAL quando estamos trabalhando com dinheiro, pois ele permite definir quantas casa pós virgula
	setor VARCHAR(255),
    matricula INT(5),
    
    PRIMARY KEY(id)
    
);

SELECT * FROM tb_funcionarios; -- tras todos os dados da tabela de funcionarios

SELECT * FROM tb_funcionarios WHERE salario > 2000.00;

SELECT id, nome, matricula, MAX(salario) AS MaiorSalario FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

INSERT INTO tb_funcionarios(nome, salario, setor, matricula)VALUES("Ryan", 2132.50,"Tecnologia", 08);

UPDATE tb_funcionarios -- atualizar algum dado do usuario
SET salario= 1550.00 -- para mais de uma alteração, colocar SET nome = "nome", salario = "o valor"
WHERE id = 3;

DELETE FROM tb_funcionarios WHERE id = 5; -- deleta os dados do usuario