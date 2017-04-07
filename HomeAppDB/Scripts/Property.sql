CREATE TABLE [dbo].[Property]
(
	[propertyId] INT NOT NULL PRIMARY KEY , 
    [customerId] INT NOT NULL DEFAULT 0, 
    [unitNumber] INT NULL DEFAULT 0 , 
    [streetNumber] INT NOT NULL DEFAULT 0, 
    [streetName] VARCHAR(50) NOT NULL DEFAULT '', 
    [cityId] INT NOT NULL DEFAULT 0, 
    [superintendent] VARCHAR(25) NULL DEFAULT '', 
    [superintendentPhone] BIGINT NULL DEFAULT 0, 
    [DateActive] DATE NULL DEFAULT GETDATE(), 
    [DateModified] DATE NULL DEFAULT GETDATE(), 
    CONSTRAINT [FK_Property_Customer] FOREIGN KEY ([customerId]) REFERENCES [Customer]([customerId]), 
    CONSTRAINT [FK_Property_City] FOREIGN KEY ([cityId]) REFERENCES [City]([cityId]) 
)
