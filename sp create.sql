USE Joel
--  CREATE proc [dbo].[spAlltables]	 
ALTER proc [dbo].[spAlltables]		-- returns integer by default
as
Begin
	select top 3 * from tCustomer
	select top 3 * from Orders
	select top 3 * from Products
end
