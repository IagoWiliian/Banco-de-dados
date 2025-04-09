
CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(

id BIGINT AUTO_INCREMENT,

nome VARCHAR(255) NOT NULL,

funcao VARCHAR(255),

marca VARCHAR(255),

preco DECIMAL NOT NULL,


PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome,funcao,marca,preco)
VALUE("Computador","acessar internet","sansung",2000.00),
("Relogio","mostrar horas","casio",350.00),
("Calculadora","fazer calculos","hp",550.00),
("Celular","fazer ligações","nokia",1000.00),
("Geladeira","armazenar produtos","consul",2500.00),
("Fogão","fazer comida","dako",480.00),
("Microondas","aquecer alimentos","mondial",600.00),
("Televisão","transmitir imagens","sansung",1200.00);

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET preco = 3000.00 WHERE id = 5;


