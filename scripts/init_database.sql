/*
=================================================================
Create Database and medallion Schemas

This script creates a new database named 'DataWarehouse' after checking if its already exists. Additionally, the script creates 3 scheams within the database; 'bronze', 'silver', and 'gold'
=================================================================
*/


-- Drop and recreste the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Create Database DataWarehouse
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create schemas, bronze, silver and gold
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
