/* SEQUENCE
	A Sequence is an object in SQL Server that is used to generate
	a number sequence
*/

-- CREATE SEQUENCE
CREATE SEQUENCE SequenceObject
Start With 1
Increment By 1

-- NEXT SEQUENCE VALUE
SELECT NEXT VALUE FOR SequenceObject

--CURRENT SEQUENCE VALUE
SELECT *
FROM sys.sequences
WHERE name = 'SequenceObject'

SELECT current_value
FROM sys.sequences
WHERE name = 'SequenceObject'

--RESET SEQUENCE VALUE
ALTER SEQUENCE SequenceObject
Restart With 1

--Sequence value in INSERT Statement
INSERT INTO HumanResources.Department
VALUES(
	NEXT VALUE FOR SequenceObject, 'S'
)

INSERT INTO HumanResources.Department
VALUES(
	NEXT VALUE FOR SequenceObject, 'P'
)

INSERT INTO HumanResources.Department
VALUES(
	NEXT VALUE FOR SequenceObject, 'K'
)


--DECREMENT SEQUENCE
CREATE SEQUENCE DecSequence
AS INT
Start With 100
Increment By -1

SELECT NEXT VALUE FOR DecSequence

--CREATE A SEQUENCE WITH MIN AND MAX VALUE
CREATE SEQUENCE MinMaxSeq
Start With 100
Increment By 20
MinValue 100
MaxValue 200

SELECT NEXT VALUE FOR MinMaxSeq

ALTER SEQUENCE MinMaxSeq
Increment By 20
MinValue 100
MaxValue 200
CYCLE

--DROP SEQUENCE - drop cache
DROP SEQUENCE MinMaxSeq
