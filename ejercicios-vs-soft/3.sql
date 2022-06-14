select d.department_name,
  count(e.department_id) as num_empleados
from employee as e
  join department as d on e.department_id = d.id
group by d.id
having num_empleados >= 2;
1
/*Creacion de tablas para ejercicios 3,4*/
/**/
create table department(
  id int not null auto_increment,
  department_name varchar(255) not null,
  department_city varchar(255) not null,
  primary key(id)
);
/**/
create table employee(
  id int not null auto_increment,
  first_name varchar(255) not null,
  last_name varchar(255) not null,
  department_id int not null,
  primary key(id),
  foreign key (department_id) references department(id),
  foreign key (educationlevel_id) references educationlevel(id),
);
/**/
create table educationlevel(
  id int not null auto_increment,
  educationlevel_description varchar(255) not null,
  primary key(id),
);
/*datos de prueba*/
insert into department (department_name, department_city)
values('negocios', 'Armenia'),
  ('negocios', 'Armenia');