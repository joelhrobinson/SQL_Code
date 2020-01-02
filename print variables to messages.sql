/****** SET VS SELECT ******/
use Joel
print 'begin'

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

-------------=------------------------------------------------------------------------------------
-- display on the RESULTS page
select @maxx as maximum_alcohol, @minn as minimum_alcohol
select @maxx as alcohol from wineStatistics order by alcohol

 --------------------------------------------------------------------------------------------------
 print 'The CONVERT AS VARCHAR MAX alcohol content is: ' + CONVERT(VARCHAR, @maxx)		-- PRINT with CONVERT
 print 'The CONVERT AS VARCHAR MIN alcohol content is: ' + CONVERT(VARCHAR, @minn)		-- PRINT with CONVERT

 PRINT 'The CAST AS VARCHAR MAX % alcohol is is: ' + CAST (@maxx as VARCHAR)					-- PRINT with CAST
 PRINT 'The CAST AS VARCHAR MIN % alcohol is is: ' + CAST (@minn as VARCHAR)					-- PRINT with CAST

  -------------------------------------------------------------------------------------------------
  -- print not formatted, then formatted
  PRINT @minn
  PRINT @minn
   print 'The CONVERTED MAX & MIN alcohol content is: '  
		+ CONVERT(VARCHAR, @maxx)		-- PRINT MESSAGE
		+ ' and '
		+ CONVERT(VARCHAR, @minn)
