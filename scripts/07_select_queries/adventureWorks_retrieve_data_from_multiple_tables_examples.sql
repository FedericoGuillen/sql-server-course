--Retrieving Data From Multiple Tables(JOINS)
USE Company
GO

SELECT EmployeeID, EmployeeName, DepartmentName
FROM tableEmployees 
JOIN tableDepartments
ON tableEmployees.DepID=tableDepartments.DepID

--JOIN
USE AdventureWorks2019
GO

SELECT FirstName,LastName,EmailAddress
FROM Person.Person
JOIN Person.EmailAddress
ON Person.BusinessEntityID=EmailAddress.BusinessEntityID

--LEFT(OUTER) JOIN
SELECT Name,SalesOrderDetailID 
FROM Production.Product as P
LEFT JOIN Sales.SalesOrderDetail as S
ON P.ProductID=S.ProductID
WHERE SalesOrderID IS NULL

--RIGHT(OUTER) JOIN
SELECT Name,SalesOrderDetailID 
FROM Production.Product as P
RIGHT JOIN Sales.SalesOrderDetail as S
ON P.ProductID=S.ProductID
ORDER BY SalesOrderDetailID ASC

--FULL(OUTER) JOIN
SELECT Name,SalesOrderDetailID 
FROM Production.Product as P
FULL JOIN Sales.SalesOrderDetail as S
ON P.ProductID=S.ProductID

--SELF JOIN (WITH ITSELF) - Find products with the same list price
SELECT P1.Name, P2.Name, P1.ListPrice
FROM Production.Product P1
JOIN Production.Product P2
ON P1.ListPrice = P2.ListPrice
	AND P1.ListPrice <> 0 --Exclude products with no price
	AND P1.Name <> P2.Name --Exclude the same product
ORDER BY ListPrice

--Self Join with Alias
SELECT P1.Name, P2.Name, P1.ListPrice
FROM Production.Product AS P1, Production.Product AS P2
WHERE P1.ListPrice = P2.ListPrice
	AND P1.ListPrice <> 0
	AND P1.Name <> P2.Name
ORDER BY ListPrice
