--CASE FUNCTION
--Case expression evaluates a list of conditions and returns one of the multiple specified results.

Use Company
GO

SELECT DepID, DepartmentName,
	CASE DepartmentName
		WHEN 'IT' THEN 'Information Technology'
		WHEN 'HR' THEN 'Human Resources'
		WHEN 'FI' THEN 'Financial Institution'
		ELSE 'Q ?'
	END AS 'Department Long Name'
FROM tableDepartments

--CONVERSION FUNCTIONS
-- CONVERT(DataType(Length),Expression,Style)
-- CAST(Expression AS DataType(Length))

USE AdventureWorks2019
GO

SELECT CONVERT(int,5.45)
SELECT CONVERT(float,5.45)
SELECT CONVERT(varchar, 5.45)
SELECT CONVERT(datetime,'2020-01-07') AS TextToDateTime

SELECT CAST(5.45 as int)
SELECT CAST(5.50 AS FLOAT)
SELECT CAST(5.45 AS varchar)
SELECT CAST('1999-04-28' AS datetime) AS TextToDateTimeWithCast

--Cast
SELECT FirstName, LastName, ModifiedDate,
		CAST(ModifiedDate AS VARCHAR(11)) AS DateToText
FROM Person.Person

--Convert
SELECT FirstName, LastName, ModifiedDate,
		CONVERT(VARCHAR(7), ModifiedDate) AS DateToText
FROM Person.Person
