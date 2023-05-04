create database lista6;
use lista6;

create table cliente (
	idCliente int primary key auto_increment,
    nome varchar(45),
    sobrenome varchar(45),
    telefone_fixo varchar(20),
    telefone_celular varchar(20),
    estado varchar(45),
    cidade varchar(45),
    bairro varchar(45),
    rua varchar(100),
    numero varchar(10)
    );
    
insert into cliente values
	(null, 'Lucas', 'Faria', '5810-3920', '1195810-3904', 'São Paulo', 'São Paulo', 'Capão Redondo', 'Rua Henrique Sam Mindlin', '1263'),
    (null, 'Regina', 'Faria', '4820-8220', '1199232-4237', 'São Paulo', 'São Paulo', 'Capão Redondo', 'Rua Henrique Sam Mindlin', '1263'),
    (null, 'Adilson', 'Flores', '2342-1231', '1191233-4234', 'São Paulo', 'São Paulo', 'Itaquera', 'Rua Marechal Teodoro', '432'),
    (null, 'Maria', 'Rodrigues', '7542-2342', '1199234-7234', 'São Paulo', 'São Paulo', 'Vila Mariana', 'Rua Augostim Alvim',  '324'),
    (null, 'Pedro', 'Marcos', '2932-5431', '1198744-7455', 'São Paulo', 'São Paulo', 'Vila Matilde', 'Rua Haddock Lobo', '12'),
    (null, 'Eduardo', 'Soares', '5324-3832', '1194235-8563', 'São Paulo', 'São Paulo', 'Paulista', 'Rua 23 de maio', '893');
    
create table animal (
	idAnimal int auto_increment,
    tipo varchar(45),
    nome varchar(45),
    raca varchar(45),
    dtNasc date,
    fkCliente int,
    primary key (idAnimal, fkCliente),
    foreign key (fkCliente) references cliente(idCliente)
    ) auto_increment = 101;
    
insert into animal values
	(null, 'cachorro', 'teodoro', 'pinscher', '2012-08-01', 1),
    (null, 'gato', 'luna', 'siames', '2015-12-25', 1),
    (null, 'rato', 'alvin', 'hamster', '2023-01-19', 2),
	(null, 'cachorro', 'ringo', 'vira-lata', '2009-09-30', 1),
    (null, 'gato', 'mocinha', 'himalaio', '2017-02-24', 4);
    
select * from cliente;
select * from animal;

alter table cliente modify column nome varchar(50);
select * from animal where tipo = 'gato';
select nome, dtNasc from animal;
select * from animal order by nome;
select * from cliente order by bairro desc;
select * from animal where nome like 'r%';
select * from cliente where sobrenome = 'Faria';
update cliente set telefone_fixo = '3823-2384' 
	where idCliente = 3;
select * from cliente;

select * from cliente join animal
	on idCliente = fkCliente;

select * from cliente join animal 
	on idCliente = fkCliente 
		where idCliente = 1;
        
delete from animal where idAnimal = 106;

select * from animal;

drop table animal, cliente;

create table pessoa (
	idPessoa int primary key auto_increment,
    nome varchar(45),
    dtNasc date,
    profissao varchar(45));
    
insert into pessoa values 
	(null, 'lucas', '2002-10-21', 'estudante'),
    (null, 'regina', '1975-06-21', 'dona de cada'),
    (null, 'gabriel', '2003-04-21','estudante'),
    (null, 'joao', '1984-11-26', 'bombeiro'),
    (null, 'maria', '2000-05-15', 'bombeiro');
    
create table gasto (
	idGasto int auto_increment,
    datagasto date,
    valor varchar(45),
    descricao varchar(200),
    fkPessoa int,
    primary key (idGasto, fkPessoa),
    foreign key (fkPessoa) references pessoa(idPessoa));
    
insert into gasto values 
	(null, '2022-12-31', 'R$930,21', 'Churrasco de ano novo', 1),
    (null, '2023-03-27', 'R$119,99', 'Fraldas', 3),
    (null, '2023-01-15', 'R$98,99', 'Bebidas', 4),
    (null, '2023-02-21', 'R$329,99', 'Shopping, tênis novo', 1),
    (null, '2023-01-03', 'R$63,21', 'Uber', 2);
    
select * from pessoa;
select * from gasto;

select * from pessoa where profissao = 'bombeiro';
select * from gasto where descricao = 'uber';

select * from pessoa join gasto
	on fkPessoa = idPessoa;
    
select * from pessoa join gasto 
	on fkPessoa = idPessoa
		where nome = 'Lucas';

update gasto set valor = 'R$300,00' where idGasto = 2;
update pessoa set profissao = 'Estagiário' where idPessoa = 1;

delete from pessoa where profissao = 'dona de casa';
delete from gasto where descricao = 'Uber';

drop table pessoa, gasto;

create table setor (
	idSetor int primary key auto_increment,
    nomeSetor varchar(45),
    andar int);
    
create table funcionario (
	idFunc int primary key auto_increment,
    nomeFunc varchar(45),
    telefone_celular varchar(20),
    telefone_fixo varchar(20),
    salario decimal(10,2) check (salario > 0),
    fkSetor int,
    foreign key (fkSetor) references setor(idSetor)
    );
    
