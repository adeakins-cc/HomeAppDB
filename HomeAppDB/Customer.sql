CREATE TABLE [dbo].[Customer]
(
	[customerId] INT NOT NULL PRIMARY KEY DEFAULT 0, 
    [companyName] VARCHAR(50) NULL, 
    [firstName] VARCHAR(25) NOT NULL, 
    [lastName] VARCHAR(30) NOT NULL, 
    [contactName] VARCHAR(50) NULL, 
    [contactPhone] BIGINT NOT NULL, 
    [contactMobile] BIGINT NULL, 
    [fax] BIGINT NULL, 
    [bussinessPhone] BIGINT NULL, 
    [contactEmail] VARCHAR(100) NULL, 
    [unitNumber] INT NULL, 
    [streetNumber] INT NOT NULL, 
    [streetName] VARCHAR(50) NOT NULL, 
    [city] VARCHAR(25) NOT NULL, 
    [province] CHAR(2) NOT NULL DEFAULT 'ON', 
    [country] VARCHAR(30) NOT NULL DEFAULT 'Canada', 
    [postalCode] VARCHAR(10) NOT NULL
)
