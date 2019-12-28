use Joel
-- comment
create table tblEmployees (
	EmployeeID	int,
	LastName	varchar(50),
	FirstName	varchar(50),
	MiddleName	varchar(50),
	Address		varchar(50),
	City		varchar(50),
	State		varchar(2),
	PayRate		float
	)
	select * from tblEmployees;

	create index ID_Employees
	on tblEmployees (LastName, FirstName, MiddleName);

	select * from tblEmployees;
	DROP TABLE tblEmployees

	ALTER TABLE tblEmployees ADD email varchar(100);
	ALTER TABLE tblEmployees ADD EmployeeID int; 