CREATE TABLE [dbo].[Property]
(
	[propertyId] INT NOT NULL PRIMARY KEY DEFAULT 00000, 
    [customerId] INT NOT NULL DEFAULT 00000, 
    [unitNumber] INT NULL DEFAULT 0 , 
    [streetNumber] INT NOT NULL DEFAULT 0, 
    [streetName] VARCHAR(50) NOT NULL DEFAULT '', 
    [cityId] INT NOT NULL DEFAULT 00000, 
    [superintendent] VARCHAR(25) NULL DEFAULT '', 
    [superintendentPhone] BIGINT NULL DEFAULT 0000000000, 
    [DateActive] DATE NULL DEFAULT 0000-00-00, 
    [DateModified] DATE NULL DEFAULT 0000-00-00, 
    CONSTRAINT [FK_Property_Customer] FOREIGN KEY ([customerId]) REFERENCES [Customer]([customerId]), 
    CONSTRAINT [FK_Property_City] FOREIGN KEY ([cityId]) REFERENCES [City]([cityId]) 
)
