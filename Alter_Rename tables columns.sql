-- create table, then rename table and rename colum
-- NOTE: does not work on temp tables

use Joel
CREATE TABLE temp1 (
	myint		int,			-- 4 bytes Allows whole numbers +/- -2,147,483,648 and 2,147,483,647 
	mybigint	bigint,			-- 8 bytes Allows whole numbers +/- -9,223,372,036,854,775,808
	myfloat1	FLOAT(3),		-- 4 or 8 bytes
	mydecimal	DECIMAL(5,2),	-- 5-17 bytes Fixed precision and scale numbers. 
	mynumeric	NUMERIC (18,2),	-- 5-17 bytes default is 18 char max is 38
	)
	INSERT temp1 VALUES(1,2,3.3,4.4,5.5) 
	INSERT temp1 VALUES(6,7,8.8, 9.9, 10.10)
	select * from temp1	
-----------------------------------------------------------------------
EXEC sp_rename 'temp1', 'temp2';	-- THIS WORKS, rename table
select * from temp1			--		 drop table temp1
select * from temp2			--		 drop table temp2

--------------------------------------------------------------
select * from temp1; 
select * from temp2;
sp_rename 'temp1.myint', 'yourint' , 'COLUMN';
sp_rename 'temp2.myint', 'yourint' , 'COLUMN';
select * from temp1
	 drop table temp1
	 drop table temp2

RENAME TABLE 'temp1' TO 'temp2'		-- FAILS, not a valid command
alter table temp2 RENAME TO temp3	-- FAILS, DOES NOT WORK

