create database TesteProva;
use Testeprova;
create table teste (
id int primary key auto_increment,
nome varchar(50) DEFAULT 'PREENCHA O NOME',
genero char (1) constraint chkgenero check (genero in ('M','F', 'N')),
cpf int,
bairro varchar(50),
dt datetime default current_timestamp);

desc Teste;

insert into teste (nome, genero,cpf,bairro) values
('karine', 'F','9','Sao miguel'),
('ivonete', 'F', '5', 'Ermelino Matarazzo'),
('jose carlos', 'M','1', 'Ermelino'),
('carlos henrique', 'M','4', 'Sao Paulo'),
('Maria', 'F','4', 'Itaqua');

select * from teste;

alter table teste add column estado varchar (50);

desc teste;

delete from teste where id='7';

update teste set estado ='sao paulo' where id in (1);
update teste set estado ='sao paulo' where id in (2);
update teste set estado ='sao paulo' where id in (3);

select * from teste;

alter table teste modify estado varchar (20);

desc teste;

update teste set nome ='claudio' where id in (1);

insert into teste (nome, genero) values
('marcia', 'N'),
('roberto', 'N');

select nome from teste;
select estado from teste;
select * from teste where nome like '%e';
select * from teste where nome like '_______h%';



SELECT * FROM teste WHERE bairro LIKE '%ermelino%';
DELETE FROM teste WHERE id in (2,3);

ALTER TABLE teste DROP COLUMN nome;
