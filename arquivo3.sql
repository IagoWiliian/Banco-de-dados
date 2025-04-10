

USE db_escola;

CREATE TABLE tb_estudantes(

id BIGINT AUTO_INCREMENT,

nome VARCHAR(255) NOT NULL,

idade INT,

turma VARCHAR(255),

nota DECIMAL NOT NULL,

PRIMARY KEY (id)
);
INSERT INTO tb_estudantes(nome,idade,turma,nota)
VALUE("Paulo",15,"verde",9.0),
("Carlos",14,"azul",9.0),
("Diogo",17,"rosa",9.0),
("Patricia",15,"verde",8.0),
("Camila",18,"rosa",10.0),
("Raul",13,"azul",10.0),
("Maria",16,"vermelha",6.5),
("João",16,"vermeha",6.0);

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 9.0 WHERE id = 4;

ALTER TABLE tb_estudantes MODIFY nota DECIMAL(6,2);