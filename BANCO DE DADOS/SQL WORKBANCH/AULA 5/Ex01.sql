use sprint02;
create table Atleta (
idAtleta int primary key auto_increment,
nome varchar (40),
Modalidade varchar(40),
qtdMedalha int);

insert into Atleta values
(null, 'Carlos', 'Natação',5),
(null, 'Henrique', 'Natação',1),
(Null,'Gabriel','Futebol',4),
(Null,'Guedes','Futebol',1),
(Null,'Guilherme','Atletismo',7),
(Null,'Macedo','Atletismo',3),
(Null,'Lucas','Tennis',2),
(Null,'Torres','Tennis',9),
(Null,'Gustavo','Ski',3),
(Null,'Moraes','Ski',1);

select * from Atleta;

create table País (
idPaís int primary key auto_increment,
nome varchar(30),
capital varchar (40));

insert into País values 
(Null,'Brasil','Brasilia'),
(Null,'França','Paris'),
(Null,'Alemanha','Berlin'),
(Null,'Arabia','Riad');

select * from País;

alter table Atleta add column fkPaís int,
add constraint fkPaís foreign key (fkPaís)
 references País (idPaís);
 
 select * from Atleta;


update Atleta set fkPaís = 1
where idAtleta = 1;
update Atleta set fkPaís = 2
where idAtleta = 3;
update Atleta set fkPaís = 3
where idAtleta = 2;
update Atleta set fkPaís = 4
where idAtleta = 4;
update Atleta set fkPaís = 2
where idAtleta = 5;
update Atleta set fkPaís = 1
where idAtleta = 6;
update Atleta set fkPaís = 3
where idAtleta = 7;
update Atleta set fkPaís = 4
where idAtleta = 8;
update Atleta set fkPaís = 3
where idAtleta = 9;
update Atleta set fkPaís = 1
where idAtleta = 10;

 select * from Atleta;
 
 select
 Atleta.nome,
 País.nome 
from Atleta join País
on Atleta.fkPaís = País.idPaís;

 select
 Atleta.nome,
 País.nome 
from Atleta join País
on Atleta.fkPaís = País.idPaís
where capital = 'París';



 
