use sprint1;
create table revistas (
idRevista int primary key auto_increment,
nome varchar(40),
categoria varchar(30));
select * from revistas;
insert into revistas (nome) values
('Veja'),
('Isto É'),
('Quatro Rodas'),
('Epoca');

UPDATE Revistas SET categoria = 'Adolescentes'WHERE idRevista = '1';

INSERT INTO Revistas (Nome, Categoria) VALUE
    ('estadao', 'Notícias'),
    ('veja','Jornalismo'),
    ('Exame','Notícias');
    UPDATE Revistas SET categoria = 'Noticias' WHERE idRevista = '2';
    UPDATE Revistas SET categoria = 'automobilistica' WHERE idRevista = '3';
    UPDATE Revistas SET categoria = 'noticias' WHERE idRevista = '4';
    describe revistas;
    ALTER TABLE Revistas MODIFY COLUMN Categoria VARCHAR(40);
DESCRIBE Revistas;
ALTER TABLE Revistas ADD COLUMN Periodicidade VARCHAR(15);
SELECT*FROM Revistas;
ALTER TABLE Revistas DROP COLUMN Periodicidade;

    