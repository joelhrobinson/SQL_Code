--- create trigger
use Joel
---  A trigger is a special type of stored procedure that automatically runs when an event occurs in the database server.
-- DML Trigger events are INSERT, UPDATE, or DELETE statements on a table or view. 
-- DDL trigger events are CREATE, ALTER, and DROP statements
-- Logon triggers fire in response to the LOGON event
-- Triggers can be created, altered


CREATE TABLE Locations (LocationID int, LocName varchar(100)) 
CREATE TABLE LocationHist (LocationID int, ModifiedDate DATETIME)
INSERT [dbo].LocationHist (LocationID, ModifiedDate) VALUES (201, getdate()) 
INSERT [dbo].LocationHist (LocationID, ModifiedDate) VALUES (100, getdate()-100) 
INSERT [dbo].LocationHist (LocationID, ModifiedDate) VALUES (110, getdate()+100) 

INSERT [dbo].Locations (LocationID, LocName) VALUES (6, 'Houston') 
INSERT [dbo].Locations (LocationID, LocName) VALUES (7, 'Dallas') 
INSERT [dbo].Locations (LocationID, LocName) VALUES (8, 'Denver') 
INSERT [dbo].Locations (LocationID, LocName) VALUES (9, 'Detroit') 
INSERT [dbo].Locations (LocationID, LocName) VALUES (11, 'Melbourne') 
drop table Locations;    drop table LocationHist;

select * from Locations; 
select * from LocationHist;

--    CREATE OR ALTER TRIGGER 
CREATE  TRIGGER updatetrigger ON Locations
FOR UPDATE 
AS 
BEGIN
	select 'TRIGGER: Someone tried to update Locations table' as [message]
END

ENABLE TRIGGER ALL ON Locations		--- enable all triggers
DISABLE TRIGGER updatetrigger
DROP    TRIGGER updatetrigger
-------------------------------------------------------------------------------------
Print 'Begin trigger Test'
UPDATE LocationHist set ModifiedDate = getdate()+ LocationID where ModifiedDate > getdate()
UPDATE Locations     set LocName = 'NY' where LocName = 'Meridian'

select * from locations; select * from LocationHist;
