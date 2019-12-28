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
	insert tblEmployees VALUES (111, 'Robinson', 'Joel', 'Henry', '5019 W. Redbridge', 'Boise', 'ID', 1111.11)

	select * from tblEmployees;


	ALTER TABLE tblEmployees ADD email varchar(100);		--- ADD COLUMN
	ALTER TABLE tblEmployees DROP COLUMN email			--- DROP COLUMN
	   
	ALTER TABLE tblEmployees ADD EmployeeID int; 
	ALTER TABLE tblEmployees DROP COLUMN EmployeeID			--- DROP COLUMN

	DROP TABLE tblEmployees