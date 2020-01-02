
use Joel

select top 10 * from tcustomer 
	where city is null

select top 10 * from tCustomer			-- skip these values
	where  age NOT IN (6,95,56)

	select top 10 * from tCustomer		-- ONLY select these values
	where  age  IN (6,95,56)








