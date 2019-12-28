use Joel
--- https://www.youtube.com/watch?v=kx6m8ABU4ZE
	
--- type of languages
-- DDL	Data definition language
	create table eventcalendar (
		eventID int not null PRIMARY KEY, 
		mytime smalldatetime not null,
		description varchar(50))			-- create table

--	Alter table eventcalendar Add  PRIMARY KEY (eventID)			--  not needed if specify primary key when creating table

-- REGULAR INSERT
	select * from eventcalendar;
	insert into dbo.eventcalendar 	(eventID, mytime, description) values ( 1, Getdate(),  'Friday:   Learn SQL')
	insert into dbo.eventcalendar 	(eventID, mytime, description) values ( 2, Getdate(),  'Saturday: Ski, SQL+Python')
	insert into dbo.eventcalendar 	(eventID, mytime, description) values ( 3, Getdate(),  'Sunday:   Church, Learn PEGA')
	insert into dbo.eventcalendar 	(eventID, mytime, description) values ( 4, Getdate(),  'Monday:   Ski, SQL + Python')
--		drop table eventcalendar

--	BULK INSERT points to a text file as input and target table as output
--- SAMPLES.TXT IS NOT NOT NOT a CSV file
	CREATE TABLE ImportedFileTable( textvalue varchar(80))

	BULK INSERT ImportedFileTable FROM 'C:\temp\samples.txt'
	select textvalue from ImportedFileTable
--		drop table ImportedFileTable
---------------------------------------------------------
-- sample data
--Row 1 sample input
--Row 2 sample input
--Row 3 sample input
--Row 4 sample input
--Row 5 sample input
