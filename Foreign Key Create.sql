-- FOREIGN keys >> add and create FOREIGN KEYS
use Joel
	CREATE TABLE TempLang				--	drop table TempLang
 (  LangID int PRIMARY KEY,					--define primary key
	LangName varchar (50) NOT NULL 
	UNIQUE (LangID, LangName))
		insert TempLang VALUES (1,'C++')
		insert TempLang VALUES (2, 'c#')
		insert TempLang VALUES (3, 'Python')
		insert TempLang VALUES (4, 'SQL')
		select * from TempLang

	CREATE TABLE TempDepartment				-- drop table TempDepartment
 (  DeptID int PRIMARY KEY,					--define primary key
	DeptName varchar (50) NOT NULL )
		insert TempDepartment VALUES (101, 'Payroll')
		insert TempDepartment VALUES (202, 'HR')
		insert TempDepartment VALUES (303, 'R&D')
		insert TempDepartment VALUES (404, 'DaaS')
		select * from TempDepartment
--------------------------------------------------------------------------------
	CREATE TABLE TempProgrammers			--		drop table TempProgrammers
 (  PgmrID int PRIMARY KEY,					--		define primary key
	PgmrName varchar (50) NOT NULL, 
	PgmrDept int FOREIGN KEY REFERENCES TempDepartment(DeptID),	-- add Foreign key when create table 
	PgmrLang int)
		insert TempProgrammers VALUES (1001, 'Joel Robinson',		101, 1)
		insert TempProgrammers VALUES (2002, 'Jonathan Robinson',	101, 2)
		insert TempProgrammers VALUES (3003, 'Andrew Robinson',		303, 1)
		insert TempProgrammers VALUES (4004, 'Zeralina Robinson',	202, 3)
		select * from TempProgrammers
--------------------------------------------------------------------
---	add a FOREIGN key after table is already created
alter table TempProgrammers    add foreign key (PgmrLang) references TempLang(LangID);
Select * from TempProgrammers
Select * from TempDepartment
Select * from TempLang

drop table TempProgrammers
drop table TempDepartment
drop table TempLang
