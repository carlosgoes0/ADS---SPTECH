use aula08;


create table alunos (
ra int primary key auto_increment,
nome varchar(50),
sobrenome varchar(50),
cpf char(11)
);

insert into alunos values
(null, 'CARLOS', 'GOES', '111111111'),
(null, 'KAUA', 'LEAL', '222222222'),
(null, 'ARTHUR', 'GARCIA', '3333333333'),
(null, 'GABRIEL', 'GUEDES', '444444444');

create table curso (
idCurso int auto_increment,
nome varchar (50),
sigla varchar (3),
coordenador varchar(50),
fkalunos int,
constraint fkalunos foreign key (fkalunos) references alunos(ra),
constraint pkCompostoDep primary key (idCurso, fkalunos));

insert into curso values 
(null, 'ANALISA E DESENVOLVIMENTO DE SISTEMAS', 'ADS', 'GERSON', 1),
(null, 'SISTEMA DA INFORMAÇAO', 'SIS', 'VIVIAN', 2),
(null, 'CIENCIA DA COMPUTACAO', 'CDC', 'CARLOS', 3);

  select * from alunos join curso
  on idCurso = fkalunos;
  
select * from alunos join curso
  on idCurso = fkalunos
  where nome like 'CARLOS';


