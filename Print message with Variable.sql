------
use Joel

--- create local variable, assign value from select
--- NOTE THE LAST VALUE IS THE ONE THAT STICKS

select country_code from countryList where country_code < 10
declare @tproductid int; 
DECLARE @tprice	DECIMAL(5,1)
DEClare @tname  varchar(50)

select @tproductid = country_code from countryList where country_code < 10
select @tprice = price from products where price < 99
select @tname = pname from products where price < 99

---- DISPLAY results
select @tproductID as 'product ID', @tprice as 'Price', @tname as 'Name'			-- display RESULTS

--- PRINT RESULTS TO MESSAGES
PRINT 'The CAST productID    is: ' + CAST (@tproductID as VARCHAR)  -- PRINT MESSAGE
PRINT 'The CAST name         is: ' + CAST (@tname as VARCHAR)		-- PRINT MESSAGE
PRINT 'The CONVERT price     is: ' + CAST (@tprice as VARCHAR)		-- PRINT MESSAGE

print 'The CONVERT productID is: ' + CONVERT(VARCHAR, @tproductID)
print 'The CONVERT name      is: ' + CONVERT(VARCHAR, @tname)
print 'The CONVERT price     is: ' + CONVERT(VARCHAR, @tprice)