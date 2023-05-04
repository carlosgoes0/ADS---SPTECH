USE aula08;

create table professor (
idprofessor int primary key auto_increment,
nome varchar(50),
sobrenome varchar(30),
especialidade1 varchar(40),
especialidade2 varchar(40));

insert into professor values
(null, 'VIVIAN', 'SANTOS', 'BANCO DE DADOS', 'ALGORITIMO'),
(null, 'FERNANDO', 'BRANDAO', 'PESQUISA E INOVAÇAO', 'BIG DATA'),
(null, 'CAIO', 'OLIVEIRA', 'ALGORITMO', 'BANCO DE DADOS'),
(null, 'JOAO', 'PEDRO', 'ALGORITIMO', 'SISTEMAS'),
(null, 'MARCELA', 'SOUZA', 'SOCIOEMOCIONAL', 'PSCICOLOGA'),
(null, 'EDUARDO', 'PEREIRA', 'ARQUITETURA COMP', 'ARDUINO');

CREATE TABLE disciplina(
  iddisciplina INT auto_increment,
  nomeDisc VARCHAR(45),
  fkDisc int,
constraint fkDiscProf foreign key (fkDisc) references professor (idprofessor),
constraint pkCompostoDep primary key (iddisciplina, fkDisc));
  
  
  insert into disciplina values 
  (null, 'ALGORITIMO', 1),
  (null, 'BANCO DE DADOS', 2),
  (null, 'ARQUITETURA COMPUTACIONAL', 3),
  (null, 'SOCIOEMOCIONAL', 4);
  
  select * from professor join disciplina
  on iddisciplina = fkDisc;
  
  
  select nome, nomedisc from professor join disciplina
  on iddisciplina = fkDisc;
  
  select * from professor join disciplina
  on iddisciplina = fkDisc
  where sobrenome like 'oliveira';
  
select especialidade1, nomeDisc from professor join disciplina
  on idprofessor = fkDisc
  where nome like 'CAIO' order by especialidade1;









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





