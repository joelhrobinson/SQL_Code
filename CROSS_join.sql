	use Joel
	
-- NO "ON" CONDITIONS ALLOWED ON CROSS JOIN
-- WHERE constraint is allowed on CROSS JOIN

SELECT * from tCustomer t			-- SELECT + OFFSET + FETCH + JOIN
 CROSS JOIN orders o 
	order by o.CustomerID
	OFFSET 1 rows
    FETCH NEXT 6 ROWS ONLY;

	--------------------------------

	SELECT * from tCustomer t			-- SELECT + OFFSET + FETCH + JOIN
 CROSS JOIN orders o 
 where city is NULL or o.customerID is NULL or ProductID is NULL
	order by o.CustomerID
	OFFSET 0 rows
    FETCH NEXT 15 ROWS ONLY;