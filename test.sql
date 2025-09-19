use sample;

select *from employees;

delimiter $$
create procedure updatesalary1(in eid int, in newsalary decimal(10,2), out message varchar(50))
begin
	declare currentSalary decimal(10,2);
    select salary into currentsalary from employees where id = eid; 
    if newsalary > currentsalary then
    update employees set salary = newsalary where id = eid;
    set message = 'salary updated';
    else
    set message ='current salary higher than new salary';
    end if;
end $$
delimiter ;

set @msg ='';
call updatesalary1(2, 71000,@msg);
select @msg as Salaryupdatestatus;

delimiter $$
create procedure insertemp(in id int,in name varchar(20),in department varchar(20),in salary decimal(10,2),in city varchar(20))
begin
	insert into employees(id,name,department,salary,city)
    values(id,name,department,salary,city);
end $$
delimiter ;

call insertemp(9, 'bob','IT',85000,'chicago');





delimiter $$
create procedure updatesdepartment(in edepartment varchar(20), in newdepartment varchar(20), out message varchar(50))
begin
	declare currentdepartment varchar(20);
    select department into currentdepartment from employees where department = edepartment; 
    if newdepartment != currentdepartment then
    update employees set department = newdepartment where department = edepartment;
    set message = 'department updated';
    else
    set message ='cant update since same depart';
    end if;
end $$
delimiter ;

set @msg ='';
call updatesdepartment(2, 'hr',@msg);
select @msg as departmentupdatestatus;
