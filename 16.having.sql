/*es como el where pero se agrega despues de hacer la agrupacion con group by*/
select b.band_name,
  count(a.id) as num_albums
from band as b
  left join album as a on b.id = a.band_id
group by b.id
having num_albums = 1;