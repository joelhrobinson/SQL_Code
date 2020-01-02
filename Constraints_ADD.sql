--check the constraints imposed when table is created

CREATE TABLE #temp1 (myname varchar(20),	CHECK (myname IS NOT NULL), 	 DOB  DATETIME ) 
CREATE TABLE #temp2 (myage int,   CHECK (myage > 10) )
CREATE TABLE #temp3 (myage int, myname varchar(20), CHECK (myage > 10), CHECK (myname IS NOT NULL))
CREATE TABLE #temp4 (myage int  PRIMARY KEY, CHECK (myage > 10),
	myheight int DEFAULT  100, 
	myweight int UNIQUE, 
	myname varchar(20),  
	CHECK (myname IS NOT NULL))  --- DROP TABLE #temp4



INSERT #temp1 VALUES('joel', 1/1/1994)		-- bad format, defaults to 1900-01-01 00:00:00.000
INSERT #temp1 VALUES('Henry', '2000-02-14') 
INSERT #temp1 VALUES('Robinson', '1953-02-14 12:33:22.001')  
INSERT #temp1 VALUES('Brenda','1933-05-14')
INSERT #temp1 VALUES(NULL,'1953-02-14 12:33:22.001')		-- this fails the check constraint
INSERT #temp1 VALUES('Reuben', NULL)						-- this fails the check constraint

SELECT * FROM #temp1 
SELECT * FROM #temp1  WHERE DOB IS NULL
SELECT * FROM #temp1  WHERE myname IS NULL

TRUNCATE  TABLE #temp1				--  truncate a temp table
--		DELETE * from   #temp1		-- cannot delete data a temp table

alter table #temp1 add CHECK (myname IS  NOT NULL)
alter table #temp1 DROP CHECK (myname IS  NOT NULL)



alter table #temp1 drop COLUMN DOB	-- temp tables are just like other tables
alter table #temp1 add   joel int	-- temp tables are just like other tables
DROP TABLE #temp1					-- temp tables are just like other tables
DROP TABLE #temp3		
DROP TABLE #temp2
DROP TABLE #temp4