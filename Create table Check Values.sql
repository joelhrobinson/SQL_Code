-- CHECK values to be entered into table 

use Joel
CREATE TABLE tableC (FirstName varchar(50), LastName Varchar(50), 
	age int, weight float (5), MaritalStatus char(2),
	CHECK (age < 1000 AND weight > 0) )

	-- ADD Date of Birth to the table
	alter table tableC add DOB datetime 
	-- drop table tableC
select getdate()

-- TRADITIONAL INSERT INTO from list ONE ROW AT A TIME
select * from tableC;	
insert into dbo.tableC 	(FirstName, LastName, age, weight, MaritalStatus     ) values (NULL, NULL, 99, 133.4, '?')
insert into dbo.tableC 	(FirstName, LastName, age, weight, MaritalStatus, DOB) values ( 'Robert', 'Lightweight', 12, 66.5, 'M', '1877-02-14') 
insert into dbo.tableC 	(FirstName, LastName, age, weight, MaritalStatus) values ('Robert', 'Burns', 66, 99.4, 'X')

insert into dbo.tableC 	(FirstName, LastName, age, weight, MaritalStatus, DOB) values ('Adam', 'Eve', 11, 99.4, 'M', getdate())

insert into dbo.tableC 	(FirstName, LastName, age, weight, MaritalStatus, DOB) values ('Noah', 'Arkbuilder', 66, 999.4, 'X', '2000-02-14') 
insert into dbo.tableC 	(FirstName, LastName, age, weight, MaritalStatus, DOB) values ('Abram', 'Abraham', 66, NULL,'Z', '1953-02-14 12:33:22.001') 
insert into dbo.tableC 	(FirstName, LastName, age, weight, MaritalStatus, DOB) values ('Melchizedek', 'Israel', NULL, 222.4, NULL,'1753-02-14 01:01:22.001') 
insert into dbo.tableC 	(FirstName, LastName, age, weight, MaritalStatus, DOB) values ('Abram', 'Abraham', NULL, NULL,'Z', '1953-02-14 12:33:22.001') 

-- THESE VIOLATE THE CHECK FLAGS SET UP AT TABLE CREATION
insert into dbo.tableC 	(FirstName, LastName, age, weight, MaritalStatus) values ('Suzzy', 'Smith', 23, 177.5, 'D')
insert into dbo.tableC 	(FirstName, LastName, age, weight, MaritalStatus) values ('Bunny', 'Robert', 154, 0, 'W')


-- UPDATE TABLE
UPDATE tableC SET MaritalStatus = 'N' where Firstname = 'Suzzy'
UPDATE tableC SET MaritalStatus = 'S'where LastName = 'Robert'
UPDATE tableC set DOB =    '1987-01-12' where FirstName = 'Abram'
select * from tableC where DOB IS NULL
while  (select DOB from tableC ISNULL)
	UPDATE tableC set DOB = '1666-01-02' 




--	delete from tableC where age > 100.0	-- delete specific rows where condition is true
--	delete from tableC						-- delete all data
select * from tableC;
--	truncate table tableC

