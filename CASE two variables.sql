------
use Joel
select * from Products

--- GENERIC CASE 
declare @sales float(5)
set @sales = 50

select  pName as 'Product Name', price as 'Product Price',
CASE 
	when pname = 'Football'				then 'Football'
	when price <= 10.0					THEN 'Product is < $10'
	when price <= 10.0					THEN 'Product is < $10'
	when price >10.0 and price <= @sales	THEN 'Product is between $10 and $' + cast (@sales as varchar(40) )
	else 'Product is Expensive'
	END AS "MY OPINION"				-- put a label on third column

	from Products
	order by 3

	------------------------------
	declare @barato varchar(50) = 'barato'
	declare @caro   varchar(50) = 'caro'
--			select @barato, @caro


	select price,
	CASE 
		when price > 100.0   THEN  
			('Found an expensive item')
		when price < 10.0	 THEN   'Found a cheap item'
		else 'average price'
		end
		from products



select * from tcustomer

select FirstName, LastName,  Age,
case   
	when Age > 30 then 'old'
	when Age < 30 then 'young'
	end as 'judgement'
 from tcustomer

	