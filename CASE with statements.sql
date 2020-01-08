------
use Joel
select * from Products

--- GENERIC CASE 
select  pName as 'Product Name', price as 'Product Price',
CASE 
	when pname = 'Football'				then 'Football'
	when price <= 10.0					THEN 'Product is < $10'
	when price >10.0 and price <= 20.0	THEN 'Product is between $10 and $20'

	else 'Product is Expensive'
	END AS "MY OPINION"				-- put a label on third column

	from Products
	order by 3



	