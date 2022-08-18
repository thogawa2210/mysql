use demo;

create table Products(
id int primary key auto_increment,
productCode int,
productName varchar(50),
productPrice int,
productAmount int,
productDesciption varchar(100)
);

insert into products(productCode,productName,productPrice,productAmount,productDesciption)
value (1,'shirt',500,50,'Sơ mi');
insert into products(productCode,productName,productPrice,productAmount,productDesciption)
value (2,'Polo',300,200,'Áo polo');
insert into products(productCode,productName,productPrice,productAmount,productDesciption)
value (3,'pants',700,100,'Quần');
insert into products(productCode,productName,productPrice,productAmount,productDesciption)
value (4,'suit',3000,50,'Bộ comple');
insert into products(productCode,productName,productPrice,productAmount,productDesciption)
value (5,'jacket',2500,50,'Áo khoác');

create unique index uidx_pid
on Products (productCode);

create unique index compositeidx_name_price
on products (productname, productprice);

create view new_view as
select productCode, productName, productPrice
from products;

select * from new_view;

drop view new_view;

select * from products;

Delimiter //
create procedure allproductS()
	begin
	select * from products;
	end//
DELIMITER ;

delimiter //
create procedure addproduct(in value1 int,value2 varchar(50),value3 int,value4 int,value5 varchar(100))
begin
insert into products(productCode,productName,productPrice,productAmount,productDesciption)
value (value1,value2,value3,value4,value5);
end//
delimiter ;

call addproduct(6, 'tie', 200, 100, 'Cà vạt');

delimiter //
create procedure updateproduct(updateid int,value1 int,value2 varchar(50),value3 int,value4 int,value5 varchar(100))
begin
update products
set productCode = value1, productName = value2, productPrice = value3, productAmount = value4, productDesciption = value5
where id = updateid;
end//
delimiter ;

call updateproduct(5, 7, 'overcoat',5000, 50, 'Áo khoác dài');

delimiter //
create procedure deleteproduct(deleteid int)
begin
delete from products where id = deleteid;
end//
delimiter ;

call deleteproduct(5);

select * from products;
