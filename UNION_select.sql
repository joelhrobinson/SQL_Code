	use Joel
	
--UNION JOIN
--The UNION operator is used to combine the result-set of two or more SELECT statements.

--    Each SELECT statement within UNION must have the same number of columns
--    The columns must also have similar data types
--    The columns in each SELECT statement must also be in the same order
--		UNION  ALL allows duplicates
--		UNION  requires to be unique

-- WHERE constraint is allowed on CROSS JOIN
select top 2 * from tcustomer
select top 2 * from orders
-----------------------------------------------------------------------
--- ONLY UNIQUE COMBINATIONS  of FIRSTNAME + LASTNAME
SELECT Firstname, Lastname  from tCustomer	-- must have same # and type of columns
UNION 
SELECT Firstname, Lastname  from  customer

--- ALL COMBINATIONS   of FIRSTNAME + LASTNAME
SELECT Firstname, Lastname  from tCustomer	-- must have same # and type of columns
UNION ALL
SELECT Firstname, Lastname  from  customer
order by Firstname, LastName

