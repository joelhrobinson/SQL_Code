USE Joel
--- CREATE A STORED PROCEDURE

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[spAlltables]		-- returns integer by default
as
Begin
	select top 3 * from tCustomer
	select top 3 * from Orders
	select top 3 * from Products
end
