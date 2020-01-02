

select * INTO cartruckdata from cardata;
alter table cartruckdata add Chassis nvarchar(50)
select exact_ID, chassis as 'Chassis type of truck' from cartruckdata 



update cartruckdata set Chassis = 'sedan'	-- do me first 
update cartruckdata set Chassis = 'Truck' where Exact_ID like '%bed%'   --- must do me second

update cartruckdata set Chassis = 'Truck-king' where Exact_ID like '%king%'
update cartruckdata set Chassis = 'Truck-Longbed' where Exact_ID like '%long%'
update cartruckdata set Chassis = 'Truck-Shortbed' where Exact_ID like '%short%'
update cartruckdata set Chassis = 'Truck-Shortbed' where Exact_ID like '%short%'
update cartruckdata set Chassis = 'Truck-Crewcab' where Exact_ID like '%crew%'
update cartruckdata set Chassis = 'Truck-Extendedcab' where Exact_ID like '%extended%'




