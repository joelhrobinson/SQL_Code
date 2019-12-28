-- https://www.youtube.com/watch?v=9Pzj7Aj25lw
-- youtube.com/user/SqlTrainingOnline
-- udemy.com/sql-server-essentials/?couponCode=SQL-YOUTUBE


use Joel
select top 1 * from tCustomer
select top 1 * from Orders
select top 1 * from Products

--- JOINS  inner left join is the default 
select   o.*, p.*, c.* from Orders	o
	inner join Products p on  o.productID = p.pID
	inner join tcustomer c on o.CustomerID = c.ID

	-- outer join adds rows that have nulls in them
	select   o.*, p.*, c.* from Orders	o
	RIGHT outer join Products p on  o.productID = p.pID
	RIGHT outer join tcustomer c on o.CustomerID = c.ID


----- SUM GROUP BY
	  select c.Lastname, p.pName as Bought, Sum(p.price) as total 
from Orders	o
	  LEFT outer join Products p on  o.productID = p.pID
	  LEFT outer join tcustomer c on o.CustomerID = c.ID
	  group by c.LastName, p.pName

	  ----- AVERAGE GROUP BY
	  select c.Lastname, p.pName, avg(p.price) as average 
from Orders	o
	  left outer join Products p on  o.productID = p.pID
	  left outer join tcustomer c on o.CustomerID = c.ID
	  group by c.LastName, p.pName
