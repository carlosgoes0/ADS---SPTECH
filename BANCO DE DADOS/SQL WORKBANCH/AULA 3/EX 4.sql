USE SPRINT2;
CREATE TABLE PROFESSOR (
IDPROFESSOR INT primary KEY auto_increment,
NOME VARCHAR (50),
ESPECIALIDADE VARCHAR (40),
DTNASC DATE 
);
DESC PROFESSOR;

insert into Professor values
(NULL, 'mauro', 'artes', '1995-05-22'),
(NULL, 'carlos', 'artes', '1996-05-21'),
(NULL, 'jose', 'matematica', '1995-06-12'),
(NULL, 'ivonete', 'matematica', '1998-08-14'),
(NULL, 'karine', 'historia', '1997-02-12'),
(NULL, 'kamila', 'historia', '1990-02-18'),
(NULL, 'matheus', 'geografia', '1991-09-11');

SELECT* FROM PROFESSOR;
ALTER TABLE PROFESSOR ADD COLUMN FUNCAO VARCHAR (50),
ADD constraint CHKFUNCAO CHECK ( FUNCAO IN ('MONITOR', 'ASSISTENTE', 'TITULAR'));

UPDATE PROFESSOR SET FUNCAO = 'MONITOR'
WHERE IDPROFESSOR IN (1);

UPDATE PROFESSOR SET FUNCAO = 'MONITOR'
WHERE IDPROFESSOR IN (2);

UPDATE PROFESSOR SET FUNCAO = 'ASSISTENTE'
WHERE IDPROFESSOR IN (3);

UPDATE PROFESSOR SET FUNCAO = 'ASSISTENTE'
WHERE IDPROFESSOR IN (4);

UPDATE PROFESSOR SET FUNCAO = 'TITULAR'
WHERE IDPROFESSOR IN (5);

UPDATE PROFESSOR SET FUNCAO = 'TITULAR'
WHERE IDPROFESSOR IN (6);

UPDATE PROFESSOR SET FUNCAO = 'TITULAR'
WHERE IDPROFESSOR IN (7);

SELECT * FROM PROFESSOR;

INSERT INTO PROFESSOR  VALUES
(NULL, 'MAURICIO', 'GEOFRAFIA', 18800711, 'MONITOR');

DELETE FROM PROFESSOR WHERE IDPROFESSOR IN (5);

SELECT*FROM PROFESSOR WHERE FUNCAO = 'TITULAR';

SELECT ESPECIALIDADE, DTNASC FROM PROFESSOR WHERE FUNCAO = 'MONITOR';

UPDATE PROFESSOR SET DTNASC = '19990101'
WHERE IDPROFESSOR IN (3);

DESC PROFESSOR;
SELECT * FROM PROFESSOR;

truncate TABLE PROFESSOR; 