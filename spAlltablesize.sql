USE Joel
GO
alter proc [dbo].[spAlltablesize]	 -- returns integer by default accepts an integer
	(
	@age as INT =10, 
	@prodID as Int =1,
	@productName as varchar(50) ='bats'
	)	
as
Begin
	select * from tCustomer where age < @age
	select  * from Products  where pname like '%'+ @productName +'%'  -- close to right name
	select  * from Orders    where customerID < @prodID

	
	end
