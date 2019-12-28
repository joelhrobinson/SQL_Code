--- create a table from a CSV list of countries

use Joel
--	country-list-3columns.csv CSV FILE !!!!!!!!!!!!!!!!

--	BULK INSERT points to a text file as input and target table as output
use Joel
--	0. create file with headers
--	1. right click on Joel
--	2. select tasks >> next
--	3. select import flat file location & new table name "wine" >> next
--	4. the wizard auto selects column type based on contents
--	5. modify any column types if they are incorrect
--	6. view summary >> finish
--	7. success then select * from wine
-- 
use Joel
-- no create table
-- no insert data

	select * from wine
--		drop table wine


	