--- fetch with no cursor

use Joel
select *  into tempcardata from cartruckdata	-- drop table tempcardata


--- FETCH WITH NO CURSOR

select * from tempcardata
order by make
offset 1000 rows
Fetch next 10 rows only



