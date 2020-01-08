USE Joel
--- CREATE A STORED PROCEDURE

-- create  proc [dbo].[spAlltables]		-- CREATE ONLY USED ONCE
ALTER proc [dbo].[spAlltables]		-- NO PARAMETERS
as
Begin
	select top 1 * from tCustomer
	select top 2 * from Orders
	select top 3 * from Products
end


execute spAlltables