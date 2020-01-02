--- Cursor and While Loop

use Joel
select *  into cardatatemp from cartruckdata

declare vehicleCursor CURSOR for SELECT * from cardatatemp
open vehicleCursor

  FETCH NEXT FROM vehicleCursor;	--- Fetch next vehicle

declare @mycount int = 0
WHILE @mycount < 9
  BEGIN
    FETCH NEXT FROM vehicleCursor;	--- Fetch next vehicle
	set @mycount = @mycount + 1
	END


CLOSE    vehicleCursor
DEALLOCATE vehicleCursor

