

USE db_colaboradores;

CREATE TABLE tb_informacoes(

id BIGINT AUTO_INCREMENT,

nome VARCHAR(255) NOT NULL,

funcao VARCHAR(255),

data_nascimento DATE,

salario DECIMAL NOT NULL,

PRIMARY KEY(id)

);

INSERT INTO tb_informacoes(nome,funcao,data_nascimento,salario)
VALUE("José","marcenerio","1990-03-19",6000.00),
("Antonio","pedreiro","1973-05-23",5500.00),
("João","eletricista","1998-07-17",4000.00),
("Maria","encarregada","1990-01-28",7500.00),
("Diogo","pintor","2000-02-20",1900.00);

SELECT * FROM tb_informacoes WHERE salario > 2000.00;

SELECT * FROM tb_informacoes WHERE salario < 2000.00;

UPDATE tb_informacoes SET salario = 6500.00 WHERE id = 2;