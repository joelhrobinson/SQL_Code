USE Joel


-- Create proc [dbo].[spAlltablesize]	 -- returns integer by default accepts an integer


alter proc [dbo].[spAlltablesize]	 -- returns integer by default accepts an integer
	(
	@age as INT =666, 
	@prodID as Int =666,
	@productName as varchar(50) ='void'
	)	
as
Begin
	select  * from tCustomer where age < @age
	select  * from Orders    where customerID < @prodID
	select  * from Products  where pname like '%'+ @productName +'%'  -- close to right name

	end
	

execute spAlltablesize 4, 4, @ProductName='tennisball'