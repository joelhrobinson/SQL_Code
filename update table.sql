-- select into tableA from tableB

use Joel
CREATE TABLE tableM (FirstName varchar(50), LastName Varchar(50), age int, weight float (5), MaritalStatus char(2)) -- drop table tableM


-- TRADITIONAL INSERT INTO from list ONE ROW AT A TIME
select * from tableM;	
insert into dbo.tableM 	(FirstName, LastName, age, weight, MaritalStatus) values 
		('Julia', 'Roberts', 101, 133.4, '?'),
		('Lefty', 'Lightweight', 12, 66.5, 'M'),
		('Suzzy', 'Smith', 23, 77.5, 'D'),
		('Bunny', 'Robert', 54, 88.8, 'W'),
		('Robert', 'Burns', 66, 99.4, 'S')
-- UPDATE TABLE
UPDATE tableM SET MaritalStatus = 'N' where Firstname = 'Burns'
UPDATE tableM SET MaritalStatus = 'E'where LastName = 'Roberts'

;	select * from tableM	-- with semicolon


