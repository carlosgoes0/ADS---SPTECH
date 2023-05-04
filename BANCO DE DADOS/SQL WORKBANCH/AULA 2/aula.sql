CREATE DATABASE SPTECH;
USE SPTECH;
CREATE TABLE aluno(
RA CHAR(8)PRIMARY KEY,
NOME VARCHAR (100),
BAIRRO VARCHAR(50)
);

INSERT INTO aluno values
('01231042', 'THEO', 'GUILHERMINA'),
('01231022', 'FELIPE', 'VILA ANDRADE'),
('01231092', 'KAT', 'ITAIM PAULISTA'),
('01231079', 'JOAO', 'VILA ASSIS'),
('01231147', 'GUEDES', 'GRAJAU');

select * from aluno;

alter table aluno add column email varchar(100) not null;

describe aluno;

update aluno set email = 'theo@sptech.school'
 where ra = '01231042';
 
 select * from aluno;
 
 update aluno set email = 'kat@tech.school'
 where ra = '01231092';
 update aluno set email = 'guedes@sptech.school'
 where ra = '01231147';
 select * from aluno;
 
 alter table aluno add column dtNasc date;
describe aluno;insert into aluno (ra, email, dtNasc) values
('01231198', 'amanda@sptech.school', '1983-10-13');
insert into aluno(nome, bairro) values
('AMANDA', 'PAULISTA');

alter table aluno modify column nome varchar(120);

describe aluno;

select * from aluno;

alter table aluno rename column dtNasc to dataNasc;
describe aluno;

update aluno set nome= 'AMANDA'
WHERE RA ='01231198';

update aluno set bairro= 'PAULISTA'
WHERE RA ='01231198';
 
 
alter table aluno drop column dataNasc;describe aluno;

select * from aluno where nome='kat';

select bairro from aluno where nome='kat';

select ra, email from aluno where nome='guedes';

select * from aluno order by nome;
select * from aluno order by nome desc;

select * from aluno where nome like 'a%';

select * from aluno where nome like '%o';

select * from aluno where BAIRRO like '%ss%';

SELECT * FROM ALUNO WHERE NOME LIKE '__E%';

CREATE TABLE EMPRESA(
ID INT PRIMARY KEY auto_increment,
nome varchar(100),
responsavel varchar(100));

insert into empresa (nome, responsavel) values
('c6 bank', 'andressa'),
('box delivery', 'erika');

select * from empresa;