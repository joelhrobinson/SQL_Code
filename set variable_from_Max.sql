/****** SET VS SELECT ******/
use Joel

select top 2 * from wineStatistics
 select max (alcohol) as 'Max Alcohol %'			from winestatistics
 select min (alcohol) as 'Min Alcohol %'			from winestatistics


 --- USE SELECT to set a local variable to a select result
  --- USE SET to set a local variable to a CONSTANT

 DECLARE @maxx		float(5) =999.99
 SET     @maxx = 888.88		
 select @maxx =   MAX (alcohol) from wineStatistics

 DECLARE @minn	DECIMAL(5,2) = 7.77	-- 5-17 bytes Fixed precision and scale numbers
 SET     @minn = -1	
 select @minn =   MIN (alcohol) from wineStatistics
select @maxx as maximul_alcohol, @minn as minimum_alcohol
 

 print 'The CONVERTED MAX alcohol content is: ' + CONVERT(VARCHAR, @maxx)		-- PRINT MESSAGE
 print 'The CONVERTED MIN alcohol content is: ' + CONVERT(VARCHAR, @minn)		-- PRINT MESSAGE



 PRINT 'The MAX % alcohol is is: ' + CAST (@maxx as VARCHAR)		-- PRINT MESSAGE
 PRINT 'The MIN % alcohol is is: ' + CAST (@minn as VARCHAR)		-- PRINT MESSAGE

  PRINT @minn
  PRINT @minn
   print 'The CONVERTED MAX & MIN alcohol content is: '  
		+ CONVERT(VARCHAR, @maxx)		-- PRINT MESSAGE
		+ ' and '
		+ CONVERT(VARCHAR, @minn)
