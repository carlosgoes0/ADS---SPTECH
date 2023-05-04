create database dados;
use dados;
create table HISTÓRICO (
idCDD INT PRIMARY KEY AUTO_INCREMENT,
CIDADES VARCHAR (40),
QTDCHUVA_MM INT
);

DESC Histórico;
alter table histórico add column MES varchar (30);

insert into histórico (cidades, qtdchuva_mm, mes) values
('Sao Paulo', 220, 'janeiro'),
('Sao Paulo', 200, 'fevereiro'),
('Sao Paulo', 150, 'março'),
('Sao Paulo', 90, 'abril'),
('Sao Paulo', 66, 'maio'),
('Sao Paulo', 50, 'junho'),
('Sao Paulo', 45, 'julho'),
('Sao Paulo', 37, 'agosto'),
('Sao Paulo', 100, 'setembro'),
('Sao Paulo', 110, 'outubro'),
('Sao Paulo', 130, 'novembro'),
('Sao Paulo', 180, 'dezembro');

select * from histórico;professor

delete from histórico where idCDD = 2;