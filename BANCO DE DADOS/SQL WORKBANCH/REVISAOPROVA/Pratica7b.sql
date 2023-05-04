create database Campanha;
use Campanha;

create table Organizador (
idOrganizador int primary key auto_increment,
nome varchar (45),
endereco varchar(45),
email varchar (45),
fkOrgExp int,
constraint fkOrgExp foreign key (fkOrgExp) references Organizador (idOrganizador)
) auto_increment = 30;
drop table Organizador;
insert into Organizador values
(null, 'Carlos Henrique', 'Rua serra do itaqueri','carlos.henrique@sptech.com', null),
(null, 'Vivian Torres', 'Rua taparuba','carlos.henrique@sptech.com', null),
(null, 'Henrique lima', 'Rua joao feliz','carlos.henrique@sptech.com', null);

select * from Organizador;

create table Campanha (
idCampanha int primary key auto_increment,
Categoria varchar (45),
Instituicao varchar (45),
dtaFinal date,
fkOrganizador int,
constraint fkOrganizador foreign key (fkOrganizador) references Organizador (idOrganizador)
) auto_increment = 500;

insert into Campanha values
(null, 'Saude','Opus','2001-01-01',42),
(null, 'Lixo','Sptec','2002-02-02',42),
(null, 'Rosa','Pinheiro','2003-03-03',43),
(null, 'Amarela','Certus','2004-04-04',43),
(null, 'Negra','Salgueiro','2005-05-05',44),
(null, 'Dengue','Etec','2006-06-06',44);

select * from Organizador;
select * from Campanha;

select * from Organizador join Campanha
on fkOrganizador = idOrganizador;

select * from Organizador join Campanha
on fkOrganizador = idOrganizador where id = '1';

select  Organizador.nome from Campanha join Organizador on fkOrganizador = idOrganizador where idOrganizador=42;

