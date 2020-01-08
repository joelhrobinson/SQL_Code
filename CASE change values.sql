use Joel
--- COPY TABLE CONTENTS  from countryList to countryListIndexed

--- create copy of employee table

select * INTO tempEmployee from Employee;		-- 	DROP TABLE tempEmployee				---		get rid of the table 	

--- LOOK For bad state codes and Fix

update tempEmployee
SET StateCode  = CASE StateCode
 WHEN 'Ar' THEN 'AR' 
 WHEN 'AL' THEN 'AL' 
 WHEN 'GE' THEN 'NY' 
 WHEN 'FL' THEN 'FL' 
 ELSE 'CO'				-- DEFAULT ACTION
  END

  select * from tempEmployee

  
	DROP TABLE tempEmployee				---		get rid of the table

