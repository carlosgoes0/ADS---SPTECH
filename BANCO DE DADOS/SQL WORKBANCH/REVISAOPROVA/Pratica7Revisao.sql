use revisao;

create table projetos(
idProjetos int primary key auto_increment,
nome varchar (45),
descricao varchar(45)
);

insert into projetos values 
(null, 'Opus Quality', 'Reduzir Absenteismo nas empresas'),
(null, 'Humidus Solution', 'Coletar agua com sistema inteligente');
select * from projetos;


create table alunos (
idAlunos int primary key auto_increment,
nome varchar (45),
tel char(12),
representante int,
fkProjetos int,
fkAlunos int,
constraint fkProj foreign key (fkProjetos) references projetos (idProjetos),
constraint fkAl foreign key (fkAlunos) references alunos (idAlunos)
);

insert into alunos values 
(null, 'Carlos Henrique', '11952811515', null, 1,null),
(null, 'Kath santos', '11952166687',null, 1,null),
(null, 'Luiz Miguel', '119325856214',null, 2,null),
(null, 'Izabel flores', '11933654597',null, 2,null);
select * from alunos;


create table acompanhantes (
idAcompanhantes int primary key auto_increment,
nome varchar (45),
descricao varchar(45),
fkAlunosAcom int,
constraint fkAlunos foreign key (fkAlunosAcom) references alunos (idAlunos)
);

insert into acompanhantes values 
(null, 'Kamila Soares','Esposa', 1),
(null, 'Eduardo','Esposo', 1),
(null, 'Kamila Soares','Esposa', 2);
select * from acompanhantes;

select * from alunos join projetos on fkProjetos = idProjetos;

select * from alunos join acompanhantes on fkAlunosAcom = idAcompanhantes;

select projetos.nome from alunos join projetos on fkProjetos = idProjetos where idProjetos = 1;

select * from alunos join projetos on fkProjetos = idProjetos join acompanhantes on fkAlunosAcom = idAcompanhantes;





