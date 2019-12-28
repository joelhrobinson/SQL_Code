--- Cursor and While Loop

use Joel
select * from countries;
DECLARE contacts_cursor CURSOR FOR
SELECT stateID, stateName
FROM countries;

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
