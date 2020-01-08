--- Cursor and While Loop

use Joel
select *  into tempcardata from cartruckdata

declare rowCursor CURSOR for SELECT * from tempcardata
open rowCursor

  FETCH NEXT FROM rowCursor;	--- Fetch next vehicle

declare @mycount int = 1
WHILE @mycount < 4
  BEGIN
    FETCH NEXT FROM rowCursor;	--- Fetch next vehicle
	set @mycount = @mycount + 1
	END


CLOSE    rowCursor
DEALLOCATE rowCursor

