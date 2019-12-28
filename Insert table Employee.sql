USE JOEL
 
CREATE TABLE dbo.Employee 
( 
	EmployeeID INT IDENTITY PRIMARY KEY, 
	EmployeeName VARCHAR(100) NOT NULL, 
	Gender VARCHAR(1) NOT NULL, 
	StateCode VARCHAR(20) NOT NULL, 
	Salary money NOT NULL, ) 
 
SET IDENTITY_INSERT [dbo].[Employee] ON 
 
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [Gender], [StateCode], [Salary]) VALUES (201, N'Jerome', N'M', N'FL', 83000.0000) 
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [Gender], [StateCode], [Salary]) VALUES (202, N'Ray', N'M', N'AL', 88000.0000) 
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [Gender], [StateCode], [Salary]) VALUES (203, N'Stella', N'F', N'AL', 76000.0000) 
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [Gender], [StateCode], [Salary]) VALUES (204, N'Gilbert', N'M', N'Ar', 42000.0000) 
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [Gender], [StateCode], [Salary]) VALUES (205, N'Edward', N'M', N'FL', 93000.0000) 
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [Gender], [StateCode], [Salary]) VALUES (206, N'Ernest', N'F', N'Al', 64000.0000) 
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [Gender], [StateCode], [Salary]) VALUES (207, N'Jorge', N'F', N'IN', 75000.0000) 
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [Gender], [StateCode], [Salary]) VALUES (208, N'Nicholas', N'F', N'Ge', 71000.0000) 
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [Gender], [StateCode], [Salary]) VALUES (209, N'Lawrence', N'M', N'IN', 95000.0000) 
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [Gender], [StateCode], [Salary]) VALUES (210, N'Salvador', N'M', N'Co', 75000.0000)
SET IDENTITY_INSERT [dbo].[Employee] OFF
select * from employee