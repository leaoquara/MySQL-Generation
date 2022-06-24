--
/**/

-- cria um bando de dados.
CREATE DATABASE db_rhgeneration;

-- indica o bando de dados a ser utilizado/manipulado.
USE db_rhgeneration;

-- cria uma tabela.
CREATE TABLE tb_funcionarios(

	id BIGINT auto_increment,
	nome VARCHAR(255),
	salario DECIMAL(9,2), -- numeros antes / numero depois da virgula.
    matricula INT,
    setor_id BIGINT,
    
    -- setor_id BIGINT, FOREIGN KEY (setor_id) REFERENCES tb_setor(id),
    
    PRIMARY KEY (id),
    
    FOREIGN KEY(setor_id) REFERENCES tb_setor (id)
    
);

CREATE TABLE tb_setor(

	id BIGINT auto_increment,
	nome_setor VARCHAR(255),

	PRIMARY KEY(id)
    
);

-- tras todos osa dados da tabela de funcionarios.
SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios INNER JOIN tb_setor
ON tb_setor.id = tb_funcionarios.setor_id;

-- SELECT * FROM tb_funcionarios FULL JOIN tb_setor;

SELECT * FROM tb_setor;

/*SELECT * FROM tb_funcionarios WHERE salario < 2000;

SELECT * FROM tb_funcionarios WHERE salario > 2000;

SELECT nome, MAX(salario) AS MaiorSalario FROM tb_funcionarios;*/

INSERT INTO tb_funcionarios(nome, salario, matricula, setor_id)VALUES("Ryan", 4500.78, 666, 2);
INSERT INTO tb_funcionarios(nome, salario, matricula, setor_id)VALUES("Wanessa", 12050.78, 999, 2);
INSERT INTO tb_funcionarios(nome, salario, matricula, setor_id)VALUES("Aline", 12345.78, 777, 1);

INSERT INTO tb_setor(nome_setor)VALUES("Administração");
INSERT INTO tb_setor(nome_setor)VALUES("Tecnologia");
INSERT INTO tb_setor(nome_setor)VALUES("Financeiro");

ALTER TABLE tb_funcionarios
CHANGE setor_id fk_setor_id BIGINT;

/*UPDATE table_name
SET column1 = value1, column2 = value2 ...
WHERE condition;*/

/*UPDATE tb_funcionarios
SET matricula = 777
WHERE id = 2*/

UPDATE tb_funcionarios
SET nome = "Matheus"
WHERE id = 1;

-- SET SQL_SAFE_UPDATES = 0;

-- DELETE FROM tb_funciosalarionarios WHERE id =3;

-- DELETE FROM tb_funcionarios;