create table acompanhante (
	idAcompanhante int,
    fkFunc int,
    nome varchar(45),
    relacao varchar(45),
    dtNasc date,
    primary key (fkFunc, idAcompanhante),
    foreign key (fkFunc) references funcionario(idFunc));
    
    
insert into setor values 
	(null, 'Vendas', 3),
    (null, 'Marketing', 4),
    (null, 'Negócios', 2),
    (null, 'Qualidade', 1);
    
insert into funcionario values
	(null, 'Lucas', '1195810-3904', '4823-2384', '900.50', 1),
	(null, 'Regina', '1193823-2342', '2398-2342', '850.02', 1),
    (null, 'Adilson', '1193421-5812', '3215-2312', '2312.23', 2),
    (null, 'Nicolas', '1194521-3214', '3213-2133', '2332.24', 2),
    (null, 'Gabriel', '1195723-5123', '4123-3123', '1293.32', 3),
    (null, 'Maria', '1194217-0123', '3123-1232', '1250.93', 3),
    (null, 'Joao', '1192474-5323', '5324-2314', '3204.92', 4),
    (null, 'Pedro', '1198328-2342', '2331-3212', '1250.02', 4);
insert into acompanhante values 
	(1,1, 'Kevin', 'Primo', '2003-10-21'),
    (2,1, 'Jéssica', 'Prima', '2002-10-21'),
    (3,1, 'Alairce', 'Tia', '2000-01-30'),
    (4,6, 'Osvaldo', 'Tio', '1995-06-14'),
    (5,2, 'Francisca', 'Avó', '2001-11-25'),
    (6,5, 'Sebastião', 'Avô', '1994-04-01'),
    (7,4, 'Monica', 'Mãe', '1999-02-21'),
    (8,2, 'Marcio', 'Pai', '2001-10-28');
    
select * from setor;
select * from funcionario;
select * from acompanhante;

select * from setor join funcionario
	on fkSetor = idSetor;
    
select * from setor join funcionario 
	on fkSetor = idSetor
		where nomeSetor = 'Marketing';
        
select * from funcionario join acompanhante
	on fkFunc = idFunc;
    
select * from funcionario join acompanhante
	on fkFunc = idFunc
		where nomeFunc = 'Lucas';
        
select * from funcionario 
	join acompanhante on fkFunc = idFunc
		join setor on fkSetor = idSetor;
        
drop table setor, funcionario, acompanhante;


create table treinadorexp (
	idTreinadorexp int primary key auto_increment,
    nomeTreinadorexp varchar(45),
    telefone varchar(20),
    email varchar(100))
    auto_increment = 10; 
    
create table treinador (
	idTreinador int primary key auto_increment,
    nomeTreinador varchar(45),
    telefone varchar(20),
    email varchar(100),
    fkTreinadorexp int,
    foreign key (fkTreinadorexp) references treinadorexp(idTreinadorexp)) 
	auto_increment = 10;

create table nadador (
	idNadador int primary key auto_increment,
    nomeNadador varchar(45),
    estado varchar(45),
    dtNasc date,
    fkTreinador int,
    foreign key (fkTreinador)references treinador(idTreinador)) 
    auto_increment = 100;
    
insert into treinadorexp values
	(null, 'Yoda', '2312-3213', 'yoda@gmail.com'),
    (null, 'Gonzaga', '3924-2492', 'gonzaga@hotmail.com');
    
insert into treinador values
	(null, 'Mario', '2389-3213', 'mario@gmail.com', 10),
    (null, 'Vanderlei', '3213-6831', 'vanderlei@bol.com', 10),
    (null, 'Yaghi', '2381-3215', 'yaghi@gmail.com', 11),
    (null, 'Adilson', '2389-3289', 'adilson@outlook', 11);
    
insert into nadador values
	(null, 'Lucas', 'São Paulo', '2002-10-21', 10),
    (null, 'Joao', 'Rio de Janeiro', '2002-10-20', 10),
    (null, 'Gabriel', 'Sergipe', '1999-02-10', 11),
    (null, 'Pedro', 'Sergipe', '1998-04-13', 11),
    (null, 'Kelvyn', 'Roraima', '1995-02-10', 12),
    (null, 'Matheus', 'Pernambuco', '2005-01-30', 12),
    (null, 'Miguel', 'São Paulo', '1995-12-05', 13),
    (null, 'Eliseu', 'Rio de Janeiro', '1992-08-27', 13);

select * from treinadorexp;
select * from treinador;
select * from nadador;

select * from treinador join nadador
	on fkTreinador = idTreinador;
    
select * from treinador join nadador 
	on fkTreinador = idTreinador
		where nomeTreinador = 'Adilson';
        
select * from treinador join treinadorexp
	on fkTreinadorexp = idTreinadorexp;
    
select * from treinador join treinadorexp
	on fkTreinadorexp = idTreinadorexp
		where nomeTreinadorexp = 'Gonzaga';
        
select * from nadador join treinador
	on fkTreinador = idTreinador
		join treinadorexp
			on fkTreinadorexp = idTreinadorexp;
            
select * from treinador join nadador
	on fkTreinador = idTreinador
		join treinadorexp on fkTreinadorexp = idTreinadorexp
			where nomeTreinador = 'Adilson';
		
drop table treinadorexp, treinador, nadador;
drop database lista6;
                


    
    
    


    
 
    
    

