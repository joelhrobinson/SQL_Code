-- MINUS
----The SQL MINUS operator is used to return all rows in the first SELECT statement 
----that are not returned by the second SELECT statement. Each SELECT statement will define a dataset. 
----The MINUS operator will retrieve all records from the first dataset 
----and then remove from the results all records from the second dataset.

use Joel

select Firstname from tcustomer		-- FIRST NAMES IN BOTH SELECTS
INTERSECT
select Firstname from customer

select Firstname from tcustomer		-- REMOVE all records found in second select
MINUS
select Firstname from customer

--- REVERSE
select Firstname from customer		-- REMOVE all records found in second select
MINUS
select Firstname from tcustomer
--------------------------------------------------------------

select LastName from tcustomer		-- LAST NAMES IN BOTH SELECTS
INTERSECT
select Lastname from customer

select LastName from tcustomer		-- LAST NAMES NOT IN SECOND SELECT
MINUS
select Lastname from customer
