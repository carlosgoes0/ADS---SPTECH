use sprint1;
create table Filme (
IdFilme int primary key,
titulo varchar (50),
genero varchar (40),
diretor varchar (40));
select * from Filme;
insert into Filme values
('01', 'Gato de botas', 'desenho', 'claudio'),
('02', 'Atirador', 'ação', 'claudio'),
('03', 'senhor dos aneis', 'medieval', 'marcos'),
('04', 'harry potter', 'bruxaria', 'marcos'),
('05', 'maze runner', 'ação', 'Carlos'),
('06', 'zumbilandia', 'comedia', 'claudia'),
('07', 'zumbilandia 2', 'comedia', 'claudia'),
('08', 'sherek', 'desenho', 'carlos');
select * from Filme;
select titulo, diretor from Filme;
select * from Filme where genero='comedia';
select * from Filme where diretor='carlos';
select * from Filme order by titulo;
select * from Filme order by titulo desc;
select * from Filme where titulo like 'z%';
select * from Filme where diretor like '%s';
select * from Filme where genero like '_e%';
select * from Filme where genero like '%a_';

