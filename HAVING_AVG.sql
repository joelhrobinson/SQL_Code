---- HAVING_+ GROUP BY aggregate
-- The SQL HAVING clause is used in combination with the GROUP BY clause 
--	to restrict the groups of returned rows to only those whose the condition is TRUE.
-- SUM, COUNT, MIN, MAX, or AVG functions.
use Joel

select top 6 * from cardata where HWY_MPG > 50 order by HWY_MPG desc

select make, avg(hwy_MPG) as HWY_MPG from cardata
group by make
having avg(hwy_mpg) > 25



select top 9 make, model, avg(HWY_MPG) as HWY, avg(city_MPG) as City		-- display models with average HW > 35
from cardata
group by make, model
having avg(HWY_MPG) < 15
order by 3 desc


select top 9 make, model, avg(HWY_MPG) as HWY, avg(city_MPG) as City		-- display models with average HW > 35
from cardata
group by make, model			-- group by both make and model 
having avg(HWY_MPG) > 35
order by 3 desc



select top 9 make, model, avg(HWY_MPG) as HWY, avg(city_MPG) as City		-- display models with average HW > 35
from cardata
where year > 2011				--- ADD LIMIT OF YEAR > 2011
group by make, model
having avg(HWY_MPG) > 35
order by 3 desc
