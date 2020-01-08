--- fetch with no cursor

use Joel
select *  into tempcardata from cartruckdata		--		drop table tempcardata

--- FETCH requires an ordered set of data, since SQL is not ordered by default
select * from tempcardata
order by make
offset 1000 rows
Fetch next 10 rows only



