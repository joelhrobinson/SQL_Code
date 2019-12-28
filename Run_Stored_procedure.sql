use Joel

--- execute NO PARAMS
execute spAlltables

--- execute the stored procedure 
execute spAlltablesize 11, 14, @ProductName='tennisball'

--- execute the stored procedure TWO PARMS
execute spAlltablesize @age=11, @prodID=22,  @ProductName='pingpongball'

--- execute the stored procedure THREE PARMS
execute spAlltablesize @age=11, @prodID=22, @ProductName ='bat'
execute spAlltablesize @age=11, @prodID=22   -- third parameter is defaulted / optional
--- remove a stored procedure
--- drop procedure spAlltables


