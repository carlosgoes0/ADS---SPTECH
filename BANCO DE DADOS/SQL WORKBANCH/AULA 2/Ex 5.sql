use sprint1;
create table Curso (
idCurso INT PRIMARY KEY auto_increment,
nome varchar(50),
sigla varchar (3),
coordenador varchar (50));
select * from Curso;
insert into Curso (nome, sigla, coordenador) values
('ANALISE E DESENVOLVIMENTO DE SISTEMAS', 'ADS', 'GERSON'),
('SISTEMA DA INFORMAÇÃO', 'SIS', 'CLAUDIO'),
('CIENCIA DA COMPUTAÇÃO', 'CDC', 'MARCOS');

select coordenador from Curso;
select * from Curso where sigla='sis';
select * from Curso order by nome;
select * from Curso order by nome desc;
select * from Curso where nome like 'a%';
select * from Curso where nome like '%s';
select * from Curso where nome like '_n%';
select * from Curso where nome like '%a_';




