------
use Joel
--- GENERIC CASE 
select  pName as 'Product Name', price as 'Product Price',
CASE 
	when price <= 10				THEN 'Product is Cheap'
	when price >10 and price < 100	THEN 'Product is Not cheap'
	else 'Product is Expensive'
	END AS MYOPINION				-- put a label on third column

	from Products

--Name		price	MyOpinion
--Baseball	12.98	Product is Not cheap
--Bat		100	Product is Expensive
--Football	15.98	Product is Not cheap
--Soccerball	9.98	Product is Cheap
--Baseballs	100	Product is Expensive
--Bats		100	Product is Expensive
--Footballs	100	Product is Expensive
--Soccerballs	9.98	Product is Cheap
--ballcaps	19.98	Product is Not cheap