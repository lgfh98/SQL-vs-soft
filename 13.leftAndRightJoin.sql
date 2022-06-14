/*
 selecciona todas las bandas incluso las que no tienen albunes asociados
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