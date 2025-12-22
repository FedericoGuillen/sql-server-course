--SET OPERATIONS UNION,UNION ALL, INTERSECT, EXCEPT
--RULES
--The result sets of all queries must have the same number of columns.
/*In every result set the data type of each column must match the data type of its corresponding
column in the first result set.*/
--In order to sort the result, an ORDER BY clause should be part of the last statement.
--The records from the tpo query must match the positional ordering of the records from the bottom query.
--The column names or aliases must be found out by the first select statement.

--UNION-- DOES NOT RETURN DUPLICATE ROWS
USE AdventureWorks2019
GO

SELECT CurrencyCode --109 rows
FROM Sales.CountryRegionCurrency
UNION
SELECT CurrencyCode --105 rows
FROM Sales.Currency

--UNION ALL-- RETURN DUPLICATE ROWS
USE AdventureWorks2019
GO

SELECT CurrencyCode --109 rows
FROM Sales.CountryRegionCurrency
UNION ALL
SELECT CurrencyCode --105 rows
FROM Sales.Currency


--INTERSECT
--All job titles for position held by both males and females
SELECT JobTitle
FROM HumanResources.Employee --Left Table
WHERE Gender = 'M' --Job titles for males (206 Rows)
INTERSECT -- 26 Job Titles
SELECT JobTitle
FROM HumanResources.Employee --Right Table
WHERE Gender = 'F' --Job titles for females (84 Rows)

--With Join(Inner)
SELECT DISTINCT EM.JobTitle
FROM HumanResources.Employee AS EM
JOIN HumanResources.Employee AS EF
ON EM.JobTitle = EF.JobTitle
	AND EM.Gender = 'M'
	AND EF.Gender = 'F'


-- EXCEPT
SELECT JobTitle
FROM HumanResources.Employee --Left Table
WHERE Gender = 'M' --Job titles for males (206 Rows)
EXCEPT -- 31 Job Titles HELD ONLY BY MALES
SELECT JobTitle
FROM HumanResources.Employee --Right Table
WHERE Gender = 'F' --Job titles for females (84 Rows)
