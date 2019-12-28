use Joel


Create table DatesTimes (
	mytime		time,			-- Store a time only to an accuracy of 100 nanoseconds
	mydateabs	date,			-- Store a date only. From January 1, 0001 to December 31, 9999
	mydatetime	datetime,		-- From January 1, 1753 to December 31, 9999 with an accuracy of 3.33 milliseconds 	8 bytes
	mydatetime2	datetime2,		-- From January 1, 0001 to December 31, 9999 with an accuracy of 100 nanoseconds
	mydatesmall smalldatetime, 	-- From January 1, 1900 to June 6, 2079 with an accuracy of 1 minute
	myoffset	datetimeoffset	-- same as datetime2 + offset
	)

	insert into DatesTimes (
	mytime, mydateabs, mydatetime, mydatetime2, mydatesmall, myoffset)
	values
	(getdate(), getdate(), getdate(), getdate(), getdate(), getdate() )
	select * from DatesTimes

	------------------------------------------------------------------------
	-- EVENTS
	select * from eventcalendar -- uses smalldatetime


	insert into dbo.eventcalendar 	(eventID, mytime, description) values ( 1, Getdate(),  'Friday:   Learn SQL')
	insert into dbo.eventcalendar 	(eventID, mytime, description) values ( 2, Getdate(),  'Saturday: Learn SQL+Python')

	
	select * from eventcalendar -- uses smalldatetime
