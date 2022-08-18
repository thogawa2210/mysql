create database QuanLyBanHang;

use QuanLyBanHang;

create table Customer(
                         cID int primary key auto_increment,
                         cName varchar(100),
                         cAge int(100)
);

create table Orders(
                       oID int primary key auto_increment,
                       cID int,
                       oDate date,
                       oTotalPrice int,
                       foreign key (cID) references customer(cID)
);

create table product(
    pID int(10) primary key auto_increment not null,
    pName varchar(255) not null,
    pPrice int(10) not null
);

create table OrderDetail(
    oID int,
    pID int,
    odQTY int(10) not null,
    foreign key (pID) references product(pID),
    foreign key (oID) references orders(oID)
)