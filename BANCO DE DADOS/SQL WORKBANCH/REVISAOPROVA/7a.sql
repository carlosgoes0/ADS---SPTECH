create database Pr7;
use Pr7;

create table projetos(
idProjetos int primary key auto_increment,
nome varchar (45),
descricao varchar(45)
);
insert into projetos values 
(null, 'Opus Quality', 'Reduzir Absenteismo nas empresas'),
(null, 'Humidus Solution', 'Coletar agua com sistema inteligente');


create table alunos (
idAlunos int primary key auto_increment,
nome varchar (45),
tel char(12),
representante int,
fkProjetos int,
fkRepresentante int,
constraint fkProj foreign key (fkProjetos) references projetos (idProjetos),
constraint fkRep foreign key (fkRepresentante) references alunos (idAlunos)
);

insert into alunos values 
(null, 'Carlos Henrique', '11952811515', null, 1,null),
(null, 'Kath santos', '11952166687',null, 1,null),
(null, 'Luiz Miguel', '119325856214',null, 2,null),
(null, 'Izabel flores', '11933654597',null, 2,null);


create table acompanhantes (
idAcompanhantes int auto_increment,
nome varchar (45),
descricao varchar(45),
fkAlunosAcom int,
constraint fkAcompanhantes foreign key (fkAlunosAcom) references alunos (idAlunos),
constraint pkComposta primary key (idAcompanhantes,fkAlunosAcom)
);

insert into acompanhantes values 
(null, 'Kamila Soares','Esposa', 1),
(null, 'Eduardo','Esposo', 1),
(null, 'Manoela','Esposa', 2);

select * from projetos;
select * from alunos;
select * from acompanhantes;


select * from alunos join projetos on fkProjetos = idProjetos;
select * from alunos join acompanhantes on fkAlunosAcom = idAlunos;
select * from alunos join alunos as representantes on alunos.fkRepresentante = representantes.idAlunos;
select * from alunos join projetos on fkProjetos = idProjetos where idProjetos = 1;
select * from alunos join projetos on fkProjetos = idProjetos join acompanhantes on fkAlunosAcom = idAlunos; 

update acompanhantes set fkAlunosAcom = '3' where idAcompanhantes = 2;



