-- WHILE Loop 

use Joel

DECLARE @site INT =1;
WHILE @site <= 3
BEGIN
   SELECT 'Result WHILE LOOP ' + 'Loop counter = ' + cast (@site as varchar(40) )
   -- look in messages not results
   SET @site = @site + 1;
   PRINT 'Print Message WHILE LOOP ' + 'Loop counter = ' + cast (@site as varchar(40) )
END;

PRINT 'End of LOOP'; SELECT 'End of LOOP';
GO

