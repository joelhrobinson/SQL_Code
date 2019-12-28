https://www.toptal.com/



select * from tcustomer 
use Joel
select  * from tCustomer
select top 1 * from Orders
select top 1 * from Products
--------------------------------------------
----find 3rd oldest person
select top 1 * from 
(
select distinct top 3 age from tcustomer
order by age desc
)
as temp
order by age 


SELECT DISTINCT age FROM tCustomer ORDER BY age 

