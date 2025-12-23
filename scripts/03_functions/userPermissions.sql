--Users & User Permissions

--Create User
Create User Test_User1 For Login admin

/* User Permissions
	The permissions are the rights to access database objects.
*/

--Permissions
--GRANT --> Applies a positive permission
--GRANT privileges ON object TO user

SELECT *
FROM sys.database_permissions AS P
JOIN sys.database_principals AS U
ON P.grantee_principal_id = u.principal_id
where U.name = 'admin'

Grant Create Table to admin --Allows to create new table
Grant Select, Insert, Update, Delete on Departments to admin --Allows to


--DENY --> Applies a negative permission
--DENY privileges ON object TO user
Deny Create Table To admin
Deny Select on Departments To admin

--REVOKE --> Removes a GRANTED or DENIED permission
--REVOKE privileges ON object FROM user

Revoke Create Table To admin
Revoke all on Departments to admin --select, delete, Update, Insert

Grant Create Table To admin

--ROLES
-- is created to ease setup maintenance of the security db