------
use Joel
--- create some tables to use
select *  into CustomerFull from customer			-- drop table CustomerFull

alter table CustomerFull add gender varchar(1)		-- alter table CustomerFull drop gender
alter table CustomerFull add budget float(8)		-- alter table CustomerFull drop budget
insert into dbo.CustomerFull 	(FirstName, LastName, Age, city, gender, budget) 
		values ('Micah', 'Robinson', 9, 'Meridian', 'M', 33333)
insert into dbo.CustomerFull 	 values ('Donald', 'Duck', 59, 'Anahime', 'M', 3000000)
---------------------------------------------------------------------------------------------------------------------
-- perform a double case statement
select * from CustomerFull


select FirstName, LastName,  Age, City, budget,
CASE   
	when Age > 30 then 
		CASE 
			when budget > 100000		then 'old and rich'
			else 'old and poor'
		END

	when Age < 30 then 
		CASE
			when budget > 100000		then 'young and rich'
			else 'young and poor'
		END
	ELSE	'error'
 END
 from CustomerFull

---------------------------------------------------------------------------
-- ONE CASE
	select * from tcustomer

select FirstName, LastName,  Age, budget,
case   
	when Age > 30 then 'old'
	when Age < 30 then 'young'
	end as 'judgement'
 from CustomerFull

