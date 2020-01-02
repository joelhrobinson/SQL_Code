	select * from countryList where countryList.name like 'Z%'
		select * from countryList
--- CREATE CASCADED VIEW

--- Temporary views are not allowed.
create VIEW vcountry AS 
	select * from countryList where countryList.name like 'Z%' 
	with CHECK OPTION		-- set the WHERE clause as a CONDITION OPTION for future inserts

	insert into vcountry values ('Zanidu', 'ZZ', 998)	--- This insert is accepted because it satisfies the condition
	insert into vcountry values ('apple', 'AA', 999)	-- this insert is rejected, must start with Z

--- Temporary views are not allowed.
	select * from vcountry
	DROP VIEW vcountry				---		get rid of the view