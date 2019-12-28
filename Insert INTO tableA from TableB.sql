-- select into tableA from tableB

use Joel
CREATE TABLE tableA (FirstName varchar(50), LastName Varchar(50), age int, weight float (5)) -- drop table tableA
CREATE TABLE tableB (FirstName varchar(50), LastName Varchar(50), age int, weight float (5)) -- drop table tableB

-- TRADITIONAL INSERT INTO from list ONE ROW AT A TIME
select * from tableA;	select * from tableB
insert into dbo.tableA 	(FirstName, LastName, age, weight) values 
		('Lefty', 'Lightweight', 12, 95.5),
		('Suzzy', 'Smith', 42, 125.5),
		('Burns', 'Robert', 165, 144.8),
		('Robert', 'Burns', 136, 177.4)

-- TRADITIONAL INSERT INTO from list TWO ROWS AT A TIME
select * from tableA;	select * from tableB	-- with semicolon
insert into dbo.tableA 	(FirstName, LastName, age, weight) values ('dacic', 'Snezjana', 55, 145.5)
insert into dbo.tableA 	(FirstName, LastName, age, weight) values ('Robinson', 'Joel', 66, 145.8)


-- USE "SELECT *" to INSERT INTO TABLE B FROM TABLE A
insert into dbo.tableB 	(FirstName, LastName, age, weight) 	select * from tableA where LastName = 'Burns'

-- USE "SELECT Value" to INSERT JUST ONE FIELD INTO TABLE B FROM TABLE A
insert into dbo.tableB 	( weight) 	select weight from tableA where weight < 100
DELETE FROM dbo.tableA  where weight >200; DELETE FROM dbo.tableB  where weight >200
DELETE FROM dbo.tableB  where age IS NULL

select * from tableA;	select * from tableB	-- with semicolon