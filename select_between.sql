
use Joel

select  * from tcustomer		--- IS NULL
	where city is NULL 
	or FirstName is NULL
	or LastName is NULL

select * from tcustomer			--- not NULL
	where city is NOT NULL 






