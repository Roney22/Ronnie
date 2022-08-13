IF NOT EXISTS (SELECT TOP 1 1 FROM sys.tables where schema_name(schema_id) = 'dbo' AND name = 'Departments')
BEGIN
CREATE TABLE dbo.Departments (
	dept_id INT IDENTITY(1,1) NOT NULL,
	dept_name VARCHAR(100) NOT NULL,
	CONSTRAINT PK_Departments PRIMARY KEY (dept_id)
	)
END
GO