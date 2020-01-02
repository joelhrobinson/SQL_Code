--- JOINS

use joel


SELECT * from tCustomer t			-- SELECT + OFFSET + FETCH + JOIN
INNER JOIN orders o on  t.ID = o.orderID
INNER JOIN products p on p.PID = o.ProductID
	order by CustomerID
	OFFSET 0 rows
    FETCH NEXT 5 ROWS ONLY;

SELECT * from tCustomer t			-- SELECT + OFFSET + FETCH + JOIN
 JOIN orders o on  t.ID = o.orderID
 JOIN products p on p.PID = o.ProductID
	order by CustomerID
	OFFSET 0 rows
    FETCH NEXT 5 ROWS ONLY;

	
SELECT * from tCustomer t			-- SELECT + OFFSET + FETCH + JOIN
 LEFT JOIN orders o on  t.ID = o.orderID
 --LEFT JOIN products p on p.PID = o.ProductID
	order by CustomerID
	OFFSET 0 rows
    FETCH NEXT 5 ROWS ONLY;

	SELECT * from tCustomer t			-- SELECT + OFFSET + FETCH + JOIN
 RIGHT JOIN orders o on  t.ID = o.orderID
 --RIGHT JOIN products p on p.PID = o.ProductID
	order by CustomerID
	OFFSET 0 rows
    FETCH NEXT 5 ROWS ONLY;


	SELECT * from tCustomer t			-- SELECT + OFFSET + FETCH + JOIN
 FULL JOIN orders o on  t.ID = o.orderID
 --FULL JOIN products p on p.PID = o.ProductID
	order by CustomerID
	OFFSET 0 rows
    FETCH NEXT 5 ROWS ONLY;