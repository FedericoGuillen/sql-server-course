Use Company
Go

-- Rename table
EXEC sp_rename 'tableEmployees', 'Employees';
GO

-- (Optional) Rename back to original
-- EXEC sp_rename 'Employees', 'tableEmployees';
