--- CUBE
----	The CUBE is a subclause of the GROUP BY clause that allows you to generate multiple grouping sets. 

use Joel

---------------------------------------------
--	SINGLE CUBE
select top 11 * from wineStatistics

--- CUBE ADDS A FINAL AVERAGE OF AVERAGES
select wine as 'TypeWine', AVG(ash) as 'Avg Ash for type wine'
from winestatistics
Group by CUBE (wine)

select wine as 'TypeWine', AVG(ash) as 'Avg Ash for type wine'
from winestatistics
Group by  (wine)

------------------------------------------------------------
-- Normal method to calculate average of manufacturer MPG
select top 99 make, Fuel_Type, AVG(City_MPG) as 'City Fleet Average', AVG(HWY_MPG) as 'HWY Fleet Average'
	from temp99
	GROUP BY make, Fuel_Type
	order by  make


---			select top 11 make, model, * from temp99

-- CUBE ADDS AVG NULL GROUP TO EACH Desc TYPE
select top 99 make, Fuel_Type, AVG(City_MPG) as 'City Fleet Average', AVG(HWY_MPG) as 'HWY Fleet Average'
	from temp99
	GROUP BY CUBE (make, Fuel_Type)
		order by fuel_type


