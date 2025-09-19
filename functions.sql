create database functions;

use functions;
select * from employee;
create table employee(
eid int primary key,
name varchar(30) not null,
location varchar(30) not null,
department varchar(30) not null);

insert into employee values
(1, 'kathir', 'Cbe', 'DA'),
(2, 'harish', 'Che', 'hr'),
(3, 'ramesh', 'erd', 'dev'),
(4, 'suresh', 'Cbe', 'DA');

alter table employee add salary decimal(10,2);
update employee set salary =75000.00 where eid = 4;

alter table employee add age int not null;
update employee set age = 24 where eid = 4;
select max(salary) as MaxSalary from employee;
select min(salary) as MinSalary from employee;
select sum(salary) as TotalSalary from employee;
select count(eid) as TotalEmployees from employee
where department = 'da';
select avg (salary) from employee;
select * from employee where  age > 25 and salary > 50000 ;
select * from employee where  age > 25 or salary > 50000 ;
select * from employee where  department != 'hr' ;
select * from employee where salary between 40000 and 70000 ;



