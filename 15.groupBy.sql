/*Es el mismo ejercicio de abajo pero tengo menos informacion porque no tengo el join*/
select band_id,
  count(band_id)
from album
group by band_id;
/*Alias y uso combinado con join*/
select b.band_name,
  count(a.id) as num_albums
from band as b
  left join album as a on b.id = a.band_id
group by b.id