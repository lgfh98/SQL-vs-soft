/*Creamos la base de datos*/
create database record_company;
/*creamos las dos tablas*/
create table band(
  id int not null auto_increment,
  band_name varchar(255) not null,
  primary key(id)
);
create table album(
  id int not null auto_increment,
  album_name varchar(255) not null,
  release_year int not null,
  band_id int not null,
  primary key(id),
  foreign key (band_id) references band(id)
);
/*agregamos algunos registros*/
insert into band (band_name)
values('Iron Maiden');
insert into band (band_name)
values ('Iron Maiden'),
  ('Avenged Sevenfold'),
  ('Ankor')
  /*agregamos albumnes*/
insert into album (album_name, release_year, band_id)
values ('The Number of the Beasts', 1985, 1),
  ('Power Slave', 1984, 1),
  ('Nightmare', 2018, 2),
  ('Nightmare in the night', 2010, 3);
/*actualizar un registro de la tabla*/
update album
set release_year = 3000
where id = 1;
/*seleccciona los elementos filtrando por una condicion*/
select *
from album
where release_year < 2000;
/*selecciona los elementos filtrando por una expresion regular o wildcard*/
select *
from album
where album_name like '%er%';
/*seleccion con or -> Seleccionar los albunes que contegan
 en el nombre 'er' o que sean de la banda con id 2
 */
select *
from album
where album_name like '%er%'
  or band_id = 2;
/*seleccion con and -> Seleccionar los albunes lanzados antes del 2000
 y sean de la banda con id 2
 */
select *
from album
where release_year < 3000
  and band_id = 2;
/* -> Seleccionar todas las albunes de las bandas que tengan albunes registrados */
select *
from band
  join album on band.id = album.band_id;
/*
 selecciona todas las bandas incluso las que no tienen albunes asociados
 porque no hay albunes sin banda asociada
 */
select *
from band
  left join album on band.id = album.band_id;
/*
 selecciona todas las bandas incluso las que no tienen albunes asociados
 es lo mismo de arriba pero cambiando el orden
 */
select *
from album
  right join band on band.id = album.band_id;
/*Conteo de los albumes de cada banda asi la cantidad de albunes sea 0*/
select b.band_name,
  count(a.id) as num_albums
from band as b
  left join album as a on b.id = a.band_id
group by b.id;
/*Lo mismo que el de arriba pero filtrando lo que tienen 1 album solamente*/
select b.band_name,
  count(a.id) as num_albums
from band as b
  left join album as a on b.id = a.band_id
group by b.id
having num_albums = 1;
/*me devuelve cuantos albunes tiene la banda que se llama como le indico*/
select b.band_name as band_name,
  count(a.id) as num_albums
from band as b
  left join album as a on b.id = a.band_id
where band_name = 'Avenged Sevenfold'
group by b.id
having num_albums = 1;