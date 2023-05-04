-- aula 5
CREATE DATABASE sprint02;
use sprint02;
create table aluno (
ra char (8) primary key,
nome varchar(45),
email varchar(45));

create table empresa(
idEmpresa int primary key auto_increment,
nome varchar (45),
responsavel varchar (45))
auto_increment = 100;

alter table aluno add column fkEmpresa int,
add constraint fkEmp foreign key (fkEmpresa)
 references empresa (idEmpresa);
 
 desc aluno;
 
 insert into empresa values
 (null, 'C6banck', 'Andressa'),
 (null, 'Safra', 'Joana'),
 (null, 'Tivit', 'Tatiana');
 
 insert into aluno values
 ('01231999', 'Isabel', 'isabel@sptech', 100),
 ('01231888','Ex da isabel','exisabel@sptech', 101),
 ('01231777','Futuro da sarah','futuro@sptech', 101),
 ('01231666','Sarah','sarah@sptech', 100),
 ('01231555','Karma do Pedro','pedro@sptech', 100),
 ('01231444','Pedro','pedrosemkarma@sptech', 102);
 
 select * from aluno;
 
 -- join = junção
 -- todo join tem ON
 
 select
 aluno.*,
 empresa.nome
 from aluno join empresa
 on idEmpresa = fkEmpresa;

select
aluno.nome,
empresa.nome
from aluno join empresa
on aluno.fkEmpresa = empresa.idEmpresa;


select 
aluno.nome as NomeAluno,
empresa.nome as NomeEmpresa
from aluno join empresa
on aluno.fkempresa = empresa.idEmpresa;

select * from empresa;
update aluno set fkEmpresa = 101
where ra = '01231444';

select * from empresa;

delete from empresa where idEmpresa = 102;


