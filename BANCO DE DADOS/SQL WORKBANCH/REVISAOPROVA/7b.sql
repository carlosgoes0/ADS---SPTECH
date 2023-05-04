use Pr7;

create table Organizador (
idOrganizador int primary key auto_increment,
nome varchar (45),
rua varchar(45),
bairro varchar (45),
email varchar (45),
fkOrgExp int,
constraint fkOrgExp foreign key (fkOrgExp) references Organizador (idOrganizador)
) auto_increment = 30;

select * from Organizador;

insert into Organizador values
(null, 'Carlos Henrique', 'Rua serra do itaqueri','Sao miguel','carlos.henrique@sptech.com', null),
(null, 'Vivian Torres', 'Rua taparuba','Ermelino','vivian@sptech.com', 31),
(null, 'Henrique lima', 'Rua joao feliz','Paulista','henrique@sptech.com', null);


create table Campanha (
idCampanha int primary key auto_increment,
Categoria varchar (45),
Instituicao1 varchar (45),
Instituicao2 varchar (45),
dtaFinal date,
fkOrganizador int,
constraint fkOrganizador foreign key (fkOrganizador) references Organizador (idOrganizador)
) auto_increment = 500;

insert into Campanha values
(null, 'Arroz','Opus','Sptec','2001-01-01',30),
(null, 'Feijao','Pinheiro','Certus','2002-02-02',31),
(null, 'Ovo','Salgueiro','Etec','2003-03-03',32);



select * from Organizador;
select * from Campanha;

select * from Organizador join Campanha on fkOrganizador = idOrganizador;

select * from Organizador join Campanha on fkOrganizador = idOrganizador where nome = 'Carlos Henrique';

select * from Organizador as novato 
join Organizador as experiente 
on novato.fkOrgExp = experiente.idOrganizador;

select * from Organizador as novato left join 
Organizador as experiente on novato.fkOrgExp = 
experiente.idOrganizador where novato.nome like 'C%';

select * from Organizador as novato 
join Organizador as experiente 
on novato.fkOrgExp = experiente.idOrganizador
join Campanha on fkOrganizador = novato.idOrganizador;

