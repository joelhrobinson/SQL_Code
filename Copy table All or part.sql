	select * from countryList where countryList.name like 'Z%'
		select * from countryList
--- COPY TABLE CONTENTS  from countryList to countryListIndexed

--- create table copy ALL or just PART
select * from countryList
delete from countrylist where country_code = 998

-- this creates table and copies data
select * INTO CountryListIndexed from CountryList;			
select * INTO CountryListZ from CountryList;	

select * from CountryListIndexed 

--- create index called 'cindex'
create UNIQUE INDEX cindex on CountryListIndexed (country_code)
select * from CountryListIndexed 

---			DROP INDEX CountryListIndexed.cindex

---			DROP TABLE CountryListIndexed				---		get rid of the table

