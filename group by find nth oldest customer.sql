
--https://www.toptal.com/sql/interview-questions

use Joel
select top 1 * from tCustomer
select top 1 * from Orders
select top 1 * from Products


--- find customers who have no orders
select * from tcustomer t
	 left join orders o on t.ID = o.CustomerID
	where o.customerID is  NULL
	 


--- find customers with even year ages 
select * from tcustomer where age %2 = 0	--- even
select * from tcustomer where age %2 = 1	--- odd

select distinct age from tcustomer
group by age having age > 100

