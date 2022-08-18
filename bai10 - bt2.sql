use quanlybanhang;

insert into customer(cName, cAge)
value ('Minh Quan', 10);
insert into customer(cName, cAge)
    value ('Ngoc Oanh', 20);
insert into customer(cName, cAge)
    value ('Hong Ha', 50);

select * from customer;

insert into product(pName, pPrice)
value ('May Giat', 3);
insert into product(pName, pPrice)
    value ('Tu Lanh', 5);
insert into product(pName, pPrice)
    value ('Dieu Hoa', 7);
insert into product(pName, pPrice)
    value ('Quat', 1);
insert into product(pName, pPrice)
    value ('Bep Dien', 32);

select * from product;

insert into orders(cID, oDate, oTotalPrice)
value (1,'2006-3-21',null);
insert into orders(cID, oDate, oTotalPrice)
    value (2,'2006-3-23',null);
insert into orders(cID, oDate, oTotalPrice)
    value (1,'2006-3-16',null);

select * from orders;

insert into orderdetail(oID, pID, odQTY)
value (1,1,3);
insert into orderdetail(oID, pID, odQTY)
    value (1,3,7);
insert into orderdetail(oID, pID, odQTY)
    value (1,4,2);
insert into orderdetail(oID, pID, odQTY)
    value (2,1,1);
insert into orderdetail(oID, pID, odQTY)
    value (3,1,8);
insert into orderdetail(oID, pID, odQTY)
    value (2,5,4);
insert into orderdetail(oID, pID, odQTY)
    value (2,3,3);

select * from orderdetail;

select O.oID,C.cName, P.pName, OD.odQTY
from orderdetail OD join orders O on OD.oID = O.oID join product p on p.pID = OD.pID join customer c on O.cID = c.cID;

select C.cID, C.cName
from customer C left join orders O on C.cID = O.cID
where O.cID is null;

select OD.oID, O.oDate, OD.odQTY*P.pPrice as totalPrice
from orderdetail OD join orders O on OD.oID = O.oID join product p on p.pID = OD.pID;
