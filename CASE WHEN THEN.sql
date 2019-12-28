--- CASE WHEN THEN statement
use Joel

select * from products
PRINT 'begin';

SELECT pname FROM products
CASE
	WHEN pName like 'f%'	then  PRINT 'You are probably football';
	WHEN pName like 'B%'	then  PRINT 'You are probably baseball';
	ELSE print 'You are not football or baseball'
	

