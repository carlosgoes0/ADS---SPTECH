create database sprint1;
use sprint1;
create table Atleta (
idAtleta int primary key,
nome varchar (40),
modalidade varchar (40),
qtdMedalha  int 
);

select * from Atleta;

insert into Atleta values
('01', 'Carlos', 'Atletismo', '2'),
('02', 'Joao', 'Atletismo', '1'),
('03', 'Caue', 'Futebol', '5'),
('04', 'Gabriel', 'Futebol', '3'),
('05', 'Claudia', 'Nataçao', '4'),
('06', 'Marcela', 'Nataçao', '2'),
('07', 'Rafaela', 'Voleibol', '1'),
('08', 'Larissa', 'Voleibol', '4');

select * from Atleta;
select nome, qtdMedalha from Atleta;
select * from  Atleta where modalidade='Voleibol';
select * from Atleta order by qtdMedalha desc;
select * from Atleta where nome like '%s%';




