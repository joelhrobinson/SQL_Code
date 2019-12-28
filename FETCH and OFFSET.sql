---FETCH and OFFSET
use Joel

-- REMEMBER, ONLY ORDERED rows have an OFFSET
-- OFFSET can be zero or > number of rows
-- A TOP can not be used in the same query or sub-query as a OFFSET

select count(*) from states				-- 59 entries in table of states and territories
select top 7 * from states	

select * from states					-- can use OFFSET if order
	order by scode OFFSET  5 ROWS		-- skip first 5 rows, start with 6th 

	select  scode, sname from states	-- can use OFFSET if order by
	order by scode OFFSET  5 ROWS		-- start with 5th row


--- FETCH NEXT ONLY
	select  scode, sname from states	
	order by scode OFFSET  5 ROWS		-- use offset
	FETCH NEXT 10 ROWS ONLY				-- get NEXT 
