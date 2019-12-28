

-- Group avg,count,distinct functions
---------remember to edit >> intellisense >> refresh local cache ---------
-- https://www.youtube.com/watch?v=C29WO7CUKAQ
use Joel

--- GROUP for AVG and SUM and COUNT GROUPS
select * from tcustomer
select   LastName, count(*) from tCustomer group by LastName
select avg(age) from tCustomer where age > 0		--- age
select sum(age) from tCustomer where age > 0		--- sum
select age, count(*) as found from tCustomer group by age		--- sum

--- DISTINCT
select distinct Lastname from tCustomer		-- only smith, robinson, Jones
select distinct  LastName, count(*) from tCustomer group by LastName  -- Distinct not necessary
select distinct price from products

--- COUNT 
select count(*) as AllCustomers from tCustomer 
select count(*) as JustFamily   from tCustomer where LastName = 'Robinson'

--- MINIMUM MAXIMUM
select min(age) as youngest from tCustomer where LastName = 'Robinson'  -- youngest robinson
select max(age) as oldest   from tCustomer where LastName = 'Robinson'	-- oldest robinson

--- AVERAGE
select avg(age) as AVERAGE from tCustomer where LastName = 'Robinson'  -- youngest robinson

--- dates
select * from Orders where OrderDate > '2019-12-01'

---- HAVING
select LastName, FirstName  from tCustomer group by LastName, FirstName
select LastName, FirstName  from tCustomer group by LastName, FirstName having lastname = 'Jones'
select LastName, age  from tCustomer group by LastName, age having age > 20

select  count(*)  from products
update  products  set price = 100 where price > 75  
select  sum(price) from products group by price



