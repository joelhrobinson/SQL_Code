USE Joel
--- CREATE A STORED PROCEDURE

declare @test varchar(50)
set @test = 'truck'
select chassis, * from cartruckdata where chassis = @test
select chassis, * from cartruckdata where chassis  like '%truck%'

--create  proc [dbo].[spGetTrucks]		-- CREATE ONLY USED ONCE

ALTER proc [dbo].[spGetTrucks]		
	(@mylength as int = 1,				-- parameter of truck length
	@mytype varchar(50)					-- parameter of truck chassis type
	)	
as
Begin
	select chassis, count (*) as counter from cartruckdata 
		where  chassis = @mytype
		and length > @mylength
		group by chassis
		select chassis,  * from cartruckdata where chassis = @mytype and length > @mylength
end
--------------------------------------------------------
execute spGetTrucks 200, 'Truck-king'
execute spGetTrucks 200, 'Truck'


select distinct chassis from cartruckdata
--------Truck
--------Truck-Extendedcab
--------Truck-Longbed
--------Truck-Crewcab
--------Truck-king
--------sedan

