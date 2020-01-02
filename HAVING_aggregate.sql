---- HAVING_+ GROUP BY aggregate
-- The SQL HAVING clause is used in combination with the GROUP BY clause 
--	to restrict the groups of returned rows to only those whose the condition is TRUE.
-- SUM, COUNT, MIN, MAX, or AVG functions.
use Joel
---		select * from countryList

select top 6 * from cardata where HWY_MPG > 50 order by HWY_MPG desc

select model, avg(HWY_MPG)
from cardata
group by model
having (HWY_MPG > 30)


SELECT  City, age, avg(ID)
FROM tCustomer		-- displays count and city name
GROUP BY City, age  HAVING avg (ID) < 77

select age,  count(age) as myCount		--		select * from tcustomer where age < 40
from tCustomer
Group by age
HAVING age < 40
order by count(age) desc


-------------------------------------
-- COUNT BY LAST NAME GROUP HAVING 
select  LastName, count(*) as 'LastName'
from tCustomer
	Group by Lastname
	HAVING LastName = 'Robinson'


---------------------------------------------
-- all counts are one  --		select * from countrylist

select count (name) as myname
from countryList
	group by name
	HAVING name like 'A%'
	order by count(name) desc
