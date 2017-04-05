CREATE TABLE [dbo].[Customer]
(
	[CustomerId] INT NOT NULL PRIMARY KEY DEFAULT 0, 
    [companyName] VARCHAR(50) NULL, 
    [firstName] VARCHAR(20) NOT NULL, 
    [lastName] VARCHAR(20) NOT NULL, 
    [contactName] VARCHAR(20) NOT NULL, 
    [contactPhone] INT NULL, 
    [contactMobile] INT NULL, 
    [fax] INT NULL, 
    [bussinessPhone] INT NULL, 
    [contactEmail] VARCHAR(50) NULL, 
    [unitNumber] INT NULL, 
    [streetNumber] INT NOT NULL, 
    [streetName] VARCHAR(50) NOT NULL, 
    [city] VARCHAR(20) NOT NULL, 
    [province] VARCHAR(2) NOT NULL DEFAULT 'ON', 
    [country] VARCHAR(20) NOT NULL DEFAULT 'Canada', 
    [postalCode] VARCHAR(10) NOT NULL
)
