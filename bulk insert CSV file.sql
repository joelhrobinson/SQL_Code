use Joel
---
--- create a table from a CSV list of countries

--- import list of countries from a TXT file

use Joel
--	SAMPLES.TXT IS NOT NOT NOT a CSV FILE !!!!!!!!!!!!!!!!

--	BULK INSERT points to a text file as input and target table as output
	CREATE TABLE Country ( textvalue varchar(80))		-- Drop table Country

	BULK INSERT Country FROM 'C:\temp\samples.txt'
	BULK INSERT Country FROM 'C:\temp\country-list-196.txt'

	select textvalue from Country
--		drop table Country
---------------------------------------------------------
select * from Country


	