CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	
    id BIGINT auto_increment,
    classe VARCHAR(255),
   
    PRIMARY KEY(id)
    
);
CREATE TABLE tb_personagem(
	
    id BIGINT auto_increment,
    nome VARCHAR(255),
    regiao VARCHAR(255),
	arvoreHabilidades VARCHAR(255), -- SELECT * FROM tb_personagem INNER JOIN tb_classes ON tb_classes.id = tb_personagem.char_id;
    ATK BIGINT,
    DEF BIGINT,
    char_id BIGINT,    
        
    PRIMARY KEY(id),
    FOREIGN KEY (char_id) REFERENCES tb_classes(id)
    
);

SELECT * FROM tb_classes;
SELECT * FROM tb_personagem WHERE ATK >= 2000;
SELECT * FROM tb_personagem WHERE DEF <= 2000 && DEF >= 1000;

INSERT INTO tb_classes(classe)VALUES("Bardo");-- 1
INSERT INTO tb_classes(classe)VALUES("Guerreiro");-- 2
INSERT INTO tb_classes(classe)VALUES("Arqueiro");-- 3
INSERT INTO tb_classes(classe)VALUES("Mago");-- 4
INSERT INTO tb_classes(classe)VALUES("Ladino");-- 5

INSERT INTO tb_personagem(nome, regiao, arvoreHabilidades, ATK, DEF, char_id)VALUES("Vinicius", "Cidade Abandonada", "Furtividade", 2200, 650, 5);
INSERT INTO tb_personagem(nome, regiao, arvoreHabilidades, ATK, DEF, char_id)VALUES("Harry Potter", "Escola de Magia do Norte", "Magia de Explosão", 1400, 1000, 4);
INSERT INTO tb_personagem(nome, regiao, arvoreHabilidades, ATK, DEF, char_id)VALUES("Garen Demacia", "Picadeiro Gelido", "Armas de uma mão", 2000, 1500, 2);
INSERT INTO tb_personagem(nome, regiao, arvoreHabilidades, ATK, DEF, char_id)VALUES("Robin Hood", "Floresta Densa", "Tiros à Distancia", 1800, 980, 3);
INSERT INTO tb_personagem(nome, regiao, arvoreHabilidades, ATK, DEF, char_id)VALUES("Jorge Ben Jor", "Província Musicista", "Curas e Defesas", 500, 2200, 1);
INSERT INTO tb_personagem(nome, regiao, arvoreHabilidades, ATK, DEF, char_id)VALUES("Smooth Raccoon", "Prisão de Segurança Maxima", "Furtividade", 3000, 1200, 5);
INSERT INTO tb_personagem(nome, regiao, arvoreHabilidades, ATK, DEF, char_id)VALUES("Voldemort", "Cidade Assombrada", "Magia Negra", 2300, 1850 , 4);
INSERT INTO tb_personagem(nome, regiao, arvoreHabilidades, ATK, DEF, char_id)VALUES("Darius Noxus", "Província do Fogo", "Armas de duas mãos", 2300, 2000 , 2);

SELECT * FROM tb_personagem
WHERE nome
LIKE 'V%';

SELECT * FROM tb_personagem INNER JOIN tb_classes
ON tb_classes.id = tb_personagem.char_id;

DROP DATABASE db_generation_game_online;