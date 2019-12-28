-- https://www.youtube.com/watch?v=9Pzj7Aj25lw
-- youtube.com/user/SqlTrainingOnline
-- udemy.com/sql-server-essentials/?couponCode=SQL-YOUTUBE
use Joel;


--	select * from [tCustomer];			-- no semicolon
select * from dbo.tCustomer order by FirstName;		-- with semicolon

-- WHERE example
select * from tCustomer where age > 10 order by age;
select * from tCustomer where FirstName = 'Zeralina';

-- UPDATE example
update  tCustomer  set age = null where FirstName = 'Zeralina'  
update  tCustomer  set city = 'Boise' where age < 25  
update  tCustomer  set city = NULL where age > 100


-- DELETE EXAMPLE
with q as (select top 1 * from tCustomer where FirstName = 'Zeralina') delete from q
with q as (select top 1 * from tCustomer where FirstName = 'Lavilla') delete from q

--- look for nulls
select * from tCustomer where city is null
--- look for nulls
select * from tCustomer where city is not null

-- CREATE FOREIGN KEYS where orders customerID and ProductID are bound by the # entries in the tCustomer and Products tables



-- COMBINE TABLES WITH JOIN
select * from tCustomer
select * from Orders
select * from Products








