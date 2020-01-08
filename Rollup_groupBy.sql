
--The ROLLUP is an extension of the GROUP BY clause. 
--The ROLLUP option allows you to include extra rows that represent the subtotals, 
--which are commonly referred to as super-aggregate rows, along with the grand total row.
--By using the ROLLUP option, you can use a single query to generate multiple grouping sets.


use Joel

-- COPY table wiht 5,076 rows
--		select * INTO temp99 from cardata;			
--		drop table temp99
--		select * from temp99

-----------------------------------------------------------
-- Normal method to calculate average of manufacturer MPG
select top 9 make, Fuel_Type, AVG(City_MPG) as 'City Fleet Average', AVG(HWY_MPG) as 'HWY Fleet Average'
	from temp99
	GROUP BY make, Fuel_Type
	order by 'City Fleet Average' desc, make

----------------------------------------------------------
-- ROLLUP METHOD ONE SUMS each GROUP 
select top 9 make, Fuel_Type,  AVG(City_MPG) as 'City Fleet Average', AVG(HWY_MPG) as 'HWY Fleet Average'
	from temp99
	GROUP BY ROLLUP (make, Fuel_Type)
		order by 'City Fleet Average' desc, make

----------------------------------------------------------
-- ROLLUP METHOD TWO
select top 9 make, Fuel_Type,  AVG(City_MPG) as 'City Fleet Average', AVG(HWY_MPG) as 'HWY Fleet Average'
	from temp99
	GROUP BY make, Fuel_Type with ROLLUP
		order by 'City Fleet Average' desc, make




