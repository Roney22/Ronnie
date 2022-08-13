IF NOT EXISTS (SELECT TOP 1 1 FROM sys.tables where schema_name(schema_id) = 'dbo' AND name = 'Employees')
BEGIN
CREATE TABLE dbo.Employees (
	emp_id INT IDENTITY(1,1) NOT NULL,
	emp_name VARCHAR(100) NOT NULL,
	dept_id INT NULL,
	salary DECIMAL(18,2) NOT NULL,
	manager_id INT NULL
	CONSTRAINT PK_Employee PRIMARY KEY (emp_id)
	)
END
GO
