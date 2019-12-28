-- WHILE Loop 

use Joel
DECLARE @site_value INT =0;

WHILE @site_value <= 10
BEGIN
   PRINT 'Inside WHILE LOOP on www.TechOnTheNet.com';	-- look in messages not results
   SET @site_value = @site_value + 1;
END;

PRINT 'Outside WHILE LOOP on www.TechOnTheNet.com';
GO



