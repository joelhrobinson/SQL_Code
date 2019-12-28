--- data types
--- C:\Users\JOEL\Documents\SQL Server Management Studio

use Joel


Create table DataTypes (

	mytime		time,			-- Store a time only to an accuracy of 100 nanoseconds
	mydateabs	date,			-- Store a date only. From January 1, 0001 to December 31, 9999
	mydatetime	datetime,		-- From January 1, 1753 to December 31, 9999 with an accuracy of 3.33 milliseconds 	8 bytes
	mydatetime2	datetime2,		-- From January 1, 0001 to December 31, 9999 with an accuracy of 100 nanoseconds
	mydatesmall smalldatetime, 	-- From January 1, 1900 to June 6, 2079 with an accuracy of 1 minute
	myoffset	datetimeoffset,	-- same as datetime2 + offset
--	myyear		year,			-- not supported

--- strings
	mychar		char (50),		-- fixed string length    0-255, default = 1
	myvarchar	varchar (50),	-- 2 bytes + # char variable string length 0-65535
--	myblob		blob (50),		-- not supported
	mytext	    ntext,			-- char string size 2 GIG
	myimage		IMAGE,			-- replaces BLOB

--- numbers
	mybit		bit,			-- can be one or zero
	mybinary	binary(8),		-- binary byte strings, # columns default = 1
	myint		int,			-- 4 bytes Allows whole numbers +/- -2,147,483,648 and 2,147,483,647 
	mybigint	bigint,			-- 8 bytes Allows whole numbers +/- -9,223,372,036,854,775,808
--	mybool		BOOLEAN			-- no longer supported, use BIT
--	myfloat2	FLOAT(5,2),		-- no longer supported
	myfloat1	FLOAT(3),		-- 4 or 8 bytes
	mydecimal	DECIMAL(5,2),	-- 5-17 bytes Fixed precision and scale numbers. 
--	mydouble	DOUBLE (5,2),	-- no longer supported
	mynumeric	NUMERIC (18,2),	-- 5-17 bytes default is 18 char max is 38

--- mix numbers and characters
	mymoney		MONEY,			-- 8 bytes Monetary data +/- 922,337,203,685,477.5808 
	myreal		REAL			-- 4 bytes	Floating precision number data from -3.40E + 38 to 3.40E + 38
--	mycursor	CURSOR			-- obsolete Stores a reference to a cursor used for database operations
	)










