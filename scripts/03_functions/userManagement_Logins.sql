--USER MANAGEMENT

/*LOGIN
	A login is a simple credential for accessing SQL Server
*/

/* WINDOWS AUTHENTICATION
	Logins based on Windows Credentials allow you to log in to SQL Server using
	a Windows username and password
*/

/* SQL AUTHENTICATION
	Create LOGIN LoginName With Password = 'YourPassword'
*/
--sql_123456_abc

CREATE LOGIN NewLogin With Password = '123456'

--Rename Login
Alter Login Test_Login with Name = Test_Login2

--Change Login Password
Alter Login NewLogin With Password = '654321'

--Drop Login
DROP LOGIN NewLogin