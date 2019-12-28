--- import list of countries from a TXT file

use Joel
--	COUNTRIES.TXT IS NOT NOT NOT a CSV FILE !!!!!!!!!!!!!!!!

CREATE TABLE [dbo].[Country](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](100) NOT NULL
) ON [PRIMARY]

insert Country values ('russia')

	BULK INSERT Country FROM 'C:\temp\country.txt'
	select textvalue from ImportedFileTable
--		drop table ImportedFileTable


select * from countries
select * from country