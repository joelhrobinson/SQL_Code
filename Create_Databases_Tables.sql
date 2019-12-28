-- https://www.youtube.com/watch?v=9Pzj7Aj25lw
-- youtube.com/user/SqlTrainingOnline
-- udemy.com/sql-server-essentials/?couponCode=SQL-YOUTUBE

------------------------------------------------------- 
---------remember to edit >> intellisense >> refresh local cache ---------

--	create database and table Customer
/*		create table tCustomer;
		(
			FirstName varchar (50),
			LastName varchar (50),
			Age       int
		)
*/
use Joel		------------ database name
drop table tCustomer
	create table tCustomer
		(	ID int Primary Key identity (1,1),
			FirstName varchar (50),
			LastName varchar (50),
			Age       int,
			City     varchar (50)
		)
select * from tCustomer

-----------------------------------
		drop table Products;
			create table Products
		(	pID int Primary Key identity (1,1),
			pName varchar (50),
			price	float
		)
		select * from Products
-----------------------------------
		drop table Orders
			create table Orders
		(	orderID int Primary Key identity (1,1),
			OrderDate Datetime,
			CustomerID int,
			ProductID  int		
		)
	select * from Orders

------------------------------
-- add column to a table
use Customer
alter table tCustomer add c_id int			
alter table tCustomer add city varchar (50);	select * from tCustomer;
alter table Products  add price float;			select * from Products;

----------------------------------
-- CREATE FOREIGN KEYS where orders customerID and ProductID are bound by the # entries in the tCustomer and Products tables
alter table orders    add foreign key (CustomerID) references tCustomer(ID);	select * from Orders;
alter table orders    add foreign key (ProductID)  references Products(pID);	select * from Orders;

---------remember to edit >> intellisense >> refresh local cache ---------
select * from tCustomer			-- no semicolon
select * from tCustomer;		-- with semicolon
--------------------------------------------------------------------------

















