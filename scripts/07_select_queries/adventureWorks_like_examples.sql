--LIKE CLAUSE
--Used to compare a value to similar values using a wilcard operations
--We use % sign --> LIKE 'a%' 
--We use _ sign --> LIKE '_inda'

USE AdventureWorks2019
GO

-- Finds any values starting with letter 'ange'
SELECT *
FROM Person.Person
WHERE FirstName LIKE 'ange%'

-- Finds any values that ends with letter 'inda'
SELECT *
FROM Person.Person
WHERE FirstName LIKE '%inda'

-- Finds any values that have letter 'a' in any position
SELECT *
FROM Person.Person
WHERE FirstName LIKE '%a%'

--Finds six letter names ending with 'inda'
SELECT *
FROM Person.Person
WHERE FirstName LIKE '__inda'

--Finds any value that starts with letter a,letter b or letter c
SELECT *
FROM Person.Person
WHERE FirstName LIKE '[abc]%'
--'[a-c]%' de la a hasta la c

--Not Like
SELECT *
FROM Person.Person
WHERE FirstName NOT LIKE '[a-y]%'

