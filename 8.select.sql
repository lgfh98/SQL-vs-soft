/*selecciona todo*/
select *
from band;
/*selecciona solo dos registros*/
select *
from band
limit 2;
/*selecciona todos los registros pero solo muestra la columna indicada*/
select band_name
from band;
/*selecciona los registros pero con alias en las columnas*/
select id as 'ID',
  band_name as 'Band Name'
from band;
/*selecciona todo ordenado por orden alfabetico por el campo band_name de forma ascendente*/
select *
from band
order by band_name asc;
/*selecciona todo ordenado por orden alfabetico por el campo band_name de forma descendente*/
select *
from band
order by band_name desc;
/*selecciona pero no repite valores*/
select distinct album_name
from album;