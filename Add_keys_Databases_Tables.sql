-- https://www.youtube.com/watch?v=9Pzj7Aj25lw
-- youtube.com/user/SqlTrainingOnline
-- udemy.com/sql-server-essentials/?couponCode=SQL-YOUTUB
-- Remember to edit >> intellisense >> refresh local cache 
-- Right click on tables, click refresh
-- Using the keyboard, it's: CTRL-SHIFT-R
------------------------------------------------------- 
use Joel

--- Foreign Key means the field values allowed in a field in table "A" 
--- are bounded by the # entries in table "B"
----------------------------------
select * from orders
-- ADD FOREIGN KEYS to table orders
-- where orders column customerID and ProductID values are bound 
-- BOUND by the # entries in the tCustomer and Products tables
select count(*) from tCustomer		-- about 32 entries this will be your boundary
select count (*) from Products		-- about 18 entries

alter table orders    add foreign key (CustomerID) references tCustomer(ID);	select * from Orders;
alter table orders    add foreign key (ProductID)  references Products(pID);	select * from Orders;

--- NOTE you CAN'T SEE THE FOREIGN KEY as a COLUMN HERE
select * from tCustomer			-- USE THE OBJECT EXPLORER to see FOREIGN KEYS
--------------------------------------------------------------------------
-- create a table then add a PRIMARY key to it
create table countries  (
		stateID   varchar (2)  not NULL,			-- do not allow NULLS
		stateName varchar (50) not NULL)			-- do not allow NULLS 

insert into dbo.countries (stateID, stateName) values ('UK', 'United Kingdom')	-- full input one row 
insert into dbo.countries  values ('FR', 'France'),   ('US', 'United States')	-- short input one row
insert into dbo.countries  values ('DE', 'Germany'),	('AU', 'Australia')		-- short input TWO rows
insert into dbo.countries  values ('NZ', 'New Zealand')	
select * from Joel.dbo.countries;
--- drop table countries;

alter table countries ADD PRIMARY KEY (stateID) 	-- field that is to be primary key must not allow NULLed
select * from Joel.dbo.countries;













