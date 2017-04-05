CREATE TABLE [dbo].[Property]
(
	[PropertyId] INT NOT NULL PRIMARY KEY DEFAULT 0, 
    [CustomerId] INT NOT NULL DEFAULT 0, 
    [unitNumber] INT NULL DEFAULT 0 , 
    [streetNumber] INT NOT NULL DEFAULT 0, 
    [streetName] VARCHAR(50) NOT NULL, 
    [city] VARCHAR(20) NOT NULL, 
    [province] VARCHAR(2) NOT NULL, 
    [country] VARCHAR(20) NOT NULL, 
    [postalCode] VARCHAR(10) NOT NULL, 
    CONSTRAINT [FK_CustomerId] FOREIGN KEY (CustomerId) REFERENCES [Customer](CustomerId)
)
