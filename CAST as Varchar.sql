------
use Joel
select * from Products

--- cast float to string
declare @sales float(5)
set @sales = 50
select '@sales Float Variable cast as varchar  $' + cast (@sales as varchar(40) )

Select 'enter a variable: '
declare  @a int = 1 ;
declare  @b int = 2;
select cast (@a as varchar(40) )
