CREATE database demo_db;
use demo_db;

CREATE TABLE employees (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    middle_name VARCHAR(50),
    age INT NOT NULL,
    current_status VARCHAR(50) NOT NULL DEFAULT 'employed'
);

insert into employees (last_name, first_name, middle_name, age, current_status)
values
('Naig','Ariane','Abilgos', 20, 'admin');

insert into employees (last_name, first_name, middle_name, age, current_status)
values
('Fabregas',  'Aleta', '', 55, 'manager');

insert into employees (last_name, first_name, middle_name, age, current_status)
values
('Testor',  'Jheo','Diaz', 23, default);

insert into employees (last_name, first_name, middle_name, age, current_status)
values
('Carlos',  'Don', null , 23, 'admin');


select current_status, count(*) as total_employees
from employees
group by current_status
having count(*) >= 1;

select * from employees
order by age desc;

select * from employees
order by age asc;

select * from employees
limit 2;


truncate employees;
