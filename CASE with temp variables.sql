------
use Joel
declare @productid int
set @productID = 6
select @productID as 'product ID'
select country_code from countryList where country_code < 10

select @productid =country_code from countryList where country_code < 10
select @productID as 'product ID'
---- CASE STATEMENT  must run the whole page

declare @typefruit varchar(20)
set @typefruit = 'bread'
select 'type of fruit -', @typefruit
select 
case @productID
	when 1 THEN  'bread'		-- displays in RESULTS
	when 2 THEN 'milk'
	when 3 then 'fruit'
	when 4 then 'butter'
	when 5 then 'oliveoil'
	when 6 then 'apples'
	when 6 then 'apples'
	when 7 then 'nuts'
	when 8 then ('grapes')
	when 9 then 'venison'
	else 'Do not eat it'
	END
	