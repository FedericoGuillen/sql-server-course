--SQL TRANSACTIONS
/*SINGLE UNIT OF WORK THAT CONSISTS OF MULTIPLE RELATED 
TASKS THAT SHOULD SUCCEED OR FAIL AS ONE ATOMIC UNIT

-ROLLBACK
-COMMIT
-SAVEPOINT
*/


/*ACID (FOUR ACID PROPERTIES)
	-ATOMICITY = TRANSACTIONS ARE ALL OR NOTHING. ALL SEPARATE TASKS SUCCEED, OR FAIL AND ROLLBACK
	-CONSISTENCY = ONLY VALID DATA IS SAVED.
	-ISOLATION = TRANSACTIONS DO NOT AFFECT EACH OTHER.
	-DURABILITY = WRITTEN DATA WILL NOT BE LOST.
*/


/*TRANSACTION STATE 
	ACTIVE --> PARTIALLY COMITTED --> COMITTED --> END
	ACTIVE --> PARTIALLY COMITTED --> FAILED --> ABORTED --> END
	ACTIVE --> --> FAILED --> ABORTED --> END
*/

/* ROLLBACK COMMAND
	The ROLLBACK command is the transactional command used to undo transactions that have not already
	been saved to the database.
*/
USE AdventureWorks2019
GO

Begin Tran --Begin Transaction
UPDATE Person.Person
SET FirstName = 'Terri'
WHERE BusinessEntityID = 2

ROLLBACK

SELECT *
FROM Person.Person

/* COMMIT COMMAND
	The COMMIT command is the transactional command used to save changes invoked by a
	transaction to the database
*/	
Begin Tran --Begin Transaction
UPDATE Person.Person
SET FirstName = 'Terri'
WHERE BusinessEntityID = 2

COMMIT

SELECT *
FROM Person.Person

/* SAVEPOINT COMMAND
	A SAVEPOINT is a point in a transaction when you can roll the transaction
	back to a certain point without ROLLING BACK the entire transaction.
*/
Begin Tran --Begin Transaction
UPDATE Person.Person --Update FirstName
SET FirstName = 'Tom'
WHERE BusinessEntityID = 2
Save Tran SaveFirstName --Save point for first name
UPDATE Person.Person --Update MiddleName
SET MiddleName = 'Z'
WHERE BusinessEntityID = 2
Save Tran SaveMiddleName --Save point for middle name
UPDATE Person.Person --Update LastName
SET LastName = 'Walker'
WHERE BusinessEntityID = 2
Save Tran SaveLastName --Save point for last name

ROLLBACK Tran SaveMiddleName
ROLLBACK
COMMIT

SELECT *
FROM Person.Person