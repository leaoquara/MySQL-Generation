CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_ecommerce(

	codigo BIGINT auto_increment,
	marca VARCHAR(255),
    tipo VARCHAR(255),
    cor VARCHAR(255),
    preço DECIMAL(9,2),
    
    primary key (codigo)

);

SELECT * FROM tb_ecommerce;

SELECT * FROM tb_ecommerce WHERE preço > 500.00;

SELECT * FROM tb_ecommerce WHERE preço < 500.00;

INSERT INTO tb_ecommerce(marca,tipo,cor,preço)VALUES("Jordan","Boné","Vermeleho",150.00);