------
use Joel

--- create local variable, assign value from select
--- NOTE THE LAST VALUE IS THE ONE THAT STICKS
---- When assigning from a query that returns more than one value, 
---- SELECT will assign the last value returned by the query 
---- and hide the fact that the query returned more than one row. 

select country_code from countryList where country_code < 10
declare @tproductid int; 
DECLARE @tprice	DECIMAL(5,1)
DEClare @tname  varchar(50)

-- SET temp variable to last result of a select statement

select @tproductid = country_code from countryList where country_code < 10
select @tprice = price from products where price < 99
select @tname = pname from products where price < 99

---- DISPLAY results
select @tproductID as 'product ID', @tprice as 'Price', @tname as 'Name'			-- display RESULTS

