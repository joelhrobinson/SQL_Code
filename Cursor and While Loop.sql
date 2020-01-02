--- Cursor and While Loop

use Joel
select * from countries;	--- only 5 countries in the list
--- create a cursor
DECLARE contacts_cursor CURSOR FOR  SELECT stateID, stateName FROM countries;

-- open cursor which is a pointer into table countries
OPEN contacts_cursor;
FETCH NEXT FROM contacts_cursor;

WHILE @@FETCH_STATUS = 0				--- When FETCH dies, the loop ends
   BEGIN
      FETCH NEXT FROM contacts_cursor;	--- Fetch next country
     PRINT 'Inside WHILE LOOP on TechOnTheNet.com';
   END;
PRINT 'Done WHILE LOOP on TechOnTheNet.com';

CLOSE contacts_cursor;
DEALLOCATE contacts_cursor;

select *  into cardatatemp from cartruckdata

declare vehicleCursor CURSOR for SELECT make, model from cardatatemp
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

