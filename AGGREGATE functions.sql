/****** aggregates ******/
use Joel

SELECT TOP (2) [Wine] ,[Alcohol] ,[Malic_acid] ,[Ash] ,[Acl] ,[Mg] ,[Phenols] ,
	[Flavanoids] ,[Nonflavanoid_phenols] ,[Proanth] ,[Color_int] ,[Hue] ,[OD] ,[Proline]
	FROM [Joel].[dbo].winestatistics

 select avg (alcohol) as 'AVG Alcohol %'			from winestatistics
 select count(*) as '#samples'						from winestatistics
 select sum(Ash) as 'Total Ash Content'				from winestatistics
 select max (alcohol) as 'Max Alcohol %'			from winestatistics
 select min (alcohol) as 'Min Alcohol %'			from winestatistic
