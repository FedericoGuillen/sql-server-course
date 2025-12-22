--Retrieving Data

--
SELECT TOP (1000) [EmployeeID]
      ,[EmployeeName]
      ,[Phone]
      ,[Age]
      ,[DepID]
  FROM [Company].[dbo].[tableEmployees]

--AS
USE Company
GO

SELECT EmployeeName AS 'EMPLOYEE NAME', Phone AS PHONE, Age AS AGE
FROM tableEmployees AS Employee

--
USE AdventureWorks2019
GO

SELECT * 
FROM Person.Person
WHERE FirstName = 'Terri'

--SQL COMPARISON OPERATORS --> =, >, <, >=, <=, <>
--SQL LOGIAL OPERATORS --> AND, OR, BETWEEN, IN, EXIST

USE AdventureWorks2019
GO

SELECT * 
FROM Person.Person
WHERE BusinessEntityID IN (1,2,5)

-------------RESTRICT AND SORTING DATA--------------
--DISTINCT
USE AdventureWorks2019
GO

SELECT DISTINCT PersonType, FirstName 
FROM Person.Person

--ORDER BY

--Ascending Sorting
SELECT FirstName, MiddleName, LastName
FROM Person.Person ORDER BY FirstName ASC

--Descending Sorting
SELECT FirstName, MiddleName, LastName
FROM Person.Person ORDER BY FirstName DESC

--GROUP BY
SELECT Shelf,SUM(Quantity) AS Quantity, SUM(Bin) AS Bin
FROM Production.ProductInventory
GROUP BY Shelf
ORDER BY Shelf

--Having Clause
SELECT Shelf,SUM(Quantity) AS Quantity, SUM(Bin) AS Bin
FROM Production.ProductInventory
GROUP BY Shelf
HAVING Shelf = 'A'
ORDER BY Shelf

