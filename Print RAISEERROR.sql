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

--- PRINT RESULTS TO MESSAGES USING RAISE ERROR 



---RAISERROR('The decimal  %d alias combinations did not match a record',10,1,@mydecimal) WITH NOWAIT

--- MESSAGE  |  SEVERITY   |  STATE  | ARGUMENT   |  WITH OPTION
RAISERROR('RaiseError: product ID    %i ',10,1,@tproductID)	WITH NOWAIT
RAISERROR('RaiseError: Product name  %s ',10,1,@tname)		WITH NOWAIT
---RAISERROR('RaiseError: Product price 5%f5.1 ',10,1,@tprice)		WITH NOWAIT

