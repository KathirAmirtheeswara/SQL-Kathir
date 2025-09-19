create database basic;

use basic;
create table fresh(veg_name varchar(30),price decimal(10,2),location varchar(30));
insert into fresh 
values('tomato',35.0,'chennai'),('carrot',50,'kellambakam'),('onion',30,'chennai');
select * from fresh;
alter table fresh add kg varchar(20);
update fresh set kg='1kg';
update fresh set kg='1kg'
where veg_name='carrot';
select * from fresh;

create table grocy(name varchar(20),price decimal(10,2),contact bigint,quantity int);
insert into grocy values ('tomato',40.0,9894970956,2),('beans',20.6,8925103399,1),('onion',40.5,7895645634,2),('ginger',25.7,96776003456,1);
select * from grocy;

select f.veg_name,f.price,f.location,g.name,g.contact,g.quantity
from fresh f inner join grocy g 
on f.veg_name=g.name;

select f.veg_name,f.price,f.location,g.name,g.contact,g.quantity
from fresh f left join grocy g 
on f.veg_name=g.name
union
select f.veg_name,f.price,f.location,g.name,g.contact,g.quantity
from fresh f right join grocy g 
on f.veg_name=g.name;