use Joel
--- https://www.youtube.com/watch?v=kx6m8ABU4ZE
	
--- type of languages
-- DDL	Data definition language
	CREATE TABLE ImportedFileTable( textvalue varchar(80)); 
	select * from ImportedFileTable
	create table eventcalendar (eventID int not null, mytime	smalldatetime not null)			-- create table
	Alter table eventcalendar Add  PRIMARY KEY (eventID)			-- add column
	Alter table eventcalendar add description varchar(50) 		-- add column
--	Drop table eventcalendar;		-- drop table mycalendar
	Truncate Table eventcalendar;
--
-- DML	Data manipulation language
	select * from eventcalendar;
	insert into dbo.eventcalendar 	(eventID, mytime, description) values ( 1, Getdate(),  'Friday:   Learn SQL')
	insert into dbo.eventcalendar 	(eventID, mytime, description) values ( 2, Getdate(),  'Saturday: Learn SQL+Python')
	insert into dbo.eventcalendar 	(eventID, mytime, description) values ( 3, Getdate(),  'Saturday: Learn PEGA')
	UPDATE dbo.eventcalendar set mytime = GetDate() where eventID=1
	DELETE from eventcalendar where eventID =3
	BULK INSERT ImportedFileTable FROM 'C:\temp\samples.txt' --BULK INSERT points to a text file as input and target table as output
--	MERGE target using x=y when matched then update set target when not matched by target then insert target when not matched by source delete

-- DCL	Data control language
-- controls access to data and security
	CREATE ROLE testing;					-- create a new role name
	GRANT CREATE TABLE, DELETE to testing;	-- give testing a permissionGRANT EXECUTE, DELETE, UPDATE to user = 'Jason';		
	REVOKE DELETE from testing;				-- remove permission
	REVOKE CREATE TABLE from testing;		-- remove permission 
--  EXECUTE AS user = 'joelhrobinson';		-- FAILS
	REVERT;									-- revert only applies to EXECUTE AS
	DROP ROLE testing;						-- kill the role
	SELECT * FROM sys.database_principals
---------------------------------------------------------------------------
-- TCL	Transaction control language (group statements)
BEGIN TRANSACTION; 
			;
SAVE TRANSACTION city2						--- make a roll back point
			;
SAVE TRANSACTION city3						--- make a roll back point
			;
ROLLBACK transaction city2					--- go back to state at "city2"
COMMIT TRANSACTION;										--- commit flushes out the savepoints

	

