--- create trigger
use Joel
---  A trigger is a special type of stored procedure that automatically runs when an event occurs in the database server.
-- DML Trigger events are INSERT, UPDATE, or DELETE statements on a table or view. 
-- DDL trigger events are CREATE, ALTER, and DROP statements
-- Logon triggers fire in response to the LOGON event
-- Triggers can be created, altered

	Print 'Begin trigger Test'
CREATE TABLE Locations (LocationID int, LocName varchar(100)) 
CREATE TABLE LocationHist (LocationID int, ModifiedDate DATETIME)
-------------------------------------------------------------------------------------
INSERT [dbo].LocationHist (LocationID, ModifiedDate) VALUES (201, getdate()) 
INSERT [dbo].LocationHist (LocationID, ModifiedDate) VALUES (100, getdate()-100) 
INSERT [dbo].LocationHist (LocationID, ModifiedDate) VALUES (110, getdate()+100) 


INSERT [dbo].Locations (LocationID, LocName) VALUES (6, 'Houston') 
INSERT [dbo].Locations (LocationID, LocName) VALUES (7, 'Dallas') 
INSERT [dbo].Locations (LocationID, LocName) VALUES (8, 'Denver') 
INSERT [dbo].Locations (LocationID, LocName) VALUES (9, 'Detroit') 


drop table Locations;    drop table LocationHist;

select * from Locations; select * from LocationHist;

-------------------------------------------------------------------
-- substitute message for delete a location
-- CREATE or ALTER TRIGGER
CREATE trigger donotdelete on Locations

--		ALTER trigger donotdelete on Locations
INSTEAD of DELETE
AS
BEGIN
	select 'TRIGGER: INSTEAD Someone tried to delete Detroit in Locations table'
	INSERT [dbo].Locations (LocationID, LocName) VALUES (9, 'Melbourne')
	select * from Locations
	end
------------------------------------------------------------------
DROP TRIGGER donotdelete
---------------------------------------------------------------
--	Test the DELETE Trigger
delete from Locations	where LocName like '%Detroit%'
select * from locations where LocName like '%Detroit%'
select * from LocationHist;