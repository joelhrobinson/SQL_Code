--- print vs results
use Joel

 PRINT 'This is a print statement BEFORE the while loop';
DECLARE contacts_cursor CURSOR FOR
SELECT 'This is a FETCH statement ', stateID, stateName FROM countries;  -- 

OPEN contacts_cursor;					-- start cursor at top
FETCH NEXT FROM contacts_cursor;		-- Load cursor with first row data

--- When FETCH dies, the loop ends
WHILE @@FETCH_STATUS = 0				--- use GLOBAL variable
   BEGIN
      FETCH NEXT FROM contacts_cursor;	--- Fetch next country row data
      PRINT 'This is a print statement inside the while loop';		--- look for messages not results
	 
   END;
PRINT 'Done WHILE LOOP on TechOnTheNet.com';		--- look for messages not results

CLOSE contacts_cursor;					--- POINT Cursor back to top
SELECT 'This is a select statement ', stateID, stateName FROM countries;
DEALLOCATE contacts_cursor;
