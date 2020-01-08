--- select with limit and offset

use joel

-- CANNOT USE OFFSET w/o ORDER		in this version of SQL because there is no row "1" in SQL
-- CANNOT USE LIMIT					in this version of SQL
-- CANNOT USE TOP n with OFFSET		in this version of SQL
-- CANNOT USE FETCH w/o OFFSET		in this version of SQL
-- CANNOT USE FETCH w/o ONLY		in this version of SQL

					

----------------------------------------------------------------------
select * from tCustomer				-- SELECT + OFFSET + FETCH
	order by age
	OFFSET 3 rows						
    FETCH NEXT 5 ROWS ONLY;

SELECT * from tCustomer t			-- SELECT + OFFSET + FETCH + JOIN
left  JOIN orders o on  t.ID = o.orderID
	order by age
	OFFSET 0 rows
    FETCH NEXT 5 ROWS ONLY;


	select  * from tCustomer				-- SELECT + OFFSET -- skip the first 3 rows
	order by age
	OFFSET 3 rows	
