--SUBQUERIES
--RULES
/*.Subqueries must be enclosed within parentheses ().
.A subquery must include a SELECT clause and a FROM clause.
.A subquery can include optional WHERE, GROUP BY, and HAVINH clauses.
.A subquery cannot be immediately enclosed in a set function.
.An ORDER BY cannot be used in a subquery, although the main query can use an ORDER BY.
*/

--How many Cable Lock products has been sold?
--SELECT STATEMENT
SELECT COUNT(*)
FROM SALES.SalesOrderDetail
WHERE ProductID = (
SELECT ProductID
FROM Production.Product
WHERE Name = 'Cable Lock')


--Which products have not been ordered yet?
--MULTIPLE ROW SUBQUERIES
SELECT *
FROM Production.Product
WHERE ProductID NOT IN
	(SELECT ProductID
	FROM Sales.SalesOrderDetail)


--CORRELATED SUBQUERIES
--Which products have not been ordered yet?
--USES THE VALUES OF THE OUTER QUERIES
SELECT *
FROM Production.Product AS P
WHERE NOT EXISTS 
	(SELECT ProductID
	FROM Sales.SalesOrderDetail AS S
	WHERE P.ProductID = S.ProductID)

-- SUBQUERIES WITH INSERT-UPDATE-DELETE STATEMENT
--Insert Data With Subqueries
