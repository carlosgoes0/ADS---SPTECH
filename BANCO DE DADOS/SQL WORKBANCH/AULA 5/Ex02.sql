create table musica (
idMusica int primary key auto_increment,
titulo varchar(40),
artista varchar(40),
genero varchar(40));

insert into musica values
(Null,'Carolina','guedes forrozero','Forro'),
(Null,'foi pro samba','guedes forrozero','Forro'),
(Null,'pra dançar','guedes forrozero','Forro'),
(Null,'um xenhenhem','guedes mix do sertao','Forro jovem'),
(Null,'todo mundo','guedes mix do sertao','Forro jovem'),
(Null,'é gamado','guedes mix do sertao','Forro jovem'),
(Null,'pelo cheiro','guedes quem ta e o certão','Forrizin gostozim'),
(Null,'que ela tem','guedes quem ta e o certão','Forrizin gostozim'),
(Null,'hum hum hum','guedes quem ta e o certão','Forrizin gostozim'),
(Null,'Carolina','guedinho forrobrega','Forro que é bom'),
(Null,'hum hum hum 2','guedinho forrobrega','Forro que é bom');


select * from musica;

create table Album (
idAlbum int primary key auto_increment,
nome varchar(30),
tipo varchar(30) constraint chktipo check ( tipo in ('cd fisico', 'cd digital')),
dtLançamento date
);

insert into Album values
(null,'Total 80 Forros','cd digital','2023-01-25'),
(null,'Um som um amor','cd fisico','2023-02-15'),
(null,'Mix de milhoes','cd digital','2022-01-22');


select * from musica;
select * from Album;

alter table musica add column fkAlbum int,
add constraint fkAlbum foreign key (fkAlbum)
 references Album (idAlbum);
 
 update musica set fkalbum = 1
 where idmusica = 1;
  update musica set fkalbum = 2
 where idmusica = 2;
  update musica set fkalbum = 3
 where idmusica = 3;
  update musica set fkalbum = 1
 where idmusica = 4;
  update musica set fkalbum = 2
 where idmusica = 5;
  update musica set fkalbum = 3
 where idmusica = 1;
  update musica set fkalbum = 1
 where idmusica = 6;
  update musica set fkalbum = 2
 where idmusica = 7;
  update musica set fkalbum = 3
 where idmusica = 8;
  update musica set fkalbum = 1
 where idmusica = 9;
  update musica set fkalbum = 2
 where idmusica = 10;
  update musica set fkalbum = 3
 where idmusica = 11;
 
 select
 musica.*,
 album.nome from musica join album
 on musica.fkAlbum = Album.idAlbum;
 
 select
 musica.titulo,
 album.nome from musica join album
 on musica.fkAlbum = Album.idAlbum;
 
  select
 musica.titulo,
 album.nome from musica join album
 on musica.fkAlbum = Album.idAlbum
 where tipo = 'cd fisico';
 
  select
 musica.titulo,
 album.nome from musica join album
 on musica.fkAlbum = Album.idAlbum
 where tipo = 'cd digito';
 
 

