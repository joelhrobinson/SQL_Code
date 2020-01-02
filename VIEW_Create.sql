--- how to create a view

use Joel
	select * from countryList where countryList.name like 'Z%'
		select * from countryList
--- CREATE USE AND DROP PERMANENT VIEW
--- Temporary views are not allowed.
create VIEW vcountry AS 
	select * from countryList where countryList.name like 'Z%' --- THIS WORKS !!!!


	select * from vcountry
	DROP VIEW vcountry				---		get rid of the view

----------- CREATE USE AND DROP TEMPORARY SELECT TABLE (not a view)
with vcountrytemp AS 
(	select * from countryList where countryList.name like 'Z%'  )	
	select * from vcountrytemp


	---------------------------------------------------
		select * from cardata where model like '%GMC%'




	create VIEW GMC2 AS 
	select * from cardata where make like '%GMC%'

	select * from GMC2



	select * from  GMC
	select * from  GMC2
	drop view if exists  GMC
		drop view if exists GMC2

		select * from gmc2