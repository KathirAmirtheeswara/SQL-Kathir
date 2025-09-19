create database sample;

use sample;

delimiter $$
create function calculate_discount(orginal_price decimal(10,2),discount_percentage decimal(5,2))
returns decimal(10,2)
deterministic
begin
  declare discount_amount decimal(10,2);
  declare final_price decimal(10,2);
  set discount_amount=(orginal_price*discount_percentage)/100;
  set final_price=orginal_price-discount_amount;
  return final_price;
  end $$
  delimiter ;
  select calculate_discount(200,20);
