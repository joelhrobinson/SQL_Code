use Joel
--- COPY TABLE CONTENTS  from countryList to countryListIndexed

--- create copy of employee table

select * INTO employeeFixed from Employee;			

--- LOOK For bad state codes and Fix

update employeeFixed
SET StateCode  = CASE StateCode
 WHEN 'Ar' THEN 'AR' 
 WHEN 'AL' THEN 'AL' 
 WHEN 'GE' THEN 'NY' 
 WHEN 'FL' THEN 'FL' 
 ELSE 'CO'				-- DEFAULT ACTION
  END

  select * from employeeFixed


	DROP TABLE employeeFixed				---		get rid of the table

