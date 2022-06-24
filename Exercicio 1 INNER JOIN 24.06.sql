CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_Racas(

	nome VARCHAR (255),
    atributo_alto VARCHAR(255),
	tendencia VARCHAR (255),
    altura DECIMAL (9,2),
    habilidade VARCHAR (255),
	
	PRIMARY KEY(nome)

);

CREATE TABLE tb_Classes(

	id BIGINT auto_increment,
    classe VARCHAR (255),
    constituicao INT,
    forca INT,
    destreza INT,
    inteligencia INT,
    sabedoria INT,
    vida INT,
    mana INT,
    raca_nome VARCHAR(255),
   
	PRIMARY KEY(id),
   
	FOREIGN KEY(raca_nome) REFERENCES tb_Racas (nome)
   
);

SELECT * FROM tb_Racas;

SELECT * FROM tb_Classes;

SELECT * FROM tb_Classes INNER JOIN tb_Racas
ON tb_Racas.nome = tb_Classes.raca_nome;

SELECT * FROM tb_Classes INNER JOIN tb_Racas
ON tb_Racas.nome = tb_Classes.raca_nome;

SELECT * FROM tb_Classes INNER JOIN tb_Racas
ON tb_Racas.nome = tb_Classes.raca_nome WHERE forca >= 2;

SELECT * FROM tb_Classes INNER JOIN tb_Racas
ON tb_Racas.nome = tb_Classes.raca_nome WHERE inteligencia >= 2 OR i <= 3;

SELECT * FROM tb_Classes INNER JOIN tb_Racas
ON tb_Racas.nome = tb_Classes.raca_nome WHERE nome OR classe LIKE 'C%' OR 'c%';

SELECT * FROM tb_Classes INNER JOIN tb_Racas
ON tb_Racas.nome = tb_Classes.raca_nome WHERE classe LIKE 'Ladino%';

INSERT INTO tb_Racas(nome,atributo_alto,tendencia,altura,habilidade)VALUES("Elfo","Destreza","N",1.80,"Sentidos Aguçados");
INSERT INTO tb_Racas(nome,atributo_alto,tendencia,altura,habilidade)VALUES("Anão","Constituição","L",1.40,"Resiliência Anã");
INSERT INTO tb_Racas(nome,atributo_alto,tendencia,altura,habilidade)VALUES("Humano","?","?",1.70,"Aumento no Valor de Habilidade");

INSERT INTO tb_Classes(classe,constituicao,forca,destreza,inteligencia,sabedoria,vida,mana,raca_nome)VALUES("Guerreiro",3,2,2,1,2,10,5,"Anão");
INSERT INTO tb_Classes(classe,constituicao,forca,destreza,inteligencia,sabedoria,vida,mana,raca_nome)VALUES("Ladino",1,1,3,3,2,7,7,"Elfo");
INSERT INTO tb_Classes(classe,constituicao,forca,destreza,inteligencia,sabedoria,vida,mana,raca_nome)VALUES("Mago",1,1,2,3,3,5,10,"Elfo");

/*UPDATE tb_Racas
SET habilidade = "Aumento no Valor de Habilidade"
WHERE nome = "Humano"*/