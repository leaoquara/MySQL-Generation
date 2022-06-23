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
    
    -- numeros antes / numero depois da virgula.
	salario DECIMAL(9,2),
	setor VARCHAR(255),
    matricula INT,
    
    primary key (id)
    
);

-- tras todos osa dados da tabela de funcionarios.
SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario < 2000;

SELECT * FROM tb_funcionarios WHERE salario > 2000;

SELECT nome, MAX(salario) AS MaiorSalario FROM tb_funcionarios;

INSERT INTO tb_funcionarios(nome, salario, setor, matricula)VALUES("Ryan", 4500.78, "Fabrica", 999);

/*UPDATE table_name
SET column1 = value1, column2 = value2 ...
WHERE condition;*/

/*UPDATE tb_funcionarios
SET matricula = 777
WHERE id = 2*/

UPDATE tb_funcionarios
SET nome = "Matheus"
WHERE id = 8;

-- SET SQL_SAFE_UPDATES = 0;

/* DELETE FROM tb_funciosalarionarios WHERE id =3;*/

 DELETE FROM tb_funcionarios;