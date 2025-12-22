--Manipulating Data

--INSERT
Use Company
Go

Insert Into tableEmployees
(EmployeeID, EmployeeName, Phone, Age, DepID)
Values(1002, 'Steve', 44885613, 19, 4)


--UPDATE
Use Company
Go

Update tableEmployees
SET EmployeeName='John', Phone= 54723566
WHERE EmployeeID=1002

--DELETE
Use Company
GO

DELETE tableEmployees
WHERE EmployeeID = 1001