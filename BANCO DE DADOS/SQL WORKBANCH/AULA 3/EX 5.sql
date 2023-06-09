USE SPRINT2;
CREATE TABLE CURSO (
IDCURSO INT PRIMARY KEY AUTO_INCREMENT,
NOME VARCHAR (50),
SIGLA VARCHAR (3),
COORDENADOR VARCHAR (50));
DESC CURSO;

insert into Curso values
	(NULL,'ANALISE E DESENVOLVIMENTO DE SISTEMAS', 'ADS', 'GERSON'),
	(NULL,'SISTEMA DA INFORMAÇÃO', 'SIS', 'CLAUDIO'),
	(NULL,'CIENCIA DA COMPUTAÇÃO', 'CDC', 'MARCOS');
    SELECT * FROM CURSO;

SELECT COORDENADOR FROM CURSO;
SELECT * FROM CURSO WHERE SIGLA = 'ADS';
SELECT * FROM CURSO ORDER BY NOME;
SELECT * FROM CURSO ORDER BY COORDENADOR DESC;

SELECT * FROM CURSO WHERE NOME LIKE 'A%';
SELECT * FROM CURSO WHERE NOME LIKE '_I%';
SELECT * FROM CURSO WHERE NOME LIKE '%A_';
DROP TABLE CURSO;