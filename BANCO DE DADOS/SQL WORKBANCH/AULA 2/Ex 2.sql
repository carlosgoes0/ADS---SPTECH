use sprint1;
create table Musica (
idMusica int primary key,
titulo varchar (40),
artista varchar (40),
genero varchar (40)
);
select * from Musica;
insert into Musica values
('01', 'Carolina foi para o samba(Carolina)', 'Luiz o', 'Forro'),
('02', 'Pra dançá o xenhenhém(Carolina)', 'Poderoso', 'Forro'),
('03', 'Todo mundo é caidinho(Carolina)', 'Chefão', 'Forromix'),
('04', 'Pelo cheiro que ela tem(Carolina)', 'Remix', 'Forromix'),
('05', 'Hum, hum, hum', 'Luiz o', 'rastachinela'),
('06', 'Carolina, hum, hum, hum', 'Poderoso', 'rastachinela'),
('07', 'Carolina, hum, hum, hum', 'Chefão', 'piseiro'),
('08', 'Pelo cheiro que ela tem (Carolina)', 'Remix', 'piseiro');

select * from Musica;
select titulo, artista from musica;
select * from musica where genero ='rastachinela';
select * from musica where artista ='luiz o';
select * from musica order by titulo;
select * from musica order by titulo desc;
select * from musica where titulo like 'c%';
select * from musica where artista like '%a';
select * from musica where artista like '%x';
select * from musica where genero like '_a%';
select * from musica where titulo like '%u_';

