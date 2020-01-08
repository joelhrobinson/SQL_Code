--- create trigger
use Joel
---  A trigger is a special type of stored procedure that automatically runs when an event occurs in the database server.
-- DML Trigger events are INSERT, UPDATE, or DELETE statements on a table or view. 
-- DDL trigger events are CREATE, ALTER, and DROP statements
-- Logon triggers fire in response to the LOGON event
-- Triggers can be created, altered
--------------------------------------------------------------------
-- CREATE TRIGGER trigger_name 
--ON { table | view } 
--[ WITH ENCRYPTION ] 
--{ 
--    { { FOR | AFTER | INSTEAD OF } { [ INSERT ] [ , ] [ UPDATE ] [ , ] [ DELETE ] } 
--        [ WITH APPEND ] 
--        [ NOT FOR REPLICATION ] 
--        AS 
--        [ { IF UPDATE ( column ) 
--            [ { AND | OR } UPDATE ( column ) ] 
--                [ ...n ] 
--        | IF ( COLUMNS_UPDATED ( ) { bitwise_operator } updated_bitmask ) 
--                { comparison_operator } column_bitmask [ ...n ] 
--        } ] 
--        sql_statement [ ...n ] 
--    } 
--} 


Print 'Begin trigger Test'
CREATE TABLE tempLocations		(tempLocationID int, LocName varchar(100)) 
CREATE TABLE tempLocationHist	(tempLocationID int, ModifiedDate DATETIME)
-------------------------------------------------------------------------------------
INSERT [dbo].tempLocationHist (tempLocationID, ModifiedDate) VALUES (201, getdate()) 
INSERT [dbo].tempLocationHist (tempLocationID, ModifiedDate) VALUES (100, getdate()-100) 
INSERT [dbo].tempLocationHist (tempLocationID, ModifiedDate) VALUES (110, getdate()+100) 

INSERT [dbo].tempLocations (tempLocationID, LocName) VALUES (6, 'Houston') 
INSERT [dbo].tempLocations (tempLocationID, LocName) VALUES (7, 'Dallas') 
INSERT [dbo].tempLocations (tempLocationID, LocName) VALUES (8, 'Denver') 
INSERT [dbo].tempLocations (tempLocationID, LocName) VALUES (9, 'Detroit') 


--		drop table tempLocations;   drop table tempLocationHist;

select * from tempLocations; select * from tempLocationHist;

-------------------------------------------------------------------
-- substitute message for delete a tempLocation
-- CREATE or ALTER TRIGGER

CREATE trigger deleteTrigger on tempLocations	-- 	DROP TRIGGER deleteTrigger
INSTEAD of DELETE
AS
BEGIN
	select 'TRIGGER: INSTEAD Someone tried to delete Detroit in tempLocations table'
	end
-----------------------------------------------------------------
-- AFTER TRIGGER
-----------------------------------------------------------------
CREATE trigger deleteTrigger on tempLocations	-- 	DROP TRIGGER deleteTrigger
AFTER DELETE
AS
BEGIN
	select 'TRIGGER: AFTER Someone tried to delete Detroit in tempLocations table'
	end
---------------------------------------------------------------
--	Test the DELETE Trigger
delete   from tempLocations	where LocName like '%Detroit%'
select * from tempLocations where LocName like '%Detroit%'
select * from tempLocationHist;