CREATE DATABASE db_pizza_legal;

USE db_pizza_legal;

CREATE TABLE tb_categoria(
id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
 nome VARCHAR(255) NOT NULL,
 descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_pizzas(
id_pizza BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_pizza VARCHAR(255) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
tamanho VARCHAR(255) NOT NULL,
id_categoria INT,
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);


INSERT INTO tb_categoria(nome,descricao)
VALUE("Salgada","recheio salgado"),
("Doce","recheio doce"),
("Especial","recheio especi"),
("Tradicional","recheio tradicional"),
("Vegetariana","sem carne");

INSERT INTO tb_pizzas(nome_pizza,preco,tamanho,id_categoria)
VALUE("Calabresa",45.00,"grande",1),
("Portuquesa",60.00,"grande",1),
("Marquerita",50.00,"media",1),
("Chocolate",65.00,"media",2),
("Nutella",55.00,"pequena",2),
("Frango",60.00,"grande",4),
("A moda",70.00,"grande",3),
("Vegetariana",35.00,"media",5);



SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome_pizza LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categoria
ON tb_pizzas.id_categoria = tb_categorias.id;


SELECT * FROM tb_pizzas INNER JOIN tb_categoria
ON tb_pizzas.categoria_id = tb_categoria.id WHERE categoria.nome = "pizzas doce";

SELECT * FROM tb_pizzas;
SELECT * FROM tb_categoria;