-- https://www.youtube.com/watch?v=9Pzj7Aj25lw
-- youtube.com/user/SqlTrainingOnline
-- udemy.com/sql-server-essentials/?couponCode=SQL-YOUTUBE

use Joel

select * from tCustomer;		-- with semicolon


insert into dbo.tCustomer 	(FirstName, LastName, Age, city) values ('Zeralina2', 'Robinson', 9, 'Meridian')
insert into dbo.tCustomer 	(FirstName, LastName, Age, city) values ('Reuben2', 'Robinson', 9, 'Jerome')
insert into dbo.tCustomer 	(FirstName, LastName, Age, city) values ('Jonathan2', 'Robinson', 9, 'Meridian')
insert into dbo.tCustomer 	(FirstName, LastName, Age, city) values ('Jason2', 'Robinson', 41, 'Boise')
insert into dbo.tCustomer 	(FirstName, LastName, Age, city) values ('Micah2', 'Robinson', 39, 'Jerome')
insert into dbo.tCustomer 	(FirstName, LastName, Age, city) values ('Bruce2', 'Robinson', 108, 'Goshen')
insert into dbo.tCustomer 	(FirstName, LastName, Age, city) values ('Lavilla2', 'Robinson', 106, 'Palm Bay')
insert into dbo.tCustomer 	(FirstName, LastName, Age, city) values ('Stranger', 'Smith', 22, 'Anchorage')
insert into dbo.tCustomer 	(FirstName, LastName, Age, city) values ('Danger', 'Smith', 24, 'Fairbanks')
insert into dbo.tCustomer 	(FirstName, LastName, Age, city) values ('Spendthrift', 'Jones', 24, 'Fairbanks')

insert into dbo.Products 	(pname, price) values ('Baseballs', 112.98)
insert into dbo.Products 	(pname, price) values ('Bats',      199.98)
insert into dbo.Products 	(pname, price) values ('Footballs', 115.98)
insert into dbo.Products 	(pname, price) values ('Soccerballs', 9.98)
insert into dbo.Products 	(pname, price) values ('ballcaps', 19.98)
insert into dbo.Products 	(pname, price) values ('ballgloves', 29.98)
insert into dbo.Products 	(pname, price) values ('shinguards', 39.98)
insert into dbo.Products 	(pname, price) values ('basketballs', 49.98)
insert into dbo.Products 	(pname, price) values ('tennisballs', 59.98)
insert into dbo.Products 	(pname, price) values ('rugbyballs', 69.98)
insert into dbo.Products 	(pname, price) values ('lacrossballs', 79.98)
insert into dbo.Products 	(pname, price) values ('bowlingballs', 89.98)
insert into dbo.Products 	(pname, price) values ('pingpongballs', 99.98)
select * from Products

insert into dbo.Orders 	(OrderDate, CustomerID, ProductID) values ( Getdate(),  17,1)
insert into dbo.Orders 	(OrderDate, CustomerID, ProductID) values ( Getdate()-1,10,10)
insert into dbo.Orders 	(OrderDate, CustomerID, ProductID) values ( GetDate()-3, NULL,14)
insert into dbo.Orders 	(OrderDate, CustomerID, ProductID) values ( GetDate()-4, 13,13)
insert into dbo.Orders 	(OrderDate, CustomerID, ProductID) values ( GetDate()-5, 5,NULL)
insert into dbo.Orders 	(OrderDate, CustomerID, ProductID) values ( GetDate()-6, NULL,17)
insert into dbo.Orders 	(OrderDate, CustomerID, ProductID) values ( Getdate(),  7,NULL)
insert into dbo.Orders 	(OrderDate, CustomerID, ProductID) values ( Getdate()-1, 2,16)
insert into dbo.Orders 	(OrderDate, CustomerID, ProductID) values ( GetDate()-3, 8,NULL)
insert into dbo.Orders 	(OrderDate, CustomerID, ProductID) values ( GetDate()-4, 9,9)
insert into dbo.Orders 	(OrderDate, CustomerID, ProductID) values ( GetDate()-5, 10,8)
insert into dbo.Orders 	(OrderDate, CustomerID, ProductID) values ( GetDate()-6, 15,7)
insert into dbo.Orders 	(OrderDate, CustomerID, ProductID) values ( GetDate()-6, 17,6)
insert into dbo.Orders 	(OrderDate, CustomerID, ProductID) values ( GetDate()-6, 18,6)
-- insert into dbo.Orders 	(OrderDate, CustomerID, ProductID) values ( GetDate()-6, 99,994) -- will fail due to bad foreign keys
select * from Orders;
select * from tCustomer;
