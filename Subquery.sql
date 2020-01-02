--- SUBQUERY

use Joel
select *  into cardatatemp from cartruckdata

select top 9 make, model, 
	(select max (length)  from cartruckdata where make = 'BMW')
	from cardata



--- subquery can only return one value 
select top 9 make, model, gears from cardata
	where gears = 
	(select max (gears) from cardata where make = 'BMW')

