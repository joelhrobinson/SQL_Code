-- create temp table
-- temp tables are just like other tables
--- except cannot rename temp tables or rename columns in temp tables
use joel
CREATE TABLE #temp2 (myage int, CHECK (myage > 10))


DROP TABLE #temp2	

--- in the Query window right click >> find intellisense >> toggle ENABLE
-- or
--- in the Query window  >>	CONTROL B CONTROL I
---
--- 