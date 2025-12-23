--SCHEMA OBJECTS
--SCHEMAS - VIEWS - SEQUENCE

/* SCHEMA
COLLECTION OF DATABASE OBJECTS INCLUDING TABLES, VIEWS, TRIGGERS, INDEXES, ETC.
A SCHEMA IS ASSOCIATED WITH A USER NAME (SCHEMA OWNER). A SCHEMA BELONGS TO ONE DATABASE.
BUT A DATABASE CAN HAVE MULTIPLE SCHEMAS.
*/

USE AdventureWorks2019
GO

--CREATE Schema
CREATE SCHEMA TestSchema
Authorization Test_User

--Create a Table In A Schema
CREATE TABLE TestSchema.Departments
(
	ID int Not Null,
	DepartmentName varchar Not Null
)

--Change Schema Name Of A Table
CREATE SCHEMA NewSchema

ALTER SCHEMA NewSchema
TRANSFER TestSchema.Departments

--Drop A Schema
DROP SCHEMA TestSchema
DROP SCHEMA NewSchema

ALTER SCHEMA HumanResources
Transfer NewSchema.Departments


/* VIEWS
	A View is a virtual table based on the result set of an SQL statement.
*/

--CREATE VIEW
CREATE VIEW VPersonWithMailAddress AS
SELECT FirstName, LastName, EmailAddress
FROM Person.Person AS P
JOIN Person.EmailAddress AS E
ON P.BusinessEntityID = E.BusinessEntityID

SELECT *
FROM VPersonWithMailAddress

--DROP VIEW
DROP VIEW VPersonWithMailAddress

