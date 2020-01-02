USE Joel
--- CREATE A STORED PROCEDURE

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- create  proc [dbo].[spAlltables]		-- CREATE ONLY USED ONCE


ALTER proc [dbo].[spAlltables]		-- returns integer by default
as
Begin
	select top 1 * from tCustomer
	select top 2 * from Orders
	select top 3 * from Products
end


execute spAlltablesize 11, 14, @ProductName='tennisball'