
CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(255) NOT NULL,
funcao VARCHAR(255) NOT NULL
);

INSERT INTO tb_classes(tipo,funcao)
VALUES("jogador","jogar");
INSERT INTO tb_classes(tipo,funcao)
VALUES ("técnico","organizar");
INSERT INTO tb_classes(tipo,funcao)
VALUES ("torcedores","torcer"); 
INSERT INTO tb_classes(tipo,funcao)
VALUES ("juiz partida","apitar o jogo");
INSERT INTO tb_classes(tipo,funcao)
VALUES ("médicos","medicar todos");


CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
altura DECIMAL(6,2) NOT NULL,
poderataque INT NOT NULL,
poderdefesa INT NOT NULL
);

INSERT INTO tb_personagens(nome,altura,poderataque ,poderdefesa,classes_id)
values("Carlos",1.74,3000,1800,1);
INSERT INTO tb_personagens(nome,altura,poderataque,poderdefesa,classes_id)
values("João",1.80,1000,3500,2);
INSERT INTO tb_personagens(nome,altura,poderataque,poderdefesa,classes_id)
values("Hugo",1.78,3500,2000,3);
INSERT INTO tb_personagens(nome,altura,poderataque,poderdefesa,classes_id)
values("Cezar",1.60,4000,1500,4);
INSERT INTO tb_personagens(nome,altura,poderataque,poderdefesa,classes_id)
values("Antony",1.90,2000,4000,5);
INSERT INTO tb_personagens(nome,altura,poderataque,poderdefesa,classes_id)
values("Fernando",1.78,3000,3500,6);
INSERT INTO tb_personagens(nome,altura,poderataque,poderdefesa,classes_id)
values("Cristian",1.85,3500,1700,7);
INSERT INTO tb_personagens(nome,altura,poderataque,poderdefesa,classes_id)
values("Messi",1.60,5000,2000,8);

ALTER TABLE tb_personagens ADD classes_id BIGINT;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY (classes_id) REFERENCES tb_classes(id);



SELECT * FROM tb_personagens WHERE poderataque > 2000;
SELECT * FROM tb_personagens WHERE poderdefesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id;

SELECT nome,poderataque,poderdefesa,altura ,classes_id FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id WHERE classes_id = 3;

SELECT * FROM tb_personagens;
SELECT * FROM tb_classes;