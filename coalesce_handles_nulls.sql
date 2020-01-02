--- COALESCE 
--The SQL Coalesce and IsNull functions are used to handle NULL values. 
--During the expression evaluation process the NULL values are replaced with the user-defined value. 
--The SQL Coalesce function evaluates the arguments in order and always returns first non-null value from the defined argument list
use Joel

select firstname, lastname, * from tCustomer
where firstname is null
or lastname is null

------------------------------------------------------------------------------------------------------------------------------
-- REPLACE the NULL values with a fake value
select coalesce (Firstname, 'fakeFirstName') as FirstName,  Coalesce (LastName, 'fakeLastName') as LastName from tCustomer
where firstname is null
or lastname is null
