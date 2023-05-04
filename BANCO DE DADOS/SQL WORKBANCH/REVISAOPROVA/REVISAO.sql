-- AULA 9 E 10 - REVISAO E REFORÇO  
create database revisao; 
use revisao;
CREATE TABLE treinador (
idTreinador int primary Key auto_increment,
nome varchar (45),
sobrenome varchar(45), -- + nome = atributo composto 
telFixo char(11),
telCel char(12),  -- + telFixo = atributo multivalorado
fkExperiente int,
constraint fkNovatoExperiente foreign key (fkExperiente)
references treinador (idTreinador)
);


-- inserir os treinadores experientes, fkExperiente = null 
insert into treinador values 
(null,'azul','Marinho','11-98767898',null,null),
(null,'Rosa','Pink',null,'11-998767898',null);


select * from treinador;


--  inserir os treinadores novatos, fkExperiente tem algum valor
insert into treinador values 
(null,'Verde','Musgo', null,null, 1),
(null,'Amarelo',null,null,null, 1),
(null,'laranja',null,null,null, 2);

select * from treinador;

update treinador set fkExperiente = 2 where idTreinador = 1;

select * from treinador;


-- Estamos fazendo primeiro o select e ja renomeando para quando fizer o from e o join as duas ja estarem renomeadas
select experiente.nome as NomeExperiente,
 novato.nome as NomeNovato
from treinador as novato 
join treinador as experiente 
on novato.fkExperiente = experiente.idTreinador;


create table nadador (
idNadador int primary key auto_increment,
nome varchar(45),
dtNasc date,
fkTreinador int,
constraint fkNadadorTreinador foreign key (fkTreinador)
references treinador (idtreinador)
) auto_increment = 100;

-- CONSTRAINT - a sintaxe começa nomeando a mesma (constraint), 
-- apos isso pegamos a Fk criada na msm tabela e referencia ao id que precisa ser puxado da outra tabela.
-- A constraint pode ser adicionada na criaçao da tabela e tambem pelo alter table criando um coluna FK tipo int
-- E após isso alter table *tabela* add constraint *nome constraint* foreign Key *fk criada na tabela* references *tabela* *(campo)*


insert into nadador values
(null, 'Vermelho', '2013-10-10', 1),
(null, 'Preto', '2005-10-10', 3),
(null, 'Branco', '2003-10-10', 2),
(null, 'Cinza', '2000-10-10', 2);

select * from nadador;



-- Nao foi renomeado porque sao duas tabelas diferentes
select * from nadador join treinador
on fkTreinador = idTreinador;



-- Foi renomeado porque os campos que estao sendo puxados sao iguais, entao renomeio para nao dar erro ou para nao confundir.
select nadador.nome as NadadorNome,
treinador.nome as TreinadorNome
from nadador join treinador
on fkTreinador = idTreinador;



-- Puxando todos os treinadores mesmo sem nadadores
select * from nadador right join treinador
on fkTreinador = idTreinador;



-- O concat junta +concatena+ os dois campos que estao sendo puxados em um só
select concat(treinador.nome, ' ', treinador.sobrenome) as NomeCompleto
from treinador;




--  o concat com ifNull atribui um valor ao campo selecionado somente no select e nao na tabela.
select concat(treinador.nome, ' ', 
ifnull (treinador.sobrenome, 'Silva')) as NomeCompleto from treinador;


create table convidado (
idConvidado int,
nome varchar(45),
fkQuemConvidou int,
constraint fkQuemConvidou foreign key (fkQuemConvidou) references nadador(idNadador),
constraint pkComposta primary key (idConvidado, fkQuemConvidou));



-- fk nao pode ser nula pois ela tbm e pk da tabela convidado
insert into convidado values 
(1, 'shizu', 100),
(2, 'poodle', 100),
(1, 'vira lata', 101),
(1, 'pinscher', 102);


select * from convidado;

select * from convidado order by fkQuemConvidou;


-- select das 3 tabelas - primeiro renomeando todos os campos nomes e apos isso apresentando os dados com join das tabelas.
select novato.nome as NomeNovato,
	   experiente.nome as NomeExperiente,
       nadador.nome as NomeNadador,
       convidado.nome as NomeConvidado
from treinador as novato join treinador as Experiente
on novato.fkExperiente = experiente.idTreinador
join nadador on nadador.fkTreinador = novato.idTreinador
join convidado on convidado.fkQuemConvidou = nadador.idNadador;