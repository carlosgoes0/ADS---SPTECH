use sprint1;
create table Professor (
idProfessor int primary key,
nome varchar (50),
especialidade varchar (40),
dtNasc date 
);
select * from Professor;
insert into Professor values
('01', 'mauro', 'artes', '1995-05-22'),
('02', 'carlos', 'artes', '1996-05-21'),
('03', 'jose', 'matematica', '1995-06-12'),
('04', 'ivonete', 'matematica', '1998-08-14'),
('05', 'karine', 'historia', '1997-02-12'),
('06', 'kamila', 'historia', '1990-02-18'),
('07', 'matheus', 'geografia', '1991-09-11');

select * from Professor;
select especialidade from Professor;
select * from Professor where especialidade ='matematica';
select * from Professor order by nome;
select * from Professor order by nome;
select especialidade from Professor;
select * from Professor order by nome desc;
select * from Professor where nome like 'k%';
select * from Professor where nome like '%a';
select * from Professor where nome like '_a%';
select * from Professor where nome like '%o_';
