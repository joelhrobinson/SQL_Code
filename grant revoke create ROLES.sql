use Joel
--- https://www.youtube.com/watch?v=kx6m8ABU4ZE
	
-- DCL	Data control language
-- controls access to data and security
	CREATE ROLE testing;					-- create a new role name
	GRANT CREATE TABLE, DELETE to testing;	-- give testing a permissionGRANT EXECUTE, DELETE, UPDATE to user = 'Jason';		
	REVOKE DELETE from testing;				-- remove permission
	REVOKE CREATE TABLE from testing;		-- remove permission 
--  EXECUTE AS user = 'joelhrobinson';		-- FAILS
	REVERT;									-- revert only applies to EXECUTE AS
	DROP ROLE testing;						-- kill the role

	----------------------------------------
	-- Display all users
	SELECT * FROM sys.database_principals


