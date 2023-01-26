use videoclub;
create table pelicula(
codigo_pelicula integer not null auto_increment,
titulo varchar(45) not null,
año integer(4) not null,
duracion double,
primary key(codigo_pelicula, titulo)
);

create table amigo(
codigo_amigo integer not null auto_increment,
nombre varchar(45) not null,
apellido varchar(45) not null,
telefono integer(15) not null,
direccion varchar(45) not null,
primary key(codigo_amigo)
);

insert into pelicula (codigo_pelicula, titulo, año, duracion) values (1, 'Drive Hard', 2009, 3.41);
insert into pelicula (codigo_pelicula, titulo, año, duracion) values (2, 'A.K.', 2009, 2.41);
insert into pelicula (codigo_pelicula, titulo, año, duracion) values (3, 'Think Fast, Mr. Moto', 2015, 1.64);
insert into pelicula (codigo_pelicula, titulo, año, duracion) values (4, 'Last American Virgin, The', 2001, 1.26);
insert into pelicula (codigo_pelicula, titulo, año, duracion) values (5, 'Paleface, The', 1993, 3.79);
insert into pelicula (codigo_pelicula, titulo, año, duracion) values (6, 'Vice', 2009, 2.19);
insert into pelicula (codigo_pelicula, titulo, año, duracion) values (7, 'Mummy''s Tomb, The', 2017, 3.5);
insert into pelicula (codigo_pelicula, titulo, año, duracion) values (8, 'Miracles', 2005, 3.14);
insert into pelicula (codigo_pelicula, titulo, año, duracion) values (9, 'Tyler Perry''s Daddy''s Little Girls', 2016, 1.26);
insert into pelicula (codigo_pelicula, titulo, año, duracion) values (10, 'Corto Maltese in Siberia (Corto Maltese - La cour secrète des Arcanes)', 1998, 3.81);
-- titulo linea 10 supera el varchar(45) 
select * from pelicula;
insert into amigo (codigo_amigo, nombre, apellido, telefono, direccion) values (1, 'Iosep', 'Le Count', '541605926', '76 Carioca Drive');
insert into amigo (codigo_amigo, nombre, apellido, telefono, direccion) values (2, 'Burr', 'Sillito', '891431518', '628 Graceland Hill');
insert into amigo (codigo_amigo, nombre, apellido, telefono, direccion) values (3, 'Franny', 'Woodison', '809987265', '1 Continental Road');
insert into amigo (codigo_amigo, nombre, apellido, telefono, direccion) values (4, 'Corie', 'Merriott', '601226589', '9 Vermont Crossing');
insert into amigo (codigo_amigo, nombre, apellido, telefono, direccion) values (5, 'Ario', 'Hancorn', '526236686', '7 Claremont Way');
insert into amigo (codigo_amigo, nombre, apellido, telefono, direccion) values (6, 'Don', 'Belfitt', '511596419', '56 Merrick Crossing');
insert into amigo (codigo_amigo, nombre, apellido, telefono, direccion) values (7, 'Agretha', 'Sleath', '659115535', '15831 Eastlawn Circle');
insert into amigo (codigo_amigo, nombre, apellido, telefono, direccion) values (8, 'Min', 'Dolphin', '858160674', '993 Randy Pass');
insert into amigo (codigo_amigo, nombre, apellido, telefono, direccion) values (9, 'Kiel', 'Millington', '583114853', '9913 West Point');
insert into amigo (codigo_amigo, nombre, apellido, telefono, direccion) values (10, 'Denny', 'Risebarer', '268930861', '71339 Corry Alley');

update pelicula set titulo ='Duro de Matar' where codigo_pelicula = 3;

delete from pelicula where codigo_pelicula=6;
delete from pelicula where codigo_pelicula=7;
delete from pelicula where codigo_pelicula=8;

/*CREATE TABLE `videoclub`.`prestamo` (
  `numero_alquiler` INT NOT NULL AUTO_INCREMENT,
  `fecha_fin` DATE NULL,
  `fecha_inicio` DATE NOT NULL,
  `codigo_pelicula` INT NOT NULL,
  `codigo_amigo` INT NOT NULL,
  PRIMARY KEY (`numero_alquiler`));
*/

alter table prestamo 
rename to prestamos;

alter table amigo 
rename to amigos;

alter table pelicula 
rename to peliculas;

select * from prestamos;

select distinct nombre from amigos;

select  titulo, duracion from peliculas; 

-- fin parte 1

select numero_alquiler from prestamos
where  numero_alquiler between 3 and 6;

select codigo_amigo from amigos
where codigo_amigo not between 2 and 5;

select titulo from peliculas
where titulo like '%to%';

insert into amigos (nombre,apellido,telefono,direccion)
values
('Marina', 'Fernandez', 45128956 , 'Parana 555')   ,
('Lujan'  , 'Tucci' , 1137589612  ,'Lavalle 1100'),
('Gabriel' , 'Dominguez' , 41109956 , 'Carlos Calvo 100'),   
('Raul' , 'Vazquez' , 45120014 , 'Peru 1120'),
('Martina' , 'Perez' , 113202044 ,' Uruguay 220');

update amigos set nombre ='Lorena', apellido = 'Milone' 
where codigo_amigo=12;

create table auxiliar as (select * from amigos);

drop table auxiliar;

select count(nombre) as Nombre from amigos;

select min(año) as 'minimo', max(año) as 'maximo' from peliculas;

-- fin parte 2