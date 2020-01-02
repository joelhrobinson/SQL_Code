---FETCH and OFFSET
use Joel

--	MUST have order by
-- REMEMBER, ONLY ORDERED rows have an OFFSET
-- OFFSET can be zero or > number of rows
-- A TOP can not be used in the same query or sub-query as a OFFSET

select count(*) from states				-- 59 entries in table of states and territories
select top 3 * from states	

select * from states					-- can use OFFSET if order
	order by scode OFFSET  5 ROWS		-- skip first 5 rows, start with 6th 


--- FETCH NEXT 3 ONLY
	select  * from states	
	order by scode					-- MUST HAVE ORDER BY
	OFFSET		5 ROWS					-- use offset
	FETCH NEXT	3 ROWS ONLY			-- get NEXT 
