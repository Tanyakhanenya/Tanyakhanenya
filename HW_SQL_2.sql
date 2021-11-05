--1.Создать таблицу employees id. serial,  primary key:
create table employees (
     id serial primary key,
     employee_name varchar (50) not null
);
--2.Наполнить таблицу employee 70 строками:
insert into employees (id, employee_name) values (default, 'Masha');
select *from employees;

--3.Создать таблицу salary id. Serial  primary key, monthly_salary. Int, not null

create table salary (
     id serial primary key,
     monthly_salary integer not null
);
--4.Наполнить таблицу salary 15 строками:
insert into salary (id, monthly_salary) values (default, '2500');


--5.Создать таблицу employee_salary
create table employee_salary (
     id serial primary key,
     employee_id integer not null unique,
     salary_id integer not null
);


--6.Наполнить таблицу employee_salary 40 строками в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary (id, employee_id,salary_id)
values (default, '80', '14');

select * from employee_salary;

--7.Создать таблицу roles,id. Serial  primary key, role_name. int, not null, unique
create table roles(
    id serial  primary key,
    role_name integer not null unique
    );
   --8.Поменять тип столба role_name с int на varchar(30)
   alter table roles
   alter column role_name type varchar
   using role_name::varchar;
    
  --9.Наполнить таблицу roles 20 строками:
  insert into roles (id, role_name)
  values (default, 'Senior Automation QA engineerr');
  
 
 --10.Создать таблицу roles_employee
 
   create table roles_employee (
    id serial  primary key,
    employee_id integer not null unique,
    role_id Integer not null,
    foreign key (employee_id)
    references employees (id),
    foreign key (role_id)
    references roles (id)
   );
  
  --11.Наполнить таблицу roles_employee 40 строками:
  insert into roles_employee (id, employee_id, role_id)
  values (default, '14', '17');
 
   select * from roles_employee;
