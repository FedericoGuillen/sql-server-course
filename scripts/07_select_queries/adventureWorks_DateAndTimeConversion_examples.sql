USE AdventureWorks2019
GO

--DATE CONVERSION
SELECT 
	CONVERT(varchar,GETDATE(),1) AS 'Format-1', --> 12/23/25 (month/day/year)
	CONVERT(varchar,GETDATE(),2) AS 'Format-2', --> 25.12.23 
	CONVERT(varchar,GETDATE(),3) AS 'Format-3', --> 23/12/25 
	CONVERT(varchar,GETDATE(),4) AS 'Format-4', --> 23.12.25 
	CONVERT(varchar,GETDATE(),5) AS 'Format-5', --> 23-12-25 
	CONVERT(varchar,GETDATE(),6) AS 'Format-6', --> 23 Dec 25
	CONVERT(varchar,GETDATE(),7) AS 'Format-7', --> Dec 23, 25
	CONVERT(varchar,GETDATE(),10) AS 'Format-10'--> 12-23-25
--SOME OTHER DATE FORMATS = 11 - 12 - 23 - 101 - 102 - 103 - 104
-- 103 = 28/04/1999 


SELECT CONVERT(varchar, BirthDate, 1)
FROM HumanResources.Employee

SELECT CONVERT(varchar, BirthDate, 10)
FROM HumanResources.Employee

--AGE QUERY
SELECT DATEDIFF(YEAR,CONVERT(varchar, BirthDate, 10),GETDATE()) AS AGE
FROM HumanResources.Employee

--TIME CONVERSION
SELECT 
	CONVERT(varchar,GETDATE(),8) AS 'Format-11',
	CONVERT(varchar,GETDATE(),14) AS 'Format-14',
	CONVERT(varchar,GETDATE(),24) AS 'Format-24',
	CONVERT(varchar,GETDATE(),108) AS 'Format-108'

--DATETIME CONVERSION
--TIME CONVERSION
SELECT 
	CONVERT(varchar,GETDATE(),0) AS 'Format-0',
	CONVERT(varchar,GETDATE(),9) AS 'Format-9',
	CONVERT(varchar,GETDATE(),13) AS 'Format-13',
	CONVERT(varchar,GETDATE(),20) AS 'Format-20',
	CONVERT(varchar,GETDATE(),21) AS 'Format-21',
	CONVERT(varchar,GETDATE(),22) AS 'Format-22',
	CONVERT(varchar,GETDATE(),25) AS 'Format-25'