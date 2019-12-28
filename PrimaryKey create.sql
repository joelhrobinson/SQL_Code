-- primary keys >> add and create PRIMARY KEYS
use Joel
create table myPrimaryKey (								--		drop table myPrimaryKey
	myPid		int NOT NULL PRIMARY KEY,				-- any column can be primary key as long as is unique
	myFN_char	char (50) NOT NULL,						-- can make a  name the primary key  (bad idea)
	myLN_varchar varchar (50) NOT NULL,					-- bad idea to make last name primary key
	myage		int ,									-- age is another bad idea
	mysalary	DECIMAL(5,2)							-- decimal wont work, KEY is an integer
	)

	INSERT myPrimaryKey VALUES (1, 'Joel1', 'Robinson', 19, 111.11)	
	INSERT myPrimaryKey VALUES (2, 'Joel2', 'Robinson', 29, 222.22)	
	INSERT myPrimaryKey VALUES (33, 'Joel3', 'Robinson',39, 333.33)	
	INSERT myPrimaryKey VALUES (44, 'Joel4', 'Robinson',49, 444.44)	
	INSERT myPrimaryKey VALUES (55, 'Joel5', 'Robinson',59, 555.55)
	select * from myPrimaryKey
	
	--- cannot insert duplicate primary key
	INSERT myPrimaryKey VALUES (55, 'Joel6', 'Robinson',69, 666.66)

---	HOW TO add a primary key after table is already created
alter table myPrimaryKey add primary key 

