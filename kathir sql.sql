create database sample;

use sample;

create table employees(
	id int primary key,
    name varchar(30) not null,
    department varchar(30) not null,
    salary decimal (10,2),
    city varchar(30)
    );
    
    select * from employees;
    
    insert into employees values 
    (1, 'Alice', 'hr', 50000, 'Newyork'),
    (2, 'Bob', 'IT', 70000, 'San Diego'),
    (3, 'Charlie', 'hr', 55000, 'Newyork'),
    (4, 'David', 'IT', 80000, 'Boston'),
    (5, 'Eva', 'Finance', 60000, 'San Diego'),
    (6, 'Frank', 'IT', 75000, 'San Jose'),
    (7, 'Grace', 'Finance', 65000, 'Newyork'),
    (8, 'Hannah', 'hr', 52000, 'Boston');
    
SELECT department, COUNT(id) AS employee_count
FROM employees
GROUP BY department;

select department, avg(salary) as Averagesalary from employees group by department;
    
SELECT id, name, department, salary, city
FROM employees
ORDER BY salary DESC;

SELECT id, name, department, salary, city
FROM employees
ORDER BY department ASC, salary ASC;

