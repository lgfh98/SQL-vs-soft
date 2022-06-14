/*seleccciona los elementos filtrando por una condicion*/
select *
from album
where release_year < 2000;
/*selecciona los elementos filtrando por una expresion regular o wildcard*/
select *
from album
where album_name like '%er%';
/*condicion con or*/
select *
from album
where album_name like '%er%'
  or band_id = 2;
/*condicion con and*/
select *
from album
where release_year < 2000
  and band_id = 2;
/*condicion con between*/
select *
from album
where release_year between 0 and 4000;
/*seleccional todos que tengan un valor null*/
select *
from album
where release_year is null;