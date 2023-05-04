Create database Aula08;
Use Aula08;

create table funcionario (
idFunc int primary key auto_increment, -- ATRIBUTO IDENTIFICADOR
nome varchar(45),                      -- + SOBRENOME = ATRIBUTO COMPOSTO
sobrenome varchar (45),                
cep char (9),                         -- + COMPLEMENTO = ATRIBUTO COMPOSTO
complemento varchar(45)
);

INSERT INTO funcionario values 
(null, 'Xororo', 'Lima', '01414905', ' num 9, apt 110'),
(null, 'Chitaozinho', 'Lima', '01414905', ' num 9 apt 120'),
(null, 'Sandy', 'Lima', '01414905', ' num 9, apt 130'),
(null, 'Junio', 'Lima', '01414905', ' num 9, apt 140');

select * from funcionario;


create table Dependente (
idDep int auto_increment,
nome varchar(45),
parentesco varchar(45),
dtnascimento date,
fkFunc int,
constraint fkFuncDep foreign key (fkFunc) references funcionario (idFunc),
constraint pkCompostoDep primary key (idDep, fkFunc)
)auto_increment = 100;


insert into dependente values
(null, 'Lucas','marido','1984-01-01', 3),
(null, 'Theo','filho','2006-01-01',  3),
(null, 'Noeli','esposa','2026-01-01', 1);

update dependente set dtnascimento = '1954-01-01' where idDep = 102;

select * from funcionario join dependente
on idFunc = Fkfunc;

select nome,
timestampdiff(year, dtnascimento, now()) as idade from dependente;

-- 
select nome,
concat(cep,'',complemento) as endereço from funcionario;


select * from funcionario;

-- Seleciona todos os dados 
select * from funcionario join dependente
on idFunc = Fkfunc;

-- Seleciona os dados a esquerda
select * from dependente left join funcionario
on idFunc = Fkfunc;

-- Seleciona os dados a direita
select * from dependente right join funcionario
on idFunc = Fkfunc;

-- seleciona os dados a direita ou a esquerda anulando o fkfunc
select * from dependente right join funcionario
on idFunc = Fkfunc
where fkfunc is null;


-- join em mais de 2 tabelas 
-- select * from tb1 join tb2 on id = fk join tb3 on id = fk;