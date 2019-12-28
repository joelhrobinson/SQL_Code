--- Cursor and While Loop

use Joel
select * from countries;
DECLARE contacts_cursor CURSOR FOR
SELECT stateID, stateName
FROM countries;

OPEN contacts_cursor;					-- start cursor at top
FETCH NEXT FROM contacts_cursor;


--- When FETCH dies, the loop ends
WHILE @@FETCH_STATUS = 0				--- use GLOBAL variable
   BEGIN
      FETCH NEXT FROM contacts_cursor;	--- Fetch next country
     PRINT 'Inside WHILE LOOP on TechOnTheNet.com';		--- look for messages not results
   END;
PRINT 'Done WHILE LOOP on TechOnTheNet.com';		--- look for messages not results

CLOSE contacts_cursor;					--- PUT Cursor back to top
DEALLOCATE contacts_cursor;
