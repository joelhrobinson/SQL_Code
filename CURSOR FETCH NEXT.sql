--- Cursor and While Loop

use Joel
select *  into tempcardata from cartruckdata

declare vehicleCursor CURSOR for SELECT * from tempcardata
open vehicleCursor

  FETCH NEXT FROM vehicleCursor;	--- Fetch next vehicle


declare @mycount int = 1
WHILE @mycount < 4
  BEGIN
    FETCH NEXT FROM vehicleCursor;	--- Fetch next vehicle
	set @mycount = @mycount + 1
	END


CLOSE    vehicleCursor
DEALLOCATE vehicleCursor

