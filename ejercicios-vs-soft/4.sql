select e.first_name,
  e.last_name,
  el.aducation_description,
  d.department_city
from employee as e
  join department as d on e.department_id = d.id
  join educationlevel as el on e.educationlevel_id = el.id
where d.department_city <> 'Miami'
  and (
    el.id = 3
    or el.id = 4
  );