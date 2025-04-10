
CREATE DATABASE  db_farmacia_bem_estar;


USE db_farmacia_bem_estar;


CREATE TABLE  tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);


INSERT INTO tb_categorias (nome, descricao) VALUES
    ('Medicamentos', 'Remédios para diversas condições'),
    ('Cosméticos', 'Produtos de beleza e cuidados pessoais'),
    ('Higiene Pessoal', 'Produtos para higiene diária'),
    ('Suplementos', 'Vitaminas e suplementos alimentares'),
    ('Infantil', 'Produtos para bebês e crianças');


CREATE TABLE IF NOT EXISTS tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);


INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria_id) VALUES
    ('Paracetamol', 'Analgésico e antitérmico', 10.50, 100, 1),
    ('Shampoo Anticaspa', 'Para tratamento de caspa', 25.00, 50, 2),
    ('Sabonete Líquido', 'Para higiene das mãos', 8.90, 80, 3),
    ('Vitamina C', 'Suplemento vitamínico', 35.00, 30, 4),
    ('Fralda Descartável', 'Para bebês', 45.00, 60, 5),
    ('Protetor Solar', 'Proteção contra raios UV', 60.00, 40, 2),
    ('Pasta de Dente', 'Higiene bucal', 7.50, 90, 3),
    ('Multivitamínico', 'Suplemento completo', 55.00, 20, 4);


SELECT * FROM tb_produtos WHERE preco > 50.00;


SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;


SELECT * FROM tb_produtos WHERE nome LIKE '%C%';


SELECT tb_produtos.*, tb_categorias.nome AS categoria_nome
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;


SELECT tb_produtos.*, tb_categorias.nome AS categoria_nome
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = 'Cosméticos';